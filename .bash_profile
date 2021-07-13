#!/usr/bin/env bash
# @author Ashish Jha

#vManage Specific alias
alias ogc='open -a Google\ Chrome --args --user-data-dir="/tmp/chrome_dev_test" --disable-web-security  --disable-features=SameSiteByDefaultCookies,CookiesWithoutSameSiteMustBeSecure'
alias dogc='open -a Google\ Chrome --args --enable-web-security --user-data-dir="/tmp/chrome_dev_test"'
alias rkt='./node_modules/.bin/karma start test/karma.conf.js'
alias nms="cd /Users/asjha2/viptela/source/nms"
alias mnms="cd /Users/asjha2/nms"
alias ngs="ng serve --live-reload false --source-map=false"
mvc='/Users/asjha2/nms/src/main/client/'
vc='/Users/asjha2/viptela/source/nms/src/main/client/'

#grep color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#Beginning of Git Alias
alias gl='git log --pretty=oneline --abbrev-commit'
alias ga='git add'
alias gc='git commit'
alias gs='git status -s'
alias gd='git diff'
alias gds='git diff --staged'

#Other Alias
alias lgnp='npm list -g --depth 0'
alias pumpitup="osascript -e 'set volume output volume 100'" # Apple script

#echo path
alias path='echo -e ${PATH//:/\\n}'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
	export LS_COLORS='no=00:fi=00:di=01;31:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
else # macOS `ls`
	colorflag="-G"
	export LSCOLORS='BxBxhxDxfxhxhxhxhxcxcx'
fi

# List all files colorized in long format
alias l="ls -lF ${colorflag}"
alias ls="command ls ${colorflag}"
alias g++="g++ -w"

#Path Option
export JAVA_HOME=$(/usr/libexec/java_home)
M2_HOME=/Users/asjha2/viptela/tools/apache-maven-3.6.3
export M2_HOME
M2=$M2_HOME/bin
export M2

PATH=$PATH:$JAVA_HOME
PATH=$PATH:$M2
export PATH
 


#Bash Autocomplete 
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
if [ -f /opt/local/etc/bash_completion ]; then
. /opt/local/etc/bash_completion
fi
PS1='\[\033[32m\]\u\[\033[00m\]:\[\033[34m\]\W\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

 
####################### PATH UPDATED BY VTEST #######################
export PATH=$PATH:/Users/asjha2/viptela/source/vtest/bin
#####################################################################

export PATH=/usr/local/opt/ruby/bin:$PATH
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
test -e ~/.iterm2_shell_integration.bash && source ~/.iterm2_shell_integration.bash || true
export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"

export BASH_SILENCE_DEPRECATION_WARNING=1;

#### FIG ENV VARIABLES ####
[[ -s ~/.fig/fig.sh ]] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####


