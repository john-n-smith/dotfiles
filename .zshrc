autoload -U promptinit; promptinit
prompt pure
prompt_newline='%666v'
PROMPT=" $PROMPT"
zstyle :prompt:pure:git:stash show yes

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
