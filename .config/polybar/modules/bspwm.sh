#Binary Space Partition Window Module Definition
##Basically the pretty workspaces part of the toolbar
[module/bspwm]

#Type of Module
type = internal/bspwm

#Labels for Active Workspace
label-focused = %index%
label-focused-background = ${colors.background-alt}
label-focused-underline= ${colors.primary}
label-focused-padding = 2

#Labels for Workspaces which are live
label-occupied = %index%
label-occupied-padding = 2

#Labels for Urgent Workspaces
label-urgent = %index%!
label-urgent-background = ${colors.alert}
label-urgent-padding = 2

#Labels for Empty Workspaces
label-empty = %index%
label-empty-foreground = ${colors.foreground-alt}
label-empty-padding = 2