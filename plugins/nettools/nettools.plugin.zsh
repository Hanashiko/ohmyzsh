
# === lsof aliases ===
# Open ports with ports (without service names)
alias lsofp='lsof -i -P'
# Who listens to port 80
alias lsof80='lsof -i :80'
# Who listens to port 443
alias lsof443='lsof -i :443'
# All listening TCP ports
alias lsofls='lsof -nP -iTCP -sTCP:LISTEN'
# All open UDP sockets
alias lsofudp='lsof -nP -iUDP'
# Template for a quick filter
alias lsofgp='lsof -i | grep'
# All network connections of the current user
alias lsofme='lsof -i -a -u $USER'

# === nmap aliases ===
# Quick scanmap
alias nmpqck='nmap -T4 -F'
# Full scan of all ports
alias nmpfll='nmap -p- -T4'
# Determining the OS
alias nmpos='nmap -O'
# Scanning the vulnerabilities
alias nmpvuln='nmap --script vuln'
# Top 100 ports
alias nmptop='nmap --top-ports 100'
# Ping scan of the entire local area
alias nmplan='nmap -sn 192.168.0.1/24'
# Tracing routes
alias nmptra='nmap --traceroute'
# Web services
alias nmphttp='nmap -p 80,443 --script http-enum'
# Thorough scanning
alias nmpcus='nmap -sS -sV -T4 -A -v'

# === ip ===
# All IP addresses
alias ipa='ip a'
# Interace status
alias ipl='ip link'
# Routes
alias iprt='ip route'
# ARP table
alias ipn='ip neigh'
# Monitoring changes
alias ipmon='ip monitor all'
# Defaul geteway
alias ipr='ip r | grep default'
# Up Ethernet interface
ipupeth() {
  iface=$(ip -br link | awk '$1 ~ /^e/ {print $1; exit}')
  [[ -n "$iface" ]] && sudo ip link set "$iface" up
}
# Down Ethernet interface
ipdowneth() {
  iface=$(ip -br link | awk '$1 ~ /^e/ {print $1; exit}')
  [[ -n "$iface" ]] && sudo ip link set "$iface" down
}
# Up Wi-Fi interface
ipupwlan() {
  iface=$(ip -br link | awk '$1 ~ /^wl/ {print $1; exit}')
  [[ -n "$iface" ]] && sudo ip link set "$iface" up
}
# Down Wi-Fi interface
ipdownwlan() {
  iface=$(ip -br link | awk '$1 ~ /^wl/ {print $1; exit}')
  [[ -n "$iface" ]] && sudo ip link set "$iface" down
}
