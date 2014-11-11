#!/bin/bash
# Set up user environment

# Create bin directory for vagrant user
mkdir /home/vagrant/bin

# Set PATH for runtime of this script
PATH=/home/vagrant/bin:$PATH

# Download repo tool
curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > /home/vagrant/bin/repo
chmod +x /home/vagrant/bin/repo

# Configure QBS
qbs-setup-toolchains --detect
