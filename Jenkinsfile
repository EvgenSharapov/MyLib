pipeline {
    agent any

    stages {
        stage('1. Get Code') {
            steps {
                checkout scm
            }
        }

        stage('2. Build JAR') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('3. Build Docker') {
            steps {
                sh '''
                    # Простейший Dockerfile
                    echo "FROM eclipse-temurin:21-jre-alpine" > Dockerfile
                    echo "COPY target/*.jar app.jar" >> Dockerfile
                    echo 'ENTRYPOINT ["java", "-jar", "app.jar"]' >> Dockerfile

                    docker build -t myapp:latest .
                '''
            }
        }

        stage('4. Deploy to K8s') {
            steps {
                sh '''
                    # Простейший деплоймент
                    kubectl create deployment myapp --image=myapp:latest --dry-run=client -o yaml | kubectl apply -f -
                    kubectl expose deployment myapp --port=80 --target-port=8080 --type=ClusterIP

                    echo "✅ Done!"
                    echo "Run: kubectl port-forward svc/myapp 8080:80"
                '''
            }
        }
    }
}