Installing Docker Compose for Linux:
sudo curl -L
https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname
-s`-`uname -m` -o /usr/local/bin/docker-compose

I've installed version 1.15.0:
sudo su
curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

ctrl-D to exit root

sudo chmod +x /usr/local/bin/docker-compose


Uninstalling docker-compose:
sudo su
sudo rm /usr/local/bin/docker-compose

ctrl-D to exit root
