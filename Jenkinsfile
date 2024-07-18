pipeline {
    agent any
    
    stages{
        stage("Code"){
            steps {
                echo "Clone the code"
                git url:"https://github.com/AdityaThorat679/demo-app.git", branch: "main"
            }
        }
        stage("Bulid"){
            steps {
                echo "Bulid the image"
                sh "docker build -t nodeapp ."
            }
        }
        stage("Push to DockerHub"){
            steps {
                withCredentials([usernamePassword(credentialsId:"dockerhub", passwordVariable:"dockerHubPass", usernameVariable:"dockerHubUser")]) {
                     sh "docker tag nodeapp ${env.dockerHubUser}/nodeapp:v1"
                     sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPass}"
                     sh "docker push ${env.dockerHubUser}/nodeapp:v1"
                }
            }
        }
        stage("Test"){
            steps{
                echo "Testing"
            }
        }
        stage("Deploy"){
                dir(Eks-folder){
                steps{
                 
                     sh "kubectl apply -f deploy.yml"
                    
                }
            }
            
        }
    }
}
