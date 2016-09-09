# start from base
FROM cristiant/mono-rpi:4.4.2

#WARNING!: THIS FILE SHOULD BE FUNCTIONAL BUT IT HAS NOT BEEN FULLY TESTED

#install mono
RUN apt-get update && apt-get -y install \
    git \
    autoconf \
    libtool \
    automake \
    build-essential \
    mono-devel \
    gettext \
    libtool-bin
    
RUN     PREFIX=/
RUN     git clone https://github.com/mono/mono.git

#Checkout the desired version
#RUN     cd mono; git checkout tags/mono-4.4.2.11

RUN     cd mono; ./autogen.sh --prefix=$PREFIX
RUN     cd mono; make
RUN     cd mono; make install
RUN     cd; rm -rf mono
RUN     apt-get remove git \
                   build-essential
RUN     apt-get clean; apt-get autoclean; apt-get autoremove