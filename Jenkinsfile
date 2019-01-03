pipeline {
    agent { docker { image 'golang:1.9.2' } }
    options {
        skipDefaultCheckout(true)
    }
    stages {
        stage('Build') {
            steps {
                sh 'ls -al'
                checkout scm
                echo 'Building..'

                sh 'env'
                
                // GOPATH already present in golang container
                sh 'echo ${GOPATH}'
                sh 'echo ${GOROOT}'
                
                sh 'ls -al'
                sh 'go version'
 
                sh 'pwd'
                
                sh '(cd $GOPATH && pwd)'
                
                sh '(cd src && pwd)'
                
                sh '(cd src && go build)'
                sh '(cd src && ls -al)'
                // Build the app.
                //sh 'go build'
                dir('/var/jenkins_home/workspace'){sh 'ls -al'}
                
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
        
        
        

