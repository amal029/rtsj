FIG_PDFTEX=phy
FIG=FF1 FF2 FF3 FF4 sem tool
all:
	for file in $(FIG); \
	do \
	fig2dev -L pdf $$file.fig > $$file.pdf; \
	done
	for file in $(FIG_PDFTEX); \
	do \
	fig2dev -L pdftex $$file.fig > $$file.pdf; \
	done
	pdflatex paper.tex
	bibtex paper.aux
	pdflatex paper.tex
	pdflatex paper.tex
