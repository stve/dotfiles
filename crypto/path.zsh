export CHIAPATH="/Applications/Chia.app/Contents/Resources/app.asar.unpacked/daemon"

if test -d "$CHIAPATH"; then
    export PATH="$CHIAPATH:$PATH"
fi