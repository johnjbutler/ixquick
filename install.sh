#!/bin/bash

#___________________________________________________________
# Developed & Maintained by:
#       Jack Butler
#       Sales Engineer
#       Guardsquare: Mobile App Security
#___________________________________________________________

# Installs ixquick-tools the first time


# Variables
BIN="/ixquick/bin"
RCPATH="$HOME/.bashrc"
PROFILEPATH="$HOME/.bash_profile"
RCSTR="[[ -f /ixquick/.bashrc ]] && source /ixquick/.bashrc # Loads ixquick .bashrc"
PROFILESTR="[[ -f ~/.bashrc ]] && source ~/.bashrc # Loads .bashrc"

# Ensure bin files have execute permissions
sudo chmod -R +x $BIN

echo
echo "     ___   __      ____        _      _      "
echo "    (_) \ / /     / __ \      (_)    | |     "
echo "     _ \ V /_____| |  | |_   _ _  ___| | __  "
echo "    | | > <______| |  | | | | | |/ __| |/ /  "
echo "    | |/ . \     | |__| | |_| | | (__|   <   "
echo "    |_/_/ \_\     \___\_\\__,_|_|\___|_|\_\  "
echo
echo "---------------------------"
echo " Beginning installation..."
echo "---------------------------"

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


# Add contents of ixquick .bashrc to local .bashrc (so commands are available in non-login scripts too!)
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
sleep 1
echo "---------------------------"
echo "Almost complete..."
echo "---------------------------"
sleep 1; echo "      3"; echo; sleep 1; echo "      2"; echo; sleep 1; echo "      1"; sleep 1; echo
echo "------------------------"
echo " Installation Complete!"
echo "------------------------"
echo "         ____  _   _  ____ ____ _____ ____ ____                 "
echo "        / ___|| | | |/ ___/ ___| ____/ ___/ ___|                "
echo "        \___ \| | | | |  | |   |  _| \___ \___ \                "
echo "         ___) | |_| | |__| |___| |___ ___) |__) |               "
echo "        |__________|_____/\___/_\____\___|_____/                "
echo " ___________________________________________________________    "
echo " \ \ / / _ \| | | |  _ \  |  _ \| ____|  / \  |  _ \ \ / / |    "
echo "  \ V / | | | | | | |_) | | |_) |  _|   / _ \ | | | \ V /| |    "
echo "   | || |_| | |_| |  _ <  |  _ <| |___ / ___ \| |_| || | |_|    "
echo "   |_| \___/ \___/|_| \_\ |_| \_\_____/_/   \_\____/ |_| (_)    "
echo
