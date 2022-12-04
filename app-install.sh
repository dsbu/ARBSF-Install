# Apps List
apps=(
# Utilities
  alfred
  backblaze
  #bartender - maybe don't need this
  #atom
  cyberduck
  displaylink
  flux
  #crashplan
  # harvest
# Browsers
  google-chrome
  firefox
  rectangle
#Productivity
  #microsoft-office
  # adobe-air
  adobe-acrobat-reader
  #adobe-creative-cloud
  #skim
# cloud drives
#  google-drive
  google-drive-file-stream
  # box-sync
  # dropbox
# Communications
  zoomus
)

#Install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install cask
# Seems out of date as of 7/5/18
# brew install caskroom/cask/brew-cask
g
# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}
