## basher
eval "$(basher init - bash)"

## asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

## ble.sh
. ~/.local/share/blesh/ble.sh

## Starship (last)
eval "$(starship init bash)"

## iTerm2
test -e "${HOME}/.files/iterm2_shell_integration/shell_integration/bash" && . "${HOME}/.files/iterm2_shell_integration/shell_integration/bash"
