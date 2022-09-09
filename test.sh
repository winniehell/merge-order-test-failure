#!/usr/bin/env bash

set -o errexit
set -o nounset

allowed_pattern="^[cde].*$"
if grep -v "${allowed_pattern}" food.txt; then
  echo "Error: Not all lines match the allowed pattern ${allowed_pattern}"
  exit 1
fi
