#! bash
sudo apt-get upgrade -y
sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install -y fish neovim
sudo apt-get install -y libncurses5-dev pigpio vim python3 python3-pip

#docker
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce

#docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose


