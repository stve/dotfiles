if status is-interactive
    set -gx EDITOR code
    set -gx PROJECTS ~/Projects
    set -gx GOPATH "$PROJECTS/go"

    # Commands to run in interactive sessions can go here
    direnv hook fish | source
    starship init fish | source
end
