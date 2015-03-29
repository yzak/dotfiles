#export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
#alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
#alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
export PATH=/usr/local/bin:$PATH
alias ls="ls -G"

# set terminal title including current directory
#
case "${TERM}" in
	kterm*|xterm)
#	    PROMPT_COMMAND='echo "\033]0;'"${USER}@${HOSTNAME%%.*}:"'${PWD}\007\c"'
	;;
esac

PS1="\[\033[0;36m\][\u@\h:\W]$ "
export SCREENDIR="$HOME/"

# git settings
source ~/.git-prompt.sh
source ~/.git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }


PATH=$PATH:$HOME/share/dev/rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/bin # Add RVM to PATH for scripting
PATH=$PATH:/opt/cmake-2.8.7/bin # for cmake

#RVM
[ -s ${HOME}/.rvm/scripts/rvm ] && source ${HOME}/.rvm/scripts/rvm
