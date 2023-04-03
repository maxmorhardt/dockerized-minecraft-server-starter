# Minecraft Server Starter
Putting this stuff here incase I ever need it.

## Commands
Run server:
```
java -Xmx2048M -Xms2048M -jar server.jar nogui
```

Local Build:
```
docker build -t <IMAGE_NAME> .
docker run -d -p 25565:25565 <IMAGE_NAME>
```

Docker Hub:
```
docker tag minecraft <DOCKER_HUB_USERNAME>/<IMAGE_NAME>
docker push <DOCKER_HUB_USERNAME>/<IMAGE_NAME>
```

EC2 Build (Use t2.medium)
```
sudo yum install docker -y
sudo service docker start 
sudo docker login
sudo docker pull <DOCKER_HUB_USERNAME>/<IMAGE_NAME>
sudo docker run -d -p 25565:25565 <DOCKER_HUB_USERNAME>/<IMAGE_NAME>
```

Removing Images/Containers
```
sudo docker ps -aq | sudo xargs docker stop | sudo xargs docker rm
sudo docker images -aq | sudo xargs docker rmi -f
```
