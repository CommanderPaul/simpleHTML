#!/usr/bin/env groovy
pipeline {
  agent none
  stages {
    stage('Build') {
      agent { dockerfile true }
      steps {
        echo "Running job ${env.JOB_NAME} on ${env.JENKINS_URL}"
        echo "Executing ${env.STAGE_NAME} stage"

        // groovy script block
        script {
                  LINT_OUTPUT = sh (
                      script: '$GOPATH/bin/golint $WORKSPACE/src',
                      returnStdout: true
                  ).trim()

                  if (LINT_OUTPUT == "") {
                          echo 'Passed Linter'
                  } else {
                          echo 'Failed Linter'
                          error('Failed Linter')
                  }
        }

        //sh """cd $GOPATH && go tool vet ${paths}"""

        // run unit tests here

        dir("$WORKSPACE/src"){sh 'go build -o $WORKSPACE/beans'}
      }
    }
    stage('Test') {
      agent { docker { image 'alpine:3.6' } }
      steps {
        echo "Executing ${env.STAGE_NAME} stage"
        // run function test here
        sh './beans'
      }
    }
    stage('Deploy') {
    agent any
    steps {
      // deploy container to docker hub
      echo "Executing ${env.STAGE_NAME} stage"

      sh "docker build -t paulwroe/golangbuild:${env.BUILD_ID} ."

      withDockerRegistry([ credentialsId: "dockerhub", url: "" ]){
        sh "docker push paulwroe/golangbuild:${env.BUILD_ID}"
      }

    }
    }
  }
}
