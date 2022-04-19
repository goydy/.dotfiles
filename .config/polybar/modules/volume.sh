[module/volume]
type = internal/pulseaudio
sink = alsa_output.pci-0000_00_1b.0.analog-stereo

label-volume = %decibels%
label-muted = Volume 0dB
format-volume = Volume <label-volume>dB
interval = 5

click-right = pavucontrol

