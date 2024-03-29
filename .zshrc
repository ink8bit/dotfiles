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

# git current branch
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{magenta}%b%f%f'
zstyle ':vcs_info:*' enable git

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
# JS
alias jsdev="cd ~/Documents/js_apps"
# Python
alias pydev="cd ~/Documents/py_apps"

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
export PATH=$PATH:$GOPATH/bin
export GOBIN=$HOME/go/bin/

# python
alias py="python3"
alias pip="pip3"
alias act="source env/bin/activate"
alias dact="deactivate"
