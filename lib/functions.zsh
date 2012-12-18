function zsh_stats() {
  history | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a;}' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl |  head -n20
}

function uninstall_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /usr/bin/env ZSH=$ZSH /bin/sh $ZSH/tools/upgrade.sh
}

function take() {
  mkdir -p $1
  cd $1
}

# courtesy: Clark's Tech Blog
# Gets the selected files in the Finder.
function selected()
{
    osascript -e 'tell application "finder"
                 set tf to selection
                 set tl to ""
                 repeat with f in tf
                    set tl to tl & "\"" & POSIX path of (f as alias) & "\" "
                 end repeat
               end tell'
}
# Change to the directory of the frontmost window in the Finder.
function cdf() {
    cd "$(osascript -e 'try
        tell app "Finder" to (target of Finder window 1) as text
            POSIX path of result
        on error
            (system attribute "HOME") & "/Desktop"
        end')"
}
