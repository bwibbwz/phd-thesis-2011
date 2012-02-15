thesis:
	pdflatex thesis

bib:
	make cleanpdf
	pdflatex thesis
	bibtex thesis
	pdflatex thesis
	pdflatex thesis

clean:
	-rm -rf thesis.log thesis.toc thesis.aux
	-rm -rf thesis.out thesis.bbl thesis.blg

cleanpdf:
	-rm -rf thesis.pdf thesis.log thesis.toc thesis.aux
	-rm -rf thesis.out thesis.bbl thesis.blg
