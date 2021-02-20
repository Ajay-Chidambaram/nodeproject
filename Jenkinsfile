pipeline {
    agent any

    tools {nodejs "node-build"}

    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                sh 'export JENKINS_NODE_COOKIE=dontKillMe'
                sh 'forever start index.js'  
                echo 'Deploying....'
            }
        }
    }
}