# Configure word boundaries for navigation and deletion
autoload -U select-word-style
select-word-style bash

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey '^[^?' backward-kill-word
bindkey '^R' history-incremental-search-backward

