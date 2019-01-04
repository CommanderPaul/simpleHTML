pipeline {
    // pull from dockerhub, not default
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                echo 'Building..'

                //sh 'ln -s $WORKSPACE $GOPATH/src'
                dir("$WORKSPACE/src"){sh 'go build -o $WORKSPACE/beans'}
           
                sh 'ls -al'
                dir('/var/jenkins_home/workspace'){sh 'ls -al'}
                
                sh 'ls -al /go'
                
            }
        }
        stage('Test') {
            agent { dockerfile true }
            steps {
                echo 'Testing..'
                
                sh './beans'
                
            }
        }
        stage('Deploy') {
            agent any
            steps {
                // deploy container to docker hub
                echo 'Deploying....'
                sh 'docker build -t paulwroe/golangbuild:v1 .'
            }
        }
    }
       

       
       
}
        
        
        

