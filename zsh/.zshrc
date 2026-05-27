export DOTFILES="$HOME/dotfiles"

for file in "$DOTFILES/zsh/zshrc.d/"*.zsh; do
  [ -r "$file" ] && source "$file"
done


# bun completions
[ -s "/Users/bkmobil/.bun/_bun" ] && source "/Users/bkmobil/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
