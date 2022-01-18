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

alias r='rsync -Pv'
alias halt='sudo /sbin/halt'
alias mv='mv -i'
alias reboot='sudo /sbin/reboot'
alias grep='LC_ALL=C grep -a --color'
alias pgrep='pgrep -lfa'

# get my external IP address
alias myip='wget -c -O - -q icanhazip.com'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias myip="curl -fSs https://1.1.1.1/cdn-cgi/trace | awk -F= '/ip/ { print $2 }'"

alias tm='sudo tailf /var/log/messages'

# get access to often used networking commands
#alias ifc='echo "Network Interfaces";echo "==========================================";nmap --iflist|grep -v "::"|grep up;echo "=========================================="'

#alias ifc='nmap --iflist|grep -v "::"|grep up'
alias vpns='echo "VPNs";echo "==========================================";nmap --iflist|grep -v "::"|grep up|grep '10.';echo "=========================================="'
alias goo='ping www.google.com'
alias check='nmap -sP 192.168.1.0/24|grep --color scan'
alias chk='sudo nmap -sP 192.168.10.* --dns-servers=192.168.10.5|grep scan|column -t'
alias p=ping
alias p8='ping -c 3 8.8.8.8;ping -c 3 www.google.com'
alias ip="/sbin/ip -brief -c -4 a"
alias ifconfig=/sbin/ifconfig
alias route=/sbin/route
alias netstat='sudo watch -n5 netstat -natp'

# Get all IPs
alias getip="ifconfig | awk '/inet /{printf (\"%15.15s\n\"), \$2}'"

alias vb='vi ~/.bash_aliases;source ~/.bash_aliases'
alias vi=vim
alias v=vim
alias ls='ls -l --color --group-directories-first'
alias ll='ls -l --color --group-directories-first'
alias l='ls -l --color --group-directories-first'
alias lr='/bin/ls -lrt --color'
alias lS='ls -lrS --group-directories-first'
alias lf='ls -Gl | grep ^d' #Only list directories
alias df='df -Tm -x tmpfs -x devtmpfs'
alias dmesg='sudo dmesg --human'

set -o vi
export PAGER=most
export BLOCK_SIZE=\'1
export LESS="-S --tabs=3 -r"
export EDITOR=/usr/bin/vim

alias xterm='xterm -geometry 1024x768+0+ -fg green -bg black -font *-fixed-*-*-*-*-20-*'
alias g=grep
alias admin='ssh admin'
alias vbx='ssh -Y   helen /opt/VirtualBox/VirtualBox'
alias tom='ssh      tom'
alias pi='ssh       pi@pi'
alias odoo='ssh     odoo'
alias odd='ssh      odoo'
alias odu='ssh      odoo'
alias cebm='ssh     rhamel@cebm -D8080'
alias cemb='ssh     rhamel@cebm -D8080'
alias qa='ssh       rhamel@qa -D8080'

alias webshare="python -m SimpleHTTPServer 8656"

alias cx='cryptmount crypt'
alias ux='cryptmount -u crypt'
alias atop='watch -n 3 -d "df -Tm -x tmpfs -x devtmpfs;echo;free; echo; uptime; echo;echo "logged on";echo; who ;echo;echo "running";echo;ps aux  --sort=-%cpu | head -n 11"'
alias installpkg='sudo /sbin/installpkg '
alias upgradepkg='sudo /sbin/upgradepkg '
alias drip='HandBrakeCLI -L -i /dev/hdc -o '
alias via='vncviewer -via '
alias rt=rtorrent
alias z=zoiper
alias kz='killall zoiper'
alias scr='screen -r || screen'
alias al=alsamixer
alias open=xdg-open
alias o=xdg-open
alias rt='(cd ~/torrents; rtorrent)'

alias zl='zipinfo -M '
alias git-list='git ls-files'

#
# for python/psycopg2 script to run
#
alias py=python

alias ga='git-add'
alias gc='git-commit'
alias gca='git-commit -v -a'
alias gcam='git-commit --amend -v'
alias gd='git-diff'
alias gls='git ls-files|most'
alias git-list='git ls-files'
alias git-setup='git init && git add . && git commit -m "Initial Commit"'
alias gl='git log'
alias gll='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias gs='git status'
alias gdiff='git diff'

alias root='sudo -i'
alias up='sudo /etc/rc.d/rc.openvpn start; sleep 5; ifc'
alias down='sudo /etc/rc.d/rc.openvpn stop;  sleep 5; ifc'
alias dn='sudo /etc/rc.d/rc.openvpn stop;  sleep 5; ifc'
alias cumis='ssh cumis'
alias cumis2='ssh cumis2'
alias admin='ssh admin'

now(){
   date +"%d-%m-%Y-%H:%M:%S"
}

export RESTIC_REPOSITORY=rclone:axxbaxx8:repo1
export RESTIC_PASSWORD="live and let live"
export LANG=en_US
export BLOCK_SIZE=\'1

alias view='view -S ~/.viewrc' 


alias asus='ssh asus'
alias assu='ssh asus'
alias ausu='ssh asus'
alias ausus='ssh asus'

alias hgr="history|grep --color"
alias gh="history|grep --color"
alias svr="ssh svr"
alias svr="ssh svr"
alias sne="ssh svr"


alias dim="xrandr  --output HDMI-0 --brightness 0.75"
alias dim="xrandr  --output HDMI-0 --brightness 0.5"
alias brite="xrandr  --output HDMI-0 --brightness 1.0"

alias ptop=" PYTHONIOENCODING=utf-8 xfce4-terminal-256 -x bpytop"

alias syn="killall synergys; /usr/local/bin/synergys -c /home/rhamel/synergy.conf  -a 192.168.10.2; sleep 2;pgrep -lfa syn"

alias pe='ssh pentium'
alias :q=exit
alias clisp="clisp -q"
alias cl="clisp -q -i ~/.clisprc"
# wanted shortcut to see hardware I'm running on 

alias hw="inxi -xxx -I -S -C -M -G -w -s -d"

alias odoo2='ssh odoo2'
alias marc='ssh marc'

alias ubu='ssh ubu'
alias bub='ssh ubu'

alias dev='ssh dev'
function ifc(){
    echo "Network Interfaces"
    echo "==============================================================="
    nmap --iflist|grep -v "::"|grep up
    echo -e "External IP  \c"
    curl -fSs https://1.1.1.1/cdn-cgi/trace | awk -F= '/ip/ { printf "%s  ", $2 }'
    echo "digicel"
    echo "==============================================================="
}
export CDPATH=$CDPATH:~/files

alias an=ansible
alias pine=alpine
