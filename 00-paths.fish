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
add_path $HOME/bin

# 'xdg-dir' is in ~/bin

add_path prepend /usr/lib/ccache/bin
add_path prepend $HOME/.cargo/bin
add_path prepend $HOME/.radicle/bin
add_path prepend (gem environment gempath | cut -d: -f1)/bin
add_path prepend (xdg-dir config)/composer/vendor/bin
add_path prepend (xdg-dir data)/bin
