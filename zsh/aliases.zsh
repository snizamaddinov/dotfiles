# ww-var
alias cdvar='cd ~/Downloads/var-www'

# general
alias cpc='pbcopy'
alias grepi='grep -i'
alias vim='nvim'

# Laradock
alias cdlaradock='cd ~/Downloads/var-www/laradock'
alias workspaceb='cdlaradock && docker compose exec workspace bash'

# Git
alias ga="git add"
alias gaa="git add ."

alias gc="git commit -m"
alias gp="git push"
alias gs="git status -u"
alias nah="git reset --hard && git clean -df"
alias glog="git log --abbrev-commit --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias branches_desc="git for-each-ref --sort=committerdate refs/heads/ --format=\"%(committerdate:iso8601) %(refname:short)\""

# Docker
alias cps="docker compose ps"
alias up="docker compose up"
alias upo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml up"
alias upd="docker compose up -d"
alias updo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml up -d"
alias down="docker compose down"
alias downo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml down"
alias build="docker compose build"
alias buildo="docker compose -f docker-compose.yaml -f docker-compose.override.yaml down"
alias restart="docker compose down && docker compose up"
alias restartd="docker compose down && docker compose up -d"
alias appb="docker exec -it django_gunicorn bash"
alias adminer="cdlaradock && docker compose up adminer -d && 1 && clear"
alias mysql="cdlaradock && docker compose up mysql -d && 1 && clear"
alias phoenix="ai && cd ../phoenix-service && docker compose -f compose.phoenix.yaml -f compose.override.yaml up -d && 2"
alias masterai="ai && docker compose -f compose.master.yaml -f compose.override.yaml up"

# AI Project with override
alias ai="cd ~/PycharmProjects/metodbox-ai-backend/"
alias uplog="cd ~/PycharmProjects/phoenix-service/ && docker compose -f compose.phoenix.yaml -f compose.override.yaml up -d"
alias stoplog="cd ~/PycharmProjects/phoenix-service/ && docker compose -f compose.phoenix.yaml -f compose.override.yaml stop"
alias upai="ai && docker compose -f docker-compose-dev.yml -f docker-compose.override.yml up"
alias upaid="ai && docker compose -f docker-compose-dev.yml -f docker-compose.override.yml up -d"
alias buildai="ai && COMPOSE_BAKE=true && docker compose -f docker-compose-dev.yml -f docker-compose.override.yml build"
alias stopai="ai && docker compose -f docker-compose-dev.yml -f docker-compose.override.yml stop"
alias aiexec="ai && docker exec -it django_gunicorn bash"

# Global shortcuts
alias edit="vim ~/.aliases"

# Python pip
#alias pip="python -m pip"

# brew no update session
alias brewinstall="HOMEBREW_NO_AUTO_UPDATE=1 brew install"

