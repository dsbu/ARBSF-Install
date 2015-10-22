# Apps List
apps=(
# Utilities
  alfred
  #bartender - maybe don't need this
  atom
  cyberduck
  crashplan
  harvest
# Browsers
  google-chrome
  firefox
#Productivity
  microsoft-office365
  adobe-air
  adobe-reader
  adobe-creative-cloud
  skim
# cloud drives
  google-drive
  box-sync
  dropbox
# Communications
  zoomus
)

#Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install cask
brew install caskroom/cask/brew-cask

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
