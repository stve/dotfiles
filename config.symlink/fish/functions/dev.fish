# alias dev='foreman start -f Procfile.development'
function dev
    if type -q overmind
        overmind start
    else if type -q forego
        forego start
    else if type -q foreman
        foreman start
    end
end