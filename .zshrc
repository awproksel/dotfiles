# configure zsh
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=$HISTSIZE

setopt inc_append_history # save entries as soon as they are entered
setopt share_history # share history across instances of the shell
setopt CORRECT_ALL # try to correct spelling of all arguments in a line

zstyle ':completion:*' group-name '' # group results by category

# other 
export VISUAL=vim
export EDITOR="$VISUAL"

# starship
eval "$(starship init zsh)"