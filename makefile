all: pract1.pdf

%.pdf: %.md
	pandoc --to latex --latex-engine pdflatex --toc -N -o $@ $< --template template.tex 
