pipeline {
    agent { docker { image 'golang:1.9.2' } }
    environment {
        GOPATH = "${pwd}"
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                echo $GOPATH
                sh 'ls -al'
                sh 'go version'
                sh 'cd src'
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
        
        
        

