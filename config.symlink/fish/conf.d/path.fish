if test -d $HOME/.config/fish/bin
  fish_add_path $HOME/.config/fish/bin
end

if test -d $HOME/bin
  fish_add_path $HOME/bin
end

if test -d $HOME/go/bin
  fish_add_path $HOME/go/bin
end

if test -d /opt/homebrew/bin
  fish_add_path /opt/homebrew/bin
end

if test -d $HOME/.cargo/bin # rust
  fish_add_path $HOME/.cargo/bin
end
