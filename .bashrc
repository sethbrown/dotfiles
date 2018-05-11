[ -f ~/.bash_aliases ] && source ~/.bash_aliases
   
set -o vi

export PAGER=most
export BLOCK_SIZE=\'1
export LESS="-S --tabs=3 -r"
export EDITOR=/usr/bin/vim
export PS1='\@:\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#===============================
# History control commands here
#===============================
shopt -s histappend
PROMPT_COMMAND='history -a'
export HISTSIZE=100000
export HISTTIMEFORMAT="%a %d %h %Y - %H:%M:%S "
alias h=history

export PS1='\@:\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\n\$ '
export PATH=$HOME/bin:$HOME/bin/ssvnc:/bin:/usr/local/bin:/usr/bin:/usr/lib/java/bin:/usr/lib/qt/bin:.
export PATH=$PATH:/usr/java/jre1.7.0_51/bin:/usr/local/pgsql/bin:/opt/libreoffice6.0/program/
export VNC_VIA_CMD='/usr/bin/ssh -2 -x -p 2013 -l root -f -L %L:%H:%R %G sleep 20'
#
# for python/psycopg2 script to run
#
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/pgsql/lib
export MOZ_USE_OMTC=1

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
