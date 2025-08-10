pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        git 'https://github.com/Archit1408/Jenkins.git'
      }
    }
    stage('Build') {
      steps {
        echo 'Building the app...'
      }
    }
    stage('Test') {
      steps {
        echo 'Running tests...'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying to production!'
      }
    }
  }
}
