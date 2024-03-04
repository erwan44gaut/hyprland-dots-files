#!/bin/bash

# Get the ID of the last workspace + 1 to create a new workspace
new_workspace=$(($(hyprctl workspaces | tail -1 | awk '{print $1}') + 1))

# Switch to the new workspace
hyprctl dispatch workspace $new_workspace

# Launch kitty
kitty &
