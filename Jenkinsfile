
       pipeline {
    agent any


               ws("${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}/") {
   withEnv(["GOPATH=${JENKINS_HOME}/jobs/${JOB_NAME}/builds/${BUILD_ID}"]) {
      
          
          
              stages {
        stage('Build') {
            steps {
                echo 'Building..'
          
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
}
       

}

       
       




