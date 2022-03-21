bindkey -v
setopt CORRECT

for i in $HOME/.files/*.sh; do
  if [[ ! -d $i ]]; then
    . $i
  fi
done
