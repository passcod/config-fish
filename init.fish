set fish_greeting

# PATHs are in reversed order
set PATH ~/bin $PATH
set PATH (xdg-dir data)/bin $PATH
set PATH ~/.composer/vendor/bin $PATH
set PATH ~/.cargo/bin $PATH
set PATH (xdg-dir data)/npm/bin $PATH

set -gx EDITOR nvim
set -gx N_PREFIX (xdg-dir data)

source ~/bin/aliases
source ~/bin/functions.fish

eval (hub alias -s)

if test ! -e (xdg-dir cache)/nn.lock
  touch (xdg-dir cache)/nn.lock
  nn latest
  rm (xdg-dir cache)/nn.lock
end

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
