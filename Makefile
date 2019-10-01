all: build/ACM_Machine_Learning_Talk.pdf

build/%.pdf: %.tex | build
	latexmk -pdf --shell-escape -silent -synctex=1 -outdir=build "$<"

build:
	mkdir $@

clean:
	rm -r build
