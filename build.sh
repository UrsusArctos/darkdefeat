#!/bin/bash
#
function CleanTrash () {
	# Junk files left out after processing
	rm *.aux
	rm *.log
	rm *.out
	rm *.toc
	rm *.opf
	rm *.4ct
	rm *.4tc
	rm *.css
	rm *.dvi
	rm *.html
	rm *.idv
	rm *.lg
	rm *.ncx
	rm *.tmp
	rm *.xref
	# Junk directories left out after processing
	rm -rf tdd-epub
}
#
# Build targets
rm *.pdf
rm *.epub
#
CleanTrash
#
pdflatex -jobname=TheDarkDefeat tdd
pdflatex -jobname=TheDarkDefeat tdd
#
CleanTrash
#
tex4ebook tdd
mv tdd.epub TheDarkDefeat.epub
#
CleanTrash
#