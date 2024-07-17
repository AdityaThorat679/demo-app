pipeline {
    agent any

    stages {
        stage('Clone'){
            steps {
                sh "git clone "
        }
        stage('Build') {
            steps {
                sh "docker build -t node-app:v1 ."
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}