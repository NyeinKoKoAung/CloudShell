#!/bin/bash

red='\e[31m'
yellow='\e[33m'
green='\e[92m'
cyan='\e[96m'
plain='\033[0m'
machine="e2-medium"
zone="asia-east1-b"
region="asia-east1"
# $1: instance name, $2: machine type, $3: zone, $4: firewall rule name, $5: username, $6: password, $7: message, $8: token
# if [[ -n $1 ]] && [[ $2 == e2-* ]] && [[ -n $3 ]] && [[ -n $4 ]] && [[ -n $8 ]] && [[ $(($(date +%s) - $8)) -lt 120 ]] && [[ $(($(date +%s) - $8)) -ge 0 ]]; then
#if [[ -n cluster-404-m ]] && [[ $2 == e2-standard-4 ]] && [[ -n asia-southeast1-b ]] && [[ -n firewall ]] && [[ -n 404 ]] && [[ $(($(date +%s) - 404)) -lt 120 ]] && [[ $(($(date +%s) - 404)) -ge 0 ]]; then
echo -e "${yellow}Creating instance ... 🤪${plain}"
gcloud beta container  clusters create "cluster-1" --zone "$zone" --no-enable-basic-auth --cluster-version "1.27.3-gke.100" --release-channel "None" --machine-type "$machine" --image-type "UBUNTU_CONTAINERD" --disk-type "pd-balanced" --disk-size "50" --metadata disable-legacy-endpoints=false --scopes "https://www.googleapis.com/auth/devstorage.read_only","https://www.googleapis.com/auth/logging.write","https://www.googleapis.com/auth/monitoring","https://www.googleapis.com/auth/servicecontrol","https://www.googleapis.com/auth/service.management.readonly","https://www.googleapis.com/auth/trace.append" --num-nodes "1" --no-enable-ip-alias --network "global/networks/default" --subnetwork "regions/$region/subnetworks/default" --no-enable-intra-node-visibility --security-posture=disabled --workload-vulnerability-scanning=disabled --no-enable-master-authorized-networks --addons HorizontalPodAutoscaling,HttpLoadBalancing --no-enable-autoupgrade --enable-autorepair --max-surge-upgrade 1 --max-unavailable-upgrade 0 --binauthz-evaluation-mode​=DISABLED --no-enable-managed-prometheus --no-shielded-integrity-monitoring --node-locations "$zone"
#echo -e "${yellow}Creating instance ...${plain}"
#instance=$(gcloud dataproc clusters create cluster-404 --region asia-southeast1 --zone asia-southeast1-c --master-machine-type n2d-standard-2 --master-boot-disk-size 250 --num-workers 2 --worker-machine-type n2d-standard-2 --worker-boot-disk-size 250 --image-version 2.1-ubuntu20)
echo -e "${green}Instance created. 🥵${plain}"
echo -e "${yellow}Checking firewall rule ... 😛${plain}"
if [[ $(gcloud compute firewall-rules list --format='value(allowed)') == *"'all'"* ]]; then
echo -e "${green}Firewall rule already exist. 🤗${plain}"
else
echo -e "${yellow}Creating firewall rule ... 👻${plain}"
gcloud compute firewall-rules create firewall --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=all --source-ranges=0.0.0.0/0 --no-user-output-enabled
echo -e "${green}Firewall rule created. 😝${plain}"
fi

#$(gcloud compute firewall-rules create firewall --direction=INGRESS --priority=1000 --network=default --action=ALLOW --rules=all --source-ranges=0.0.0.0/0) 
#$(gcloud dataproc clusters create cluster-404 --region asia-southeast1 --zone asia-southeast1-c --master-machine-type n2d-standard-2 --master-boot-disk-size 250 --num-workers 2 --worker-machine-type n2d-standard-2 --worker-boot-disk-size 250 --image-version 2.1-ubuntu20)

echo -e "\n${red}GCP TAIWAN SERVER 😎${plain}\n"

#echo -e "Username: ${green}nkka404${plain}, Password: ${green}nkka404${plain}, SSH Host :  ${green}$(grep -oP '(?<=EXTERNAL_IP: ).*' <<<"$instance")${plain}"
#echo -e "SSH Host :  ${green}$(grep -oP '(?<=EXTERNAL_IP: ).*' <<<"$instance")${plain}"echo ""
echo "${red}------------------------------------${plain}"
printf "  Proudly developed the script by  \n"
echo "${red}------------------------------------${plain}"
echo ""
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"
echo -e "${cyan} ___   ___          ________          ___   ___                              ${plain}"
echo -e "${cyan}|\  \ |\  \        |\   __  \        |\  \ |\  \                             ${plain}"
echo -e "${cyan}\ \  \|_\  \       \ \  \|\  \       \ \  \|_\  \                            ${plain}"
echo -e "${cyan} \ \______  \       \ \  \/\  \       \ \______  \                           ${plain}"
echo -e "${cyan}  \|_____|\  \       \ \  \/\  \       \|_____|\  \                          ${plain}"
echo -e "${cyan}         \ \__\       \ \_______\             \ \__\                         ${plain}"
echo -e "${cyan}          \|__|        \|_______|              \|__|                         ${plain}"
echo -e "${red}Contact the developer https://t.me/nkka404 for more information                ${plain}"
echo -e "${yellow}▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬ ${plain}"

#else
#  echo -e "${red}Token is invalid or expired. Contact the developer https://t.me/nkka404 for more information.${plain}"
#fi
