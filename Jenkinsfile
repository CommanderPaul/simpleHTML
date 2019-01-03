pipeline {
    agent { docker { image 'golang:1.9.2'
                     } }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                
                //sh 'mkdir -p $GOPATH/src/'
                sh 'ln -s $WORKSPACE $GOPATH/src'
                
                sh 'pwd'             
                sh 'ls -al'
                dir('/var/jenkins_home/workspace'){sh 'ls -al'}
                //dir('/go'){sh 'ls -al'}
                sh '(cd /go && ls -al)'
                
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
        
        
        

