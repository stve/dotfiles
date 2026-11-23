# alias dev='foreman start -f Procfile.development'
function dev
    set -f procfile "Procfile"

    if test -f "Procfile.development"
        set -f procfile "Procfile.development"
    else if test -f "Procfile.dev"
        set -f procfile "Procfile.dev"
    else if test -f "Procfile"
        set -f procfile "Procfile"
    else
        echo "No Procfile found, returning"
        return
    end

    if type -q overmind
        overmind start -f $procfile
    else if type -q forego
        forego start -f $procfile
    else if type -q foreman
        foreman start -f $procfile
    end
end