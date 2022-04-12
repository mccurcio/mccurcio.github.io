---
title:  "Matt's Common Bash Aliases"
date:   2021-01-01 11:00:00
tags: Bash
---

```
## Misc aliases

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias up='cd ..'
alias cd..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'

alias ping='ping -c 5'
alias reboot='sudo reboot'
alias update='sudo apt-get update'

## Git
alias gits="git status"
alias gita="git add ."
alias gitcm="git commit -m"
alias gpush="git push"

## User Specific aliases ##
alias home='cd /home/mcc/'
alias drop='cd /home/mcc/Dropbox/'
alias dropbox='cd /home/mcc/Dropbox/'
alias down='cd /home/mcc/Downloads/'
alias desk='cd /home/mcc/Desktop/'
alias docs='cd /home/mcc/Documents/'

## Anaconda 
alias jupy='jupyter notebook'
alias condaup='conda update -y --prefix /home/mcc/anaconda3 anaconda'
alias navi='conda update -y --prefix /home/mcc/anaconda3 anaconda && anaconda-navigator'

```