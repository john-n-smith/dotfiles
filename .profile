# fancy bash history
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE='yes'
GIT_PS1_SHOWCOLORHINTS='yes'
GIT_PS1_SHOWSTASHSTATE='yes'
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# aliases
alias ll="ls -lah"
