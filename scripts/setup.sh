#!/bin/sh

convert -resize 640x480 "Source Files/Logo/signature-web.png" static/images/logo.png

# Scans
# This will fail on GitHub, we include transformed JPEG files in the repository and leave these here for reference
#convert "Source Files/Scans/Hanfstaengl Drucke/title.tif" -quality 100% content/post/hanfstaengl-catalog/title.jpg
#convert "Source Files/Scans/Hanfstaengl Drucke/page168.tif" -quality 100% content/post/hanfstaengl-catalog/page168.jpg

# Favicons
# See https://gist.github.com/pfig/1808188
cp "Source Files/Logo/signature.svg" static/images/favicon.svg
convert "Source Files/Logo/signatureR.png" -resize 256x256 -transparent white static/images/favicon-256.png
convert static/images/favicon-256.png -resize 16x16 static/images/favicon-16.png
convert static/images/favicon-256.png -resize 32x32 static/images/favicon-32.png
convert static/images/favicon-256.png -resize 64x64 static/images/favicon-64.png
convert static/images/favicon-256.png -resize 128x128 static/images/favicon-128.png
convert static/images/favicon-16.png static/images/favicon-32.png static/images/favicon-64.png static/images/favicon-128.png static/images/favicon-256.png -colors 256 static/images/favicon.ico
