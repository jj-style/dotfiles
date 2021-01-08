# official stuff
shopt -s autocd     # automatically changes to directory if you forget to put 'cd' first


# my aliases
alias tweb="elinks start.duckduckgo.com"
alias please="sudo" # just for fun

# protonvpn aliases from their docs
alias protonvpn="sudo protonvpn"
alias pvpn="sudo protonvpn"


# arch linux stuff
alias install="sudo pacman -Syu && sudo pacman -S"
alias uninstall="sudo pacman -R"
alias uninstalld="sudo pacman -Rs"
alias update="sudo pacman -Syu"
alias rmv_dep="sudo pacman -R $(pacman -Qdtq)"

BASH_DIR=~/.bash.d
source "$BASH_DIR/aliases.bash"

# my defined functions
# quick compile and run function for single source C/C++ programs 
qc() {
    FILE="$1"
    EXT=${FILE##*.}
    g++ -g -o ${FILE%."$EXT"}.o "$@" && ./${FILE%."$EXT"}.o
}

# virtual environment activation in central location
ENV_DIR=$HOME/.virtual-environments
venvon() {
    if [[ -d "$VENV_NAME" ]]; then
    	deactivate
    fi
    if [[ $# -eq 1 ]]; then
        if [[ -e $ENV_DIR/$1/bin/activate ]]; then
            source $ENV_DIR/$1/bin/activate
	else
	    echo "could not activate $1"
	fi 
    else
        echo "no environment specified"
    fi
}
