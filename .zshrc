bindkey -v
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

alias dots="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dotslg="lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias ls="ls --color=auto"
alias ll="ls -l"
alias l="ls -la"

alias md="mkdir"
alias rd="rmdir"

alias g="git"
alias ga="git add"
alias gl="git pull"
alias gp="git push"
alias lg="lazygit"
alias n="nvim"
alias t="tmux"
alias tn="tmux new"
alias tns="tmux new -s"
alias ta="tmux attach"

alias uni="cd ~/uni"
for x in "iis" "imp" "ims" "isa" "itu" "ili" "pp"
do
    alias $x="cd ~/uni/$x"
done

eval "$(starship init zsh)"
