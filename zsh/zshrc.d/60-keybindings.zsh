# Configure word boundaries for navigation and deletion
autoload -U select-word-style
select-word-style bash

# Enable default Emacs keybindings (completely disables Vim/Vi mode)
bindkey -e

# History substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# McFly — bind to default keymap
bindkey '^R' mcfly-history-widget

# Alt+Backspace — kill word
bindkey '^[^?' backward-kill-word

