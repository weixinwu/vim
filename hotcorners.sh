#!/usr/bin/env bash

set -eu

function disable_hot_corners(){
  defaults write com.apple.dock "wvous-tl-corner" -int 0
  defaults write com.apple.dock "wvous-tr-corner" -int 0
  defaults write com.apple.dock "wvous-br-corner" -int 0
  defaults write com.apple.dock "wvous-bl-corner" -int 0
}

function enable_hot_corners(){
  defaults write com.apple.dock "wvous-tl-corner" -int 11
  defaults write com.apple.dock "wvous-tr-corner" -int 0
  defaults write com.apple.dock "wvous-bl-corner" -int 4
  defaults write com.apple.dock "wvous-br-corner" -int 3
}

# Make sure to read from a corner that has an active value > 0
has_hot_corners=$(defaults read com.apple.dock "wvous-tl-corner")

# Toggle
if (( $has_hot_corners != 0 ))
then
  disable_hot_corners
else
  enable_hot_corners
fi

# Restart Dock
killall Dock
