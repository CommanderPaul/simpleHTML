pipeline {
  agent none
  stages {
    echo "Running job ${env.JOB_NAME} on ${env.JENKINS_URL}"
    stage('Build') {
      agent { dockerfile true }
      steps {
        echo "Executing ${env.STAGE_NAME} stage"
        sh 'env'


        echo 'Linting'
        dir("$WORKSPACE/src"){sh 'golint .'}

        sh """cd $GOPATH && go tool vet ${paths}"""

        dir("$WORKSPACE/src"){sh 'go build -o $WORKSPACE/beans'}
      }
    }
    stage('Test') {
      agent { docker { image 'alpine:3.6' } }
      steps {
        echo "Executing ${env.STAGE_NAME} stage"
        sh './beans'
      }
    }
    stage('Deploy') {
    agent any
    steps {
      // deploy container to docker hub
      echo "Executing ${env.STAGE_NAME} stage"

      sh 'docker build -t paulwroe/golangbuild:${env.BUILD_ID} .'

      withDockerRegistry([ credentialsId: "dockerhub", url: "" ]){
        sh 'docker push paulwroe/golangbuild:${env.BUILD_ID}'
      }

    }
    }
  }
}
