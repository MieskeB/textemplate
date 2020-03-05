# sudo apt-get install texlive-full

.PHONY: all document clean

all: document

document:
	@echo "\e[32mCreating file\e[39m"
	pdflatex -output-directory=./out document.tex
	makeglossaries -d out document
	pdflatex -output-directory=./out document.tex
	
clean:
	@echo "\e[32mCleaning\e[39m"
	rm ./out/*