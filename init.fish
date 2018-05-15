set fish_greeting

function add_path -d "Add directory to PATH if it exists"
  if test $argv[1] = "prepend"
    set mode prepend
    set pdir $argv[2]
  else
    set mode append
    set pdir $argv[1]
  end

  # echo $pdir

  if test -d $pdir
    if test $mode = "prepend"
      set PATH $pdir $PATH
    else
      set PATH $PATH $pdir
    end
  end
end

add_path /usr/bin/vendor_perl
add_path ~/bin

# 'xdg-dir' is in ~/bin

add_path prepend $HOME/.cargo/bin
add_path prepend (gem environment gempath | cut -d: -f1)/bin
add_path prepend (xdg-dir config)/composer/vendor/bin
add_path prepend (xdg-dir data)/bin

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
abbr :z 'rg -z'
abbr + 'git add'
abbr ↓ 'git up'
abbr ↑ 'git push'
abbr ← 'git commit -am'
abbr atom. 'atom .'
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
abbr tc 'tmux show-buffer | copy'
abbr tcopy 'tmux show-buffer | copy'
abbr x 'chmod +x'
