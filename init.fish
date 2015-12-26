set fish_greeting

# PATHs are in reversed order
set PATH ~/bin $PATH
set PATH ~/.rbenv/plugins/ruby-build/bin $PATH
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

abbr b bundle
abbr be 'bundle exec'
abbr bu 'bundle update'
abbr e $EDITOR
abbr fig docker-compose
abbr nvm nn
abbr shall 'ls -shal'
abbr tbuf 'tmux show-buffer'
abbr tcopy 'tmux show-buffer | copy'
abbr x 'chmod +x'
