#!/bin/bash


echo -e '\033[1;38;5;221m'"

+-+-+-+ +-+-+-+-+-+-+
|G|a|u| |E|x|p|o|s|e|
+-+-+-+ +-+-+-+-+-+-+ 
Author:Tamim Hasan(tamimhasan404)"
echo

mkdir gau-expose-result

echo -n "[] Give your gau file name/path: "

read path

echo

echo "[] Greather sensitive file"

echo

cp $path gau-expose-result
cd gau-expose-result

cat $path | grep ".xls\|.xlsx\|.sql\|.csv\|.env\|.msql\|.bak\|.bkp\|.bkf\|.old\|.temp\|.db\|.mdb\|.config\|.yaml\|.zip\|.tar\|.git\|.xz\|.asmx\|.vcf\|.pem" | uro | sort | uniq  > gau-sensitive-file.txt

echo "[] Greather all panel stuff"

cat $path | grep -i "login\|singup\|admin\|dashboard\|wp-admin\|singin\|adminer\|dana-na\|login/?next/=" | sort | uniq | uro > gau-panel.txt
echo
echo "[] Greather third-party assets"

cat $path | grep -i "jira\|jenkins\|grafana\|mailman\|+CSCOE+\|+CSCOT+\|+CSCOCA+\|symfony\|graphql\|debug\|gitlab\|phpmyadmin\|phpMyAdmin" | sort | uniq | uro > gau-third-party-assets.txt

echo
echo "[] Greathering emails-usersnames" 
cat $path | grep "@" | sort | uniq | uro > gau-emails-usersnames.txt

echo
echo "[] Greathering error(may sensitive-data-expose)"
cat $path | grep "error." | sort | uniq | uro > gau-error-base.txt

echo
echo "[] Grathering other sensitive path"
cat $path | grep -i "root\| internal\| private\|secret" | sort | uniq | uro > other-possible-sensitive-path.txt

echo
echo "[] Grathering only robots.txt"
cat $path | grep -i robots.txt | sort | uniq | uro > only-robots.txt

echo
echo "[] Grathering subdomains"
cat $path | cut -d'/' -f3 | cut -d':' -f1 | uro | sed 's/^\(\|s\):\/\///g' > subdomains.txt

echo
echo "[] Grathering paths for directory brute-force"

cat $path | rev | cut -d '/' -f 1 | rev | uro | sed 's/^\(\|s\):\/\///g' | sed '/=\|.js\|.gif\|.html\|.rss\|.cfm\|.htm\|.jpg\|.mp4\|.css\|.jpeg\|.png\|:\|%/d' > wordlist.txt

echo

echo -e "\e[1mDone, Hope it's helpful for you\e[0m"
