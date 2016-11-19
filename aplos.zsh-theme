setopt prompt_subst
autoload zsh/terminfo

ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE=" =="
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" <"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE=" <>"

prompt_dir="%{$fg_bold[yellow]%}%~"
prompt_git() {
  if [ -d .git ]; then
    echo " $(parse_git_dirty)$(git_current_branch)$(git_remote_status)"
  fi
}
prompt_time=" %{$fg[black]%}%D{%R:%S}"
prompt_exit_code=" %(?..%{$fg[red]%}%?)"

PROMPT='
$prompt_dir'\
'$(prompt_git)'\
'$prompt_time'\
'$prompt_exit_code
❯ %{$reset_color%}'
