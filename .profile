# fancy bash history
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# git prompt
parse_git() {
    status=""
    if [ "$(git log -1 --pretty=%B 2> /dev/null)" == SAVEPOINT ]
    then
        status="|॥"
    fi

    branch="$(git rev-parse --abbrev-ref HEAD 2> /dev/null)"
    if [[ ! -z "$branch" ]]
    then
        echo " (${branch}${status})"
    fi
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git)\[\033[00m\] \$ "

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
