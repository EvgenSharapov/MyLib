pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven') {
            steps {
                sh './mvnw clean package -DskipTests'
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }

        stage('Build Docker') {
            steps {
                script {
                    docker.build("mylib:latest")
                }
            }
        }

        stage('Test Docker') {
            steps {
                sh 'docker run --rm mylib:latest java -version || true'
            }
        }
    }
}