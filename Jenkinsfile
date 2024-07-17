pipeline {
    agent any

    stages {
        stage('Clone'){
            steps {
                sh "git clone https://github.com/sanket363/demo-app.git"
        }
        stage('Build') {
            steps {
                sh "docker build -t node-app:v1 ."
            }
        }
        stage('Pushing To DockerHub'){
            steps {
                //dockerhub pushing steps
            }
        }
        stage('Test') {
            steps {
                echo "Testing...."
            }
        }
        stage('Deploy') {
            dir(Eks-folder){
            steps {
                sh "kubectl apply -f deploy.yml"
            }            
        }
    }
}
