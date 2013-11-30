#!/bin/bash

# Print commands; fail on errors.
set -v -e

# Install dependencies.
apt-get update
apt-get install -y git
apt-get install -y make

# Grab neutrino source code.
sudo -u vagrant git clone https://github.com/ne-utrino/neutrino.git

# Configure the build script appropriately.
sudo -u vagrant echo "MACHINE=$MACHINE" >> neutrino/.default.cfg

