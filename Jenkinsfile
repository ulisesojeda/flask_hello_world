pipeline {
   agent any

   stages {
      stage('Check out') {
         steps {
            echo 'Checking out repo ..'
            git branch: 'master',
                credentialsId: 'flask_hello_1_github_token',
                url: 'https://github.com/ulisesojeda/flask_hello_world.git'
         }
      }
      stage('Build') {
          steps {
              sh 'ls -la'
          }
      }
      stage('Lint') {
          steps {
              sh 'docker run exec flask_app find . -name "*.py" | grep -v "env" | while read file; do flake8 $file; done'
          }
      }
      stage('Test') {
          steps {
              sh 'docker run exec flask_app python -m pytest'
          }
      }
      stage('Deploy') {
          steps {
              sh 'curl http://backend:8000/deploy/?id=flask_hello_1 > out.txt'
              sh 'cat out.txt'
              sh 'cat out.txt | cut -d : -f 1-2 | grep true -q'
          }
      }
   }
}
