# register last command with pet snippet tool
# taken from docs -> https://github.com/knqyf263/pet/blob/master/README.md#bash-prev-function
function reg-prev-pet() {
  PREV=$(echo `history | tail -n2 | head -n1` | sed 's/[0-9]* //')
  sh -c "pet new `printf %q "$PREV"`"
}

# pipe HERE document throught to python command
function here-py {
    SCRIPT=""
    while read line; do SCRIPT+="$line"; done
    echo "$SCRIPT"
    python -c "$SCRIPT"
}

# python virtual environments
venvcreate() {
    python3 -m venv "$HOME/.venvs/$1"
}

venvactivate() {
    [[ -f "$HOME/.venvs/$1/bin/activate" ]] && source "$HOME/.venvs/$1/bin/activate"
}

venvlist() {
    ls "$HOME/.venvs"
}

lmddgtfy() {
    query_params=$(python -c "import urllib.parse,sys; print(urllib.parse.quote(sys.stdin.read()))")
    echo "https://lmddgtfy.net/?q=${query_params}"
}
