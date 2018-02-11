#!/bin/bash

apt-get update && apt-get upgrade -y

#gcc, make etc
//apt-get install build-essential -y
apt-get install build-essential libssl-dev libffi-dev python-dev -y

#tools
apt-get install htop -y
apt-get install yakuake -y
apt-get install git -y
apt-get install nmap -y
apt-get install mc -y
apt-get install vim -y
apt-get install vlc -y
apt-get install wireshark -y
chmod +x /usr/bin/dumpcap
apt-get install clamav clamav-daemon -y
apt-get install mysql-workbench -y
apt-get install filezilla -y


#java latest env
VERSION=jdk-9.0.4
LATEST_JAVA=http://download.oracle.com/otn-pub/java/jdk/9.0.4+11/c2514751926b4512b076cc82f959763f/${VERSION}_linux-x64_bin.tar.gz
curl -C - -LR#OH "Cookie: oraclelicense=accept-securebackup-cookie" -k "${LATEST_JAVA}"

mkdir /opt/java-jdk
tar -C /opt/java-jdk -zxf ${VERSION}_linux-x64_bin.tar.gz

ln -s /opt/java-jdk/${VERSION} /opt/java-jdk/jdk

export JAVA_HOME=/home/opt/jdk
export PATH=$PATH:$JAVA_HOME/bin

#python 3x
#apt-get install python3 -y -> if not found
apt-get install python3-pip -y
apt-get install -y python3-venv

#update-alternatives --list python
#ls /usr/bin/python*
#update-alternatives --config python

#golang
VERSION_GO=go1.9.2
LATEST_GO=wget https://storage.googleapis.com/golang/${VERSION_GO}.linux-amd64.tar.gz
#https://dl.google.com/go/go1.9.4.linux-amd64.tar.gz

tar -xvf ${VERSION_GO}.linux-amd64.tar.gz
mv go /usr/local

export GOROOT=/usr/local/go
export GOPATH=$HOME/work/goproj #workspace of golang
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
#export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

#ruby
apt-get install ruby -y

#js/npm/bower/gulp

#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#apt-get install -y nodejs
#latest 9x
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install -y nodejs

npm install -g bower
npm install -g gulp

#teamspeak

wget http://dl.4players.de/ts/releases/3.1.8/TeamSpeak3-Client-linux_amd64-3.1.8.run
chmod u+x TeamSpeak3-Client-linux_amd64-3.1.8.run
./TeamSpeak3-Client-linux_amd64-3.1.8.run
cd TeamSpeak3-Client*
chmod +x ./TeamSpeak3-Client*/ts3client_runscript.sh

#katoolin - let us install all kali linux tools ;)
git clone https://github.com/LionSec/katoolin.git
cp katoolin/katoolin.py /usr/bin/katoolin
chmod +x /usr/bin/katoolin


#keepass
wget https://10gbps-io.dl.sourceforge.net/project/keepass/KeePass%202.x/2.38/KeePass-2.38.zip

#veracrypt
wget https://launchpad.net/veracrypt/trunk/1.21/+download/veracrypt-1.21-setup.tar.bz2


