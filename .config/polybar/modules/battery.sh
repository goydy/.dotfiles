[module/battery]

#Module Type
type = internal/battery

#Battery and Adapter
battery = BAT0
adapter = AC

#Poll interval (Minutes) if an event hasn't been refreshed in that timeframe.
poll-interval = 5

#Charging Formatting
label-charging = Juicing Up ^^ %percentage%%
format-charging = <label-charging>

#Full Battery Formatting
label-full = All Juiced Up! - %percentage%%
format-full = <label-full>

#Draining Formatting
label-discharging = Battery Waning.. - %percentage%%
format-discharging = <label-discharging>