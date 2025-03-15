PATH=/opt/homebrew/bin:$PATH
PATH=$HOME/.cargo/bin:$PATH

#
# History settings
#

HISTFILE="$HOME/.zsh_history"
HISTSIZE=500000
SAVEHIST=500000

setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.

# Up/Down keys history listing
bindkey '^[[A' up-line-or-search
bindkey '^[[B' down-line-or-search

#
# Aliases
#

alias ls="ls -lah"

#
# Shell settings
#

# Enable completion
autoload -Uz compinit && compinit

# Terminal colors
export CLICOLOR=1
export LSCOLORS=gxFxBxDxCxegedabagaced # BSD ls colors

#
# Editor settings
#
if which vim > /dev/null; then export EDITOR=vim; fi
if which code > /dev/null; then export VISUAL=code; fi
