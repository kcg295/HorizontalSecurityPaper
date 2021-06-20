.PHONY: all clean cleanall

all: main clean

main: main.tex
	mkdir -p build
	pdflatex -output-directory=build main.tex
	bibtex build/main.aux
	pdflatex -output-directory=build main.tex
	pdflatex -output-directory=build main.tex
	mkdir -p output
	mv build/main.pdf output

clean:
	rm -rf build

cleanall: clean
	rm -rf output
