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
                sh 'forever stopall'
                sh 'pwd'
                sh 'ls'
                sh 'BUILD_ID=dontKillMe forever start index.js'  
                echo 'Deploying....'
            }
        }
    }
}