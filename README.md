# Nix for Beginners

for a talk at Haskell Amsterdam Virtual Meetup 

## how to reproduce my slides

### approach 1 nix-shell

1.  clone this repo
2.  `cd` to it
3.  run `nix-shell slides.nix`
4.  open `./index.html`

### approach 2 nix-build

1.  clone this repo
2.  `cd` to it
3.  run `nix-build build.nix`
4.  open `result/index.html`

## how I work on my slides

`nix-shell` then `rstudio`