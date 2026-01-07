#!/bin/bash

# Check if Homebrew is installed, install if not
if ! command -v brew &> /dev/null
then
    echo "Homebrew not found. Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL raw.githubusercontent.com)"
fi

# Install Git using Homebrew
echo "Installing Git..."
brew install git
echo "Installation complete."

cd ~/desktop

curl -L -O "https://github.com/DripsOrg/IT/raw/refs/heads/main/ATMac690515(8.5.0.0)_1Y4xLy-9IAvV_30384988350%201.pkg"

sudo installer -pkg "~/desktop/ATMac690515(8.5.0.0)_1Y4xLy-9IAvV_30384988350%201.pkg" -target /applications
