pipeline {
    agent { docker { image 'golang:1.9.2'
                     } }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                
                //sh 'mkdir -p $GOPATH/src/'
                sh 'ln -s $WORKSPACE $GOPATH/src'
                dir("$WORKSPACE/src"){sh 'go build -o $WORKSPACE/beans'}
                sh 'pwd'             
                sh 'ls -al'
                dir('/var/jenkins_home/workspace'){sh 'ls -al'}
                
                // doesn't work
                //dir('/go'){sh 'ls -al'}
                
                // works
                //sh '(cd /go && ls -al)'
                
                
                
                sh 'ls -al /go'
                
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
        
        
        

