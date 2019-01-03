pipeline {
    agent { docker { image 'golang' } }
    

    
    stages {
        stage('Build') {
            steps {
                echo 'Building..'
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
        
        
        

