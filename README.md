# etiquette
Bash script to multiply etiquettes to fill up an A4 page and reduce paper waste

## Table of Contents
- [Project setup for development](#Project-setup-for-development)
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
```

etiquette will create a new output folder and put a new PDF file inside this folder. The created PDF file will contain the image from the source PDF (like Test-Etiquette.pdf) tiled all over the A4 page.

### Licenses
etiquette is free software. It is licensed under GNU AFFERO GENERAL PUBLIC LICENSE Version 3, 19 November 2007.

### Third party components
No third party components used for now


