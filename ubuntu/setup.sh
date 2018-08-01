#! bash


[[ ! -e ~/.bashrc ]] && ln -isv $(pwd)/.bashrc ~/.bashrc
[[ ! -e ~/.vimrc  ]] && ln -isv $(pwd)/.vimrc ~/.vimrc
[[ ! -e ~/.gitconfig ]] && ln -isv $(pwd)/.gitconfig ~/.gitconfig

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

#fish,fisherman
fish --version
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher bobthefish balias bass extract getopts gitignore nvm peco spin thefuck z fnm
fish -c 'fnm use lts'
#nvm install --lts && nvm use --lts

#instal vim plugin
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
bash ./installer.sh ~/.cache/dein

#python packages
#pip3 install -r requirements.txt

#npm global packages
npm install -g forever pm2 express-generator


echo 'check installation result'
fish --version
npm --version
node --version
nvim --version
docker --version
docker-compose -version

