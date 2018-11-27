#!/usr/bin/env bash
set -e
set -x

if [[ -x "$(which docker)" ]]
then
  echo Docker exists
else
  export INSTALL_DIR=$(mktemp -d)
  cd $INSTALL_DIR
  curl -fsSL https://get.docker.com -o get-docker.sh
  sh get-docker.sh
  cd
  rm -rf $INSTALL_DIR

fi
