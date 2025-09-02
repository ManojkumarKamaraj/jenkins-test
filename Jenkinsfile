pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'myapp:latest'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                git branch: 'main', credentialsId: 'mygithubcredentials', url: 'https://github.com/ManojkumarKamaraj/jenkins-test.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
            }
        }

    }

    post {
        always {
            echo 'Cleaning up...'
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
