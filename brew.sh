#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install fish
brew tap homebrew/versions
brew tap caskroom/fonts
brew install bash-completion2
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /usr/local/bin/bash

# Install Python
brew install python
brew install python3
brew install r

# Install other useful binaries.
brew install git
brew install hub
brew install jq
brew install vim
brew install ctags
brew install poppler
brew install openblas
brew install postgresql
brew install haskell-stack
brew install imagemagick --with-webp
brew install tree
brew install webkit2png
brew install pkg-config libffi
brew install pandoc
brew install hdf5
brew install the_silver_searcher
brew install node
brew install --HEAD neovim

# Lxml and Libxslt
brew install libxml2
brew install libxslt
brew link libxml2 --force
brew link libxslt --force

# Install Cask
brew install caskroom/cask/brew-cask

# Core casks
brew cask install --appdir="~/Applications" iterm2

# Development tool casks
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" rstudio

# Misc casks
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" caffeine
brew cask install --appdir="/Applications" spectacle
brew cask install --appdir="/Applications" grandperspective
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" xquartz
brew cask install --appdir="/Applications" font-fira-code
brew cask install --appdir="/Applications" font-inconsolata
brew cask install --appdir="/Applications" font-input
brew cask install --appdir="/Applications" font-source-code-pro

# Remove outdated versions from the cellar.
brew cleanup
