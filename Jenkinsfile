pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = credentials('dockerhub-creds')  
        DOCKERHUB_REPO = 'your-dockerhub-username/hello-world' 
        IMAGE_TAG = "${env.BUILD_NUMBER}"
    }

    stages {
        stage('Ibrahim - Build Docker Image') {
            steps {
                script {
                    sh "docker build -t $DOCKERHUB_REPO:$IMAGE_TAG -t $DOCKERHUB_REPO:latest ."
                }
            }
        }

        stage('Ibrahim - Login to Dockerhub') {
            steps {
                script {
                    sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin"
                }
            }
        }

        stage('Ibrahim - Push image to Dockerhub') {
            steps {
                script {
                    sh "docker push $DOCKERHUB_REPO:$IMAGE_TAG"
                    sh "docker push $DOCKERHUB_REPO:latest"
                }
            }
        }
    }
}
