#!/bin/bash

# kitty
kitten themes Catppuccin-Mocha

# tmux
git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/catppuccin

# lazygit
repo_path=/tmp/catppuccin-lazygit
config_file=~/.config/lazygit/config.yml
git clone https://github.com/catppuccin/lazygit.git $repo_path
echo "gui:" > $config_file
cat $repo_path/themes/mocha/mauve.yml | sed 's/^/  /' | head -n -3 >> $config_file
