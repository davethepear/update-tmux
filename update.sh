#!/bin/bash

LOGFILE="$HOME/update-$(date +%F-%H%M%S).log"
[[ -z "$TMUX" ]] && exec tmux new -s sysupdate "bash '$0'"
apt list --upgradable | tee -a "$LOGFILE"
echo -n "Proceed with upgrade? [y/N] "; read -r yn
[[ "$yn" =~ ^[Yy]$ ]] && sudo apt update && sudo apt dist-upgrade -y && sudo flatpak update -y | tee -a "$LOGFILE"
echo "Done."
