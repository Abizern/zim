#
# Custom aliases/settings
#

# any custom stuff should go here.
# ensure that 'custom' exists in the zmodules array in your .zimrc

#
# Editors
#

alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs'
alias ed='emacs --daemon'

# These require emacs server to be running
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

# Golang
export GOPATH=$HOME/src/go
export GOROOT='/usr/local/opt/go/libexec/'
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

#
# Aliases
#

alias dd='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

#
# Fuck
#
eval $(thefuck --alias)

#
# rbenv
#
eval "$(rbenv init -)"

#
# git
#
alias gdt='git difftool'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#
# Xcode
#
alias kill-dd='rm -rf ~/Library/Developer/Xcode/DerivedData'
