pipeline {
    agent any

    environment {
        APP_PORT = "8081"
    }

    stages {
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
                    echo "FROM tomcat:9-jre11" > Dockerfile
                    echo "COPY target/*.war /usr/local/tomcat/webapps/ROOT.war" >> Dockerfile
                    echo "EXPOSE 8080" >> Dockerfile
                    echo 'CMD ["catalina.sh", "run"]' >> Dockerfile

                    echo "Dockerfile created:"
                    cat Dockerfile

                    docker build -t myapp:latest .
                    echo "Docker image built"
                    docker images myapp
                '''
            }
        }

        stage('4. Deploy to K8s') {
            steps {
                sh """
                    kubectl delete deployment myapp 2>/dev/null || true
                    kubectl delete service myapp 2>/dev/null || true

                    cat <<EOF | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  replicas: 1
  selector:
    matchLabels:
      app: myapp
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
      - name: myapp
        image: myapp:latest
        imagePullPolicy: IfNotPresent
        ports:
        - containerPort: 8080
---
apiVersion: v1
kind: Service
metadata:
  name: myapp
spec:
  selector:
    app: myapp
  ports:
  - name: http
    port: ${env.APP_PORT}
    targetPort: 8080
    protocol: TCP
  type: ClusterIP
EOF

                    echo "Waiting for deployment..."
                    sleep 20

                    echo "Deployment status:"
                    kubectl get pods,svc,deploy -l app=myapp

                    POD_NAME=\$(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}' 2>/dev/null || echo "")
                    if [ -n "\$POD_NAME" ]; then
                        echo "Pod logs:"
                        kubectl logs \$POD_NAME --tail=20
                    fi

                    echo ""
                    echo "DEPLOYMENT SUCCESSFUL!"
                    echo ""
                    echo "Jenkins: http://192.168.1.249:8080"
                    echo "Your app: http://localhost:${env.APP_PORT}"
                    echo ""
                    echo "To access: kubectl port-forward svc/myapp ${env.APP_PORT}:${env.APP_PORT}"
                    echo "Then open: http://localhost:${env.APP_PORT}"
                """
            }
        }

        stage('5. Test Access') {
            steps {
                sh """
                    echo "Testing application access..."

                    kubectl port-forward svc/myapp ${env.APP_PORT}:${env.APP_PORT} &
                    PF_PID=\$!

                    sleep 5

                    echo "Testing http://localhost:${env.APP_PORT}..."

                    if curl -f http://localhost:${env.APP_PORT}/actuator/health; then
                        echo "/actuator/health available"
                    elif curl -f http://localhost:${env.APP_PORT}/health; then
                        echo "/health available"
                    elif curl -f http://localhost:${env.APP_PORT}/; then
                        echo "Root URL available"
                    else
                        echo "Could not connect to app"
                        echo "Check logs: kubectl logs deployment/myapp"
                    fi

                    kill \$PF_PID 2>/dev/null || true
                """
            }
        }
    }

    post {
        always {
            echo 'Cleaning up...'
            sh '''
                pkill -f "kubectl port-forward" 2>/dev/null || true
            '''
        }
        success {
            echo 'SUCCESS!'
            echo "Jenkins: http://192.168.1.249:8080"
            echo "Your app: http://localhost:${env.APP_PORT} (after port-forward)"
            echo ""
            echo "Run: kubectl port-forward svc/myapp ${env.APP_PORT}:${env.APP_PORT}"
        }
        failure {
            echo 'FAILED'
        }
    }
}