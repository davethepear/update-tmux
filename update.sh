#!/bin/sh
if [ ! -z "$muxt" ]; then
tmux new -A -s updating \; \
  send-keys 'sudo apt update && sudo apt dist-upgrade -y' C-m \;
fi
# or use aptitude  send-keys 'sudo aptitude update && sudo aptitude safe-upgrade -y' C-m \;
if [ -z "$muxt" ]; then
  sudo apt update && sudo apt upgrade -y
fi
