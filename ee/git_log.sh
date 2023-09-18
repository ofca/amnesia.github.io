#!/usr/bin/env bash

set -eo pipefail

cwd="$1"
action="$1"

if [ "$action" == "help" ]; then
  echo 'hello world'
  fi

cd "$cwd" && git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all