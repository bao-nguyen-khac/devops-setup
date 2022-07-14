pipeline {
    agent {
        docker {
            image 'node:16-alpine' 
            args '-p 3000:3000' 
        }
    }
    stages {
        // stage('Clone'){
        //     steps {
        //         git branch: 'main', url: 'https://github.com/bao-nguyen-khac/demo-jenkins.git'
        //     }
        // }
        // stage('Build stage'){
        //     steps {
        //         withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
        //             // some block
        //             sh 'docker build -t khacbaocsek19/hello-world:v1 .'
        //             sh 'docker push khacbaocsek19/hello-world:v1'
        //         }
        //     }
        // }
        stage('Build') { 
            steps {
                sh 'npm install' 
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
    }
}