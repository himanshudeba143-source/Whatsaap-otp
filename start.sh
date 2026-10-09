
#!/usr/bin/env bash
cd "$(dirname "$0")"

clear

printf '\033[1;34m'
toilet -f pagga "MY-PHISHER"
printf '\033[0m'
printf '                              \033[37m2.1\033[0m\n'

LIGHT_YELLOW='\033[1;38;5;190m'
LIGHT_GREEN='\033[1;38;5;118m'
ORANGE='\033[1;34m'
RESET='\033[0m'

printf "${LIGHT_YELLOW}========================================${RESET}\n"
printf "${LIGHT_GREEN}       [ SYSTEM INITIALIZATION ]${RESET}\n"
printf "${ORANGE}========================================${RESET}\n\n"

printf "${LIGHT_GREEN}[+]${RESET} ${LIGHT_YELLOW}Checking Node.js...${RESET}\n"
node --version

printf "${LIGHT_GREEN}[+]${RESET} ${ORANGE}Initializing local demo...${RESET}\n"
sleep 1

printf "${LIGHT_GREEN}[+]${RESET} ${LIGHT_YELLOW}Starting web server...${RESET}\n"
printf "${ORANGE}[*] Website:${RESET} ${LIGHT_GREEN}http://localhost:3000${RESET}\n\n"

printf "${LIGHT_YELLOW}[+] Server output follows below.${RESET}\n\n"

node server.js
