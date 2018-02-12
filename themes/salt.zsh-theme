# salt's zsh theme
# Designed with Solarized Light in mind

# Change PWD color if we're remoted in via SSH
if [ $SSH_CLIENT ]; then pwd_color="red"; else pwd_color="blue"; fi
# Prompt color
if [ $? != 0 ]; then prompt_color="red"; else prompt_color="green"; fi

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}[%{$fg[yellow]%}%B"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"

# Set our prompts up
PROMPT='[%{$fg[$pwd_color]%}%~%{$reset_color%}]%{$fg_bold[$prompt_color]%}%(!.#.$)%{$reset_color%} '
RPROMPT='$(git_prompt_info)'
