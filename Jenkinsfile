pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'flask_p1_github_token',
                url: 'https://github.com/ulisesojeda/flask_hello_world.git'
         }
      }
      stage('Build') {
          steps {
              sh ''
          }
      }
      stage('Lint') {
          steps {
              sh ''
          }
      }
      stage('Test') {
          steps {
              sh ''
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://host.docker.internal:8081/deploy/?id=flask_1 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
