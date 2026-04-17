source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh

if [[ ! -f "$DOTFILES/zsh/.zsh_plugins.zsh" || "$DOTFILES/zsh/zsh_plugins.txt" -nt "$DOTFILES/zsh/.zsh_plugins.zsh" ]]; then
  antidote bundle < "$DOTFILES/zsh/zsh_plugins.txt" > "$DOTFILES/zsh/.zsh_plugins.zsh"
fi

source "$DOTFILES/zsh/.zsh_plugins.zsh"

