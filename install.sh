#!/bin/sh

# Set a path for local binaries
# add this to your path
BINPATH=$HOME/.local/bin

# make sure this path exists
mkdir -p "$BINPATH"

# make the scripts executable
chmod u+x ./genelementconfig
chmod u+x ./element-desktop

# link the scripts to the PATH
ln -s "$(pwd)/genelementconfig" "$BINPATH/genelementconfig"
ln -s "$(pwd)/element-desktop" "$BINPATH/element-desktop"

cat <<EOM
Installed to "$BINPATH"
Make sure "$BINPATH" is in your PATH
you may do so by adding the following line to your bashrc or zshrc
export PATH="$BINPATH:\$PATH"
EOM
