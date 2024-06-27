sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

# setup nvim
mv nvim/ ~/.config/
nvim

# setup tmux
mv tmux/ ~/.config/
tmux source-file ~/.config/tmux/tmux.conf
