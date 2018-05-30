# 下载 Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# 下载第三方应用
brew cask install alfred
brew cask install microsoft-office
brew cask install steam
brew cask install libreoffice
brew cask install openoffice
brew cask install anaconda
brew cask install sage


# 下载 MAS
brew install mas

# 下载 Mac App Store 应用
mas install 441258766 # magnet
mas install 836500024 # wechat
mas install 1254743014 # lyricsx
mas install 451108668 # tim

# 重置启动台图标顺序
defaults write com.apple.dock ResetLaunchPad -bool TRUE && killall Dock
