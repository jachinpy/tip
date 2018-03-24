#/bin/bash


# centos python zsh plus dev.
yum install -y vim git-flow gitk tree kdiff3 tmux curl silversearcher-ag \  
    byobu tree rar expect tcl whois zsh tmuxinator

# Terminal themes and 256. result eg. $ tput colors $ 8
yum install -y dconf-cli ncurses-term

$TEMP_APP=$HOME"/.oh-my-zsh"
if [ ! -x "$TEMP_APP" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

# python packages.
sudo pip install percol rash  powerline-status==2.3 -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

# gem doctor
if [ -x "`which gem`"]
then
sudo yum install -y ruby gem
sudo gem sources --remove https://rubygems.org
sudo gem sources --remove http://rubygems.org
sudo gem sources --add https://gems.ruby-china.org/
gem sources -l
sudo gem install tmuxinator
chsh -s /bin/zsh && echo $0
