pipeline {
    agent any

    triggers {
            githubPush()
        }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package -DskipTests'
                // Архивируем WAR файл вместо JAR
                archiveArtifacts artifacts: 'target/*.war', fingerprint: true
            }
        }

        stage('Build Docker') {
            steps {
                script {
                    // Проверяем Dockerfile
                    sh 'cat Dockerfile'

                    // Собираем Docker образ
                    docker.build("mylib:${env.BUILD_NUMBER}")

                    // Тегируем как latest
                    sh "docker tag mylib:${env.BUILD_NUMBER} mylib:latest"
                }
            }
        }

        stage('Test Docker') {
            steps {
                sh '''
                    # Проверяем, что образ собран
                    docker images | grep mylib

                    # Запускаем тестовый контейнер
                    docker run --rm mylib:latest java -version

                    # Если это веб-приложение, можно проверить порт
                    # docker run --rm -d -p 8080:8080 --name test-app mylib:latest
                    # sleep 10
                    # curl -f http://localhost:8080 || echo "App started"
                    # docker stop test-app
                '''
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Убедитесь, что у вас есть манифесты Kubernetes
                    sh '''
                        # Проверяем доступ к Kubernetes
                        kubectl get nodes || echo "Kubernetes not configured"

                        # Если есть манифесты в .infra/k8s/
                        if [ -d ".infra/k8s" ]; then
                            kubectl apply -f .infra/k8s/
                            kubectl rollout status deployment/mylib-app --timeout=300s
                        else
                            echo "No Kubernetes manifests found"
                        fi
                    '''
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished'
            sh 'docker system prune -f || true'
        }
        success {
            echo '✅ Build successful!'
        }
        failure {
            echo '❌ Build failed!'
        }
    }
}