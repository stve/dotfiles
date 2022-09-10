function c -d "Change to project directories"
	if count $argv > /dev/null
    if test -d $PROJECTS/$argv
  		cd $PROJECTS/$argv
    else if test -d $GOPATH/src/github.com/$argv
      cd $GOPATH/src/github.com/$argv
    end
	else
    cd $PROJECTS
  end
end

# function __c_completion -d "Complete directory prefixes" --argument-names comp desc
#     if not set -q desc[1]
#         set desc Directory
#     end

#     if not set -q comp[1]
#         set comp (commandline -ct)
#     end

#     # HACK: We call into the file completions by using a non-existent command.
#     # If we used e.g. `ls`, we'd run the risk of completing its options or another kind of argument.
#     # But since we default to file completions, if something doesn't have another completion...
#     pushd $PROJECTS
#     set -l dirs (complete -C"nonexistentcommandooheehoohaahaahdingdongwallawallabingbang $comp" | string match -r '.*/$')
#     popd

#     if set -q dirs[1]
#         printf "%s\t$desc\n" $dirs
#     end
# end

# function __c_go_completion -d "Complete directory prefixes" --argument-names comp desc
#     if not set -q desc[1]
#         set desc Directory
#     end

#     if not set -q comp[1]
#         set comp (commandline -ct)
#     end

#     set -l go_src_path $GOPATH/src/github.com

#     # HACK: We call into the file completions by using a non-existent command.
#     # If we used e.g. `ls`, we'd run the risk of completing its options or another kind of argument.
#     # But since we default to file completions, if something doesn't have another completion...
#     pushd $go_src_path
#     set -l dirs (complete -C"nonexistentcommandooheehoohaahaahdingdongwallawallabingbang $go_src_path" | string match -r '.*/$')
#     popd

#     if set -q dirs[1]
#         printf "%s\t$desc\n" $dirs
#     end
# end

function __c_project_completion -d "Complete directory prefixes" --argument-names comp desc
    if not set -q desc[1]
        set desc Directory
    end

    if not set -q comp[1]
        set comp (commandline -ct)
    end

    # HACK: We call into the file completions by using a non-existent command.
    # If we used e.g. `ls`, we'd run the risk of completing its options or another kind of argument.
    # But since we default to file completions, if something doesn't have another completion...
    pushd $PROJECTS
    set -l dirs (complete -C"nonexistentcommandooheehoohaahaahdingdongwallawallabingbang $comp" | string match -r '.*/$')
    popd

    set -l go_src_path $GOPATH/src/github.com
    if test -d $go_src_path/$comp
      pushd $go_src_path/$comp   
    else
      pushd $go_src_path
    end
    set -l -a dirs (complete -C"nonexistentcommandooheehoohaahaahdingdongwallawallabingbang $comp" | string match -r '.*/$')
    popd

    if set -q dirs[1]
      printf "%s\t$desc\n" $dirs
    end
end

# complete --command c -f --arguments '__fish_projects_list_all; and __fish_go_projects_list_all'
# complete --command c --no-files --arguments '(__fish_complete_directories (ls $PROJECTS))' #; and __fish_go_projects_list_all'

# complete --no-files --exclusive --command c --arguments "(__c_completion)"
# complete --no-files --exclusive --command c --arguments "(__c_go_completion)"

complete --no-files --exclusive --command c --arguments "(__c_project_completion)"
