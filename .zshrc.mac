if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
fi

# Enable ZSH auto-complete
autoload -U +X compinit; compinit

# Setup Brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Initialize jenv
eval "$(jenv init -)"

# kubectl/helm auto-completion
source <(kubectl completion zsh)
source <(helm completion zsh)

# Add MySQL to Path
export PATH="$PATH:/opt/homebrew/opt/mysql-client/bin"

# Add Krew to Path
export PATH="$HOME/.krew/bin:$PATH"
export PATH="/opt/homebrew/Cellar/minikube/1.26.0/bin:$PATH"
export PATH="$PATH:$(pyenv root)/shims"
export PATH="/usr/local/opt/mysql-client@5.7/bin:$PATH"

export PYTHONPATH=".:$PYTHONPATH"

# Point Docker to Minikube instance (only works if minikube is already running)
eval $(minikube -p minikube docker-env)

# Use GKE specific kubernetes provider
# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
export USE_GKE_GCLOUD_AUTH_PLUGIN="True"
export TESTCONTAINERS_RYUK_DISABLED=true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/daniel.register/gcloud init/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/daniel.register/gcloud init/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/daniel.register/gcloud init/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/daniel.register/gcloud init/google-cloud-sdk/completion.zsh.inc'; fi

alias go-git='cd ~/Documents/git'
alias mcist="mvn clean install -DskipTests -T 2C"

# colorize command prompt
setopt PROMPT_SUBST
export PROMPT='[%F{yellow}%* %F{green}%1~ %F{cyan}($(git symbolic-ref --short HEAD 2> /dev/null))%F{white}]%# '

# set vi input for commands
set -o vi

# colorize ls
export CLICOLOR="Yes"
