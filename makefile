# sudo apt-get install texlive-full


all:
	@echo "Making file"
	pdflatex -output-directory=./out document.tex
