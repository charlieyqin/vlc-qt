#!/bin/bash
set -ev

# Install from homebrew
brew outdated cmake || brew upgrade cmake
brew install qt5 p7zip ninja lcov

# Install other dependencies
pushd dependencies

# Install VLC 2.2.2
curl -LO http://download.videolan.org/vlc/2.2.2/macosx/vlc-2.2.2.dmg
hdiutil attach vlc-2.2.2.dmg

export PATH=/usr/local/opt/qt5/bin:$PATH

popd
