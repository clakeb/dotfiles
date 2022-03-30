## basher
eval "$(basher init - zsh)"

## asdf
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

## fzf
$(brew --prefix)/opt/fzf/install

## Starship (last)
eval "$(starship init zsh)"

## iTerm2
test -e "${HOME}/.files/iterm2_shell_integration/shell_integration/zsh" && . "${HOME}/.files/iterm2_shell_integration/shell_integration/zsh"
