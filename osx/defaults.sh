# Silence the boot chime
sudo nvram SystemAudioVolume=" "

# Add host info to the login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Ask for screensaver password immediately
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Never write .DS_Store files on Network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Show the ~/Library folder
chflags nohidden ~/Library

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Speed up the show/hide Dock animation
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.5
killall Dock

# Snap-to-grid for Desktop icons
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Remove the awful screenshot shadow
defaults write com.apple.screencapture disable-shadow -bool true

# Use current directory as default search scope within Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the 'Are you sure you want to open this application?' dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Speed up that keyboard response rate
defaults write NSGlobalDomain KeyRepeat -int 0.02

# Reduce key repeat delay
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Make Terminal utf-8 happy
defaults write com.apple.terminal StringEncodings -array 4

# Setup Terminal theme in the unlikely event we need to use it
defaults write com.apple.terminal "Default Window Settings" -string "Pro"
defaults write com.apple.terminal "Startup Window Settings" -string "Pro"

# Tell Time Machine to piss off
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Restart Finder
killall Finder
