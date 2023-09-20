#!/usr/bin/env bash

set -eo pipefail

action="$1"

if [ "$action" == "help" ]; then
  echo -e "\nList all listening TCP ports.\n"
  echo -e "Usage: $0 [arg]\n"
  echo "<arg> (optional):"
  echo "  help - Print help."
  exit 0
  fi

lsof -nP -iTCP -sTCP:LISTEN