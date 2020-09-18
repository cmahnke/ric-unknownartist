#!/bin/bash

cd /tmp
wget https://raw.githubusercontent.com/Homebrew/homebrew-core/74124543436fc53eb4523214cbc51b57e959c22b/Formula/hugo.rb
brew install hugo.rb
rm hugo.rb
brew pin hugo
