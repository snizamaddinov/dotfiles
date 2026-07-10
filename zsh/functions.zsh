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

gdlb() {
    branches=$(git branch --merged develop | grep -vE '^\*|^[[:space:]]*(develop|master)$' | sed 's/^[[:space:]]*//')

    if [ -z "$branches" ]; then
        echo "No local branches merged into develop found."
        return 0
    fi

    if [ "$1" = "-f" ]; then
        echo "$branches" | xargs git branch -d
    else
        echo "Local branches merged into develop that would be deleted:"
        echo "$branches"
        echo
        echo "Run with -f to delete them."
    fi
}

gdrb() {
    branches=$(git branch -r --merged origin/develop | grep -vE 'origin/(HEAD|develop|master)$' | sed 's|^[[:space:]]*origin/||')

    if [ -z "$branches" ]; then
        echo "No remote branches merged into origin/develop found."
        return 0
    fi

    if [ "$1" = "-f" ]; then
        echo "$branches" | xargs -I {} git push origin --delete {}
    else
        echo "Remote branches merged into origin/develop that would be deleted:"
        echo "$branches"
        echo
        echo "Run with -f to delete them."
    fi
}

restic-browser() {
  set -a
  source "$HOME/.config/vaultwarden-restic/r2.env"
  set +a

  open -a "Restic-Browser"
}

restic-browser-s3() {
  set -a
  source "$HOME/.config/vaultwarden-restic/s3.env"
  set +a

  open -a "Restic-Browser"
}

optimize_mov() {
    if [[ -z "$1" || -z "$2" ]]; then
        echo "Usage: optimize_mov input.mov output.mp4"
        return 1
    fi

    ffmpeg -i "$1" -vcodec libx264 -crf 23 -acodec aac "$2"
}

