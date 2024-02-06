MASON_BIN="$(cd ~/AppData/Local/nvim-data/mason/bin && pwd)"
export PATH=$PATH:$MASON_BIN

alias vi="nvim"

alias df="cd ~/Developer/dotfiles && nvim && cd -"
alias reload="cp ~/Developer/dotfiles/.bashrc ~/.bashrc && source ~/.bashrc && rm -rf ~/AppData/Local/nvim && cp -r ~/Developer/dotfiles/nvim ~/AppData/Local/" 
