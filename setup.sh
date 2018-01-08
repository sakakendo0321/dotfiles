sudo apt-get update && sudo apt-get upgrade
sudo apt-get install libncurses5-dev libncursesw5-dev xclip nmap cmake automake lsof

#install fish
wget fishshell.com/files/2.6.0/fish-2.6.0.tar.gz
./configure;make;make install
sudo
echo '/usr/local/bin/fish'>>/etc/shells
#chsh -s /usr/local/bin/fish
#install fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher -v
fisher update ; fisher ls-remote;fisher ls
#fish_user_path
#echo "set -U fish_user_path /user/local/bin " >>  $HOME/.config/fish/config.fish 
chsh -s /usr/bin/fish
#install fisher packages
fisher install z 0rax/fish-bd oh-my-fish/plugin-balias
fish_config&

#neovim
git clone https://github.com/neovim/neovim
cd neovim
#build dependencies
sudo apt-get install libtool libtool-bin autoconf cmake gettext-tools
make CMAKE_BUILD_TYPE=RelTypeWithDebInfo 
sudo make install
#dein.vim
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh #> ~/.config/nvim/init.vim
mkdir ~/.config/vim
sh ~/Downloads/installer.sh ~/.config/nvim #> ~/.config/nvim/init.vim

pip install -r ./pip3_requirements.sh #pip freeze >> ./pip3_requirements
	
ln -sf ./init/.gitconfig ~/.gitconfig
ln -sf ./init/.tmux.conf ~/.tmux.conf
ln -sf ./init/.config/* ~/.config/
