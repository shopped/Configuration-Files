# To the extent possible under law, the author(s) have dedicated all 
# copyright and related and neighboring rights to this software to the 
# public domain worldwide. This software is distributed without any warranty. 
# You should have received a copy of the CC0 Public Domain Dedication along 
# with this software. 
# If not, see <http://creativecommons.org/publicdomain/zero/1.0/>. 

# /etc/bash.bashrc: executed by bash(1) for interactive shells.

# System-wide bashrc file

# Check that we haven't already been sourced.
([[ -z ${CYG_SYS_BASHRC} ]] && CYG_SYS_BASHRC="1") || return

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Set a default prompt of: user@host, MSYSTEM variable, and current_directory
#PS1='\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[35m\]$MSYSTEM\[\e[0m\] \[\e[33m\]\w\[\e[0m\]\n\$ '

# Uncomment to use the terminal colours set in DIR_COLORS
# eval "$(dircolors -b /etc/DIR_COLORS)"

# Fixup git-bash in non login env
shopt -q login_shell || . /etc/profile.d/git-prompt.sh

# Fixup git-bash in non login env
shopt -q login_shell || . /etc/profile.d/git-prompt.sh

# Fixup git-bash in non login env
shopt -q login_shell || . /etc/profile.d/git-prompt.sh

# Fixup git-bash in non login env
shopt -q login_shell || . /etc/profile.d/git-prompt.sh

# Fixup git-bash in non login env
shopt -q login_shell || . /etc/profile.d/git-prompt.sh

# Shortcut to start virtual environment
esa='source env/Scripts/activate'

# Shortcut for changing to current pressing project
go='cd /c/code/project-peerassistant/mobile'

# Script to run server and open chrome
runserver='python manage.py runserver'

# Script to change environment to DEV settings for python project
devset='export DJANGO_SETTINGS_MODULE=mywebcalendar.settings.dev'

# Script to get into DETER
deter='ssh smcs70ab@users.isi.deterlab.net'

# Desktop
desktop='/c/users/pobox/desktop'

# Downloads
downloads='/c/users/pobox/downloads/'

# Shortcut to initilize python with git
pyinit="git init;echo 'env/*' > .gitignore;virtualenv env;"

# pip freeze
pfreeze='pip freeze > requirements.txt'

#Trying to change the default shell title
function title(){
	export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
	echo -ne "\e]0;$1\a"
}
function setdynamictitle(){
	trap 'title "$BASH_COMMAND"' DEBUG
}
function settitlepath(){
	export PS1="\[\e]0;\w\a\]\n\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
}

function sss() {
	start sublime .
}

function ss() {
	start sublime
}

function killport(){
	taskkill \\F \\PID $(netstat -a -o -n | grep $1 | grep -oP [0-9]\{2,5\}$)
}

exp="start explorer ."

function nstat() {
	netstat -a -o -n | grep $1
}
function tkill(){
	taskkill //F //PID $1
}
function gs(){
	git status
}
function ga() {
	git add .
}
function gc() {
	git commit
}

function gd() {
	git diff
}

function gu() {
	git add -u
}

function rebash() {
	source /etc/bash.bashrc
}
function explore() {
	explorer.exe .
}
cmd='start cmd .'
pictures='C:/Users/pobox/Pictures'
function setaws() {
	export AWS_PROFILE=$1
}
function RR() {
	adb shell input text "RR"
}
