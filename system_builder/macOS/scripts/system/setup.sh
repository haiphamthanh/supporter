#!/bin/bash
# Softwares for better: https://dev.to/lucaskuhn/mac-setup-for-a-developer-in-2020-26ak
echo '===================> SETTING UP <==================='

# Install HomeBrew to manage your packages
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Iterm2 for a better terminal
brew install iterm2

# Brave for a better browser
brew install brave-browser

# Install git
brew install git

# VSCode as an editor
brew install visual-studio-code

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Setup ZSH suggestions
brew install zsh-autosuggestions
# Setup ZSH Syntax highlighting
brew install zsh-syntax-highlighting
# Setup ZSH Completions
brew install zsh-completions

# TODO: Install python
