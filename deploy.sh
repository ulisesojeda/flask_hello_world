sudo docker build -t flask_app .
sudo docker kill `cat docker.cid`
sudo rm docker.cid
sudo docker run --name flask_app --cidfile docker.cid -p 80:5000 -d flask_app
echo $?
