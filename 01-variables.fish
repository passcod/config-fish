set fish_greeting ''

set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx N_PREFIX (xdg-dir data)
set -gx GEM_HOME (gem environment gempath | cut -d: -f1)

set -gx FZF_DEFAULT_COMMAND 'ag -g ""'
set -gx FZF_CTRL_T_COMMAND "$FZF_DEFAULT_COMMAND"

set -gx DOCKER_BUILDKIT 1
set -gx CARGO_UNSTABLE_SPARSE_REGISTRY true

set -gx DEPLOYS_SSH_HOME "$HOME/.vault/ssh/kare-kun"

if echo "$SHELL" | grep -q '/profiled-fish$'
    set -gx SHELL (which fish)
end
