pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                echo 'Repository URL: ' + env.GIT_URL
                checkout scm
            }
        }
        stage('Test') {
            steps {
                sh 'ls -la'
                echo 'Hello from Jenkins!'
            }
        }
    }
}