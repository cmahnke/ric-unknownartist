Ric - unknown artist
===================

# Checkout and setup

After the checkout you need to run

```
git clone https://github.com/cmahnke/ric-unknownartist.git
cd ric-unknownartist
git submodules init
git submodule update --recursive --remote
./scripts/setup.sh
```

# Add a new post

The following will create a new draft

```
hugo new post/post-title/index.md
```

# Setup for local (offine) development

Run the following script to generate assets

```
./scripts/setup.sh
```

# Starting hugo

```
/usr/local/bin/hugo server -D -F --debug --disableFastRender --renderToDisk --ignoreCache  --gc
```

# TODO

## Posts

### Neumann Paintings
* https://www.kleinanzeigen.de/s-anzeige/8-gemaelde-aquarelle-fritz-neumann-1928-2014-berlin/2807167569-240-1236

Link to https://www.askart.com/artist/Fritz_Neumann/11057559/Fritz_Neumann.aspx

-> fritz-neumann-watercolour-paintings

### Fritz Neumann References

https://nbn-resolving.org/urn:nbn:de:kobv:109-1-15356869/fragment/page=1121
https://digital.zlb.de/viewer/berliner-adressbuecher/

-> fritz-neumann-address-book-berlin

### Fritz Neumann Prints

Listings of https://www.dresden-antiquariat.de/presse.html
* https://www.ebay.de/itm/204587171344
* https://www.ebay.de/itm/204581254349
* https://www.ebay.de/itm/204578733279
* https://www.ebay.de/itm/204761420081
* https://www.ebay.de/itm/145501070096

### Later posts

* https://www.askart.com/artist/Fritz_Neumann/11057559/Fritz_Neumann.aspx


## Functionality

* Show tag frequency, to illustrate distribution / print runs
* Update Map data
* Replace map implementation

# Notes

## Find wrong translation links

```
find content -name "*dex.de.md" -print -exec grep -E ']\(/[^d]' {} \;
```

## Find untranslated

```
find content/ -mindepth 2 -maxdepth 2 -type d '!' -exec test -e "{}/index.de.md" ';' -print
```
