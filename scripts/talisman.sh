#!/bin/sh

# text color
txt_reset="\033[0m"
YELLOW="\033[33m"
LGREEN="\033[32m"

# constant
file_path="./.git/hooks/bin/talisman"

check() {
  if [ ! -e "$file_path" ]; then
    echo "${YELLOW}Talisman is not installed, please try to commit again after the installation" "$txt_reset"
    install_talisman
  fi

  exit 1
}

run() {
  echo "\nRunning secrets scanning..." "$txt_reset"
  pnpm talisman
}

install_talisman() {
    printf "Talisman is installing, this may take a few seconds\n"
    curl -s https://thoughtworks.github.io/talisman/install.sh > ./install-talisman.sh
    chmod +x ./install-talisman.sh

    ./install-talisman.sh pre-commit
    rm -rf ./install-talisman.sh
}

if declare -f "$1" > /dev/null
then
  "$@"

else
  echo "'$1' is not a known function name" >&2
  exit 1
fi
