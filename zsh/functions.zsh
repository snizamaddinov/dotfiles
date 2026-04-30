# ~/.zsh_functions
unset -f checkout 2>/dev/null
unalias checkout 2>/dev/null

checkout() {
    if git show-ref --verify --quiet refs/heads/"$1"; then
        git checkout "$1"
    else
        git checkout -b "$1"
    fi
}

# Enter container by name pattern
dex() {
  local pattern="$1"
  if [[ -z "$pattern" ]]; then
    echo "Usage: dex <partial_container_name>"
    return 1
  fi

  local containers
  containers=$(docker ps --format '{{.Names}}' | grep "$pattern")

  local count
  count=$(echo "$containers" | wc -l)

  if [[ "$count" -eq 0 ]]; then
    echo "No container found matching '$pattern'"
  elif [[ "$count" -eq 1 ]]; then
    docker exec -it "$containers" bash
  else
    echo "Multiple containers match '$pattern':"
    echo "$containers"
  fi
}

lst() {
  lsd --tree --depth "${1:-1}"
}

lat() {
  lsd -A --tree --depth "${1:-1}"
}

function git_current_branch(){
  local ref
  ref=$(git symbolic-ref --quiet HEAD 2> /dev/null)
  local ret=$?
  if [[ $ret != 0 ]]; then
    [[ $ret == 128 ]] && return  # no git repo.
    ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  fi
  echo ${ref#refs/heads/}
}

gpt() {
  local latest_tag=$(git describe --tags --abbrev=0 2>/dev/null)

  if [ -z "$latest_tag" ]; then
    echo "No local tags found."
    return 1
  fi

  if git ls-remote --tags origin | grep -q "refs/tags/$latest_tag"; then
    echo "Tag '$latest_tag' is already on origin."
  else
    git push origin tag "$latest_tag"
  fi
}

