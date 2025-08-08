pipeline {
    agent any


    stages {
        stage('Checkout Code') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], 
                    userRemoteConfigs: [[url: 'https://github.com/younglinslayer3000/jenkins-project']]])
            }
        }

        stage('Ibrahim - Build Docker Image') {
            steps {
                script {
                    sh "docker build -t $DOCKERHUB_REPO:$IMAGE_TAG -t $DOCKERHUB_REPO:latest ."
                }
            }
        }



    }
}
}
