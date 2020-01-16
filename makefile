# sudo apt-get install texlive-full

SHELL:=/bin/bash

all:
    DELETING:=$(shell rm -r ./out)
    CREATING:=$(shell mkdir ./out)
    LATEX:=$(shell pdflatex -interaction=nonstopmode -output-directory=./out document.tex)
    OPEN:=$(shell evince ./out/document.pdf)
