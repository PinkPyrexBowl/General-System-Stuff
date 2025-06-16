# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

grn='\[\033[01;32m\]'   # Green
clr='\[\033[00m\]'      # Reset
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
PS1="\033[37m\\u@\\h: \\w\033[32m >\033[37m "

alias gcam='git commit -a -m'

function git_branch() {
    if [ -d .git ] 
    then
        printf "(%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}')))";
    else
        printf ""
    fi
}

# Set the prompt.
function bash_prompt(){
    PS1="$git_branch\033[37m\\u@\\h: \\w${grn} >${clr} "
    #PS1='${debian_chroot:+($debian_chroot)}'${blu}'$(git_branch)'${pur}' \W'${grn}' \$ '${clr}
}

bash_prompt

