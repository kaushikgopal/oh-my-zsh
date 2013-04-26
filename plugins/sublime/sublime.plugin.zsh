# Sublime Text 2 Aliases
#unamestr = 'uname'

local _sublime_darwin_subl=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl
# local _sublime_darwin_subl=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl

if [[ $('uname') == 'Linux' ]]; then
	if [ -f '/usr/bin/sublime_text' ]; then
		st_run() { nohup /usr/bin/sublime_text $@ > /dev/null & }
	else
		st_run() { nohup /usr/bin/sublime-text $@ > /dev/null & }
	fi
alias st=st_run
elif  [[ $('uname') == 'Darwin' ]]; then
	# Check if Sublime is installed in user's home application directory
	if [[ -a $HOME/${_sublime_darwin_subl} ]]; then
		alias st='$HOME/${_sublime_darwin_subl}'
	else
		alias st='${_sublime_darwin_subl}'
	fi
fi

alias stt='st .'
alias stn='st -n'

# creating the link if it doesn't already exists, as some programs like git like a clean CLI of Sublime
if [[ ! -a /usr/local/bin/sublime ]]; then
  # ln -i -s ~/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
  ln -i -s ~/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
fi