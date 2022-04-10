if test -d "/usr/local/opt/asdf"; then
    export ASDF_INSTALL_DIR=/usr/local/opt/asdf
else
    export ASDF_INSTALL_DIR=$(brew --prefix asdf)
fi

if [[ -f "$ASDF_INSTALL_DIR/libexec/asdf.sh" ]]; then
    . "$ASDF_INSTALL_DIR/libexec/asdf.sh"
fi

unset ASDF_INSTALL_DIR
