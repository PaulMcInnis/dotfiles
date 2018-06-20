function prompt_char
{
    if [ $UID -eq 0 ]; then
        echo "#"
    else
        echo $
    fi
}

# Git configuration.
ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

function git_prompt_info()
{
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

# Git info.
local git_info='$(git_prompt_info)'
local last_commit='$(git log --pretty=format:"%h" -1 2> /dev/null)'

PROMPT="
%{$fg[cyan]%}%n@\
%{$fg[cyan]%}%m \
%{$fg[yellow]%}%~%{$reset_color%} \
${git_info} \
${last_commit}
%{$fg[magenta]%}$(prompt_char) %{$reset_color%}"
