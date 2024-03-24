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
