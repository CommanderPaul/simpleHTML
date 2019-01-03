pipeline {
    agent { docker { image 'golang:1.9.2' } }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'

                sh 'env'
                
                // GOPATH already present in golang container
                sh 'echo ${GOPATH}'
                sh 'echo ${GOROOT}'
                
                sh 'ls -al'
                sh 'go version'
                
                sh 'pwd'
                
                sh 'cd src'

                sh 'pwd'
                
                // Build the app.
                sh 'go build'
                
                
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
        
        
        

