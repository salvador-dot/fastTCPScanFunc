# fastTCPScanFunc
Extract ports information from fastTCPScan (script in Go by S4vitar)

#Extract fastTCPScan information

function extractPortsGo(){
        ports="$(cat $1 | grep Abierto | awk '{print $1}' FS=':' | xargs | tr ' ' ',')"
        ip_address="$(cat allPorts.tmp | grep host | awk '{print $4}' FS=' ')" 
        echo -e "\n[*] Extracting information...\n" > extractPorts.tmp
        echo -e "\t[*] IP Address: $ip_address" >> extractPorts.tmp
        echo -e "\t[*] Open ports: $ports\n" >> extractPorts.tmp
        echo $ports | tr -d '\n' | xclip -sel clip
        echo -e "[*] Ports copied to clipboard\n" >> extractPorts.tmp
        cat extractPorts.tmp; rm extractPorts.tmp
}
