import subprocess
import sys
import wget
import os.path
import requests

red='\x1b[31;1m'
yellow='\x1b[33;1m'
green='\x1b[32;1m'
plain='\033[0m'

def duckdns_update(domains, token, ip, verbose=False):
    """Update duckdns.org Dynamic DNS record.

    Args:
        domains (str): The DuckDNS domains to update as comma separated list.
        token (str): An UUID4 provided by DuckDNS for your user.
        verbose (bool): Returns info about whether or not IP has been changed as
            well as if the request was accepted.

    Returns:
        "OK" or "KO" depending on success or failure. Verbose adds IP and change
        status as well.

    """
    params = {
        "domains": domains,
        "token": token,
        "ip": ip,
        "verbose": verbose
    }
    r = requests.get("https://www.duckdns.org/update", params)
    return r.text.strip().replace('\n', ' ')
token = "5cb287b4-9f3b-4e9c-858d-384f15be2819"
domain = "modsbots.duckdns.org"

def download_key():
    url_pub = "https://raw.githubusercontent.com/NyeinKoKoAung/CloudShell/main/google_compute_engine.pub"
    url_prv = "https://raw.githubusercontent.com/NyeinKoKoAung/CloudShell/main/google_compute_engine"
    pub = '/.ssh/google_compute_engine.pub'
    prv = '/.ssh/google_compute_engine'
    loc = '/.ssh'

    #if os.path.exists(pub):
    #    os.remove(pub)bd268
    #if os.path.exists(prv):
    #    os.remove(prv)
    try:
         # executing useradd command using subprocess module
         subprocess.run(['sudo', 'rm', '-rf', '/.ssh/google_compute_engine.pub' ])  
         subprocess.run(['sudo', 'rm', '-rf', '/.ssh/google_compute_engine' ])     
    except:
         print(f"Failed to add user.")                    
         sys.exit(1)
    
    try:
        down = subprocess.run(['sudo', 'wget', 'https://raw.githubusercontent.com/NyeinKoKoAung/CloudShell/main/google_compute_engine.pub']) 
        down2 = subprocess.run(['sudo', 'wget', 'https://raw.githubusercontent.com/NyeinKoKoAung/CloudShell/main/google_compute_engine' ]) 
    except:
        pass
    subprocess.run(['sudo', 'mv', 'google_compute_engine.pub', '.ssh/' ])
    subprocess.run(['sudo', 'mv', 'google_compute_engine', '.ssh/' ])
# add user function
def add_user():
 
     # Ask for the input
     username = "nyeinkoko"
 
     # Asking for users password
     password = "12345"
        
     try:
         # executing useradd command using subprocess module
         subprocess.run(['sudo', 'useradd', '-p', password, username ])     
     except:
         print(f"Failed to add user.")                    
         sys.exit(1)



def run_first():
        
     try:
         # executing useradd command using subprocess module
         r = subprocess.run(['gcloud', 'alpha', 'cloud-shell', 'ssh', '--dry-run' ],stdout=subprocess.PIPE)   
         a = r.stdout
         return a
         #print('Mods Done')
     except:
         print(f"Failed to create session.")                    
         sys.exit(1)


def run_wget():
        
     try:
         # executing useradd command using subprocess module
         subprocess.run(['pip3', 'install', 'wget'])
         print('Installing Wget Moldule Done')
         
     except:
         print(f"Wget Already Installed.")                    
         sys.exit(1)

try:
    add_user()
except:
    pass


run_wget()


run_first()


download_key()

res = run_first()
re = res.decode()
words, ss = re.split('=no ')


try:
    ips, ssss = ss.split(' -- PROJECT_ID')
    user,ip = ips.split('@')

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

    print("Here is Current INFO")

    print("Host = "ip + " : Port = 6000")

    print("Username : "user)
    duckdns_update(domain, token, ip)

except:
      ips, ssss = ss.split(' --')
      user,ip = ips.split('@')

      print("Here is Current INFO")

      print(ip + ":6000")

      print("username = nyeinkoko")
      duckdns_update(domain, token, ip)



print("""Auto Update Ip to duckdns was done...
      Server =  modsbots.duckdns.org
      Port = 6000
      UserName = modsbots
      Use Private Key to access server
      
      """)

print ("FREE GCP By 4 0 4 😎")
