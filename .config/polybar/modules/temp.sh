[module/temp]
type = internal/temperature

interval = 1
thermal-zone = 0
hwmon-path = /sys/devices/platform/coretemp.0/hwmon/hwmon4/temp1_input
base-temperature = 0
warn-temperature = 75
label = %temperature-c%
label-foreground = #0000FF
label-warn = %temperature-c%
label-warn-foreground = #f00