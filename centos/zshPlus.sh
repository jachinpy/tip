#/bin/bash


# centos python zsh plus dev.
yum install -y vim zsh tree curl tree expect tcl whois

# Terminal themes and 256. result eg. $ tput colors $ 8
# yum install -y dconf-cli ncurses-term
# byobu silversearcher-ag git-flow gitk kdiff3 tmuxinator tmux rar

$TEMP_APP=$HOME"/.oh-my-zsh"
if [ ! -x "$TEMP_APP" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# python packages.
pip install percol rash  powerline-status==2.3 -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

# gem doctor
# if [ -x "`which gem`"]
# then
# yum install -y ruby gem
# gem sources --remove https://rubygems.org
# gem sources --remove http://rubygems.org
# gem sources --add https://gems.ruby-china.org/
# gem sources -l
# gem install tmuxinator
chsh -s /bin/zsh && echo $0
