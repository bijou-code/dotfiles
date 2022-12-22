# set up zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Enable ZSH auto-complete
autoload -Uz compinit; compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# set vi input for commands
set -o vi

# convenience aliases
alias ll="ls -lahF"
alias go-git='cd ~/Documents/git/'
alias go-dnd='cd ~/Documents/git/four-swords/'
alias go-writing='cd ~/Documents/git/writings/'
alias go-journal='cd ~/Documents/git/writings/journal/'
alias go-exercise='cd ~/Documents/git/writings/exercise/'

# colorize command prompt
setopt INC_APPEND_HISTORY
setopt HIST_SAVE_NO_DUPS

setopt PROMPT_SUBST
export PROMPT='[%F{yellow}%* %F{green}%1~ %F{cyan}($(git symbolic-ref --short HEAD 2> /dev/null))%F{white}]%# '

# colorize ls
export CLICOLOR="Yes"
