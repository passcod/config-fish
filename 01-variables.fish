set fish_greeting ''

if command --query nvim
    set -gx EDITOR nvim
else if command --query vim
    set -gx EDITOR vim
else if command --query helix
    set -gx EDITOR helix
else if command --query nano
    set -gx EDITOR nano
else if command --query vi
    set -gx EDITOR vi
else
    echo "NO VIABLE EDITOR -- Install nano or vim or something!!!" >&2
end
set -gx VISUAL $EDITOR

set -gx N_PREFIX (xdg-dir data)
set -gx GEM_HOME (gem environment gempath | cut -d: -f1)

set -gx FZF_DEFAULT_COMMAND 'ag -g ""'
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

set -gx DOCKER_BUILDKIT 1

set -gx DEPLOYS_SSH_HOME "$HOME/.vault/ssh/kare-kun"

set -gx QT_QPA_PLATFORM wayland

if echo "$SHELL" | grep -q '/profiled-fish$'
    set -gx SHELL (which fish)
end
