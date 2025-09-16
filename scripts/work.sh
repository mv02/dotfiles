#!/bin/zsh

session="work"

cd ~/saviory

tmux new-session -ds $session
tmux send-keys "source venv/bin/activate && nvim" C-m

tmux new-window
tmux send-keys "dcu" C-m
tmux split-window

tmux new-window
tmux send-keys "lazygit" C-m

tmux attach-session -t $session:0
