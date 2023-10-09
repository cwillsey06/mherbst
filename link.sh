#!/bin/sh -e
# links config directories
# up/into $XDG_CONFIG_HOME

# to overwrite destination
# TARGET=<dir> link.sh ...

check_target() {
  [ -n "$XDG_CONFIG_HOME" ]       \
    && TARGET="$XDG_CONFIG_HOME"  \
    || TARGET="$HOME/.config"
}

[ -z "$TARGET" ] && check_target
ln -s "$@" -t "$TARGET/"  \
  "$PWD/neofetch"         \
  "$PWD/bottom"           \
  "$PWD/ranger"           \
  "$PWD/kitty"            \

