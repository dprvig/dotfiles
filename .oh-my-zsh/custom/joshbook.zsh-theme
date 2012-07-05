PROMPT='%{$fg[cyan]%}%n %{$reset_color%}%{$fg[yellow]%}@ %{$fg[red]%}%m %{$reset_color%}in %{$fg[green]%~ $(git_prompt_info)
%{$fg[cyan]%}λ %{$reset_color%}'

RPROMPT=''

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[magenta]%})%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[magenta]%})%{$fg[green]%} ✔%{$reset_color%}"