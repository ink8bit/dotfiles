# User configuration

# vs code
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Update config
alias ca='source ~/.zshrc'

# brew
alias bl='brew list'
alias bd='brew doctor'
alias bo='brew outdated'
alias bu='brew update && brew upgrade'

# yarn
alias yi='yarn install'
alias yo='yarn outdated'
alias yu='yarn upgrade-interactive --latest'

# npm
alias nog='npm list -g --depth=0 --outdated'
alias no='npm list --depth=0 --outdated'
alias nlg='npm list -g --depth=0'
alias nl='npm list --depth=0'

# python
alias pe='python3 -m venv penv'
alias pea='source penv/bin/activate'

# git
alias gs='git status'
alias gb='git branch'
alias gl='git log --pretty=format:"%h - %an, %ar : %s"'
alias gc='git checkout'
alias gd='git diff'
