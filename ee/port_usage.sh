#!/usr/bin/env bash

set -eo pipefail

action="$1"

if [ "$action" == "help" ]; then
  echo 'hello world'
  exit 0
  fi

lsof -nP -iTCP -sTCP:LISTEN