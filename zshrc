export ZSH="$HOME/.oh-my-zsh"
export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8

ZSH_THEME="avit"
plugins=(git cp virtualenv)

alias vim='nvim'
alias v='nvim'

[ -f $ZSH/oh-my-zsh.sh ] && . $ZSH/oh-my-zsh.sh
[ -f $HOME/.fzf.zsh ] && . $HOME/.fzf.zsh
[ -f $HOME/.fzf.zsh ] && . $HOME/.fzf.zsh
[ -f $HOME/.personal_zshrc ] && . $HOME/.personal_zshrc

[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/an0nvi/google-cloud-sdk/path.zsh.inc' ]; then . '/home/an0nvi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/an0nvi/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/an0nvi/google-cloud-sdk/completion.zsh.inc'; fi
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
