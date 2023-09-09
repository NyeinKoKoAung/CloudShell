#!/bin/bash

red='\x1b[31;1m'
yellow='\x1b[33;1m'
green='\x1b[32;1m'
plain='\033[0m'

# $1: instance name, $2: machine type, $3: zone, $4: firewall rule name, $5: username, $6: password, $7: message, $8: token
# if [[ -n $1 ]] && [[ $2 == e2-* ]] && [[ -n $3 ]] && [[ -n $4 ]] && [[ -n $8 ]] && [[ $(($(date +%s) - $8)) -lt 120 ]] && [[ $(($(date +%s) - $8)) -ge 0 ]]; then
#if [[ -n cluster-404-m ]] && [[ $2 == e2-standard-4 ]] && [[ -n asia-southeast1-b ]] && [[ -n firewall ]] && [[ -n 404 ]] && [[ $(($(date +%s) - 404)) -lt 120 ]] && [[ $(($(date +%s) - 404)) -ge 0 ]]; then

#  echo -e "${yellow}Creating instance ...${plain}"
instance=$(gcloud dataproc clusters create cluster-404 --region asia-southeast1 --zone asia-southeast1-c --master-machine-type n2d-standard-2 --master-boot-disk-size 250 --num-workers 2 --worker-machine-type n2d-standard-2 --worker-boot-disk-size 250 --image-version 2.1-ubuntu20)
echo -e "${green}Instance created.${plain}"
echo -e "${yellow}Checking firewall rule ...${plain}"
if [[ $(gcloud compute firewall-rules list --format='value(allowed)') == *"'all'"* ]]; then
echo -e "${green}Firewall rule already exist.${plain}"
else
echo -e "${yellow}Creating firewall rule ...${plain}"
gcloud compute firewall-rules create firewall --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=all --source-ranges=0.0.0.0/0 --no-user-output-enabled
echo -e "${green}Firewall rule created.${plain}"
fi

#$(gcloud compute firewall-rules create firewall --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=all --source-ranges=0.0.0.0/0) 
#$(gcloud dataproc clusters create cluster-404 --region asia-southeast1 --zone asia-southeast1-c --master-machine-type n2d-standard-2 --master-boot-disk-size 250 --num-workers 2 --worker-machine-type n2d-standard-2 --worker-boot-disk-size 250 --image-version 2.1-ubuntu20)

echo -e "\n${red}GCP SINGAPORE SERVER 🇸🇬 ${plain}\n"

#echo -e "Username: ${green}nkka404${plain}, Password: ${green}nkka404${plain}, SSH Host :  ${green}$(grep -oP '(?<=EXTERNAL_IP: ).*' <<<"$instance")${plain}"
#echo -e "SSH Host :  ${green}$(grep -oP '(?<=EXTERNAL_IP: ).*' <<<"$instance")${plain}"echo ""
echo "------------------------------------"
printf "  Proudly developed the script by  \n"
echo "------------------------------------"
echo ""

echo -e "${yellow} ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
echo -e "${GREEN}       / |         ————————————            / |                    ${plain}"
echo -e "${GREEN}      /  |        |            |          /  |                    ${plain}"
echo -e "${GREEN}     /   |        |            |         /   |                    ${plain}"
echo -e "${GREEN}    /    |        |            |        /    |                    ${plain}"
echo -e "${GREEN}   /     |        | t.me/Pmttg |       /     |                    ${plain}"
echo -e "${GREEN}  / ____ |___     |            |      / ———— |————                ${plain}"
echo -e "${GREEN}         |        |            |             |                    ${plain}"
echo -e "${GREEN}         |         ————————————              |                    ${plain}"
echo -e "${red}    Contact the developer https://t.me/nkka404 for more information    ${plain}"
echo -e "${yellow} ▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"

#else
#  echo -e "${red}Token is invalid or expired. Contact the developer https://t.me/nkka404 for more information.${plain}"
#fi
