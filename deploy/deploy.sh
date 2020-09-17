sudo docker build -t flask_app .
sudo docker rm flask_app -f | true
sudo docker run --name flask_app -p 80:5000 -d flask_app
echo $?