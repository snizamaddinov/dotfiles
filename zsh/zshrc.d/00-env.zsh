#zmodload zsh/zprof

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export HOMEBREW_NO_AUTO_UPDATE=1
export ZSH_DISABLE_COMPFIX=true
export DISABLE_UPDATE_PROMPT=YES
export EDITOR=nvim

unset MAILCHECK
