#!/bin/sh

./themes/projektemacher-base/scripts/cleanup.sh

cd i18n
rm *.toml
git checkout .
