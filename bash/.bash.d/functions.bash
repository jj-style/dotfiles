# register last command with pet snippet tool
# taken from docs -> https://github.com/knqyf263/pet/blob/master/README.md#bash-prev-function
function reg-prev-pet() {
  PREV=$(echo `history | tail -n2 | head -n1` | sed 's/[0-9]* //')
  sh -c "pet new `printf %q "$PREV"`"
}
