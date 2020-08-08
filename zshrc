#Extract fastTCPScan information

function extractPortsGo(){
        ports="$(cat $1 | grep Abierto | awk '{print $1}' FS=':' | xargs | tr ' ' ',')"
        ip_address="$(cat $1 | grep host | awk '{print $4}' FS=' ')" 
        echo -e "\n[*] Extracting information...\n" > extractPortsGo.tmp
        echo -e "\t[*] IP Address: $ip_address" >> extractPortsGo.tmp
        echo -e "\t[*] Open ports: $ports\n" >> extractPortsGo.tmp
        echo $ports | tr -d '\n' | xclip -sel clip
        echo -e "[*] Ports copied to clipboard\n" >> extractPortsGo.tmp
        cat extractPortsGo.tmp; rm extractPortsGo.tmp
}

