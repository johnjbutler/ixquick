#!/bin/bash

# Installs ixguard-tools the first time

# set -x

# Variables
RCPATH="$HOME/.bashrc"
PROFILEPATH="$HOME/.bash_profile"
RCSTR="[[ -f /ixquick/.bashrc ]] && source /ixquick/.bashrc # Loads ixguard .bashrc"
PROFILESTR="[[ -f ~/.bashrc ]] && source ~/.bashrc # Loads .bashrc"

# Ensure bin files have execute permissions
# chmod -R +x /ixguard/bin


echo "-----------"
echo "Beginning installation..."
echo

# Create the files if they don't exist
if [[ ! -f "$PROFILEPATH" ]]; then
  echo "Creating $PROFILEPATH..."
  touch "$PROFILEPATH"
fi

if [[ ! -f "$RCPATH" ]]; then
  echo "Creating $RCPATH..."
  touch "$RCPATH"
fi

echo


# Add contents of ixguard .bashrc to local .bashrc (so commands are available in non-login scripts too!)
# Only if the line isn't already there!
echo "Adding ixquick/bin to ~/.bashrc..."
if [[ -z $(grep -F "$RCSTR" "$RCPATH") ]]; then
  # Error handling
  echo "$RCSTR" >> "$RCPATH" && echo "Added!" || echo "ERROR: Failed to add line to .bashrc! Try adding manually"
else
  echo "Already added! Skipping..."
fi

echo

echo "Adding ~/.bashrc to ~/.bash_profile..."
# Make sure .bash_profile pulls from .bashrc for cross-compatibility
# Only if it hasn't been sourced already!
if [[ -z $(grep -F "~/.bashrc" "$PROFILEPATH") ]]; then
  # Error handling
  echo "$PROFILESTR" >> "$PROFILEPATH" && echo "Added!" || echo "ERROR: Failed to add line to .bash_profile! Try adding manually"
else
  echo "Already added! Skipping..."
fi

echo
echo "-----------"
echo "Installation Complete!"
echo "-----------"
