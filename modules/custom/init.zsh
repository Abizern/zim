#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

#
# Editors
#
alias ed='emacs --daemon'

# These require emacs server to be running
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias em='emacsclient -n'
alias et='emacsclient -t'
alias ec='emacsclient -nc'
alias ek="emacsclient -e '(kill-emacs)'"
alias er="ek;ed;ec" # Kill and restart an Emacs window

# Try and fool emacs into letting me use this shell
[[ $EMACS = t ]] && unsetopt zle

export EDITOR='emacsclient -nc'
export VISUAL='emacsclient -n'
export ALTERNATE_EDITOR=''

#
# Aliases
#

alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index


