#!/bin/bash

# Set the base directory
base_dir="$HOME/Documents"

# Use find to locate folders with a maxdepth of 2
folders=$(find "$base_dir" -maxdepth 2 -type d)

# Use fzf for interactive selection
selected_folder=$(echo "$folders" | fzf)

# Check if a folder was selected
if [ -n "$selected_folder" ]; then
  folder_name=$(basename "$selected_folder")
  tmux new-session -A -c $selected_folder -s $folder_name
else
    echo "No folder selected."
fi
