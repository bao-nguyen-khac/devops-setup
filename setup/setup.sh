sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
sudo apt-get update
sudo apt-get install docker-compose-plugin -y
sudo apt install ansible -y
sudo apt install nginx -y
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# agnoster
# export GITLAB_HOME=/srv/gitlab

# docker run --detach  --hostname gitlab.baonk.com --publish 443:443 --publish 80:80 --publish 44:22  --name gitlab  --restart always --volume $GITLAB_HOME/config:/etc/gitlab:Z  --volume $GITLAB_HOME/logs:/var/log/gitlab:Z  --volume $GITLAB_HOME/data:/var/opt/gitlab:Z  --shm-size 256m  gitlab/gitlab-ee:latest
