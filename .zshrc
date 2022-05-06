autoload -U promptinit; promptinit
prompt pure
prompt_newline='%666v'
PROMPT=" $PROMPT"
zstyle :prompt:pure:git:stash show yes

alias ll="ls -lah"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
