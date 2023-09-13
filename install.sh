#!/bin/bash

#IP=$(cat /etc/IP)
#IP2=$(curl -H "i-am-404" http://metadata/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip)
plain='\033[0m'
final=$(date "+%Y-%m-%d)
gui=$(date "+%d/%m/%Y")
#စာလုံးအရောင်းများ
red='\e[31m'
yellow='\e[33m'
gray='\e[90m'
green='\e[92m'
blue='\e[94m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'

#Username နှင့် Password ပြောင်းရန်
username="404"
password="404"
#SSH User Limit သတ်မှတ်ရန်
sshlimiter="300"

#Font Size(Server message အရွယ်အစား)
# h6 = စာလုံးအသေး , h4 = စာလုံးအလတ် , h3 = စာလုံးအကြီး

[[ $EUID -ne 0 ]] && echo -e "${red}Error: ${plain} You must use root user to run this script!\n" && exit 1

sed -i 's/#\?AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config && sed -i 's/#\?PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config && sed -i 's/#\?Banner .*/Banner \/etc\/ssh\/gcp_404/' /etc/ssh/sshd_config && /etc/init.d/ssh restart;
echo "
<h3><font color='red'>
▬▬▬▬▬▬▬▬✿4▪0▪4✿▬▬▬▬▬▬▬▬
</font></h3>
<h4><font color='cyan'><style='text-align:center'>
↤↤↤↤↤ GCP SERVER BY ④ ⍤⃝✿④ ↦↦↦↦↦
</font></h4>
<h3><font color='red'>
▬▬▬▬▬▬▬▬✿4▪0▪4✿▬▬▬▬▬▬▬▬
</font></h3>" | tee /etc/ssh/gcp_404 >/dev/null
#useradd "$username" --shell=/bin/false -M
useradd -e $final -M -s /bin/false -p $password $username >/dev/null
#echo "$password" >/etc/ssh/sshd_config/$username
echo "$username $sshlimiter" >>/root/usuarios.db
#echo "$username:$password" | chpasswd

echo -e "\033[1;37m◈─────⪧ SSH ACCOUNT ⪦─────◈"
echo ""
echo -e "\033[1;32m◈ Host / IP   :⪧  \033[1;31mIP 🥵"
echo -e "\033[1;32m◈ Port        :⪧  \033[1;31m22"
echo -e "\033[1;32m◈ Username    :⪧  \033[1;31m$username"
echo -e "\033[1;32m◈ Password    :⪧  \033[1;31m$password"
echo -e "\033[1;32m◈ Login Limit :⪧  \033[1;31m$gui"
echo -e "\033[1;32m◈ Expire Date :⪧  \033[1;31m$sshlimiter"
echo ""
echo -e "\033[1;37m◈────⪧ ✿ ✿ 4▪0▪4 ✿ ✿ ⪦────◈"
#echo ""
#echo -e "\033[1;32m◈ Host / IP   :⪧  \033[1;31m$IP2\e[33m(For Cloud Shell)"
#echo ""
echo "------------------------------------"
printf "Developed the script by \n"
echo "------------------------------------"
echo ""

echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
echo -e "${cyan} ___   ___          ________          ___   ___                               ${plain}"
echo -e "${cyan}|\  \ |\  \        |\   __  \        |\  \ |\  \                              ${plain}"
echo -e "${cyan}\ \  \|_\  \       \ \  \|\  \       \ \  \|_\  \                             ${plain}"
echo -e "${cyan} \ \______  \       \ \  \/\  \       \ \______  \                            ${plain}"
echo -e "${cyan}  \|_____|\  \       \ \  \/\  \       \|_____|\  \                           ${plain}"
echo -e "${cyan}         \ \__\       \ \_______\             \ \__\                          ${plain}"
echo -e "${cyan}          \|__|        \|_______|              \|__|                          ${plain}"
echo -e "${green}Contact the developer https://t.me/nkka404 for more information              ${plain}"
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"

echo -e "${cyan}i am 404 😎 ${plain}"
