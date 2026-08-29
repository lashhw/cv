.PHONY: all watch clean

all: build/yen-chieh-huang.pdf build/yen-chieh-huang-photo.pdf

build/%.pdf: %.tex yen-chieh-huang.tex $(wildcard photo.jpg)
	latexmk -xelatex -outdir=build $<

watch:
	latexmk -xelatex -pvc -outdir=build yen-chieh-huang.tex

clean:
	rm -rf build
