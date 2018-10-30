#fish,fisherman
fish --version
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fish -c 'fisher bobthefish balias bass extract getopts gitignore nvm peco spin thefuck z fnm'
fish -c 'fnm use lts'

