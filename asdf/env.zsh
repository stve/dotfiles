if test -d "/usr/local/opt/asdf"; then
    export ASDF_DIR=/usr/local/opt/asdf
else
    export ASDF_DIR=$(brew --prefix asdf)
fi

. "$ASDF_DIR/asdf.sh"

fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit
