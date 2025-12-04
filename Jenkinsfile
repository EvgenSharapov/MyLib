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
          - port: ${env.APP_PORT}
            targetPort: 8080
          type: ClusterIP
        EOF
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