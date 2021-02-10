RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
BLUE="$(tput setaf 4)"
RESET="$(tput sgr0)"

exitstatus() {
    if [[ $? -eq 0 ]]; then
        echo "${GREEN}$1${RESET}"
    else
        echo "${RED}$1${RESET}"
    fi
}

PS1='[\u@\h:\A \W] $(exitstatus λ) '
