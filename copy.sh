#!/bin/bash

source_folder="$1"
destination_folder="$2"

if [ ! -d "$source_folder" ]; then
    echo "Error: Source folder '$source_folder' does not exist."
    exit 1
fi

if [ ! -d "$destination_folder" ]; then
    mkdir -p "$destination_folder"
fi

cp -r "$source_folder"/* "$destination_folder"

echo "'$source_folder' successfully copy to '$destination_folder'."
