# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#Shell History Config, Save last 10000 in file, 1000 in console
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000

#Set the Keyboard to the UK
setxkbmap gb

#Autocomplete
zstyle :compinstall filename '/home/cbrown/.zshrc'
autoload -Uz compinit
compinit

#Location the Oh-My-ZSH repo is cloned to
ZSH="/usr/share/oh-my-zsh"

#ZSH Theme to use.
ZSH_THEME="zsh-theme-powerlevel10k/powerlevel10k"

#Run Oh My ZSH
source $ZSH/oh-my-zsh.sh

#Command Aliases
alias vi=nvim
alias h="sudo nvim /etc/hosts"

#Mount OneDrive
alias BPDOneDrive="rclone --vfs-cache-mode writes mount "BPDOneDrive": ~/OneDrive/BPDOneDrive &"
alias GIFTOneDrive="rclone --vfs-cache-mode writes mount "GIFTOneDrive": ~/OneDrive/GIFTOneDrive &"

#Set xterm as the Default SSH Terminal (Alacritty doesn't get recognised 99% of the time)
alias ssh='TERM=xterm-256color ssh'

#Start SSH Agent (Running as Source . (or dot))
alias agent=". ~/.dotfiles/bin/ssh_agent.sh"

#Add Keys to the SSH Agent
alias id_github="ssh-add ~/.ssh/GitHub/id_github"
alias id_bpd_github="ssh-add ~/.ssh/GitHub/id_bpd_github"
alias id_homemedia="ssh-add ~/.ssh/Personal/id_homemedia"

#ConvaTec Keys
alias id_convatec_np="ssh-add ~/.ssh/Clients/ConvaTec/convatec_np_rsa"

#Energean Keys
alias id_energean_np="ssh-add ~/.ssh/Clients/Energean/energean_np_rsa"
alias id_energean_prod="ssh-add ~/.ssh/Clients/Energean/energean_prod_rsa"

#MundiPharma Keys
alias id_mundi_np="ssh-add ~/.ssh/Clients/MundiPharma/mundi_np_rsa"

#NTL Keys
alias id_ntl="ssh-add ~/.ssh/Clients/NTL/ntl_rsa"

#Optimum Keys
alias id_optimum_np="ssh-add ~/.ssh/Clients/Optimum/optimum_np_rsa"
alias id_optimum_prod="ssh-add ~/.ssh/Clients/Optimum/optimum_prod_rsa"

#Paramount Keys
alias id_paramount_np="ssh-add ~/.ssh/Clients/Paramount/paramount_np_rsa"

#White Tower Keys
alias  id_whitetower_np="ssh-add ~/.ssh/Clients/WhiteTower/whitetower_np_rsa"

#BPDZenith UK VPN
##Dependent on Files /etc/openvpn/client/BPD-UK.conf & /etc/openvpn/client/.BPD-UK
alias bpd-uk-ovpn-start="sudo systemctl start openvpn-client@BPD-UK.service"
alias bpd-uk-ovpn-stop="sudo systemctl stop openvpn-client@BPD-UK.service"
alias bpd-uk-ovpn-status="systemctl status openvpn-client@BPD-UK.service"

#BPDZenith Canada VPN
##Dependent on Files /etc/openvpn/client/BPD-Canada.conf & /etc/openvpn/client/.BPD-Canada
alias bpd-canada-ovpn-start="sudo systemctl start openvpn-client@BPD-Canada.service"
alias bpd-canada-ovpn-stop="sudo systemctl stop openvpn-client@BPD-Canada.service"
alias bpd-canada-ovpn-status="systemctl status openvpn-client@BPD-Canada.service"

#ConvaTec VPN

#Add Local bin directory to PATH
PATH="$PATH:/home/cbrown/.local/bin"

# Set up Key Bindings for zsh (Home, Del etc). Use terminfo to build profile.
typeset -g -A key

key[Home]="${terminfo[khome]}"
key[End]="${terminfo[kend]}"
key[Insert]="${terminfo[kich1]}"
key[Backspace]="${terminfo[kbs]}"
key[Delete]="${terminfo[kdch1]}"
key[Up]="${terminfo[kcuu1]}"
key[Down]="${terminfo[kcud1]}"
key[Left]="${terminfo[kcub1]}"
key[Right]="${terminfo[kcuf1]}"
key[PageUp]="${terminfo[kpp]}"
key[PageDown]="${terminfo[knp]}"
key[Shift-Tab]="${terminfo[kcbt]}"

# setup key accordingly
[[ -n "${key[Home]}"      ]] && bindkey -- "${key[Home]}"       beginning-of-line
[[ -n "${key[End]}"       ]] && bindkey -- "${key[End]}"        end-of-line
[[ -n "${key[Insert]}"    ]] && bindkey -- "${key[Insert]}"     overwrite-mode
[[ -n "${key[Backspace]}" ]] && bindkey -- "${key[Backspace]}"  backward-delete-char
[[ -n "${key[Delete]}"    ]] && bindkey -- "${key[Delete]}"     delete-char
[[ -n "${key[Up]}"        ]] && bindkey -- "${key[Up]}"         up-line-or-history
[[ -n "${key[Down]}"      ]] && bindkey -- "${key[Down]}"       down-line-or-history
[[ -n "${key[Left]}"      ]] && bindkey -- "${key[Left]}"       backward-char
[[ -n "${key[Right]}"     ]] && bindkey -- "${key[Right]}"      forward-char
[[ -n "${key[PageUp]}"    ]] && bindkey -- "${key[PageUp]}"     beginning-of-buffer-or-history
[[ -n "${key[PageDown]}"  ]] && bindkey -- "${key[PageDown]}"   end-of-buffer-or-history
[[ -n "${key[Shift-Tab]}" ]] && bindkey -- "${key[Shift-Tab]}"  reverse-menu-complete

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
	autoload -Uz add-zle-hook-widget
	function zle_application_mode_start { echoti smkx }
	function zle_application_mode_stop { echoti rmkx }
	add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
	add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.dotfiles/.config/zsh/themes/p10k.zsh ]] || source ~/.dotfiles/.config/zsh/themes/p10k.zsh
