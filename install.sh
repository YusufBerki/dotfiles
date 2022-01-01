#!/bin/bash

readonly SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

declare -a files=(
.zshrc
)

for f in ${files[*]}
do
    echo "Copy ${f}";
    ln -sf "$SCRIPT_DIR/$f" "$HOME/$f";
done
