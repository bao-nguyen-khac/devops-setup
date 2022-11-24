docker network create main
docker run -u 0 -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):$(which docker) -v ~/jenkins_volume:/var/jenkins_home -p 8080:8080  --name jenkins --network main -d jenkins/jenkins:lts-jdk11
