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

### Listings
* https://www.kleinanzeigen.de/s-anzeige/8-gemaelde-aquarelle-fritz-neumann-1928-2014-berlin/2807167569-240-1236
* https://www.ebay.de/itm/204892128676?itmmeta=01J3YM4ZKMRYXNXXM8CZ1KBENT&hash=item2fb485c5a4:g:mm8AAOSwUdNi94CU&itmprp=enc%3AAQAJAAAA4IVosLYlkuhsYKlrKS5blk5HdiKLu34XReU0EQXd7CBok39tALyrhQQFj6X%2FLJleDk%2BPbZzOopngx4lN76oYrXu5h87ZSmuwJt2L8EqDD8dm2899BAWsaTMeBs8jZULVZ9g84q%2FVmEE3pl49X6tXvCMFocfQEufPnlBSXYuELxDeYtRgxvb2jFYI%2FIpzqsbqQ8xgG5lt8X86GsWMyOgCGdvOUjIurods6CMxs5RVkbmuFOHgoEb4mMTPAsBCtaL%2FOh2f8ckd%2F6TNPdOCWGZoUFLkU3QOgRBSxYh4NBgM2Nu8%7Ctkp%3ABk9SR_D5k9SfZA
* https://www.ebay.de/itm/235585314197?itmmeta=01J3YM4ZKMFMP49PB7C2JGAF08&hash=item36d9fa9d95:g:8RkAAOSwNUBmVv0n&itmprp=enc%3AAQAJAAAAwLIL5IBPR1TrZTF6AfdUFEssmjyKdhJCeWISSxEm%2F1Oj31As6l5%2FTTQaE--vBf9ntKWPcbJjhjG%2FX99jwL%2FBmaBnq6c2o6smiWIa6XpBnKrBWO4fG4l%2FME1ObZxM1l48b5zYYGZAqAjXjj%2FMJN%2FdGyOLliSyG3XaszI4v%2Bh8nHk0V3JXCECu%2BU5eIAOJe5GVtW0D77%2Bq2SitQRyitcbSDeFOxTvUZzQpD2QHvmrV3RwQeoH6Ol%2BErHkfdP5SEp8rSA%3D%3D%7Ctkp%3ABk9SR_D5k9SfZA


## Functionality
* Translate to German
  * 90% done
```
find content/ -mindepth 2 -maxdepth 2 -type d '!' -exec test -e "{}/index.de.md" ';' -print
```
* Add lang switch to theme
* Add tag list mappings / aliases
  * Taken From Blogspot": SourceBlogspot
