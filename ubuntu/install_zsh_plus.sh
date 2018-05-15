#/bin/bash


# ubuntu zsh.
sudo apt install -y zsh vim git-flow gitk tree kdiff3 tmux curl silversearcher-ag \
    byobu rar expect tcl whois zsh tmuxinator patch

# Terminal themes and 256. result eg. $ tput colors $ 8
sudo apt-get install -y dconf-cli ncurses-term

$TEMP_APP=$HOME"/.oh-my-zsh"
if [ ! -x "$TEMP_APP" ]; then
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi

sudo pip install --upgrade pip
# python packages.
sudo pip install -r requirements.txt -i http://pypi.douban.com/simple --trusted-host pypi.douban.com

# gem doctor
if [ -x "`which gem`"]
then
sudo apt-get install -y ruby gem
sudo gem sources --remove https://rubygems.org
sudo gem sources --remove http://rubygems.org
sudo gem sources --add https://gems.ruby-china.org/
gem sources -l
sudo gem install tmuxinator
fi
chsh -s /bin/zsh && echo $0
