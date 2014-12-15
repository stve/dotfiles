# The list of directories to add to the path. Directories
# are added in reverse order from first to last. A directory
# is only added if it exists unless it's a relative path.
path_dirs=( \
            $ZSH/bin \
            ./bin \
            ./.bundle/binstubs \
            $HOME/.bin \
            )

# Build path from directory list
for d in "${path_dirs[@]}"; do

  # if it starts with a period, just append to path
  # without verifying if it exists first.
  if [[ $d == \.* ]] ; then
    PATH=$d:$PATH
  else
    test -d $d && PATH=$d:$PATH
  fi
done

# Respect the environment
unset path_dirs

export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
