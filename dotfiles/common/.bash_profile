# The personal initialization file, executed for login shells
#
# The main difference with shell config files is that some are only read by "login" shells
# (eg. when you login from another host, or login at the text console of a local unix machine).
# these are the ones called, say, .login or .profile or .zlogin (depending on which shell you're using).
#

[[ -r ~/.bashrc ]] && . ~/.bashrc

# Prompt line
PS1='│\t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n╘═> '

# Postgres.app path
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin"

export PATH="$HOME/bin:/usr/local/sbin:$PATH"

export CLICOLOR=1
export LSCOLORS=gxFxBxDxCxegedabagaced # BSD ls colors
# export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90' # Linux ls colors?

alias ls='ls -A'
alias py='python'
alias top-top='top -o CPU -O MEM'

export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

if which vim > /dev/null; then export EDITOR=vim; fi
if which code > /dev/null; then export VISUAL=code; fi
if which mate > /dev/null; then export VISUAL=mate; fi

# For building gem native extensions wit openssl on Mac OS X 10.11.*
# export LDFLAGS="-L/usr/local/opt/openssl/lib"
# export CPPFLAGS="-I/usr/local/opt/openssl/include"

# export CFLAGS="-I$(xcrun --show-sdk-path)/usr/include"

# Yarn global bin
if which yarn > /dev/null; then export PATH="$PATH:`yarn global bin`"; fi

# Postgres dev scripts
export PATH="$PATH:~/pg-scripts"

if which brew > /dev/null; then
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
fi

# For Apache Spark
if which java > /dev/null && [[ -r /usr/libexec/java_home ]]; then export JAVA_HOME=$(/usr/libexec/java_home); fi

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# For a ipython notebook and pyspark integration
if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark/2.1.0/libexec/"
  export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/build:$PYTHONPATH
  export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH
  export PYSPARK_DRIVER_PYTHON=jupyter
  export PYSPARK_DRIVER_PYTHON_OPTS=notebook
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

if which istats > /dev/null; then
  istats cpu
fi

if which nvm > /dev/null; then
  export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

[[ -r ~/workspace/connect-iq-sdk ]] && export PATH=$PATH:$HOME/workspace/connect-iq-sdk/connectiq-sdk-mac-3.0.12-2019-06-12-77ed6f47e/bin

export PATH="/usr/local/opt/llvm/bin:$PATH"
. "$HOME/.cargo/env"
