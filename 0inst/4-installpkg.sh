#!/bin/bash

handle_error() {
      echo "An error occurred on line $1"
      exit 1
  }
  trap 'handle_error $LINENO' ERR


cd ~

lst=($(cat ~/vd/0inst/pkg.lst))

for PKG in "${lst[@]}";do
        sudo xbps-install -y "$PKG"
done
