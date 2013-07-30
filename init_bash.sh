
if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi

export PS1='\W$(__git_ps1 "(\e[0;32m%s\e[m)")\$ '

