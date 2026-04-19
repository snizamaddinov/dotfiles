#eval "$(atuin init zsh)"
#eval "$(starship init zsh)"

#if [[ -o interactive ]] && command -v tmux >/dev/null; then
#  if [[ -n "$GHOSTTY_BIN_DIR" || "$__CFBundleIdentifier" == "com.mitchellh.ghostty" ]]; then
#    if [[ -z "$TMUX" ]] && [[ ! "$TERM" =~ screen ]]; then
#      exec tmux
#    fi
#  fi
#fi
#

eval "$(zoxide init zsh --cmd cd)"

