# Purpose
This document is for storing and using one-liners that are helpful for system maintenance and script testing, but are too unimportant and environment dependent to be worth turning into a script at this juncture.

# git

#### One-time git configurations for convenience functions
Based on suggestions from the [GitButler Blog](https://blog.gitbutler.com/git-tips-and-tricks/)
``` sh
git config --global alias.aa 'add --all'
git config --global alias.diffs 'diff --staged'
git config --global alias.st 'status'
git config --global alias.staash 'stash --all'
git config --global core.excludesfile ~/.gitignore
```
#### Git tricks
```
git clone -c "core.sshCommand=ssh -i ~/.ssh/id_ed25519_personal" -c "user.email=jedion9@gmail.com" git@github.com:bijou-code/dotfiles 
```

# docker / kubernetes destination connectivity testing:
```
docker run -it --rm --name nginx -p 8080:80/tcp nginx:alpine
```

# shell scripting

#### Run a debian container with `dash` to try things in a POSIX environment (using docker):
from: [Reddit](https://www.reddit.com/r/linux/comments/lp95w3/writing_bash_scripts_that_are_not_only_bash/)
``` sh
docker run -it --rm debian sh -c 'apt update && apt install -y rlfe && rlfe dash'
```

#### Run a premade script inside a debian `dash` env for the same reason
Modification of the above.
``` sh
docker run -it -v ~/scriptdir/:/data/bin/ --rm debian sh -c '/data/bin/script.sh arg1 arg2'
```

# Mac
### Update launchpad grid count
```
defaults write com.apple.dock springboard-columns -int 10
defaults write com.apple.dock springboard-rows -int 7
killall Dock
```
and to reset:
```
defaults delete com.apple.dock springboard-columns
defaults delete com.apple.dock springboard-rows
killall Dock
```
