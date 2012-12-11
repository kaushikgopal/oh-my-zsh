PROMPT='%{$fg_bold[green]%}%n@$(box_name)%{$reset_color%} %{$fg[yellow]%}%~%{$reset_color%} %{$fg_bold[green]%}%{$reset_color%}$(git_prompt_info)
> '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[magenta]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""


function box_name {
     [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}