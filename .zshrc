bindkey -v
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

autoload -Uz compinit
compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "l" vi-forward-char
bindkey -M menuselect "j" vi-down-line-or-history

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey "^ " autosuggest-accept
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

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

alias grep="grep --color=auto"

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

alias unipush="rsync -auv ~/uni /run/media/milan/wd --exclude env --exclude venv --exclude '*cache*'"
alias unip="unipush"
alias unipull="rsync -auv /run/media/milan/wd/uni ~ --exclude zaznamy"
alias unil="unipull"

eval "$(starship init zsh)"
