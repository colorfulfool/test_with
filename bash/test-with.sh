#!/bin/bash

COL='\033[0;33m'
NC='\033[0m' # No Color

function run_command {
  printf "\033c"
  $*
}

printf "${COL}Watching `pwd`, running $*${NC}\n"

run_command
fswatch -o `pwd` | { while read x ; do run_command; done }
