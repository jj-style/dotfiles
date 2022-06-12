# aliases

## program substitutes
alias grep="rg"
alias find="fd"
alias cat="bat"
alias diff="delta"


## git aliases
alias ga="git add ."
alias gb="git branch"
alias gc="git commit -m"
alias gcl="git clone"
alias gmg="git merge"
alias gcm="git checkout master"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gd="git diff"
alias gf="git fetch"
alias gi="git init"
alias gl="git log --pretty --oneline --abbrev-commit --graph --color"
alias gp="git push origin \$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)"
alias gpl="git pull"
alias gss="git status"
alias gx="git add . && git commit -m"
alias prune="git branch --merged master | grep -v master | xargs -n 1 git branch -d"
alias stash="git stash"
alias pop="git stash pop"

##protonvpn
alias pvpn="protonvpn-cli"
alias pvpn-sc="protonvpn-cli c --sc"
alias pvpn-f="protonvpn-cli c -f"
alias pvpn-r="protonvpn-cli c -r"
alias pvpn-uk="protonvpn-cli c --cc UK"
alias pvpn-p2p="protonvpn-cli c --p2p"
alias pvpn-tor="protonvpn-cli c --tor"
alias pvpns="protonvpn-cli s"
alias pvpnd="protonvpn-cli d"
alias pvpndu="pvpn d; pvpn c -f"
#alias vpn-conn="protonvpn-cli s | grep -q \"No active\""


#alias pvpn="sudo protonvpn"
#alias pvpn-sc="sudo protonvpn c --sc"
#alias pvpn-f="sudo protonvpn c -f"
#alias pvpn-r="sudo protonvpn c -r"
#alias pvpn-uk="sudo protonvpn c --cc UK"
#alias pvpn-p2p="sudo protonvpn c --p2p"
#alias pvpn-tor="sudo protonvpn c --tor"
#alias pvpns="sudo protonvpn s"
#alias pvpnd="sudo protonvpn d"
#alias vpn-conn="sudo protonvpn s | grep -q \"No active\""

## misc
# get back to home directory
alias home="cd ~"

# copy & paste to/from system clipboard
alias xcopy="xclip -sel clip"
alias xpaste="xclip -o -sel clip"

# bitwarden-cli unlock copy export command to clipboard
alias bw-unlock-cp='bw unlock | grep "\$ export" | awk "{print substr(\$0, index(\$0,\$2))}" | xcopy'

## typos
alias tlrd="tldr"
alias sl="ls"
alias paman="pacman"
alias pcaman="pacman"
alias pcmna="pacman"

## linode
alias open-tunnel="echo -n tunnel open... && ssh -N -R *:2222:localhost:22 linode-tunnel-server"
alias open-tunnel-bg="ssh -Nf -R *:2222:localhost:22 linode-tunnel-server"
alias close-tunnel='kill $(ps -e -o pid,cmd | grep "linode-tunnel-server$" | awk "{print \$1}")'

## docker
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcst="docker-compose start"
alias dcsp="docker-compose stop"

## kubernetes
alias kctl="kubectl"
alias kubctl="kubectl"
alias kibectl="kubectl"
alias kctl-nodes="kubectl get nodes"
alias kctl-pods="kubectl get pods"
alias kctl-deps="kubectl get deployments"
alias kctl-svcs="kubectl get services"
alias kctl-desc="kubectl describe"

# DNS Toys
function dy { dig +noall +answer +additional "$1" @dns.toys; }
