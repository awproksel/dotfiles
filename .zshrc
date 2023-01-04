# configure zsh
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=$HISTSIZE

setopt inc_append_history # save entries as soon as they are entered
setopt share_history # share history across instances of the shell
setopt correct_all # try to correct spelling of all arguments in a line

zstyle ':completion:*' group-name '' # group results by category

# plugins
plugins=(zsh-autosuggestions)

# other 
export VISUAL=vim
export EDITOR="$VISUAL"

# brew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init zsh)"

# aliases
alias aspen="tree -h -f C"
alias public_ip="curl ipecho.net/plain; echo"


# functions
flip() {
  echo;
  echo -en "( º_º）  ┬─┬   \r"; sleep .5;
  echo -en " ( º_º） ┬─┬   \r"; sleep .5;
  echo -en "  ( ºДº）┬─┬   \r"; sleep .5;
  echo -en "  (╯'Д'）╯︵⊏   \r"; sleep .5;
  echo -en "  (╯'□'）╯︵ ⊏  \r"; sleep .5;
  echo     "  (╯°□°）╯︵ ┻━┻"; sleep .5;
}

# Go
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/go/bin
