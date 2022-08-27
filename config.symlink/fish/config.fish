if status is-interactive
    set -gx EDITOR code

    # Commands to run in interactive sessions can go here
    direnv hook fish | source
    starship init fish | source
end
