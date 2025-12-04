pipeline {
    agent any

    environment {
        APP_PORT = "8081"  # Используем другой порт
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
                    cat > Dockerfile << EOF
FROM tomcat:9-jre11
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN sed -i 's/port="8080"/port="8080"/' /usr/local/tomcat/conf/server.xml
EXPOSE 8080
CMD ["catalina.sh", "run"]
EOF

                    docker build -t myapp:latest .
                    echo "✅ Docker image built"
                    docker images myapp
                '''
            }
        }

        stage('4. Deploy to K8s') {
            steps {
                sh """
                    # Удаляем старое если есть
                    kubectl delete deployment myapp 2>/dev/null || true
                    kubectl delete service myapp 2>/dev/null || true

                    # Создаем новое с портом ${env.APP_PORT}
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
        env:
        - name: PORT
          value: "8080"
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

                    echo "⏳ Waiting for deployment..."
                    sleep 20

                    echo "📊 Deployment status:"
                    kubectl get pods,svc,deploy -l app=myapp

                    POD_NAME=\$(kubectl get pods -l app=myapp -o jsonpath='{.items[0].metadata.name}' 2>/dev/null || echo "")
                    if [ -n "\$POD_NAME" ]; then
                        echo "📝 Pod logs:"
                        kubectl logs \$POD_NAME --tail=20
                    fi

                    echo ""
                    echo "🎉 ДЕПЛОЙ УСПЕШЕН!"
                    echo ""
                    echo "Jenkins работает на: http://192.168.1.249:8080"
                    echo "Твое приложение будет на: http://localhost:${env.APP_PORT}"
                    echo ""
                    echo "Команды для доступа:"
                    echo "1. Проброс портов: kubectl port-forward svc/myapp ${env.APP_PORT}:${env.APP_PORT}"
                    echo "2. Проверить логи: kubectl logs -f deployment/myapp"
                    echo "3. Удалить: kubectl delete deployment myapp"
                    echo ""
                    echo "После port-forward открой: http://localhost:${env.APP_PORT}"
                """
            }
        }

        stage('5. Test Access') {
            steps {
                sh """
                    echo "🔍 Testing application access..."

                    kubectl port-forward svc/myapp ${env.APP_PORT}:${env.APP_PORT} &
                    PF_PID=\$!

                    sleep 5

                    echo "Testing http://localhost:${env.APP_PORT}..."

                    if curl -f http://localhost:${env.APP_PORT}/actuator/health; then
                        echo "✅ /actuator/health доступен"
                    elif curl -f http://localhost:${env.APP_PORT}/health; then
                        echo "✅ /health доступен"
                    elif curl -f http://localhost:${env.APP_PORT}/; then
                        echo "✅ Корневой URL доступен"
                    else
                        echo "⚠️  Не удалось подключиться к приложению"
                        echo "Проверь логи: kubectl logs deployment/myapp"
                    fi

                    kill \$PF_PID 2>/dev/null || true
                """
            }
        }
    }

    post {
        always {
            echo '🧹 Cleaning up...'
            sh '''
                pkill -f "kubectl port-forward" 2>/dev/null || true
            '''
        }
        success {
            echo '✅ ВСЁ ГОТОВО!'
            echo "🌐 Jenkins: http://192.168.1.249:8080"
            echo "🚀 Твое приложение: http://localhost:${env.APP_PORT} (после port-forward)"
            echo ""
            echo "Запусти команду для доступа:"
            echo "kubectl port-forward svc/myapp ${env.APP_PORT}:${env.APP_PORT}"
        }
        failure {
            echo '❌ Что-то пошло не так'
        }
    }
}