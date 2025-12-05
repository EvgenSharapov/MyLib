pipeline {
    agent any

    environment {
        APP_PORT = "8081"
        APP_NAME = "myapp"
    }

    stages {
        stage('Cleanup') {
            steps {
                sh '''
                    kubectl delete pods -l app=myapp --ignore-not-found=true
                    kubectl delete deployment myapp --ignore-not-found=true
                    kubectl delete service myapp --ignore-not-found=true
                    kubectl delete pods --field-selector=status.phase=Failed --ignore-not-found=true
                    kubectl delete pods --field-selector=status.phase=Pending --ignore-not-found=true
                    sleep 5
                '''
            }
        }

        stage('1. Get Code') {
            steps {
                checkout scm
            }
        }

        stage('2. Build Project') {
            steps {
                sh '''
                    mvn clean package -DskipTests

                    echo "=== DEBUG: Listing ALL JAR files ==="
                    find target -name "*.jar" -type f

                    echo "=== DEBUG: Checking what's in target directory ==="
                    ls -la target/

                    echo "=== DEBUG: Checking what Maven built ==="
                    ls -la target/*.jar

                    echo "=== DEBUG: Checking file names ==="
                    for jar in target/*.jar; do
                        echo "File: $jar"
                        echo "Basename: $(basename $jar)"
                        echo "Size: $(ls -lh $jar | awk '{print $5}')"
                        echo "---"
                    done
                '''
            }
        }

        stage('3. Build Docker') {
            steps {
                script {
                    sh '''
                        echo "=== DEBUG: Checking JAR file for Docker ==="
                        JAR_FILE=$(find target -name "*.jar" -type f | head -1)
                        echo "Will use JAR file: $JAR_FILE"

                        docker build --no-cache \
                            --build-arg APP_NAME=lib \
                            --build-arg APP_VERSION=0.0.1-SNAPSHOT \
                            --build-arg APP_PORT=8081 \
                            -t myapp:latest .

                        docker tag myapp:latest docker.io/library/myapp:latest
                        echo "Docker images:"
                        docker images | grep myapp
                    '''
                }
            }
        }

        stage('4. Import to containerd') {
            steps {
                sh '''
                    echo "Importing to containerd..."
                    docker save docker.io/library/myapp:latest | sudo ctr -n k8s.io images import - 2>/dev/null || echo "Import failed or already exists"

                    echo "Checking containerd:"
                    sudo ctr -n k8s.io images ls | grep myapp || echo "Image not in containerd"
                '''
            }
        }

        stage('5. Deploy to K8s') {
            steps {
                sh """
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: \${APP_NAME}
  labels:
    app: \${APP_NAME}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: \${APP_NAME}
  template:
    metadata:
      labels:
        app: \${APP_NAME}
    spec:
      containers:
      - name: \${APP_NAME}
        image: docker.io/library/myapp:latest
        imagePullPolicy: IfNotPresent
        command: ["java", "-jar", "/app/app.jar", "--server.port=8081"]
        ports:
        - containerPort: 8081
        resources:
          requests:
            memory: "256Mi"
            cpu: "100m"
          limits:
            memory: "512Mi"
            cpu: "200m"
---
apiVersion: v1
kind: Service
metadata:
  name: \${APP_NAME}
spec:
  selector:
    app: \${APP_NAME}
  ports:
  - port: \${APP_PORT}
    targetPort: 8081
  type: ClusterIP
EOF
                """
            }
        }

        stage('6. Verify') {
            steps {
                sh '''
                    echo "Waiting for pod to start..."
                    for i in {1..30}; do
                        STATUS=$(kubectl get pods -l app=myapp -o jsonpath="{.items[0].status.phase}" 2>/dev/null || echo "NotFound")
                        if [ "$STATUS" = "Running" ]; then
                            echo "✅ Pod is Running!"
                            break
                        fi
                        echo "Waiting... (attempt $i/30)"
                        sleep 2
                    done

                    echo "=== Final Status ==="
                    kubectl get pods -l app=myapp
                    kubectl get svc myapp

                    echo "=== Recent logs ==="
                    kubectl logs -l app=myapp --since=1m
                '''
            }
        }
    }

    post {
        always {
            sh 'pkill -f "kubectl port-forward" 2>/dev/null || true'
            sh '''
                echo "=== Final status ==="
                kubectl get pods -l app=myapp
            '''
        }
        success {
            echo 'SUCCESS!'
        }
        failure {
            sh '''
                echo "=== Debug info ==="
                kubectl describe pods -l app=myapp
                kubectl logs -l app=myapp --tail=50
                echo "=== Containerd images ==="
                sudo ctr -n k8s.io images ls | grep myapp || echo "No myapp image"
            '''
        }
    }
}