#!/bin/bash

packages=(
    bat
    fzf
    git
    go
    htop
    keyd
    lazygit
    lshw
    man-db
    man-pages
    ncdu
    neovim
    openssh
    python
    ranger
    ripgrep
    rsync
    starship
    tmux
    tree
    unzip
    vim
    wget
    zip
    zsh
)

keyd_conf="/etc/keyd/default.conf"

install_packages() {
    sudo pacman -S "${packages[@]}" --noconfirm
}

install_yay() {
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay || exit
    makepkg -si --noconfirm
    cd ~ || exit
}

configure_keyd() {
    printf "[ids]\n\n*\n\n[main]\n\n" | sudo tee $keyd_conf > /dev/null
    {
        printf "capslock = overload(control, esc)\n"
        printf "meta = layer(alt)\n"
        printf "alt = layer(meta)\n"
    } | sudo tee -a $keyd_conf > /dev/null
    sudo systemctl enable --now keyd
}

install_packages
install_yay
configure_keyd
