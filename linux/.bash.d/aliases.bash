# aliases

alias cl="clear"

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

## debian
alias saup="sudo apt update"
alias saug="sudo apt upgrade"
alias saupg="sudo apt update && sudo apt upgrade"
alias saupgr="sudo apt update && sudo apt upgrade && sudo apt autoremove"
alias sarmv="sudo apt autoremove"
alias sai="sudo apt update && sudo apt install"

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
alias vpn-conn="protonvpn-cli s | grep -q \"No active\""
