---
title: Nix for Beginners
author: Zhenhao Li
mode : selfcontained
knit : slidify::knit2slides
highlighter : highlight.js #highlight.js   #highlight  #prettify
framework: revealjs
hitheme : vs2015  #solarized-light #rainbow #atom-one-dark #foundation #vs2015 #sunburst #zenburn #tomorrow
widgets : [mathjax] 
revealjs:
  theme: sky
  transition: linear #linear #concave
  center: "true"
url: {lib: "."}
bootstrap:
  theme: amelia
---
<style>
    .reveal h5 {
                  text-transform: none;
          }
</style>


## Nix for Beginners

### Haskell Amsterdam Virtual Meetup 
#### June 2020

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

*** For text alignment check the following
*** https://github.com/hakimel/reveal.js/issues/1897
*** https://stackoverflow.com/questions/21019476/how-can-i-get-left-justified-paragraphs-in-reveal-js?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa

This is the title page.


--- &vertical

### What problems to solve?

> - reproducing software/enviorment
> - isolating project enviorment
> - dependency hell...

<script>$('ul.incremental li').addClass('fragment')</script>

***

### Solutions

> - infrastructure/deployment as code
> - environment as code
> - can't we simply treat dependencies as values?

<script>$('ul.incremental li').addClass('fragment')</script>

--- &vertical

### Solving it the Nix Way

> - a pure functional core `Nix`
> - a rich ecosystem including `nixpkgs`, `NixOS`, `NixOps`, etc.
> - but doesn't force purity on the user level
> - users can treat reproducibility for convenience 


<script>$('ul.incremental li').addClass('fragment')</script>

***

### Who Should Stay Away from Nix?

> - if you don't value reproducibility at all
> - if you don't enjoy learning
> - if you have too slow CPU
> - if you have too small disk space

<script>$('ul.incremental li').addClass('fragment')</script>

--- &vertical

### What Is Nix?

> - a package manager with built-in utilities
> - a pure, lazy, functional language
> - the package manager evaluates Nix expressions and writes to `/nix/store`


***

#### Nix Learning Resources

```nix
{ stdenv, fetchurl, perl }:

stdenv.mkDerivation {
  name = "hello-2.1.1";
  builder = ./builder.sh;
  src = fetchurl {
    url = ftp://ftp.nluug.nl/pub/gnu/hello/hello-2.1.1.tar.gz;
    sha256 = "1md7jsfd8pa45z73bz1kszpp01yw6x5ljkjk2hx7wl800any6465";
  };
  inherit perl;
}

```

> - https://nixos.org/learn.html
> - https://nixos.wiki/wiki/Nix_Expression_Language
> - https://nixos.org/nix/manual/
> - https://nixos.org/nixos/nix-pills/

<script>$('ul.incremental li').addClass('fragment')</script>


--- &vertical

### Where to start as a beginner?

> - [`nix-shell`](https://nixos.wiki/wiki/Development_environment_with_nix-shell)
> - [`NixOS`](https://nixos.org/nixos/manual/)
> - [`nixpkgs`](https://github.com/NixOS/nixpkgs)
> - [Home Manager](https://github.com/rycee/home-manager)

<script>$('ul.incremental li').addClass('fragment')</script>

***

#### Where to find packages?

> - https://nixos.org/nixos/packages.html?channel=nixos-20.03
> - https://nixos.org/nixos/packages.html?channel=nixpkgs-unstable


***

#### Get Help from the Community

> - [Github Issues](https://github.com/NixOS/nixpkgs/issues)
> - [Nix Discourse](https://discourse.nixos.org/)
> - [FP Slack](functionalprogramming.slack.com)
> - [more](https://nixos.wiki/wiki/Get_In_Touch#:~:text=Nix%20community%20chat%20channels%20are,is%20%23nixos%2Dwikilogs.&text=The%20ofborg%20development%20channel.&text=An%20informal%20channel%20for%20chit,topic%20on%20the%20main%20channel.)

<script>$('ul.incremental li').addClass('fragment')</script>

---

# Thank you! 

