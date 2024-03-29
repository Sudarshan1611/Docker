pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('your-image-name:tag')
                }
            }
        }
        
        stage('Run Tests') {
            steps {
                // Run tests here
            }
        }
        
        stage('Deploy') {
            steps {
                script {
                    docker.image('your-image-name:tag').run()
                }
            }
        }
    }
}
