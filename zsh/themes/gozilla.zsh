autoload -Uz colors && colors
setopt prompt_subst

update_git_prompt() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || \
  branch=$(git rev-parse --short HEAD 2>/dev/null) || {
    GIT_PROMPT_PART=""
    return
  }
  GIT_PROMPT_PART=" %F{blue}($branch)%f"
}

autoload -Uz add-zsh-hook
add-zsh-hook precmd update_git_prompt

PROMPT='%F{cyan}%1~%f${GIT_PROMPT_PART} '


ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""


