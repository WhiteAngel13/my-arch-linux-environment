#!/bin/bash

# Function to handle Ctrl+C
ctrl_c() {
  echo "Script interrupted. Exiting..."
  exit 1
}

# Register the ctrl_c function to handle SIGINT signal (Ctrl+C)
trap ctrl_c SIGINT

if [ -z "${BASE_DIR}" ]; then
  BASE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
fi

source "${BASE_DIR}/base-dependencies/main.sh"
source "${BASE_DIR}/softwares/main.sh"
source "${BASE_DIR}/tools/main.sh"
source "${BASE_DIR}/fonts/main.sh"
source "${BASE_DIR}/extensions/main.sh"
source "${BASE_DIR}/themes/main.sh"
source "${BASE_DIR}/shell/main.sh"

base_dependencies
softwares
tools
fonts
extensions
themes
shell