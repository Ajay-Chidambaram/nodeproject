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
                sh 'forever start -c node index.js'  
                echo 'Deploying....'
            }
        }
    }
}