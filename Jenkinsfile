pipeline {
    environment {
        registry = "chidambaram27/chidambaram-repo"
        registryCredential = 'docker'
        dockerImage = ''
    }

    agent {
        label "slave"   
    }

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
                slackSend color: "danger", message: "Message from Chidambaram's Jenkins Pipeline"
            }
        }
    }
}
