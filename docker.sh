sudo apt -y remove docker docker-engine docker.io containerd runc;
sudo apt update;
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
## Test
# sudo apt-key fingerprint 0EBFCD88;
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable";

sudo apt update;
sudo apt -y install docker-ce docker-ce-cli containerd.io;
sudo docker run hello-world;
sudo groupadd docker;
sudo usermod -aG docker $USER;
newgrp docker;
docker run hello-world;

## WARNING: Error loading config file: /home/user/.docker/config.json - stat /home/user/.docker/config.json: permission denied
## If you face this warning then
# sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
# sudo chmod g+rwx "$HOME/.docker" -R

## Refer https://docs.docker.com/engine/install/ubuntu/ and https://docs.docker.com/engine/install/linux-postinstall/
