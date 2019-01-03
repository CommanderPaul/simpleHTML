pipeline {
    agent { docker { image 'golang' } }
    

    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'ls -al'
                sh 'go version'
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
        
        
        

