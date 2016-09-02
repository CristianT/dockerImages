# start from base
FROM resin/rpi-raspbian:jessie

#install mongodb
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install mongodb-server

# Create the MongoDB data directory
RUN mkdir -p /data/db

# Expose port 27017 from the container to the host
EXPOSE 27017

# Set usr/bin/mongod as the dockerized entry-point application
ENTRYPOINT ["/usr/bin/mongod"]
