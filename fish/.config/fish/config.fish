if status is-interactive
    fzf --fish | source
    zoxide init --cmd cd fish | source
    starship init fish | source
end
