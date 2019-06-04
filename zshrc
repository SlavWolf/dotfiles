export ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="bullet-train"
plugins=(git docker docker-compose)

source $ZSH/oh-my-zsh.sh

BULLETTRAIN_PROMPT_ORDER=(
  time
  context
  dir
  git
)
BULLETTRAIN_GIT_BG=green
BULLETTRAIN_GIT_FG=white
BULLETTRAIN_TIME_BG=green
BULLETTRAIN_TIME_FG=white
if [[ -z "$TMUX" ]] ;then
    ID="$( tmux ls | grep -vm1 attached | cut -d: -f1 )" # get the id of a deattached session
    if [[ -z "$ID" ]] ;then # if not available create a new one
        tmux new-session
    else
        tmux attach-session -t "$ID" # if available attach to it
    fi
fi
export EDITOR=vim
export VISUAL=vim
set -o vi
bindkey "^R" history-incremental-search-backward
source <(kompose completion zsh)
source <(kubectl completion zsh)
export BROWSER=/usr/bin/firefox
