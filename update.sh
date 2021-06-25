#!/bin/sh
tmux new -A -s updating \; \
  send-keys 'sudo apt update && sudo apt dist-upgrade -y' C-m \;
else
  # you don't really want to nest tmux windows
  sudo apt update && sudo apt upgrade -y
fi
# or use aptitude  send-keys 'sudo aptitude update && sudo aptitude upgrade -y' C-m \;
