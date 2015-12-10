set fish_greeting
set PATH ~/bin $PATH
set PATH ~/.rbenv/bin $PATH
set PATH (xdg-dir data)/bin $PATH
set PATH ~/.composer/vendor/bin $PATH
set PATH (xdg-dir data)/npm/bin $PATH

set -gx EDITOR nvim
set -gx N_PREFIX (xdg-dir data)

source ~/bin/aliases
source ~/bin/functions.fish
source (rbenv init -|psub)

eval (hub alias -s)
nn latest

abbr e $EDITOR
abbr fig docker-compose
abbr nvm nn
abbr x 'chmod +x'

