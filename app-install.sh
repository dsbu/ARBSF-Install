# Apps List
apps=(
# Utilities
  alfred
  backblaze
  #bartender - maybe don't need this
  #atom
  cyberduck
  #displaylink
  homebrew/cask/flux
  #crashplan
  # harvest
# Browsers
  google-chrome
  firefox
  rectangle
#Productivity
  microsoft-office
  adobe-acrobat-pro
  # adobe-air
  # adobe-acrobat-reader
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


if [! -f /opt/homebrew/bin/bash ]; then

#Install homebrew
#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# Updated to new homebrew installer script and actions 12/03/2022

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/admin/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/admin/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

fi

#install cask
# Seems out of date as of 7/5/18
# brew install caskroom/cask/brew-cask

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew install cask --appdir="/Applications" ${apps[@]}