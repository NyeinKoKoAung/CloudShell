#!/bin/bash

red='\x1b[31;1m'
yellow='\x1b[33;1m'
green='\x1b[32;1m'
plain='\033[0m'

# $1: username, $2: password, $3: message, $4: token

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

#if [[ -n $4 ]] && [[ $(($(date +%s) - $4)) -lt 120 ]] && [[ $(($(date +%s) - $4)) -ge 0 ]]; then

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_ready/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "<h3><font color='red'>▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬
</font></h3>
<h3><font color='#F535AA'>--- ۩ SERVER BY Ob-C-L ۩ ---
</font></h3>
<h3><font color='#FF7F00'>Telegram Channel >> https://t.me/Pmttg
</font></h3>
<h3><font color='red'>▬▬▬▬▬ஜ۩۞۩ஜ▬▬▬▬▬
</font></h3>" | tee /etc/ssh/gcp_ready >/dev/null
useradd "obcl" --shell=/bin/false -M
echo "obcl:obcl" | chpasswd

#else
#  echo -e "${red}Token is invalid or expired. Contact the developer https://t.me/nkka404 for more information.${plain}"
#fi
print("◈─────⪧ SSH ACCOUNT ⪦─────◈")

echo -e "${yellow}Host / IP   :⪧  your instance${plain}"
echo -e "${yellow}SSH Port    :⪧  22${plain}"
echo -e "${yellow}Username    :⪧  obcl${plain}"
echo -e "${yellow}Password    :⪧  obcl${plain}"
echo ""
echo "------------------------------------"
printf "  Proudly developed the script by  \n"
echo "------------------------------------"
echo ""
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
echo -e "${GREEN}   ____  _            _____      _                                           ${plain}"
echo -e "${GREEN}  / __ \| |          / ____|    | |                                          ${plain}"
echo -e "${GREEN} | |  | | |__ ______| |   ______| |                                          ${plain}"
echo -e "${GREEN} | |  | | '_ \______| |  |______| |                                          ${plain}"
echo -e "${GREEN} | |__| | |_) |     | |____     | |____                                      ${plain}"
echo -e "${GREEN}  \____/|_.__/       \_____|    |______|                                     ${plain}"
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
