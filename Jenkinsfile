def app   // global variable

pipeline {
    agent any

    environment {
        IMAGE_NAME = "viveknshet112/maven_app"
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/1ms24mc112-vivek/maven_app.git',
                    credentialsId: 'github-PAT' // GitHub PAT credentials
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    app = docker.build("${IMAGE_NAME}:latest")
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'dockerhub') {
                        app.push("latest")
                    }
                }
            }
        }
    }

    post {
        always { cleanWs() }
        success { echo "✅ Maven Docker Image pushed successfully" }
        failure { echo "❌ Pipeline failed" }
    }
}


