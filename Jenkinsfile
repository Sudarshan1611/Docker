pipeline {
    agent any
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('dockerimage:${buildNumber}')
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
                    docker.image('dockerimage:${buildNumber}').run()
                }
            }
        }
    }
}
