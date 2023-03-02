pipeline{
    agent any
    tools{
        maven 'maven_3_5_0'
    }
    stages{
        stage('Build Maven'){
            steps{
                // checkout code from github
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/cefriandy/ci-cd-jenkins-pipeline']])
                // do clean install
                bat'mvn clean install'
            }
        }
        stage('Build Docker Image'){
            steps{
                script{
                    bat 'docker build -t cefriandy/ci-cd-jenkins-pipeline .'
                }
            }
        }
        stage('Push docker image to docker hub'){
            steps{
                script{
                    withCredentials([string(credentialsId: 'dockerhub', variable: 'dockerhub')]) {
                    // bat 'docker logout'
                    bat "docker login -u cefriandy -p ${dockerhub}"
}
                }
                bat 'docker push cefriandy/ci-cd-jenkins-pipeline'
            }
        }
    }
}