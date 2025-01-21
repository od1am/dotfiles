if status is-interactive
    fzf --fish | source
    zoxide init --cmd j fish | source
end
