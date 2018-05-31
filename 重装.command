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
brew cask install lantern
brew cask install spotify
brew cask install weiyun
brew cask install mactex
brew cask install latexit
brew cask install google-photos-backup-and-sync


# 下载 MAS
brew install mas

# 下载 Mac App Store 应用
mas install 441258766 # magnet
mas install 836500024 # wechat
mas install 1254743014 # lyricsx
mas install 451108668 # tim
mas install 405399194 # Kindle
mas install 441258766 # Magnet (2.1.0)
mas install 409183694 # Keynote (8.0.1)
mas install 497799835 # Xcode (9.3.1)
mas install 1016349934 # Send Anywhere (8.4.24)
mas install 836500024 # WeChat (2.3.13)
mas install 1121484812 # YoudaoNote (3.2.4)
mas install 408981434 # iMovie (10.1.9)
mas install 1025306797 # Resize Master (1.1)
mas install 571213070 # DaVinci Resolve (14.3)
mas install 1221250572 # Xnip (1.4.0)
mas install 829912893 # MathStudio (7.3.2)
mas install 747648890 # Telegram (3.9.1)
mas install 1127253508 # DrUnarchiver (1.3.3)
mas install 1081413713 # GIF Brewery 3 (3.8.1)

# 重置启动台图标顺序
defaults write com.apple.dock ResetLaunchPad -bool TRUE && killall Dock
