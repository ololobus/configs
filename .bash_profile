alias ls='ls -A'

PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
