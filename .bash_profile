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

# For Apache Spark
if which java > /dev/null; then export JAVA_HOME=$(/usr/libexec/java_home); fi

# For a ipython notebook and pyspark integration
if which pyspark > /dev/null; then
  export SPARK_HOME="/usr/local/Cellar/apache-spark/1.3.1_1/libexec/"
  export PYSPARK_SUBMIT_ARGS="--master local[2]"
fi

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi