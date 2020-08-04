source ~/bin/aliases
source ~/bin/functions.fish

eval (hub alias -s)

eval (ssh-agent -c) >/dev/null
ssh-add >/dev/null
