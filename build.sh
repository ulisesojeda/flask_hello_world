sudo docker build --rm -t flask_app . && sudo docker rm flask_app --force | true && sudo docker run -d --name flask_app flask_app
