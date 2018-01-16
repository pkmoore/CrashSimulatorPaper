.PHONY: CrashSimulator.pdf all clean

all: CrashSimulator.pdf

CrashSimulator.pdf: CrashSimulator.tex
	latexmk -pdf -pdflatex="pdflatex -interactive=nonstopmode" -use-make CrashSimulator.tex

clean:
	latexmk -CA
	- rm CrashSimulator.bbl

view: CrashSimulator.pdf
	open CrashSimulator.pdf
