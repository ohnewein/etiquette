<!--
SPDX-FileCopyrightText: 2020 Patrick Ohnewein <patrick.ohnewein@lugbz.org>

SPDX-License-Identifier: AGPL-3.0-or-later
-->

# etiquette
Bash script to multiply etiquettes to fill up an A4 page and reduce paper waste

[![REUSE status](https://api.reuse.software/badge/github.com/ohnewein/etiquette)](https://api.reuse.software/info/github.com/ohnewein/etiquette)

## Table of Contents
- [Project setup for development](#Project-setup-for-development)
- [How to execute etiquette](#How-to-execute-etiquette)
- [Licenses](#licenses)
- [Third party components](#third-party-components)

### Project setup for development
Clone this repository
```
git clone https://github.com/ohnewein/etiquette.git
```

### How to execute etiquette

In a bash shell go into the etiquette folder, in which the etiquette.sh bash script resides. And than execute the bash script providing a PDF file as input. You can use the example PDF in the example folder.

```
$ cd etiquette
etiquette$ sh etiquette.sh example/Test-Etiquette.pdf
convert example/Test-Etiquette.pdf
 -> ./output/tiles-Test-Etiquette.pdf
```

etiquette will create a folder called output in the actual directory, if it doesn't exist yet, and put the output PDF file inside. 

The created PDF file will contain the image from the source PDF (like Test-Etiquette.pdf) tiled all over the A4 page.

```
etiquette$ ls output/*
tiles-Test-Etiquette.pdf
```

### Licenses
etiquette is free software. It is licensed under GNU AFFERO GENERAL PUBLIC LICENSE Version 3, 19 November 2007.

### Third party components

etiquette is a [bash](https://www.gnu.org/software/bash/) script which uses [ImageMagick®](https://imagemagick.org) to read and create [PDF](https://en.wikipedia.org/wiki/PDF) files.

