function get_pkg(){
	sudo apt-get update && sudo apt-get upgrade
	sudo apt-get install libncurses5-dev libncursesw5-dev xclip nmap cmake automake lsof
}

#install fish
wget https://github.com/fish-shell/fish-shell/releases/download/2.7.1/fish-2.7.1.tar.gz
tar xvf fish-2.7.1.tar.gz ;cd fish-2.7.1
./configure;make;make install
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
fisher update ; fisher ls-remote;fisher ls
#echo "set -U fish_user_path /user/local/bin " >>  $HOME/.config/fish/config.fish 
fisher install z 0rax/fish-bd oh-my-fish/plugin-balias gitignore 
curl https://raw.githubusercontent.com/fish-shell/fish-shell/master/share/completions/node.fish >>~/.config/fish/completions/node.fish
#fish_config&

#neovim
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update sudo apt-get install neovim



function install_fish(){
	if [[ $(which fish) ]] ; then  
		echo "fish exists"; 
	else  
		echo "fish is not exists.\ndo you want to install now";
		read input
		if [[ $input = 'yes' ]] ; then
			echo "install fish"
			wget fishshell.com/files/2.6.0/fish-2.6.0.tar.gz
			tar xvf fish-2.6.0.tar.gz;cd fish-2.6.0;./configure;make;make install;cd -
			echo '/usr/local/bin/fish'>>/etc/shells
			curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher
			fisher -v
			fisher update ; fisher ls-remote;fisher ls
			#fish_user_path
			#echo "set -U fish_user_path /user/local/bin " >>  $HOME/.config/fish/config.fish 
			chsh -s /usr/bin/fish
			#install fisher packages
			fisher install z 0rax/fish-bd oh-my-fish/plugin-balias
			fish_config&
		else
			echo "don't install fish now"
		fi
	fi
}
#neovim
function install_neovim(){
	if [[ $(which fish) ]] ; then  
		echo "neovim exists"; 
	else  
		echo "neovim is not exists.\ndo you want to install now";
		read input
		if [[ $input = 'yes' ]] ; then
			echo "install neovim "
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
		else
			echo "don't install fish now"
		fi
	fi
}
function setup_python(){
	pip install -r ./requiremets/requiremnt.pip3.txt #pip freeze >> ./pip3_requirements
}
	
function make_link(){
	echo "make link for gitconfig,tmux,nvim"
	[[ -d ~/.config/nvim ]] || mkdir  ~/.config/nvim 
	[[ -d ~/.config/fish ]] || mkdir ~/.config/fish
	ln -sf $(pwd)/init/.gitconfig ~/.gitconfig
	ln -sf $(pwd)/init/.tmux.conf ~/.tmux.conf
	ln -sf $(pwd)/init/init.vim ~/.config/nvim/init.vim
	ln -sf $(pwd)/init/config.fish ~/.config/fish/config.vim
}

function clone(){
	local repos=("kosen" "pythonanywhere")
	i=0
	for repo in ${repos[@]} ; do
		printf "clone https://github.com/sakakendo0321/${repo}\n"
		git clone "https://github.com/sakakendo0321/${repo}" ~/${repo}
		let i++
	done
}
function main(){
	i=0
	for func in $@ ; do
		if [[ $func = "clone" ]] ; then
			echo "***clone***"
			clone
		elif [[ $func = "link" ]] ; then
			echo "***link***"
			make_link
		elif [[ $func = "neovim" ]] ; then
			echo "***install neovim***"
			install_neovim
		elif [[ $func = "fish" ]] ; then
			echo "***install fish***"
			install_fish
		elif [[ $func = "pkg" ]] ; then
			echo "***install pkg***"
			get_pkg
		elif [[ $func = "pip" ]] ; then
			echo "***install python package***"
			setup_python
		else
			echo "unknown command"
			printf "***usage***\nclone,link,neovim,fish,pkg,pip"
		fi
		let i++
	done
	echo "done"
}

#main $@
