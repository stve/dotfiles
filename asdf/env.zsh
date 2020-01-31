autoload -Uz compinit && compinit

if test -d "/usr/local/opt/asdf"; then
    export ASDF_DIR=/usr/local/opt/asdf
else
    export ASDF_DIR=$(brew --prefix asdf)
fi

. "$ASDF_DIR/asdf.sh"
. "$ASDF_DIR/etc/bash_completion.d/asdf.bash"
