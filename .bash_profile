# For python installing from pyenv on Mac OS X 10.10.*
export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"

# Postgres.app path
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin/"

alias ls='ls -A'

#PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
PS1='|\t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n|--> '

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
