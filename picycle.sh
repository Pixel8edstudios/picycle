#!/bin/bash
echo -n "Delete files in ~/.local/share/Trash/info? [Y/n] "
read -r "infodel"
if [[ "$infodel" == "Y" ]]; then
  echo "Started"
  rm -r -v ~/.local/share/Trash/info/*
  echo "Done"
  echo "Delete files in ~/.local/share/Trash/files? [Y/n] "
  read -r "filedel"
  if [[ "$filedel" == "Y" ]]; then
    rm -r -v ~/.local/share/Trash/files/*
    echo "Done"
  fi
elif [[ "$infodel" == "n" ]]; then
  echo -n "Delete files in ~/.local/share/Trash/files? [Y/n] "
  read -r "filedel"
  if [ "$filedel" == "Y" ]; then
    rm -r -v ~/.local/share/Trash/files/*
    echo "Done"
    exit
  elif [ "$filedel" == "n" ]; then
    echo "Aborted. No files deleted."
  fi
fi
