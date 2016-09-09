Creates a container with mongodb default installation in Debian Jessie

The container is published here:
https://hub.docker.com/r/cristiant/mongodb-rpi/

Example to run it:
sudo docker create -v /data/db --name dbstore cristiant/mongodb-rpi:2.4.10
sudo docker run --volumes-from dbstore -v /data/db --restart=always -p 127.0.0.1:28000:27017 --name mongodbInstance -d cristiant/mongodb-rpi:2.4.10

To backup data from it:
sudo apt-get install mongodb-clients
mongodump --port 28000

To restore to a new container:
sudo apt-get install mongodb-clients
mongorestore --port 28000 ./dump