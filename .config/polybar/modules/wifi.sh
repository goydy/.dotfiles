[module/wifi]
type = internal/network
interface = wlan0
interval = 1
ping-interval = 3
udspeed-minwidth = 1
accumulate-stats = false
label-connected = Network %essid% %downspeed% ↓ %upspeed% ↑