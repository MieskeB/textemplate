# sudo apt-get install texlive-full
# shopt -s extglob

.PHONY: all document clean

all: document

document:
	@echo "\e[32mDocument\e[39m"
	pdflatex -output-directory=./out document.tex
	makeglossaries -d out document
	pdflatex -output-directory=./out document.tex
	
clean:
	@echo "\e[32mCleaning\e[39m"
	rm ./out/*.acn -v
	rm ./out/*.acr -v
	rm ./out/*.alg -v
	rm ./out/*.aux -v
	rm ./out/*.glg -v
	rm ./out/*.glo -v
	rm ./out/*.gls -v
	rm ./out/*.ist -v
	rm ./out/*.log -v
	rm ./out/*.toc -v