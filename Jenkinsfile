pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'flask_hello_2_github_token',
                url: 'https://github.com/ulisesojeda/flask_hello_world.git'
         }
      }
      stage('Build') {
          steps {
              sh 'sudo docker build --rm -t flask_app . && sudo docker rm flask_app --force | true && sudo docker run -d --name flask_app flask_app'
          }
      }
      stage('Lint') {
          steps {
              sh 'sudo docker run exec flask_app /bin/sh -f ./lint.sh'
          }
      }
      stage('Test') {
          steps {
              sh 'sudo docker run exec flask_app python -m pytest'
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://backend:8000/deploy/?id=flask_hello_2 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
