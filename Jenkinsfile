pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'P2_github_token',
                url: 'https://github.com/ulisesojeda/flask_hello_world.git'
         }
      }
      stage('Build') {
          steps {
              sh 'chmod +x ./build.sh && ./build.sh'
          }
      }
      stage('Lint') {
          steps {
              sh 'chmod +x ./lint.sh && ./lint.sh'
          }
      }
      stage('Test') {
          steps {
              sh 'chmod +x ./test.sh && ./test.sh'
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://backend:8000/deploy/?id=P2 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
