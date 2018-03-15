if [ -f ~/.bash_aliases ]; then
   . ~/.bash_aliases
else
   # putting this stuff here for easier copy-and-paste
   
   #===============================
   # History control commands here
   #===============================
   
   shopt -s histappend
   PROMPT_COMMAND='history -a'
   export HISTSIZE=100000
   export HISTTIMEFORMAT="%a %d %h %Y - %H:%M:%S "
   #export HISTTIMEFORMAT="%d/%m/%y %T " 
   alias h=history
   
   alias ifc='echo "Network Interfaces";echo "==========================================";nmap --iflist|grep -v "::"|grep up;echo "=========================================="'
   
   alias r='rsync -Pv'
   alias mv='mv -i'
   alias halt='sudo /sbin/halt'
   alias reboot='sudo /sbin/reboot'
   alias grep='grep --color'
   alias pgrep='pgrep -lfa'
   alias myip='wget -c -O - -q icanhazip.com'
   alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
   alias tm='sudo tailf /var/log/messages'
   alias ifconfig=/sbin/ifconfig
   alias route=/sbin/route
   alias vb='vi ~/.bashrc;source ~/.bashrc'
   alias vi=vim
   alias ls='ls -l --color --group-directories-first'
   alias ll='ls -l --color --group-directories-first'
   alias l='ls -l --color --group-directories-first'
   alias lr='/bin/ls -lrt'
   alias lS='ls -lrS --group-directories-first'
   alias lf='ls -Gl | grep ^d' #Only list directories
   alias lsd='ls -Gal | grep ^d' #Only list directories, including hidden ones
   alias df='df -Tm -x tmpfs'
   alias du='du -scm * .[a-z]* |sort -n'
   alias dmesg='sudo dmesg --human'
   alias netstat='sudo watch -n5 netstat -natp'
   set -o vi
   alias p8='ping 8.8.8.8'
   export PAGER=most
   export BLOCK_SIZE=\'1
   export LESS="-S --tabs=3 -r"
   export EDITOR=/usr/bin/vim
   
   alias xterm='xterm -geometry 1024x768+0+ -fg green -bg black -font *-fixed-*-*-*-*-20-*'
   alias g=grep
   
   green='\e[0;32m'
   GREEN='\e[0;32m'
   red='\e[0;31m'
   RED='\e[1;31m'
   blue='\e[0;34m'
   BLUE='\e[1;34m'
   cyan='\e[0;36m'
   CYAN='\e[1;36m'
   NC='\e[0m'
   
   export PS1='\@:\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
   #export PS1="$green\u@$red\h:\w\$ "

fi # end of stuff that can go into ~/.bash_aliases

export PS1='\@:\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
export PATH=/home/rhamel/bin:/home/rhamel/bin/ssvnc:/bin:/usr/local/bin:/usr/bin:/usr/lib/java/bin:/usr/lib/kde4/libexec:/usr/lib/qt/bin:.
export PATH=$PATH:/usr/java/jre1.7.0_51/bin:/usr/local/pgsql/bin:/opt/libreoffice5.4/program/
#set -o ignoreeof
#alias baxter='ssh baxter@baxter'
#export ANT_HOME=/usr/local/ant
#export JAVA_HOME=/usr/lib64/java
alias ip=/sbin/ip
alias admin='ssh admin'
export VNC_VIA_CMD='/usr/bin/ssh -2 -x -p 2013 -l root -f -L %L:%H:%R %G sleep 20'
#export BYOBU_PREFIX=/home/rhamel/byobu

alias umerg='sudo rsync -auv /media/disk/httpd/twiki/* /home/httpd/twiki/;sudo rsync -auv /home/httpd/twiki/* /media/disk/httpd/twiki/'

alias wiki='ssh  foswiki@192.168.100.10'
alias core='ssh     root@192.168.1.13'
alias dev='ssh      root@192.168.1.217'
alias lera='ssh     lera'
alias kiosk='ssh    kiosk'
alias halcu='ssh    halcu -D8080'
alias cumis='ssh    cumis -D8080'
alias upload='ssh   upload'
#alias blast='ssh    root@blast'
alias helen='ssh    helen'
alias vbx='ssh -Y   helen /opt/VirtualBox/VirtualBox'
alias dev='ssh      dev'
alias testing='ssh  testing'
alias tom='ssh      tom'
alias pi='ssh       pi@pi'


alias odoo='ssh     odoo'
alias odd='ssh      odoo'
alias odu='ssh      odoo'

alias eve='ssh      root@eve'
alias bianca='ssh   root@bianca'
alias claire='ssh   root@claire'
alias pbx='ssh      root@pbx'
#alias mani='ssh     root@mani -D8080'
alias cebm='ssh     rhamel@cebm -D8080'
alias cemb='ssh     rhamel@cebm -D8080'
alias qa='ssh       rhamel@qa -D8080'

#alias oscar='ssh    root@oscar     -D 8080 -p 22'
#alias svr='ssh -C   root@charles   -D 8080 -p 22'
#alias chalres='ssh  root@charles   -D 8080 -p 22'
alias openerp='ssh  root@10.166.36.1'
#alias openerp='ssh  root@10.7.0.1'
#alias pospbx='ssh   root@10.8.0.1'
#alias caridoc='ssh  root@10.8.0.6  -D8080'
#alias jampbx='ssh   root@10.8.0.14 -D8080'
#alias jam='ssh      root@10.8.0.14 -D8080'
#alias nagios='ssh   root@10.6.0.34'
#alias nagiosvm='ssh root@10.8.0.34'
#alias socpbx='ssh   root@10.8.0.38'
#alias lab='ssh      root@lab -D8080'
#alias slick='ssh    10.6.0.1 -D8080'

alias check='nmap -sP 192.168.1.0/24|grep --color scan'
alias goo='ping www.google.com'
alias webshare="python -m SimpleHTTPServer 8656"
#alias o7='ssh root@192.168.0.241'

# Get all IPs
alias getip="ifconfig | perl -nle'/dr:(\S+)/ && print $1'"

alias cx='cryptmount crypt'
alias ux='cryptmount -u crypt'
alias atop='watch -n 3 -d "df -Tm -x tmpfs -x devtmpfs;echo;free; echo; uptime; echo;echo "logged on";echo; who ;echo;echo "running";echo;ps aux  --sort=-%cpu | head -n 11"'
alias installpkg='sudo /sbin/installpkg '
alias upgradepkg='sudo /sbin/upgradepkg '
alias drip='HandBrakeCLI -L -i /dev/hdc -o '
#alias gw='vncviewer -passwd ~/.vnc/passwd 192.168.0.1'
alias via='vncviewer -via '
alias rt=rtorrent
alias z=zoiper
alias kz='killall zoiper'
alias scr='screen -r || screen'
alias al=alsamixer
#alias teamviewer=/home/rhamel/teamviewer9/teamviewer
alias open=xdg-open
alias o=xdg-open
alias rt='(cd ~/torrents; rtorrent)'
alias website='ssh website'
alias ifc='nmap --iflist|grep -v "::"|grep up'
alias vpns='echo "VPNs";echo "==========================================";nmap --iflist|grep -v "::"|grep up|grep '10.';echo "=========================================="'


#alias syn='/usr/local/bin/synergyc  --debug WARNING --log /dev/null 192.168.0.2'
alias zl='zipinfo -M '
alias git-list='git ls-files'
#/usr/local/bin/synergyc 192.168.0.2
#alias syn='/usr/local/bin/synergyc 192.168.0.2 -d WARNING -l /dev/null'

#/usr/local/bin/syslogin

export DEV=/var/www/htdocs

#alias tun_blast='ssh -L 3392:192.168.1.1:3393 root@10.39.0.1'
#alias rd_blast='rdesktop-vrdp localhost:3392'
alias p=ping
#
# for python/psycopg2 script to run
#
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql/lib
export MOZ_USE_OMTC=1
alias py=python
alias chk='nmap -sP 192.168.100.*'

alias ga='git-add'
alias gc='git-commit'
alias gca='git-commit -v -a'
alias gcam='git-commit --amend -v'
alias gd='git-diff'
alias git-list='git ls-files'
alias git-setup='git init && git add . && git commit -m "Initial Commit"'
alias gl='git log'
alias gll='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gs='git status'

alias usb='echo "Updating USB from local Foswiki VM";sudo rsync foswiki@wiki:/var/www/foswiki/data/BAXTER/* backup/NIHERST/foswiki/data/BAXTER/ -avuP; sudo rsync foswiki@wiki:/var/www/foswiki/pub/BAXTER/* backup/NIHERST/foswiki/pub/BAXTER/ -avuP'

#/home/rhamel/bin/flux.sh
alias ubu='ssh ubu'
 export MANROFFOPT='-c'
 export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
 export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
 export LESS_TERMCAP_me=$(tput sgr0)
 export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
 export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
 export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
 export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
 export LESS_TERMCAP_mr=$(tput rev)
 export LESS_TERMCAP_mh=$(tput dim)
