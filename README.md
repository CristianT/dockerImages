# mongodb-rpi
Files to create a docker image for the raspberry pi with a fresh install of mongodb using apt-get

The image is in docker hub: https://hub.docker.com/r/cristiant/mongodb-rpi/

I run it with local ip binding with the next command:
```
docker run -p 127.0.0.1:27018:27017 --name mongo_instance_001 -d cristiant/mongodb-rpi:2.4.10
```
