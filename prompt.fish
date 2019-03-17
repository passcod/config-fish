set normal (set_color normal)
set magenta (set_color magenta)
set yellow (set_color yellow)
set green (set_color green)
set red (set_color red)
set gray (set_color -o black)

# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# Status Chars
set __fish_git_prompt_char_dirtystate '×'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles '§'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_equal ''
set __fish_git_prompt_char_upstream_ahead ' 🡩 '
set __fish_git_prompt_char_upstream_behind ' 🡫 '

function fish_prompt
  set last_status $status

  if test ! -z "$SSH_TTY" -o ! -z "$SSH_CLIENT"
    set_color -o red
    printf '[SSH] '
    set_color normal
  end

  set_color -do blue
  printf '['
  set_color purple
  printf '%s' (hostname | cut -d . -f 1)
  set_color blue
  printf '] '
  set_color normal

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)
  set_color normal

  set_color -o
  printf '%s' (__fish_git_prompt)
  set_color normal

  printf ' '

  set_color normal
end

function fish_right_prompt
    set_color -o black
    date '+%H:%M:%S'
    set_color normal
end
