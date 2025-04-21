function add_path -d "Add directory to PATH if it exists"
    if test $argv[1] = prepend
        set mode prepend
        set pdir $argv[2]
    else
        set mode append
        set pdir $argv[1]
    end

    # echo $pdir

    if test -d $pdir
        if test $mode = prepend
            fish_add_path --prepend $pdir
        else
            fish_add_path --append $pdir
        end
    end
end

# On WSL2
if test ! -z "$WSLENV"
    if test -z "$XDG_RUNTIME_DIR"
        if test ! -d /run/user/passcod
            sudo mkdir /run/user/passcod
            sudo chown passcod /run/user/passcod
            sudo chmod 0777 /run/user/passcod
        end

        set -x XDG_RUNTIME_DIR /run/user/passcod
    end
end

add_path /usr/bin/vendor_perl
add_path $HOME/.pulumi/bin
add_path $HOME/.lmstudio/bin
add_path $HOME/bin

# 'xdg-dir' is in ~/bin

add_path prepend /usr/lib/ccache/bin
add_path prepend $HOME/go/bin
add_path prepend $HOME/.cargo/bin
add_path prepend (gem environment gempath | cut -d: -f1)/bin
add_path prepend (xdg-dir data)/bin
add_path prepend (xdg-dir data)/../bin
