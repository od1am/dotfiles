[[ $- != *i* ]] && return

HISTSIZE=-1
HISTFILESIZE=-1

export EDITOR="$(which nvim)"
export VISUAL="$EDITOR"

export PATH="/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"

eval "$(fzf --bash)"
eval "$(zoxide init --cmd cd bash)"
eval "$(starship init bash)"
