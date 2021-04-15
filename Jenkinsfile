pipeline {
  agent any
  environment {
    IMAGE = 'nebojsailic2614/jenkins'
  }
  stages {
    stage('Building the Jenkins image') {
      steps {
        script {
          jen_image = docker.build("$IMAGE")
          jen_image.inside {
            sh 'which jenkins-plugin-cli'
          }
        }
      }
    }
    stage('Push the image') {
      steps {
        script {
          docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
            jen_image.push("${env.BUILD_NUMBER}")
            jen_image.push("latest")
          }
        }
      } 
    }
  }
}
