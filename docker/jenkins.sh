#!/usr/bin/env bash
sudo docker run --name jenkins \
    -p 30100:8080 \
    -v /home/jenkins:/var/jenkins_home \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e JAVA_OPTS=-Duser.timezone=America/Manaus \
    --restart=always \
    -d -u root jenkinsci/blueocean

# Unlock Jenkins:
# docker exec <container> cat /var/jenkins_home/secrets/initialAdminPassword