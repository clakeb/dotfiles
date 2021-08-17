# zsh
bindkey -v
setopt CORRECT

# source
source $HOME/.files/paths.zsh
source $HOME/.files/sources.zsh

# Bashhub Server
export BH_URL=http://localhost:8080

# Aliases
## Exa
export EXA_COLORS='da=1;34:gm=1;34'

alias ls='exa --group-directories-first'
alias ll='ls -lhg --git --icons -s mod' # Long format, git status
alias l='ll -a'                         # Long format, all files
alias lr='l -T'                         # Long format, recursive as a tree
alias lx='l -sextension'                # Long format, sort by extension
alias lk='l -ssize'                     # Long format, largest file size last
alias lt='l -smodified'                 # Long format, newest modification time last
alias lc='l -schanged'                  # Long format, newest status change (ctime) last
alias le='l --extended'                 # Long format, newest status change (ctime) last

## ASDF globals
### Python
alias python='asdf exec python'
