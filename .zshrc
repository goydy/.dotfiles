#Shell History Config, Save last 10000 in file, 1000 in console
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=10000

#Autocomplete
zstyle :compinstall filename '/home/cbrown/.zshrc'
autoload -Uz compinit
compinit

bindkey  "^[[3~"  delete-char

PS1="%~ $ "
