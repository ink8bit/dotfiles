# User configuration

export PATH="/usr/local/bin:$PATH"

# vs code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Update config
alias cu='source ~/.zshrc'

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

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# golang
export GOPATH=$HOME/Go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
