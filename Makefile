tdp2016.pdf: tdp2016.dvi
	dvipdfmx -p letter tdp2016.dvi > /dev/null 2>&1 &

tdp2016.dvi: *.tex
	latex tdp2016.tex
	#bibtex tdp2016.aux
	#latex tdp2016.tex
	latex tdp2016.tex

clean:
	rm -f *.aux *.log *.dvi *.bbl *.blg *.pdf *.ilg *.idx *.toc *.ind
