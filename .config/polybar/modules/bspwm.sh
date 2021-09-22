#Binary Space Partition Window Module Definition
##Basically the pretty workspaces part of the toolbar
[module/bspwm]

#Type of Module
type = internal/bspwm

#Labels for Active Workspace
;label-focused = %index%
label-focused-font = 5
label-focused = 
label-focused-padding = 2

#Labels for Workspaces which are live (have active windows in them)
label-occupied-font = 3
label-occupied = 
label-occupied-padding = 1

#Labels for Urgent Workspaces
label-urgent = %index%!
label-urgent-background = ${colors.alert}
label-urgent-padding = 1

#Labels for Empty Workspaces
label-empty-font=2
label-empty = 
label-empty-foreground = ${colors.foreground-alt}
label-empty-padding = 1