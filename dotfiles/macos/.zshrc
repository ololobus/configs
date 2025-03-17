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

# Enabling and setting git info var to be used in prompt config.
autoload -Uz vcs_info
autoload -U colors && colors
zstyle ':vcs_info:*' enable git svn
# This line obtains information from the vcs.
zstyle ':vcs_info:git*' formats "- (%b) "
precmd() {
    vcs_info
}

# Enable substitution in the prompt.
setopt prompt_subst

NEWLINE=$'\n'
# prompt="%n@%m %1~ \${vcs_info_msg_0_}${NEWLINE}%# " # Default prompt with git info.
prompt="%{$fg_bold[green]%}%n@%m %{$fg[blue]%}%D{[%X]} %{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} \${vcs_info_msg_0_}%{$fg[blue]%}${NEWLINE}->%{$fg_bold[blue]%} %#%{$reset_color%} "

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
export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"
