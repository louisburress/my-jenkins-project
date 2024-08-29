pipeline {
    agent {
        docker { image 'python:3.8' } // Specify the Docker image you want to use
    }
    stages {
        stage('Louis - Build Docker Image') {
            steps {
                script {
                    def image = docker.build('louis-image')
                    image.inside {
                        sh 'python louis.py'
                    }
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
                    def image = docker.build('louis-image')
                    image.push('latest')
                }
            }
        }
    }
}

