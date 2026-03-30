#!/bin/bash

stty -icanon -echo
trap "stty sane" EXIT

echo "Press keys..."

while true; do
  if read -rsn1 key; then
    echo "Pressed: [$key]"
  fi
done
