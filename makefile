all: pract1.pdf pract2.pdf

%.pdf: %.md
	pandoc --to latex --latex-engine pdflatex --toc -N -o $@ $< --template template.tex 
