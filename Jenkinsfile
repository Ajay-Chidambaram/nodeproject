pipeline {
    environment {
        registry = "chidambaram27/chidambaram-repo"
        registryCredential = 'docker'
        dockerImage = ''
    }

    agent any

    stages {
        stage('Cloning our Git') {
            steps {
                git 'https://github.com/Ajay-Chidambaram/nodeproject.git'
            }
        }
        stage('Building our image') {
            steps{
                script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }
        stage('Deploy our image') {
            steps{
                script {
                        docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
        stage('Cleaning up') {
            steps{
                sh "docker rmi $registry:$BUILD_NUMBER"
            }
        }
    }
}