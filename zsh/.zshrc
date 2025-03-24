HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

unsetopt beep
unsetopt nomatch
bindkey -e

export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export EDITOR="nvim"
export VISUAL="$EDITOR"

export PATH="/bin:$PATH"
export PATH="/usr/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/.emacs.d/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/home/zor/.lmstudio/bin"

# Golang environment variables
export GOROOT=/usr/local/go
export GOPATH=$HOME/go

# Update PATH to include GOPATH and GOROOT binaries
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.local/bin:$PATH
# eval "$(fzf --zsh)"
# eval "$(starship init zsh)"
# eval "$(zoxide init zsh)"

# alias ls='lsd'
# alias ll='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'
# alias cat='bat'
# alias find='fd'
# alias grep='rg'

# alias dcu='docker compose up -d'
# alias dcd='docker compose down'
# alias dcp='docker compose pull'
# alias dclean='docker system prune -a --volumes --force'
# alias lzd='lazydocker'
# alias lzg='lazygit'
# alias hx='helix'
# alias v='nvim'
# alias purge="sudo pacman -Rns \$(pacman -Qtdq) ; sudo fstrim -av"
# alias update="paru -Syu --nocombinedupgrade"
# alias plist="paru -Slq | fzf -m --preview 'paru -Si {1}' | xargs -ro paru -S"
# alias plrem="paru -Qeq | fzf -m --preview 'paru -Qi {1}' | xargs -ro paru -Rs"
# alias mirrors="sudo reflector --verbose --latest 5 --country 'United States' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"
# alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
# alias du="dust -r -n 999999999"
# alias mp3-dl='yt-dlp --ignore-config --extract-audio \
#     --audio-format "mp3" --audio-quality 0 --embed-thumbnail --embed-metadata \
#     --output "$HOME/Downloads/%(title)s.%(ext)s"'
# alias mpa="mpv --no-video"

# yazi with auto-cd to last visited directory
function y() {
  local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
  yazi "$@" --cwd-file="$tmp"
  if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
    builtin cd -- "$cwd"
  fi
  rm -f -- "$tmp"
}
#
# # Quick weather
# function weather() {
#   curl "https://wttr.in?format=3"
# }
#
# # PHP built-in webserver (with local IP detection)
# function phpserver() {
#   local port="${1:-4000}"
#   # You can change `en1` to `en0` or `eth0` depending on your OS/network setup
#   local interface="en1"
#   local ip
#   ip=$(ipconfig getifaddr "$interface" 2>/dev/null) || ip="localhost"
#
#   sleep 1 && open "http://${ip}:${port}/" &>/dev/null &
#   php -S "${ip}:${port}"
# }
#
# # Create .tar.gz using zopfli/pigz/gzip
# function targz() {
#   local tmpFile="${@%/}.tar"
#   tar -cvf "${tmpFile}" --exclude=".DS_Store" "$@" || return 1
#
#   local size
#   size=$(
#     stat -f"%z" "${tmpFile}" 2>/dev/null || \
#     stat -c"%s" "${tmpFile}" 2>/dev/null
#   )
#
#   local cmd=""
#   if (( size < 52428800 )) && hash zopfli 2>/dev/null; then
#     cmd="zopfli"
#   else
#     if hash pigz 2>/dev/null; then
#       cmd="pigz"
#     else
#       cmd="gzip"
#     fi
#   fi
#
#   echo "Compressing .tar ($((size / 1000)) kB) using \`${cmd}\`…"
#   "${cmd}" -v "${tmpFile}" || return 1
#   [ -f "${tmpFile}" ] && rm "${tmpFile}"
#
#   local zippedSize
#   zippedSize=$(
#     stat -f"%z" "${tmpFile}.gz" 2>/dev/null || \
#     stat -c"%s" "${tmpFile}.gz" 2>/dev/null
#   )
#
#   echo "${tmpFile}.gz ($((zippedSize / 1000)) kB) created successfully."
# }
#
# # Simple GZip size comparison
# function gz() {
#   local file="$1"
#   if [ -z "$file" ]; then
#     echo "Usage: gz <file>"
#     return 1
#   fi
#
#   local origsize
#   origsize=$(wc -c <"$file")
#   local gzipsize
#   gzipsize=$(gzip -c "$file" | wc -c)
#   local ratio
#   ratio=$(echo "$gzipsize * 100 / $origsize" | bc -l)
#
#   printf "orig: %d bytes\n" "$origsize"
#   printf "gzip: %d bytes (%2.2f%%)\n" "$gzipsize" "$ratio"
# }
#
#
# function zipc() {
#   # Usage: zipc <file_or_directory> [file_or_directory...]
#   if [ $# -eq 0 ]; then
#     echo "Usage: zipc <file_or_directory> [file_or_directory...]"
#     return 1
#   fi
#
#   local zipFileName="${1%%/}.zip"
#   # If you pass multiple items, they are all added to the same zip
#   echo "Creating ${zipFileName}..."
#   zip -r "$zipFileName" "$@"
#   echo "Archive ${zipFileName} created."
# }

autoload -Uz compinit
compinit
