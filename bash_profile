export PATH=/usr/local/bin:$HOME/bin:/usr/local/Cellar/ruby/2.1.0/bin:$PATH:/usr/local/share/npm/bin

export PATH=/usr/local/bin:$HOME/bin:$PATH

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi
# Initialize rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function EXT_COLOR () { echo "\033[38;5;$1m"; }
function CLOSE_COLOR () { echo "\033[m"; }

#function EXT_COLOR () { echo -ne "\e[38;5;$1m"; }
#function CLOSE_COLOR () { echo -ne '\e[m'; }

function GIT_BRANCH() {
    cb=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    o=$(git config --get remote.origin.url | sed 's/.*com:\(.*\)\.git/\1/')
    if [ ! -z "$cb" ]; then
        echo " ($o:$cb)"
    fi
}

export PS1="\[`EXT_COLOR 37`\]\u@\h\[`CLOSE_COLOR`\]\[`EXT_COLOR 166`\]\$(GIT_BRANCH)\[`CLOSE_COLOR`\]\[`EXT_COLOR 64`\] \w\n\$ \[`CLOSE_COLOR`\]"

#export PS1="\[`EXT_COLOR 37`\]\u@\h\[`CLOSE_COLOR`\]\[`EXT_COLOR 64`\] \w\n\$ \[`CLOSE_COLOR`\]"

export CLICOLOR=1
LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
