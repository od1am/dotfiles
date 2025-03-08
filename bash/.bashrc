#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\[\e[94;1m\]\W\[\e[0m\] \[\e[32;1m\]>\[\e[0m\] '

[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] &&
  . /usr/share/bash-completion/bash_completion

HISTSIZE=-1
HISTFILESIZE=-1
HISTCONTROL=ignoreboth

shopt -s histappend
shopt -s globstar
shopt -s nocaseglob

export EDITOR="nvim"
export VISUAL="$EDITOR"

export PATH="/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/.emacs.d/bin:$PATH"

eval "$(fzf --bash)"
eval "$(zoxide init bash)"

function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/zor/.lmstudio/bin"
