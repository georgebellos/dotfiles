# switch user on os x
alias switch='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'

# battery remaining
alias battery='pmset -g ps'

# show hidden files
alias sfiles='defaults write com.apple.Finder AppleShowAllFiles YES && killall Finder'

# hide hidden files
alias hfiles='defaults write com.apple.Finder AppleShowAllFiles NO && killall Finder'

# remove repeat app entries in 'open with menu' of os x
alias fixdup='/System/Library/Frameworks/CoreServices.framework/Versions/A/Frameworks/\
LaunchServices.framework/Versions/A/Support/\
lsregister -kill -r -domain local -domain user && killall Finder'
