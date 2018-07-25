sudo apt-get upgrade
sudo apt-get update
sudo apt-get install libncurses5-dev pigpio vim

[[ ! -e ~/.bashrc ]] && ln -isv ~/dotfiles/raspberry/.bashrc ~/.bashrc
[[ ! -e ~/.vimrc  ]] && ln -isv ~/dotfiles/raspberry/.vimrc ~/.vimrc
[[ ! -e ~/.gitconfig ]] && ln -isv ~/dotfiles/raspberry/.gitconfig ~/.gitconfig



if [[ ! $(command -v nvm) ]]; then
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
	source ~/.bashrc
fi
if [[ ! $(command -v npm) ]]; then
	nvm install --lts
fi

nvm --version
node --version
npm --version

if [[ ! $(command -v fish) ]]; then
	if [ ! -d fish-2.7.1 ] || [ ! -f fish-2.7.1.tar.gz ]; then
		wget https://github.com/fish-shell/fish-shell/releases/download/2.7.1/fish-2.7.1.tar.gz -O fish-2.7.1.tar.gz 
		tar xzvf fish-2.7.1.tar.gz
		rm fish-2.7.1.tar.gz
	fi
	cd fish-2.7.1 &&./configure&&make&&sudo make install
	cd ..
	rm fish-2.7.1
fi
fish --version



