.PHONY: all watch clean

all: build/yen-chieh-huang.pdf

build/yen-chieh-huang.pdf: yen-chieh-huang.tex
	latexmk -xelatex -outdir=build $<

watch:
	latexmk -xelatex -pvc -outdir=build yen-chieh-huang.tex

clean:
	rm -rf build