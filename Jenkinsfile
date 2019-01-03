pipeline {
    agent { docker { image 'golang:1.9.2'
                     } }
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
                echo 'Deploying....'
            }
        }
    }
       

       
       
}
        
        
        

