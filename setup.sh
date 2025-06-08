# RUN THIS SCRIPT IN /home/$USER FOR PROPER RESULTS

# Update and install Docker
sudo apt update

sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt update

sudo apt-get install docker-ce docker-ce-cli containerd.io


# Verify that docker installed correctly
sudo docker run hello-world

# Install Docker-Compose

sudo apt install docker-compose

# Verify that Docker-Compose installed, Currenty Version: 2.37.0, and add your user to the docker group

docker compose version

usermod -aG docker $USER

# Install mailcow, the installation folder will be /home/$USER/mailcow-dockerized
git clone https://github.com/mailcow/mailcow-dockerized

cd mailcow-dockerized
# Run the configuration for mailcow
./generate_config.sh

# start mailcow
docker compose up -d
