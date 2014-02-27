export PATH=/usr/local/bin:$HOME/bin:/usr/local/Cellar/ruby/2.1.0/bin:$PATH:/usr/local/share/npm/bin

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

function EXT_COLOR () { echo "\033[38;5;$1m"; }
function CLOSE_COLOR () { echo "\033[m"; }
function GIT_BRANCH() {
  cb=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  o=$(git config --get remote.origin.url | sed 's/.*com:\(.*\)\.git/\1/')
  if [ ! -z "$cb" ]; then
      echo " $(EXT_COLOR 166)($o:$cb)$(CLOSE_COLOR)"
  fi
}

#export CLICOLOR=1
#export PS1="\[`EXT_COLOR 187`\]\u@\h\[`CLOSE_COLOR`\] \[`EXT_COLOR 174`\]\w\n\$ \[`CLOSE_COLOR`\]"
##export LS_COLORS='di=38;5;108:fi=00:ln=38;5;116:ex=38;5;186'
#export LS_COLORS='di=38;5;108:fi=00:ln=38;5;116:ex=38;5;186'
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

export PS1="\[`EXT_COLOR 37`\]\u@\h\[`CLOSE_COLOR`\]\$(GIT_BRANCH)\[`EXT_COLOR 64`\] \w\n\$ \[`CLOSE_COLOR`\]"
#export PS1='\[`EXT_COLOR 187`\]\u@\h`YROOT`\[`CLOSE_COLOR`\]`GIT_BRANCH`\[`EXT_COLOR 174`\] \w\n\$ \[`CLOSE_COLOR`\]'
export CLICOLOR=1
# export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'

LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
