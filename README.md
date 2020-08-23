Ric -unknown artist
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
