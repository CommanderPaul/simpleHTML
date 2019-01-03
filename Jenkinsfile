pipeline {
    agent { docker { image 'golang:1.9.2' } }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'

                echo 'env'
                
                sh 'echo ${GOPATH}'
                
                sh 'ls -al'
                sh 'go version'
                
                 // Create our project directory.
                sh 'mkdir -p ${GOPATH}/src'
                sh 'cd ${GOPATH}/src'
                
                // Copy all files in our Jenkins workspace to our project directory.                
                sh 'cp -r ${WORKSPACE}/* ${GOPATH}/src'

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
        
        
        

