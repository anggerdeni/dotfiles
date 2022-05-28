export ZSH="$HOME/.oh-my-zsh"
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"
export LANG=en_US.UTF-8

ZSH_THEME="avit"
plugins=(git cp virtualenv)

alias vim='nvim'


[ -f $ZSH/oh-my-zsh.sh ] && . $ZSH/oh-my-zsh.sh
[ -f $HOME/.fzf.zsh ] && . $HOME/.fzf.zsh

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1