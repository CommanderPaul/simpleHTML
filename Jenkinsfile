pipeline {
    agent { docker { image 'golang:1.9.2' } }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'

                echo 'env'
                
                // GOPATH already present in container
                sh 'echo ${GOPATH}'
                
                sh 'ls -al'
                sh 'go version'
                
                 // Create our project directory.
                //sh 'mkdir -p ${GOPATH}/src'
                
                
                // Copy all files in our Jenkins workspace to our project directory.                
                sh 'cp -r ${WORKSPACE}/* ${GOPATH}'

                sh 'pwd'
                
                sh 'cd ${GOPATH}/src'
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
        
        
        

