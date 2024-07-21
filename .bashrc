
export PS1="[\u@\h ($SHLVL) \w \$(git branch -q --show-current 2>/dev/null)]\n$ "
export NIX_SHELL_PRESERVE_PROMPT=1
if [ `pwd` == "/" ]; then cd $HOME; fi
