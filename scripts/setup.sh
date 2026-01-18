#!/bin/sh

echo "Pass a single argument 'local' to set up IIIF URLs to http://localhost:1313/"

if [ "$1" == "local" ] ; then
  export URL_PREFIX=http://localhost:1313
  unset SKIP_IIIF
fi

echo "Set SKIP_IIIF to something to disable generation of IIIF derivates"

if [ -z "$SKIP_IIIF" ] ; then
    ./scripts/iiif.sh
fi

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

echo "Calling theme scripts"
for SCRIPT in $PWD/themes/projektemacher-base/scripts/init/*.sh ; do
    echo "Running $SCRIPT"
    bash "$SCRIPT"
done

# NPM dependencies
npm run logo

# Language files
mv i18n/de.toml i18n/ric-unknownartist.de.toml
mv i18n/en.toml i18n/ric-unknownartist.en.toml
cp -n themes/projektemacher-base/i18n/* i18n/
python themes/projektemacher-base/scripts/merge-toml.py -d i18n/*.de.toml > i18n/de.toml
python themes/projektemacher-base/scripts/merge-toml.py -d i18n/*.en.toml > i18n/en.toml
#./themes/projektemacher-base/scripts/init/i18n.sh i18n
