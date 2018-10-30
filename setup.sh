#! bash


[[ ! -e ~/.bashrc ]] && ln -isv $(pwd)/.bashrc ~/.bashrc
[[ ! -e ~/.vimrc  ]] && ln -isv $(pwd)/.vimrc ~/.vimrc
[[ ! -e ~/.gitconfig ]] && ln -isv $(pwd)/.gitconfig ~/.gitconfig

if [[ command -v python3 ]] && [[command -v pip3 ]] ; then
	pip3 install -f requirements.txt
fi

#detect package manager
if [[ command -v apt ]] ; then
	echo "package manager : apt was found"
	source ./seutp/setup.apt.sh
elif [[command -v brew ]] ; then
	echo "package manager : brew was found"
	source ./seutp/setup.brew.sh
fi

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

