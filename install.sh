#!/bin/bash

red='\x1b[31;1m'
yellow='\x1b[33;1m'
green='\x1b[32;1m'
plain='\033[0m'

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_404/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "<h3><font color='#D50000'>▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬
</font></h3>
<h3><font color='#f40125'>--- ۩ PREMIUM SERVER ۩ ---
</font></h3>
<h3><font color='#f27401'>--- ۩ SERVER BY 404 ۩ ---
</font></h3>
<h4><font color='#F535AA'>Telegram Channel >> https://t.me/Pmttg
</font></h4>
<h4><font color='#E65100'>Telegram Channel >> https://t.me/nkka_404
</font></h4>
<h3><font color='#D50000'>▬▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬▬
</font></h3>" | tee /etc/ssh/gcp_404 >/dev/null
useradd "nkka404" --shell=/bin/false -M
echo "nkka404:nkka404" | chpasswd

echo ""
echo "------------------------------------"
printf "Developed the script by"
echo "------------------------------------"
echo ""

echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
echo -e "${GREEN} ___   ___          ________          ___   ___                              ${plain}"
echo -e "${GREEN}|\  \ |\  \        |\   __  \        |\  \ |\  \                             ${plain}"
echo -e "${GREEN}\ \  \|_\  \       \ \  \|\  \       \ \  \|_\  \                            ${plain}"
echo -e "${GREEN} \ \______  \       \ \  \/\  \       \ \______  \                           ${plain}"
echo -e "${GREEN}  \|_____|\  \       \ \  \/\  \       \|_____|\  \                          ${plain}"
echo -e "${GREEN}         \ \__\       \ \_______\             \ \__\                         ${plain}"
echo -e "${GREEN}          \|__|        \|_______|              \|__|                         ${plain}"
echo -e "${red}Contact the developer https://t.me/nkka404 for more information                ${plain}"
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
