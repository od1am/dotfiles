# ~/.bash_profile

# Source .bashrc if it exists
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set PATH so it includes user's private bin if it exists
if [[ -d "$HOME/.local/bin" ]]; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Source local bash_profile if it exists
[[ -f ~/.bash_profile.local ]] && . ~/.bash_profile.local 