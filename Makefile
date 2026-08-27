.PHONY: all watch clean

all: build/yen-chieh-huang.pdf

build/yen-chieh-huang.pdf: yen-chieh-huang.tex
	latexmk -pdf -outdir=build $<

watch:
	latexmk -pdf -pvc -outdir=build yen-chieh-huang.tex

clean:
	rm -rf build