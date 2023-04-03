---
title:  "Matt's Bash Aliases"
tags: Bash
---


Matt's Aliases

- Add to `~/.bashrc`

```
## Bash aliases
alias edit='xed' # Use any text editor that suits your system

alias up='cd ..'
alias cd..='cd ..'

alias ping='ping -c 5'
alias reboot='sudo reboot'
alias update='sudo apt-get update'

## Git
alias gits="git status"
alias gita="git add ."
alias gitcm="git commit -m"
alias gpush="git push"
alias gpull="git pull"

## User Specific aliases ##
alias home='cd /home/mcc/'
alias drop='cd /home/mcc/Dropbox/'
alias down='cd /home/mcc/Downloads/'
alias desk='cd /home/mcc/Desktop/'
alias docs='cd /home/mcc/Documents/'

## Anaconda 
alias jupy='jupyter notebook'
alias condaup='conda update -y --prefix /home/mcc/anaconda3 anaconda'
alias navi='conda update -y --prefix /home/mcc/anaconda3 anaconda && anaconda-navigator'

## Jekyll
alias bjs='bundle exec jekyll serve'

## To show '$' on \n use:
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

```
