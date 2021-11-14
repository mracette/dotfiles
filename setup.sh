#!/usr/bin/env bash

dotfiles=(".aliases" ".exports" ".functions" ".gitconfig" ".gitignore" ".macos" ".zshrc")
dirname=$(dirname "${BASH_SOURCE}")

function realpath {
    echo "$(cd "$(dirname "$1")"; pwd -P)/$(basename "$1")"
}

for df in ${dotfiles[@]}; do
  ln -Ffvs $(realpath "${dirname}/$df") $HOME/$df
done
