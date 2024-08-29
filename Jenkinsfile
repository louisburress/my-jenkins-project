pipeline {
    agent any
    stages {
        stage('Louis - Build Docker Image') {
            steps {
                script {
                    docker.build('louis-image')
                }
            }
        }
        stage('Louis - Login to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
                        echo 'Logged in to DockerHub'
                    }
                }
            }
        }
        stage('Louis - Push image to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerhub-credentials') {
                        def image = docker.build('louis-image')
                        image.push('latest')
                    }
                }
            }
        }
    }
}

