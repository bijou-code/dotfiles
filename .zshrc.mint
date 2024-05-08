# set up zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS

# set vi input for commands
set -o vi

# Enable ZSH auto-complete
autoload -Uz compinit; compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# PATH additions:
export PATH="$HOME/bin:$PATH"

# colorize command prompt
setopt PROMPT_SUBST
export PROMPT='[%F{yellow}%* %F{green}%1~ %F{cyan}($(git symbolic-ref --short HEAD 2> /dev/null))%F{white}]%# '

# colorize ls
export CLICOLOR="Yes"

# convenience aliases
alias ll="ls -lahF"
alias go-git='cd ~/Documents/git/'
alias go-dnd='cd ~/Documents/git/four-swords/'
alias go-writing='cd ~/Documents/git/writings/'
alias go-journal='cd ~/Documents/git/writings/journal/'
alias go-exercise='cd ~/Documents/git/writings/exercise/'

alias findit='find . -not -path "*/\.*" -type f -print0 | xargs -0 grep --color=auto'
alias my-ip='dig +short myip.opendns.com @resolver1.opendns.com'

