sudo apt update
sudo apt install ansible -y
sudo apt install nginx -y
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# agnoster
# export GITLAB_HOME=/srv/gitlab

# docker run --detach  --hostname gitlab.baonk.com --publish 443:443 --publish 80:80 --publish 44:22  --name gitlab  --restart always --volume $GITLAB_HOME/config:/etc/gitlab:Z  --volume $GITLAB_HOME/logs:/var/log/gitlab:Z  --volume $GITLAB_HOME/data:/var/opt/gitlab:Z  --shm-size 256m  gitlab/gitlab-ee:latest
