# fancy bash history
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git prompt
source ~/.git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE='yes'
GIT_PS1_SHOWCOLORHINTS='yes'
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# graze things
alias druk="docker-compose run --rm -e APPLICATION_ENV=development-docker-dispatch cli"
alias drnj="docker-compose run --rm -e APPLICATION_ENV=development-docker-dispatch-nj cli"
alias dr="docker-compose run --rm cli"
alias dtest="docker-compose run --rm cli vendor/bin/phpunit"
alias ll="ls -lah"
alias dispatch-cli='docker-compose -f docker-compose.yml -f docker-compose.traefik.yml run --rm -e APPLICATION_ENV=development-docker-dispatch-schema cli-admin'
alias dBuilder='docker-compose -f docker-compose.yml -f docker-compose.traefik.yml run --rm -e APPLICATION_ENV=development-docker-dispatch-schema cli-admin dispatch/bin/dispatchBuilder'

export PROXY_ENV=traefik
export DEVELOPER_EMAIL=john@graze.com
export SLACK_USER=john

# Adobe AIR dev
export PATH=$PATH:/usr/local/flex_sdk_4.6/bin
