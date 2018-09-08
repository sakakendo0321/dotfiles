#!bash

#config files
export RCDIR=../rc
[[ ! -e ~/.bashrc ]] && ln -isv $(RCDIR)/.bashrc ~/.bashrc
[[ ! -e ~/.vimrc  ]] && ln -isv ./rc/.vimrc ~/.vimrc
[[ ! -e ~/.gitconfig ]] && ln -isv ./rc/.gitconfig ~/.gitconfig
[[ ! -e ~/.config/fish/config.fish ]] && ln -isv ./rc/config.fish ~/.config/fish/config.fish
[[ ! -e ~/.config/nvim/init.vim ]] && ln -isv ./rc/init.vim ~/.config/nvim/init.vim

#install script
source setup.brew.sh
source setup.fish.sh
