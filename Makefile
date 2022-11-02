SECS := $(wildcard secs/*.tex)

all: TesiMagistrale.pdf

TesiMagistrale.pdf: main.tex $(SECS) mstyle.sty
	pdflatex main.tex
	pdflatex main.tex
	mkdir -p build
	mv *.toc build
	mv *.aux build
	mv *.log build
	mv *.out build
	mv main.pdf TesiMagistrale.pdf
	rm -rf build
