pipeline {
    // pull from dockerhub, not default
    agent none
    stages {
        stage('Build') {
            agent { dockerfile true }
            steps {
                echo 'Building..'

                sh 'env'

                //sh 'ln -s $WORKSPACE $GOPATH/src'
                dir("$WORKSPACE/src"){sh 'go build -o $WORKSPACE/beans'}

                sh 'ls -al'
                dir('/var/jenkins_home/workspace'){sh 'ls -al'}

                sh 'ls -al /go'

            }
        }
        stage('Test') {
            agent { docker { image 'alpine:3.6' } }
            steps {
                echo 'Testing..'

                sh './beans'

            }
        }
        stage('Deploy') {
            agent any
            steps {
                // deploy container to docker hub
                echo 'Deploying....'
                echo "Running ${env.JOB_NAME} job ${env.BUILD_ID} on ${env.JENKINS_URL}"
                sh 'docker build -t paulwroe/golangbuild:v2 .'

                //needs creds
                 withDockerRegistry([ credentialsId: "dockerhub", url: "" ]){

                sh 'docker push paulwroe/golangbuild:v2'
                }

            }
        }
    }




}
