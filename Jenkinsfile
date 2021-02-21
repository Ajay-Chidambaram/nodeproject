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
                sh 'sudo NODE_ENV=development forever start -a -l logs/forever.log -o logs/output.log -e logs/error.log index.js'  
                echo 'Deploying....'
            }
        }
    }
}