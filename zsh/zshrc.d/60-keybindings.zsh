# Configure word boundaries for navigation and deletion
autoload -U select-word-style
select-word-style bash

# Vim mode — KEYTIMEOUT=1 reduces escape delay from ~400ms to 10ms
bindkey -v
KEYTIMEOUT=1

# Enter normal mode without shifting cursor back one position
function vi-cmd-mode-no-adjust() {
  local cursor_before=$CURSOR
  zle vi-cmd-mode
  (( CURSOR < cursor_before )) && zle forward-char
}
zle -N vi-cmd-mode-no-adjust
bindkey -M viins '\e' vi-cmd-mode-no-adjust

# History substring search — both modes, plus j/k in normal mode
bindkey -M viins '^[[A' history-substring-search-up
bindkey -M viins '^[[B' history-substring-search-down
bindkey -M vicmd '^[[A' history-substring-search-up
bindkey -M vicmd '^[[B' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

# McFly — bind in both insert and normal mode
bindkey -M viins '^R' mcfly-history-widget
bindkey -M vicmd '^R' mcfly-history-widget

# Alt+Backspace — kill word
bindkey -M viins '^[^?' backward-kill-word

