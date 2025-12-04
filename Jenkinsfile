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
                    kubectl run myapp --image=myapp:latest --image-pull-policy=Never --port=8080
                    kubectl expose pod myapp --port=${env.APP_PORT} --target-port=8080 --type=ClusterIP

                    echo "Waiting 120 seconds for Tomcat..."
                    sleep 120

                    echo "Status:"
                    kubectl get pods
                    kubectl get svc

                    echo ""
                    echo "To access: kubectl port-forward pod/myapp ${env.APP_PORT}:${env.APP_PORT}"
                """
            }
        }

        stage('5. Deploy to K8s') {
            steps {
                script {
                    sh """
                        helm upgrade --install ${APP_NAME} ./helm/myapp \
                            --set image.repository=localhost:5000/myapp \
                            --set image.tag=latest \
                            --set image.pullPolicy=IfNotPresent \
                            --namespace default
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