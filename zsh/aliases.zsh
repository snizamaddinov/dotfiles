# app/command aliases
alias vim='nvim'

# Git
alias gs="git status -u"
alias ga="git add"
alias gaa="git add ."

alias gc="git commit -m"

alias gl="git pull"

alias gp="git push"
alias gpu="git push --set-upstream origin $(git_current_branch)"

alias glog="git log --abbrev-commit --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias branches_desc="git for-each-ref --sort=committerdate refs/heads/ --format=\"%(committerdate:iso8601) %(refname:short)\""


# Docker
alias upo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml up"
alias upd="docker compose up -d"
alias updo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml up -d"
alias down="docker compose down"
alias downo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml down"
alias build="docker compose build"
alias buildo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml down"
alias adminer="cdlaradock && docker compose up adminer -d && 1 && clear"
alias mysql="cdlaradock && docker compose up mysql -d && 1 && clear"
alias phoenix="cdai && cd ../phoenix-service && docker compose -f compose.phoenix.yaml -f compose.override.yaml up -d && 2"
alias masterai="cdai && docker compose -f compose.master.yaml -f compose.override.yaml up"

# CD shortcuts
alias cdai="cd ~/PycharmProjects/metodbox-ai-backend/"
alias cdvar='cd ~/Downloads/var-www'
alias cdlaradock='cd ~/Downloads/var-www/laradock'

# ls
alias ls="ls -G"
alias ll="ls -Glh"
alias la="ls -GlhA"

# cd
alias -g ..='cd ..'
alias -g ...='cd ../..'

alias -- -='cd -'
alias 1='cd -1'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'

alias md='mkdir -p'
alias rd=rmdir

# brew no update session
alias brewinstall="HOMEBREW_NO_AUTO_UPDATE=1 brew install"

