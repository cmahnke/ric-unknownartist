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

## Links

* https://www.askart.com/artist/Fritz_Neumann/11057559/Fritz_Neumann.aspx
* https://de.wikipedia.org/w/index.php?title=Fritz_Neumann&oldid=226050386
* https://www.herder.de/hk/hefte/archiv/2020/7-2020/blumenbergs-engel-zum-100-geburtstag-des-philosophen-hans-blumenberg/


https://nbn-resolving.org/urn:nbn:de:kobv:109-1-15356869/fragment/page=1121

https://digital.zlb.de/viewer/berliner-adressbuecher/

https://www.kleinanzeigen.de/s-anzeige/8-gemaelde-aquarelle-fritz-neumann-1928-2014-berlin/2807167569-240-1236

## Functionality
* Translate to German
* Add lang switch to theme
* Use Tags from `projektemacher-base`
  * Fix Case of tags
