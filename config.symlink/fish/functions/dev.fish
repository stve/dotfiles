# alias dev='foreman start -f Procfile.development'
function dev
    set -f procfile "Procfile"

    if test -f "Procfile.development"
        set -f procfile "Procfile.development"
    else if -f "Procfile.development"
        set -f procfile "Procfile.dev"
    end

    if type -q overmind
        overmind start -f $procfile
    else if type -q forego
        forego start -f $procfile
    else if type -q foreman
        foreman start -f $procfile
    end
end