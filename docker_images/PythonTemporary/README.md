step 1: $ chmod a+x build_bash.sh
step 2: $ ./build_bash.sh
step 3: $ chmod a+x run_bash.sh
step 4: $ ./run_bash.sh

At this point of time, one of your terminals will be taken up by the server. start a new terminal.

To check if the app is running on a VM:
$ curl http://localhost:4000

To stop the process: ctrl-c

alternative step 3: chmod a+x run_detached_bash.sh
alt step 4: ./run_detached_bash.sh

To stop the background process: sudo docker stop 7e2286cb51fe (Where this represents the container ID that can be found by running sudo docker ps)

To upload to Docker:

docker tag image username/repository:tag

--> docker tag friendlyhello (username)/get-started:part1

docker images (see newly tagged image)

docker push username/repository:tag


Installing Docker Compose for Linux:
sudo curl -L
https://github.com/docker/compose/releases/download/$dockerComposeVersion/docker-compose-`uname
-s`-`uname -m` -o /usr/local/bin/docker-compose

I've installed version 1.15.0:
sudo su
curl -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

ctrl-D to exit root

sudo chmod +x /usr/local/bin/docker-compose
