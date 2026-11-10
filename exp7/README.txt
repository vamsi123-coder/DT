EXPERIMENT 7 - RUN IN THIS FOLDER

The files in this folder are the companion files for Experiment 7.

Commands:
cd exp7
sudo docker build -t mywebapp .
sudo docker images
sudo docker run -d -p 8080:80 --name webcontainer mywebapp

Open:
http://localhost:8080

Manage container:
sudo docker ps
sudo docker stop webcontainer
sudo docker rm webcontainer

The Dockerfile follows the lab manual: FROM nginx:alpine, WORKDIR,
COPY index.html, EXPOSE 80 and CMD to keep Nginx in the foreground.
