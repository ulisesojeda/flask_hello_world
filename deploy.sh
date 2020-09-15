sudo docker build -t static_website .
sudo docker kill `cat docker.cid`
sudo rm docker.cid
sudo docker run --name flask_app --cidfile docker.cid -p 80:5000 -d static_website
echo $?