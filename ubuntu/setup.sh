[[ ! -e ~/.bashrc ]] && ln -isv ~/dotfiles/raspberry/.bashrc ~/.bashrc
[[ ! -e ~/.vimrc  ]] && ln -isv ~/dotfiles/raspberry/.vimrc ~/.vimrc
[[ ! -e ~/.gitconfig ]] && ln -isv ~/dotfiles/raspberry/.gitconfig ~/.gitconfig

sudo apt-get upgrade
sudo apt-get update
sudo apt-get install libncurses5-dev pigpio vim python3 python3-pip

sudo apt-add-repository ppa:fish-shell/release-2
sudo apt-get install software-properties-common
sudo apt-add-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install fish

#fish,fisherman
fish --version
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher bobthefish balias bass extract getopts gitignore nvm peco spin thefuck z
nvm install --lts && nvm use --lts

#python packages
pip3 install -r requirements.txt

#npm global packages
npm install -g forever pm2 express-generator


