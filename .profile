export PATH=$PATH:/usr/local/flex_sdk_4.6/bin:/usr/local/AIRSDK_Compiler/bin

alias druk="docker-compose run --rm -e APPLICATION_ENV=development-docker-dispatch cli"
alias drnj="docker-compose run --rm -e APPLICATION_ENV=development-docker-dispatch-nj cli"
alias dr="docker-compose run --rm cli"
alias dtest="docker-compose run --rm cli vendor/bin/phpunit"
alias ll="ls -lah"
alias dresetuk='docker-compose run --rm -e APPLICATION_ENV=development-docker-dispatch-schema cli dispatch/bin/dispatchBuilder reset'
alias dresetnj='docker-compose run --rm -e APPLICATION_ENV=development-docker-dispatch-nj-schema cli dispatch/bin/dispatchBuilder reset'

source ~/.git-completion.sh
source ~/.git-prompt.sh

# alternative to PS1 (allows colouring)
GIT_PS1_SHOWDIRTYSTATE='yes'
GIT_PS1_SHOWCOLORHINTS='yes'
PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh
complete -F _complete_ssh_hosts host
complete -F _complete_ssh_hosts ping
complete -F _complete_ssh_hosts scp

eval $(docker-machine env)
export DEVELOPER_EMAIL=john@graze.com
