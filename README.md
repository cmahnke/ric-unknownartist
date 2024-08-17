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

### Fritz Neumann References

https://www.meibohmfinearts.com/artists/details/155

Gartenfelder Str. 132 h

Namenteil. 1961. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-15356869/fragment/page=1139
https://digital.zlb.de/viewer/berliner-adressbuecher/


Namenteil. 1957. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-15357662/fragment/page=1499
1937. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-2207597/fragment/page=1948
Strassenteil. 1970. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-15356982/fragment/page=1035


#### Telefonbücher

1978. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-6587414/fragment/page=1915

1984. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-6810838/fragment/page=1589

#### Prüfen
1932 https://nbn-resolving.org/urn:nbn:de:kobv:109-1-4111925/fragment/page=2353
1933. https://nbn-resolving.org/urn:nbn:de:kobv:109-1-4187665/fragment/page=1902
  Odinstr 17




-> fritz-neumann-address-book-berlin 2024-08-24

### Biographien

https://de.artprice.com/artist/521366/fritz-neumann

### Archive
https://www.archivportal-d.de/item/QJUPPPAVF3VLFDVAHPWA7BM4QPBNDYHQ?query=Fritz+Neumann&offset=0&rows=20&filterValues=state_Berlin&_=1722805218794&sort=&viewType=list&hitNumber=3

A Rep. 243-04 Reichskammer der bildenden Künste, Landesleitung Berlin >> 06. Mitgliedsakten von Personen und Firmen

http://www.content.landesarchiv-berlin.de/php-bestand/arep243-04-pdf/arep243-04.pdf

z (*18.06.1905)

https://www.archivportal-d.de/item/ZYUW2IF7OHSUHFV4ATCFS7ZJBIQ47JCJ?facetValues%5B%5D=context%3DQJVTTAHPPRLVR6UOZ4YOSBKZMFULKXMO&rows=20&sort=&offset=0&viewType=list&lang=en&hitNumber=16
Neumann, Fritz, geb. 18.06.1905, Studienrat, Staatsbauschule Berlin-Neukölln

### Postkarten Leo Wilk
https://www.ansichtskarten-center.de/scherenschnitte-druck/kuenstlerkarte-scherenschnitt-segelboot-kreuzer-handschnitt-von-fritz-neumann-gute

https://www.abebooks.com/paper-collectibles/Ansichtskarte-Postkarte-Rauhhaar-Foxterrier-Hundeportrait-Foto/22846319196/bd
https://www.akpool.de/ansichtskarten/28993381-kuenstler-ansichtskarte-postkarte-neumann-fritz-langhaariger-teckel-langhaardackel




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
* Show count on tag pages
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
