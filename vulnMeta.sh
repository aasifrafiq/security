#!/bin/bash
## Use clear to clear the screen at startup
clear
RED="\e[031m"
GREEN="\e[032m"
Yellow="\e[033m"
END="\e[0m"

echo -e ""$Yellow"##############################################"$END""
echo -e ""$GREEN"Author: \t Muhammad Asif"
echo -e "Email: \t\t aasifrafiq@hotmail.com"
echo -e "Web: \t\t pentestgeek.wordpress.com"
echo -e "Skype: \t\t aasifrafiq"
echo -e "LinkedIn: \t aasifrafiq"
echo -e "Twitter: \t aasifrafiq"
echo -e "Github: \t aasifrafiq"
echo -e "Facebook: \t fb.com/pentestgeek"
echo -e "Versin: \t 1.1"
echo -e "Tested on: \t Ubuntu 14.04"$END""
echo -e ""$Yellow"##############################################"$END"" 

[[ -z "$1" ]] && echo -e ""$RED"Usage: $0 CVE-YYYY-NNNN"$END"" && echo "" && exit 1

echo ""
curl -s http://www.cvedetails.com/cve/$1/ | grep 'meta name="description" content="' | awk -F\" '{print $4}' | sed 's/&amp;quot;//g' | sed -e 's/: /\n/g'| sed 's/, aka/\nAlso known as: /g'
echo ""
