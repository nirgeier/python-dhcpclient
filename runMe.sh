#!/bin/bash

# https://github.com/nirgeier/python-dhcpclient.git

# Reset
RESET_COLOR='\033[0m'       # Text Reset

# Regular Colors
BLACK='\033[0;30m'        # Black
RED='\033[0;31m'          # Red
GREEN='\033[0;32m'        # Green
YELLOW='\033[0;33m'       # Yellow
BLUE='\033[0;34m'         # Blue
PURPLE='\033[0;35m'       # Purple
CYAN='\033[0;36m'         # Cyan
WHITE='\033[0;37m'        # White

# install apt if we are on linux machine
if command -v apt &> /dev/null
then
    apt install -y python3-venv
fi

# Build the Docker image
echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${YELLOW}* Building docker image${RESET_COLOR}"
docker build --no-cache -t nirgeier/dhclient2 .

echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${YELLOW}* Executing the cli tool${RESET_COLOR}"
docker run nirgeier/dhclient2

