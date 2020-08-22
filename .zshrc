# shell configuration

# case-insensitive globbing
setopt NO_CASE_GLOB

# change directory without cd command
setopt AUTO_CD

# verify command before executing
setopt HIST_VERIFY

# correct my commands
setopt CORRECT
setopt CORRECT_ALL

export PS1="%F{blue}@%n%f [%1~] %(?.%F{green}✔︎%f.%F{red}✘%f) %(!.#.$) "
export CLICOLOR=1

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# reset shell to defaults
alias reset_shell="emulate -LR zsh"

# update config
alias cu="source ~/.zshrc"

# Files
alias l="ls -lhaF"
alias doc="cd ~/Documents"

# Swift
alias dev="cd ~/Documents/Developer"
# Rust
alias rdev="cd ~/Documents/rust_apps"
# Go
alias godev="cd ~/Documents/go_apps"

# brew
alias bl='brew list'
alias bd='brew doctor'
alias bo='brew outdated'
alias bu='brew update && brew upgrade'

# yarn
alias ya='yarn add'
alias yo='yarn outdated'
alias yu='yarn upgrade-interactive --latest'

# npm
alias no='npm outdated'
alias nlg='npm list -g --depth=0'
alias nl='npm list --depth=0'

# git
alias gs='git status'
alias gb='git branch'
alias gbD="git branch -D"
alias gl='git log --pretty=format:"%h - %an, %ar: %s"'
alias gc='git checkout'
alias gcb="git checkout -b"
alias gd='git diff'

# golang
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
