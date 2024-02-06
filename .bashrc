DF="~/Developer/dotfiles"
MASON_BIN="~/AppData/Local/nvim-data/mason/bin"

export PATH=$PATH:$MASON_BIN

alias vi="nvim"
alias bashrc="cd $DF && vi .bashrc && cd -"
alias nvim-conf="cd $DF/nvim && vi init.lua && cd -"
alias update-dotfiles="cp -r $DF/nvim ~/AppData/Local/ && cp $DF/.bashrc ~/ && source ~/.bashrc"
