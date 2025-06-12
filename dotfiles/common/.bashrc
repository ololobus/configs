# The individual per-interactive-shell startup file
#
# Then you have config files that are read by "interactive" shells (as in, ones connected to a terminal
# (or pseudo-terminal in the case of, say, a terminal emulator running under a windowing system).
# these are the ones with names like .bashrc, .tcshrc, .zshrc, etc.
#
# bash complicates this in that .bashrc is only read by a shell that's both interactive and non-login,
# so you'll find most people end up telling their .bash_profile to also read .bashrc with something like
#
# [[ -r ~/.bashrc ]] && . ~/.bashrc
#

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTSIZE=500000
export HISTFILESIZE=5000000
export HISTCONTROL=erasedups
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"


# Up/Down keys history listing
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"
