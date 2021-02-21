RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
BLUE="$(tput setaf 4)"
RESET="$(tput sgr0)"


exitstatus() {
    if [[ $? -eq 0 ]]; then
        export EXIT_PROMPT="${GREEN}$1${RESET}"
    else
        export EXIT_PROMPT="${RED}$1${RESET}"
    fi
}

battery_in_vconsole() {
    if [[ -z "$DISPLAY" ]]; then
        echo -n "$(cat /sys/class/power_supply/BAT0/capacity)%"
    fi
}

PS1='[\u@\h:\A:$(battery_in_vconsole) \W] λ '
