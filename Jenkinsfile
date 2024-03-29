pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = 'Docker'
        DOCKER_IMAGE_TAG = 'latest' // You can use any tag here, e.g., a version number or commit hash
    }
    
    stages {
        stage('Build') {
            steps {
                script {
                    // Build Docker image
                    docker.build("${Docker}:${latest}")
                }
            }
        }
        
        stage('Test') {
            steps {
                // Run tests here if applicable
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    // Run Docker container from the built image
                    docker.image("${Docker}:${latest}").run("-p 8080:80 --name Dockercontainer -d")
                }
            }
        }
    }
}
