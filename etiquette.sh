#!/bin/bash
#
# etiquette.sh, version 1.0
#
# SPDX-FileCopyrightText: 2020 Patrick Ohnewein <patrick.ohnewein@lugbz.org>
#
# SPDX-License-Identifier: AGPL-3.0-or-later
#
# Takes a PDF which contains the image of a single etiquette/label/tag
# for bottles with juice as input. Transformes the PDF with the
# single etiquette into a A4 PDF with multiple etiquttes.
#
# The script is used to fill an A4 paper with the same etiquettes
# before printing. In this way a single page contains not only one
# etiquette for a single bottle but many etiquettes and we reduce 
# paper waste.
#
# For this script to work, ImageMagick needs the rights to read and
# write PDF files set on the local computer
# https://cromwell-intl.com/open-source/pdf-not-authorized.html
#

# TODO Page size reported by pdfinfo is not A4 (210 x 297 mm)
#   Adding -units pixelspercentimeter -density 100 near to -page A4
#   does change somehow the result, but I didn't understand the logic yet.
#

# verfy the number of parameters
E_WRONG_ARGS=85
script_parameters="<PDF etiquette filename>"
if [ $# -eq 0 ]
then
  echo "Usage: `basename $0` $script_parameters"
  # `basename $0` is the script's filename.
  exit $E_WRONG_ARGS
fi

# verify the output directory is there, otherwise create it
OUTPUT_FOLDER=./output
if [ ! -d "$OUTPUT_FOLDER" ]; then
    mkdir -p $OUTPUT_FOLDER
fi

# for every file passed
for filename in "$@"; do

	echo "convert $filename"

	PDF_FILENAME=$filename
	PDF_TILE_FILENAME=tiles-$PDF_FILENAME
	output_filename="$OUTPUT_FOLDER/$PDF_TILE_FILENAME"

	if [ -f $output_filename ]; then
		echo " skiped existing $output_filename"
	else
		# duplicate (tile) etiquettes in the PDF
		convert -density 300 $PDF_FILENAME -duplicate 1 +append -duplicate 3 -append -background white -page A4 $output_filename

		echo " -> $output_filename"
	fi
done


