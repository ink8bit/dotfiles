parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1='\[\033[01;31m\]\u\[\033[00m\]:\[\033[01;33m\]\w \[\033[01;35m\]$(parse_git_branch) \$\[\033[00m\] '

export PATH="$HOME/.rbenv/shims:$PATH"

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Update config
alias cu='source ~/.bash_profile'

# List all
alias l='ls -lhaF'

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
alias gl='git log --pretty=format:"%h - %an, %ar : %s"'
alias gc='git checkout'
alias gd='git diff'

# psql
alias psql_start='pg_ctl -D /usr/local/var/postgres start'
alias psql_stop='pg_ctl -D /usr/local/var/postgres stop'
alias psql_con='psql go_web_workshop'

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
