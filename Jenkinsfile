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
                sh 'BUILD_ID=dontKillMe forever -a -l myforever.log index.js &'
                sh 'forever start index.js'  
                echo 'Deploying....'
            }
        }
    }
}