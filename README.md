# Minecraft Server Starter
Putting this stuff here incase I ever need it.

## Commands
Run server:
```
java -Xmx2048M -Xms2048M -jar server.jar nogui
```

Local Build:
```
docker build -t minecraft .
docker run -d -p 25565:25565 minecraft
```

Docker Hub:
```
docker tag minecraft maxmorhardt/minecraft
docker push maxmorhardt/minecraft
```

EC2 Build (Use t2.medium)
```
sudo yum install docker -y
sudo service docker start 
sudo docker login
sudo docker pull maxmorhardt/minecraft
sudo docker run -d -p 25565:25565 maxmorhardt/minecraft
```