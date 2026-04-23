#zmodload zsh/zprof

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1

export ZSH_DISABLE_COMPFIX=true
export DISABLE_UPDATE_PROMPT=YES

export EDITOR=nvim
unset MAILCHECK

export MCFLY_FUZZY=2
export MCFLY_KEY_SCHEME=vim
export MCFLY_RESULTS=6
export MCFLY_DELETE_WITHOUT_CONFIRM=true
export MCFLY_INTERFACE_VIEW=TOP
export MCFLY_HISTORY_LIMIT=1000
export MCFLY_DISABLE_MENU=TRUE

# zsh options
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus
