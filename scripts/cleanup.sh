#!/bin/sh

./themes/projektemacher-base/scripts/cleanup.sh
./scripts/cleanup-index.sh

cd i18n
rm *.toml
git checkout .
