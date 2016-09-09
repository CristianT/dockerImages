Mono cannot be built with the default raspbian mono version. Fortunately it can be built installing manually another version, for instance one found in either of these mirrors:

http://sourceforge.net/projects/bananapi/files/mono_3.10-armhf.deb
https://www.dropbox.com/s/k6ff6s9bfe4mfid/mono_3.10-armhf.deb
http://www.frickelzeugs.de/mono_3.10-armhf.deb

After that, to build compile mono in your local raspberry follow this instructions:

apt-get update && apt-get -y install git autoconf libtool automake build-essential mono-devel gettext libtool-bin
mkdir /monoBuild
PREFIX=/monoBuild
PATH=$PREFIX/bin:$PATH 
git clone https://github.com/mono/mono.git
cd mono
git checkout tags/mono-4.4.2.11
./autogen.sh --prefix=$PREFIX
make
make install

Then we can create a container and copy the contents of /monoBuild to it.
This is what is available here:
https://hub.docker.com/r/cristiant/mono-rpi/

To run the container:
sudo docker run -it cristiant/mono-rpi:4.4.2 mono --version