When setting up a Wireguard VPN with access to servers, add to [interface]:

PostUp = resolvectl domain %i localdomain
PostDown = resolvectl domain %i ""


To select specific wifi point (or use GUI)

nmcli dev wifi
nmcli connection modify "sommerhus" wifi.bssid B0:E4:D5:69:E5:A6
nmcli connection modify "sommerhus" connection.autoconnect-priority 10

