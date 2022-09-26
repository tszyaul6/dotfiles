# custom prompt
PROMPT='%F{cyan}%3~%f %F{green}>%f '

# ignore case for completion
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit

# list files after changing directory
function chpwd() { emulate -L zsh ; ls -AFG ; }

# show hidden files and other indicators when listing files
alias ls='ls -AFG'
alias ll='ls -AlFG'

# quick edit/reload for .zshrc
alias ez='vi ~/.zshrc'
alias rz='source ~/.zshrc && echo ".zshrc is reloaded"'

# quick access to some commonly used directories
alias df='cd ~/Developer/dotfiles'
alias dev='cd ~/Developer/'

# homebrew config
export PATH="/usr/local/sbin:$PATH"
