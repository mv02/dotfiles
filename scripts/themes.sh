#!/bin/bash

function clone_or_pull() {
    if [[ -d $2/.git ]]; then
        git --git-dir "$2"/.git pull
    else
        git clone "$1" "$2"
    fi
}

# kitty
kitten themes Catppuccin-Mocha

# tmux
clone_or_pull https://github.com/catppuccin/tmux.git ~/.config/tmux/catppuccin

# lazygit
repo_path=/tmp/catppuccin-lazygit
config_file=~/.config/lazygit/config.yml
clone_or_pull https://github.com/catppuccin/lazygit.git $repo_path
echo "gui:" > $config_file
cat $repo_path/themes/mocha/mauve.yml | sed 's/^/  /' | head -n -3 >> $config_file

# yazi
config_dir=~/.config/yazi
curl -o $config_dir/theme.toml https://raw.githubusercontent.com/catppuccin/yazi/refs/heads/main/themes/mocha/catppuccin-mocha-mauve.toml
curl -o $config_dir/Catppuccin-mocha.tmTheme https://raw.githubusercontent.com/catppuccin/bat/refs/heads/main/themes/Catppuccin%20Mocha.tmTheme
