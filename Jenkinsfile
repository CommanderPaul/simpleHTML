pipeline {
    // pull from dockerhub, not default
    agent { dockerfile true }
    stages {
        stage('Build') {
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
            steps {
                echo 'Testing..'
                
                sh './beans'
                
            }
        }
        stage('Deploy') {
            steps {
                // deploy container to docker hub
                echo 'Deploying....'
                sh 'docker build -t paulwroe/golangbuild:v1 .'
            }
        }
    }
       

       
       
}
        
        
        

