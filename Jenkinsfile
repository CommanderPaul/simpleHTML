pipeline {
    agent { docker { image 'golang:1.9.2' } }
    options {
        skipDefaultCheckout(true)
    }
    stages {
        stage('Build') {
            steps {
                sh 'ls -al'
                //checkout scm
                echo 'Building..'
                sh 'pwd'             
                sh 'ls -al'
                dir('/var/jenkins_home/workspace'){sh 'ls -al'}
                dir('/go'){sh 'ls -al'}
                dir('/'){sh 'ls -al'}
                
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
        
        
        

