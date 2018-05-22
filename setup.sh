sudo apt-get update && sudo apt-get upgrade
sudo apt-get install libncurses5-dev libncursesw5-dev xclip nmap cmake automake lsof

#install fish
wget https://github.com/fish-shell/fish-shell/releases/download/2.7.1/fish-2.7.1.tar.gz
tar xvf fish-2.7.1.tar.gz ;cd fish-2.7.1
./configure;make;make install
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher update ; fisher ls-remote;fisher ls
#echo "set -U fish_user_path /user/local/bin " >>  $HOME/.config/fish/config.fish 
fisher install z 0rax/fish-bd oh-my-fish/plugin-balias gitignore 
#fish_config&

#neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update sudo apt-get install neovim



