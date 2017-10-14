#Start from ubuntu 14.04
docker run -it ubuntu:14.04 bash

apt-get update
apt-get install python3.4
apt-get install python3-pip
pip3 install virtualenv

#Create a new user for buildbot
adduser --home /home/buildbot buildbot

#Do the rest as buildbot
su buildbot
cd

#Create virtualenv
mkdir venv && cd venv
virtualenv --no-site-packages sandbox
source sandbox/bin/activate

#Insall buildbot 
pip install 'buildbot[bundle]'
pip install buildbot-worker
pip install setuptools-trial

#setup master/woker
cd
buildbot create-master master
mv master/master.cfg.sample master/master.cfg

buildbot-worker create-worker worker localhost example-worker pass

#Start
buildbot start master
buildbot-worker start worker

