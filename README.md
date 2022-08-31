## Demo CI/CD with Jenkins
## Init local VM with Vagrant and Ansible
## Init K8s cluster

export GITLAB_HOME=/srv/gitlab

docker run --detach  --hostname gitlab.baonk.com --publish 443:443 --publish 80:80 --publish 44:22  --name gitlab  --restart always --volume $GITLAB_HOME/config:/etc/gitlab:Z  --volume $GITLAB_HOME/logs:/var/log/gitlab:Z  --volume $GITLAB_HOME/data:/var/opt/gitlab:Z  --shm-size 256m  gitlab/gitlab-ee:latest