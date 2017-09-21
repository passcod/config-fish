set fish_greeting

set PATH $PATH \
  /usr/bin/vendor_perl \
  ~/bin

# 'xdg-dir' is in ~/bin

set PATH \
  (xdg-dir data)/bin \
  (xdg-dir config)/composer/vendor/bin \
  (gem environment gempath | cut -d: -f1)/bin \
  ~/.cargo/bin \
  $PATH

set -gx EDITOR nvim
set -gx N_PREFIX (xdg-dir data)
set -gx GEM_HOME (gem environment gempath | cut -d: -f1)

set -gx FZF_DEFAULT_COMMAND 'ag -g ""'
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

source ~/bin/aliases
source ~/bin/functions.fish

source (npx --shell-auto-fallback fish | psub)
eval (hub alias -s)

abbr : rg
abbr :i 'rg -i'
abbr + 'git add'
abbr ↓ 'git up'
abbr ↑ 'git push'
abbr ← 'git commit -am'
abbr b bundle
abbr be 'bundle exec'
abbr bu 'bundle update'
abbr e $EDITOR
abbr fig docker-compose
abbr g git
abbr n npm
abbr nn n
abbr ni 'npm i'
abbr s 'sudo'
abbr sss 'sudo systemctl'
abbr shall 'ls -shal'
abbr tbuf 'tmux show-buffer'
abbr tcopy 'tmux show-buffer | copy'
abbr x 'chmod +x'
