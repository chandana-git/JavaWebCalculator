  
node {
stage('SCM Checkout')
{
git 'https://github.com/chandana-git/JavaWebCalculator.git'
}

stage('Compile Package from maven')
{
//since maven is installed as a plugin use tool in samsple step to find the command
def mvnHome = tool name: 'MAVEN 3.6.3', type: 'maven'
sh "${mvnHome}/bin/mvn clean package"
}
stage('archiving the artifact artifacts')
{
archiveArtifacts 'target/*.war'
}
stage('Build Docker Image'){
    //sh 'sudo chmod 666 /var/run/docker.sock'
   sh 'docker build . -t chandanarm/calculator'
}
stage('Push Docker Image'){
    withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
        
    sh "docker login -u chandanarm  -p ${dockerHubPwd}"
}
sh 'docker push chandanarm/calculator:latest'
}
}
