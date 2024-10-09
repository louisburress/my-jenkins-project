Jenkins CI/CD Pipeline Project
This project demonstrates a basic CI/CD pipeline using Jenkins, Docker, and Python. It integrates GitHub webhooks to automatically trigger builds when changes are pushed to the repository.

Project Overview
The Jenkins pipeline is triggered by a GitHub webhook. Whenever changes are pushed to this repository, Jenkins automatically pulls the latest code, builds a Docker image, and pushes it to DockerHub. The project includes:

Dockerfile: Defines the environment for the Python application.
Jenkinsfile: Contains the Jenkins pipeline stages.
Python Script (louis.py): A simple script that prints a message.
Webhooks
This project uses a GitHub webhook that triggers the Jenkins pipeline on every git push. Webhooks allow for continuous integration by automating the pipeline each time code is updated. The setup includes:

GitHub Webhook: Configured in the repository settings to notify Jenkins.
Jenkins Pipeline: Pulls the updated code and initiates the build process automatically.
Pipeline Stages:
Build Docker Image: Jenkins builds a Docker image for the Python application.
Login to DockerHub: Jenkins logs into DockerHub using secure credentials.
Push Docker Image: The Docker image is pushed to my DockerHub repository.
Running the Project:
To manually build the project:

Docker: You can build the Docker image locally with:
bash
Copy code
docker build -t my-python-app .
Jenkins: The Jenkins pipeline automates the entire process using webhooks.
Video Demo
Here’s a demonstration video of the Jenkins pipeline in action:



If you want to include the video directly, upload the video to a /assets/videos/ directory in this repo and link to it like this:

markdown
Copy code
[Download Jenkins Project Video](assets/videos/JenkinsProject.mp4)
To set up webhooks:

Go to the GitHub repository settings.
Navigate to Webhooks and add the Jenkins URL (e.g., http://your-jenkins-url/github-webhook/).
Make sure Jenkins is configured to listen for GitHub webhook events.
