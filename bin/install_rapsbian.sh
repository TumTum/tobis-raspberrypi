#!/bin/bash

reset=$(tput sgr0)
bold=$(tput bold)
promt=$(tput setaf 3)
bluebg=$(tput setab 4)
blue=$(tput setaf 4)
white=$(tput setaf 7)
red=$(tput setaf 1)

echo "${bluebg}";
echo "";
echo "${white}  INSTALLIERE Rasbian auf eine SDcard  ";
echo "${reset}";

diskutil list;

echo "";
echo "";
read -p "${promt}${bold}Welches Device ist die SDcard?${reset} ${promt}/dev/disk${red}" dev_name;
echo "${reset}";

echo "${blue}Starte Ansible ...";
cmd="ansible-playbook Raspbian_playbook.yml --extra='raspian_dev_disk=/dev/disk"${dev_name}"'";
echo "   \$: ${cmd}"
echo "${reset}";

$cmd;