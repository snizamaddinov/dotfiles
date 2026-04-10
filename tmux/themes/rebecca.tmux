# --- Rebecca Purple Theme (The Skin) ---

# Status bar general
set -g status-style "bg=default,fg=#a682cc"

# Status segments
set -g status-left "#[fg=#cc99ff,bold] #S "
set -g status-right ""

# Window status (Tabs)
setw -g window-status-format " #[fg=#663399]#I:#W "
setw -g window-status-current-format "#[fg=#d1b3ff,bold,bg=#331a4d] #I:#W "

# Pane borders
set -g pane-border-style "fg=#331a4d"
set -g pane-active-border-style "fg=#663399"

# Command line/Message colors
set -g message-style "fg=#d1b3ff,bg=#331a4d"

