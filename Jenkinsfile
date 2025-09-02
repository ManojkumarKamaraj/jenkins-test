pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git url: 'https://github.com/ManojkumarKamaraj/jenkins-test.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("html-app")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Stop and remove existing container if it exists
                    sh "docker rm -f html-container || true"
                    // Run the container on port 8080
                    sh "docker run -d --name html-container -p 8080:80 html-app"
                }
            }
        }
    }

    post {
        success {
            echo "App deployed successfully at http://localhost:8080"
        }
        failure {
            echo "Build or deploy failed"
        }
    }
}
