---
title:  "Matt's Bash Aliases"
tags: Bash
---

<hr>
Matt's Aliases

```
## Bash aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias edit='gedit'

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
alias gpull="git pull"

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