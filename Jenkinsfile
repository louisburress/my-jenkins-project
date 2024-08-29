pipeline {
    agent any

    stages {
        stage('Louis - Build Docker Image') {
            steps {
                script {
                    def image = docker.build('louis-image')
                }
            }
        }
        stage('Louis - Login to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', '7660e383-1c79-42e5-b9f5-7dee45cada15') {
                        echo 'Logged in to DockerHub'
                    }
                }
            }
        }
        stage('Louis - Push image to Dockerhub') {
            steps {
                script {
                    def image = docker.image('louis-image')
                    image.push('latest')
                }
            }
        }
    }
}

