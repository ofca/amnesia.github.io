#!/usr/bin/env bash

set -eo pipefail

action="$1"

if [ "$action" == "help" ]; then
  echo -e "\nPrint prettier git log.\n"
  echo -e "Usage: $0 [arg]\n"
  echo "<arg> (optional):"
  echo "  help - Print help."
  exit 0
  fi

git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all