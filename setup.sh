#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

CONFIG_DIRECTORY="$HOME/.config"
BACKUP_DIRECTORY="$CONFIG_DIRECTORY/"

ln -s "$SCRIPT_DIR/images" "$CONFIG_DIRECTORY/images"
