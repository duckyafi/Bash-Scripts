#!/bin/bash
# This hides the your admin user from the login window
sudo dscl . create /Users/"username" IsHidden 1
# This shows your basic system info system information on your Mac login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo IPAddress
# This Turns on "Tap To Click" (this works after a log out login in, the checkbox will not be turned even though it works)
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
# This command turns on remote login function on under sharing located in System Preferences
sudo systemsetup -setremotelogin on
# This command turns on the Remote Management function located in System Preferences
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -access -on -users admin -privs -all -restart -agent -menu
# This commnand turns on Remote Managment for all users with menu extra
sudo /System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Resources/kickstart -activate -configure -allowAccessFor -allUsers -privs -all -clientopts -setmenuextra -menuextra yes
# I use this command to copy a folder full of images from an external source that I use for all the standard wallpaper
cp -i /"location"/"of"/"folder" ~/"target_location"
# This command writes a message on the login screen
sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "Property of Fake Company: If Found Please Email security@fakecompany.com"
# This command sets your printer up in 10.13 using terminal
lpadmin -p Printer_Name -L "Printer Location" -E -v ipp://"IP address of printer" -P /Library/Printers/PPDs/Contents/Resources/"Printer Driver Location"
# This command sets the .local computer name you can enter asset numbers etc to this field
sudo scutil --set ComputerName
# Use this command to list the available updates
softwareupdate -l
# Use this command to update all available updates
softwareupdate -i -a
# Use this command to grab the serial number off your machince
ioreg -l | grep IOPlatformSerialNumber
# These sets of commands turn on the battery percentage feature
defaults write com.apple.menuextra.battery ShowPercent YES
killall SystemUIServer
# This command changes the background wallpaper
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/path/to/file/.jpg"'
# This command looks at the MAC OS X software version
system_profiler SPSoftwareDataType
# Use this command to have the user reset their password once logged in for the first time
pwpolicy -a exampleuser -u user.name setpolicy "newPasswordRequired=1"
# This command allows you to change an admin user into a standard user
sudo -s dseditgroup -o edit -d UserName -t user admin
# How to stop display from turning off when I disconnect a Screen Sharing client
sudo defaults write /Library/Preferences/com.apple.RemoteManagement RestoreMachineState -bool NO
