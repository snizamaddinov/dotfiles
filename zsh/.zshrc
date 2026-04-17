export DOTFILES="$HOME/dotfiles"

for file in "$DOTFILES/zsh/zshrc.d/"*.zsh; do
  [ -r "$file" ] && source "$file"
done

