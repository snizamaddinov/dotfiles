autoload -Uz colors && colors
setopt prompt_subst

: ${ZSH_THEME_PROMPT_PATH_COLOR:=cyan}
: ${ZSH_THEME_PROMPT_GIT_COLOR:=blue}
: ${ZSH_THEME_PROMPT_VICMD_COLOR:=red}

# Function to handle the Vim Mode display
function zle-keymap-select {
  case $KEYMAP in
    vicmd)
      VIM_MODE_PART="%F{$ZSH_THEME_PROMPT_VICMD_COLOR}[NORMAL]%f "
      ;;
    main|viins)
      VIM_MODE_PART=""
      ;;
  esac
  zle reset-prompt
}
zle -N zle-keymap-select

update_git_prompt() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || \
  branch=$(git rev-parse --short HEAD 2>/dev/null) || {
    GIT_PROMPT_PART=""
    return
  }
  GIT_PROMPT_PART=" %F{$ZSH_THEME_PROMPT_GIT_COLOR}($branch)%f"
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd update_git_prompt

# Added ${VIM_MODE_PART} at the beginning
PROMPT='${VIM_MODE_PART}%F{$ZSH_THEME_PROMPT_PATH_COLOR}%1~%f${GIT_PROMPT_PART} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""
