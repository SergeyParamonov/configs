
export CLICOLOR=1
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
export XDG_CONFIG_HOME=~/.config/
alias l='ls -l'
alias cd..='cd ..'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$HOME/Library/hla/usr/hla"
export hlalib="$HOME/Library/hla/usr/hla/hlalib"
export hlainc="$HOME/Library/hla/usr/hla/include"
export hlatemp="$HOME/Library/hla/usr/hla/tmp"
export PYTHONPATH="$HOME/.config/nvim/plugged/ropevim/":$PYTHONPATH
