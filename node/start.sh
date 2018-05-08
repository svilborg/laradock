#!/bin/bash

SCRIPT="$1"

IFS=$'\n'       # make newlines the only separator
set -f          # disable globbing
for i in $(cat < "/usr/local/sites/sites.conf"); do
  echo "Starting $i"
  node "/var/www/$i"
done