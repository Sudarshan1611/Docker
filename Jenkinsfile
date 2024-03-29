pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE_NAME = 'Docker'
        DOCKER_IMAGE_TAG = 'latest'
    }
    
    stages {
        stage('Build') {
            steps {
                 docker.build("${Docker}:${latest}")
            }
        }
        
        stage('Test') {
            steps {
                // Run tests here if applicable
            }
        }
        
        stage('Deploy') {
            steps {
                docker.image("${Docker}:${latest}").run("-p 8080:80 --name your-container-name -d")
            }
        }
    }
}

