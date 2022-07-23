pipeline {
    // agent {
    //     docker {
    //         image 'node:16-alpine' 
    //         args '-p 3000:3000' 
    //     }
    // }
    agent any
    tools {nodejs "NodeJS" }
    stages {
        stage('Build') { 
            steps {
                sh 'npm install --production' 
            }
        }
        stage('Test') {
            steps {
                sh 'npm test'
            }
        }
        // stage('Push image'){
        //     steps {
        //         withDockerRegistry(credentialsId: 'docker-hub', url: 'https://index.docker.io/v1/') {
        //             // some block
        //             sh 'docker build -t khacbaocsek19/hello-world:v1 .'
        //             sh 'docker push khacbaocsek19/hello-world:v1'
        //         }
        //     }
        // }
        // stage('Ssh k8s-master'){
        //     steps{
        //         sshagent(['ssh-k8s-master']) {
        //             sh 'ssh -o StrictHostKeyChecking=no -p 9922 -l ubuntu 61.28.232.236 kubectl scale deployment todo-app-backend --replicas 2'
        //         }
        //     }
        // }
        stage('Ssh k8s-worker1') {
            steps{
                ansiblePlaybook credentialsId: 'ssh-k8s-worker1', installation: 'Ansible', inventory: 'hosts', playbook: 'test.yaml'
            }
        }
    }
}