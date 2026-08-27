.PHONY: all watch clean

all: build/main.pdf

build/main.pdf: main.tex
	latexmk -pdf -outdir=build $<

watch:
	latexmk -pdf -pvc -outdir=build main.tex

clean:
	latexmk -C -outdir=build