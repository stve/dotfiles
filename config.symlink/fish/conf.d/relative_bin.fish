function manage_project_path --on-variable PWD
    if test -d $PWD/bin
        set -g PATH $PWD/bin $PATH
    end
end