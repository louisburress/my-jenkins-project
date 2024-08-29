pipeline {
    agent any

    stages {
        stage('Louis - Build Docker Image') {
            steps {
                script {
                    def image = docker.build('louisburress/louis-image')
                }
            }
        }
        stage('Louis - Push image to Dockerhub') {
            steps {
                script {
		    docker.withRegistry('https://registry.hub.docker.com', 'dokcer_hub_key') {
                        echo 'Logged in to DockerHub'	
                    def image = docker.image('louisburress/louis-image')
                    image.push('latest')
		    image.push("${env.BUILD_NUMBER}")
                }
            }
        }
    }
}

