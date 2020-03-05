# sudo apt-get install texlive-full
# shopt -s extglob

.PHONY: all pva sad onderzoek_techniek clean

all: pva sad onderzoek_techniek

pva:
	@echo "\e[32mPlan van aanpak\e[39m"
	pdflatex -output-directory=./out pva.tex
	makeglossaries -d out pva
	pdflatex -output-directory=./out pva.tex

sad:
	@echo "\e[32mSoftware architectuur document\e[39m"
	pdflatex -output-directory=./out sad.tex
	makeglossaries -d out sad
	pdflatex -output-directory=./out sad.tex

onderzoek_techniek:
	@echo "\e[32mSoftware architectuur document\e[39m"
	pdflatex -output-directory=./out onderzoek_techniek.tex
	makeglossaries -d out onderzoek_techniek
	pdflatex -output-directory=./out onderzoek_techniek.tex

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