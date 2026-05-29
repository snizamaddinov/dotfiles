if ! (( $+functions[zsh-defer] )); then
  fpath+=( "$HOME/Library/Caches/antidote/github.com/romkatv/zsh-defer" )
  source "$HOME/Library/Caches/antidote/github.com/romkatv/zsh-defer/zsh-defer.plugin.zsh"
fi
fpath+=( "$HOME/Library/Caches/antidote/github.com/zsh-users/zsh-autosuggestions" )
zsh-defer source "$HOME/Library/Caches/antidote/github.com/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fpath+=( "$HOME/Library/Caches/antidote/github.com/zdharma-continuum/fast-syntax-highlighting" )
zsh-defer source "$HOME/Library/Caches/antidote/github.com/zdharma-continuum/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"
fpath+=( "$HOME/Library/Caches/antidote/github.com/zsh-users/zsh-history-substring-search" )
source "$HOME/Library/Caches/antidote/github.com/zsh-users/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"
