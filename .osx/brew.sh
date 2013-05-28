#!/bin/bash

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install wget with IRI support
brew install wget --enable-iri

# Install nifty utilities
brew install \
\ bash
\ bash-completion
\ ack
\ git
\ rename
\ tree
\ watch
\ pgrep
\ htop
\ zsh
\ zsh-completions

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew install homebrew/dupes/rsync

# Node.js and npm
brew install node
npm install less -g

brew cleanup