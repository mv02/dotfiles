bindkey -v
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
KEYTIMEOUT=1

autoload -Uz compinit
compinit
zstyle ":completion:*" menu select
zmodload zsh/complist
bindkey -M menuselect "h" vi-backward-char
bindkey -M menuselect "k" vi-up-line-or-history
bindkey -M menuselect "l" vi-forward-char
bindkey -M menuselect "j" vi-down-line-or-history

if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    bindkey "^ " autosuggest-accept
    ZSH_AUTOSUGGEST_STRATEGY=(history completion)
fi

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
alias ip="ip -color=auto"

alias g="git"
alias ga="git add"
alias gapa="git add --patch"
alias gb="git branch"
alias gba="git branch --all"
alias gbd="git branch --delete"
alias gbD="git branch --delete --force"
alias gbr="git branch --remote"
alias gco="git checkout"
alias gcl="git clone"
alias gc="git commit"
alias gd="git diff"
alias gf="git fetch"
alias glg="git log --stat"
alias glgp="git log --stat --patch"
alias glgg="git log --graph"
alias glgga="git log --graph --all"
alias glo="git log --oneline"
alias glog="git log --oneline --graph"
alias gloga="git log --oneline --graph --all"
alias gm="git merge"
alias gma="git merge --abort"
alias gmc="git merge --continue"
alias gl="git pull"
alias gp="git push"
alias grb="git rebase"
alias grba="git rebase --abort"
alias grbc="git rebase --continue"
alias grbi="git rebase --interactive"
alias grbs="git rebase --skip"
alias gr="git remote"
alias gra="git remote add"
alias grrm="git remote remove"
alias grv="git remote --verbose"
alias grs="git restore"
alias grst="git restore --staged"
alias gsh="git show"
alias gst="git status"
alias gss="git status --short"
alias gsw="git switch"
alias gswc="git switch -c"

alias d="docker"
alias db="docker build"
alias de="docker exec"
alias deit="docker exec -it"
alias di="docker image"
alias dils="docker image ls"
alias dirm="docker image rm"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias drm="docker rm"
alias dr="docker run"
alias drit="docker run -it"
alias dst="docker start"
alias dstp="docker stop"
alias dv="docker volume"
alias dvi="docker volume inspect"
alias dvls="docker volume ls"
alias dvrm="docker volume rm"

alias dc="docker compose"
alias dcb="docker compose build"
alias dcd="docker compose down"
alias dce="docker compose exec"
alias dcl="docker compose logs"
alias dclf="docker compose logs -f"
alias dcps="docker compose ps"
alias dcpsa="docker compose ps -a"
alias dcrst="docker compose restart"
alias dcrm="docker compose rm"
alias dcr="docker compose run"
alias dcst="docker compose start"
alias dcu="docker compose up"
alias dcub="docker compose up --build"
alias dcud="docker compose up -d"
alias dcudb="docker compose up -d --build"

alias lg="lazygit"
alias n="nvim"
alias t="tmux"
alias tn="tmux new"
alias tns="tmux new -s"
alias ta="tmux attach"
alias tas="tmux attach -t"

alias merlin="ssh xvodak07@merlin.fit.vutbr.cz"
alias eva="ssh xvodak07@eva.fit.vutbr.cz"

alias uni="cd ~/uni"
for x in "iis" "imp" "ims" "isa" "itu" "ili" "pp"
do
    alias $x="cd ~/uni/$x"
done

alias unipush="rsync -auv ~/uni /run/media/milan/wd --exclude env --exclude venv \
    --exclude node_modules --exclude build --exclude '*cache*'"
alias unip="unipush"
alias unipull="rsync -auv /run/media/milan/wd/uni ~ --exclude zaznamy"
alias unil="unipull"

if type starship > /dev/null; then
    eval "$(starship init zsh)"
fi
