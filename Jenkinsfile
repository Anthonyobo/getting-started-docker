pipeline {
  agent any
  // stages {
    // stage("start docker") {
      // steps {
        // sh """
          // systemctl start docker
        // """
      // }
    }
    stage("build") {
      steps {
        sh """
          docker build -t hello_there .
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker run --rm hello_there
        """
      }
    }
  }
    // stage('Push') {
      // steps {
        // script{
          // docker.withRegistry('https://922786934247.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:aws-credentials') {
            // app.push("${env.BUILD_NUMBER}")
            // app.push("latest")
            // }
          // }
        // }
      // }
    // }
  // }
}