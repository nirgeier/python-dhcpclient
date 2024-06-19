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

echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${YELLOW}* Creating python environment${RESET_COLOR}"
python3 -m venv venv

# Create virtual env
echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${YELLOW}* Creating python environment${RESET_COLOR}"
python3 -m venv venv

# start the virtual env
echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${YELLOW}* Strating python environment${RESET_COLOR}"
source venv/bin/activate

# install the pip packages
echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${YELLOW}* Installing required modules${RESET_COLOR}"
pip install -q -r requirements.txt

# Run the CLI tool
echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${GREEN}* Executing the module ${CYAN}python3 -m dhclient <no option>${RESET_COLOR}"
python3 -m dhclient 

echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${GREEN}* Executing the module ${CYAN}python3 -m dhclient --version${RESET_COLOR}"
python3 -m dhclient --version

echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${GREEN}* Executing the module ${CYAN}python3 -m dhclient --release${RESET_COLOR}"
python3 -m dhclient --release

echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${GREEN}* Executing the module ${CYAN}python3 -m dhclient --help${RESET_COLOR}"
python3 -m dhclient --help

echo -e "${PURPLE}----------------------------------------------------------------"
echo -e "${GREEN}* Testing the module ${CYAN}python3 -m pytest tests/test_dhclient.py${RESET_COLOR}"
python3 -m pytest --tb=long tests/test_dhclient.py
