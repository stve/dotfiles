if test -d $HOME/.config/fish/bin
  fish_add_path $HOME/.config/fish/bin
end

if test -d $HOME/bin
  fish_add_path $HOME/bin
end

if test -d "$GOPATH/bin"
  fish_add_path $GOPATH//bin
end

if test -d /opt/homebrew/bin
  fish_add_path /opt/homebrew/bin
end

if test -d $HOME/.cargo/bin # rust
  fish_add_path $HOME/.cargo/bin
end

if test -d /Applications/Chia.app/Contents/Resources/app.asar.unpacked/daemon
  fish_add_path /Applications/Chia.app/Contents/Resources/app.asar.unpacked/daemon
end

function dynamic_path --on-variable PWD
    set -l target_dir "$PWD/.bundle/binstubs"

    # Check if the directory exists
    if test -d $target_dir
        # Check if it is already in PATH to avoid duplicates
        if not contains $target_dir $PATH
            set -gx PATH $target_dir $PATH
        end
    else
        # Optional: Remove it from PATH if you leave the directory
        if contains $target_dir $PATH
            set -e PATH[(contains -i $target_dir $PATH)]
        end
    end
end