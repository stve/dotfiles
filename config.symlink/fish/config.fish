set -U fish_greeting "🐟"

if status is-interactive
    # Commands to run in interactive sessions can go here
    direnv hook fish | source
    starship init fish | source

    source /opt/homebrew/opt/asdf/libexec/asdf.fish
end
