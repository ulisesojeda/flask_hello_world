pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'P4_github_token',
                url: 'https://github.com/ulisesojeda/flask_hello_world.git'
         }
      }
      stage('Build') {
          steps {
              sh 'chmod +x deploy/build.sh && ./build.sh'
          }
      }
      stage('Lint') {
          steps {
              sh 'chmod +x deploy/lint.sh && ./lint.sh'
          }
      }
      stage('Test') {
          steps {
              sh 'chmod +x deploy/test.sh && ./test.sh'
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://backend:8000/deploy/?id=P4 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
