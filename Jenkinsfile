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
                    echo "Built files:"
                    ls -la target/
                '''
            }
        }

        stage('3. Build Docker') {
            steps {
                sh '''
                    docker build -t myapp:latest .
                    docker tag myapp:latest localhost:5000/myapp:latest
                    docker push localhost:5000/myapp:latest 2>/dev/null || echo "Local registry not running, using local image"
                '''
            }
        }

        stage('4. Deploy to K8s') {
            steps {
                sh """
cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ${APP_NAME}
  labels:
    app: ${APP_NAME}
spec:
  replicas: 1
  selector:
    matchLabels:
      app: ${APP_NAME}
  template:
    metadata:
      labels:
        app: ${APP_NAME}
    spec:
      containers:
      - name: ${APP_NAME}
        image: myapp:latest
        imagePullPolicy: IfNotPresent
        ports:
        - containerPort: 8080
        resources:
          requests:
            memory: "128Mi"
            cpu: "100m"
---
apiVersion: v1
kind: Service
metadata:
  name: ${APP_NAME}
spec:
  selector:
    app: ${APP_NAME}
  ports:
  - port: ${APP_PORT}
    targetPort: 8080
  type: ClusterIP
EOF
                """
            }
        }

        stage('5. Verify') {
            steps {
                sh '''
                    echo "Waiting for pod..."
                    sleep 30
                    echo "Status:"
                    kubectl get pods
                    kubectl get svc
                    echo ""
                    echo "To access: kubectl port-forward svc/myapp ${APP_PORT}:${APP_PORT}"
                '''
            }
        }
    }

    post {
        always {
            sh 'pkill -f "kubectl port-forward" 2>/dev/null || true'
        }
        success {
            echo 'SUCCESS!'
        }
        failure {
            echo 'FAILED'
        }
    }
}