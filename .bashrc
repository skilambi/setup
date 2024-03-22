# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

##### ALIAS
alias cdrepo='cd /projects/lpu/work/skilambi/repos'
alias cdwrk='cd /projects/lpu/work/skilambi/repos/design/ip/fpga/eval'

##### PS1 Color coding
# Original
#export PS1="[\u@\h \W]\$ "

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Color scheme
export PS1="\[\e[0;36m\][\u@\h]\[\e[m\e[0;32m\][\$PWD]\[\e[m\e[0;31m\]\$(parse_git_branch)\[\e[m\]$ "
