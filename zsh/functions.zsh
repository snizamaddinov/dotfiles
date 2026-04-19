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


list() {
    local level=${1:-1}
    tree -L "$level" -a -C
}


