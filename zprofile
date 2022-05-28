export ZSH="$HOME/.oh-my-zsh"
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"

ZSH_THEME="avit"
plugins=(git cp virtualenv)

alias vim='nvim'

[ -f $ZSH/oh-my-zsh.sh ] && source $ZSH/oh-my-zsh.sh
[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
