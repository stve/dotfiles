#!/bin/sh
#
# atom
#
# This installs atom packages storeed in my-packages.txt

# Check for Homebrew
if test ! $(which apm)
then
  echo "  apm not found, make sure atom shell commands are installed."
  exit 1
else
  apm stars --install
fi

exit 0
