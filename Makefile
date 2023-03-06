# source file - no spaces after the defintion
file=thesis

# use ps for printing (b/w) and pdf for online viewing (colored hyperlinks)


# dvi output uses .eps figure files
dvi:
	latex ${file}
	bibtex ${file}
	makeindex -s ${file}-man.ist ${file}.idx
	makeindex -t ${file}.glg -o ${file}.gls -s ${file}.ist ${file}.glo
	latex ${file}
	latex ${file}


# ps output uses .eps figure files
ps:	dvi
	dvips ${file}.dvi -o ${file}.ps


# pdf output uses .pdf figure files
# for make pdf, a make clean may be necessary after a make dvi
pdf:
	pdflatex ${file}
	bibtex ${file}
	makeindex  -s ${file}-man.ist ${file}.idx
	makeindex -t ${file}.glg -o ${file}.gls -s ${file}.ist ${file}.glo
	pdflatex ${file}
	pdflatex ${file}
	thumbpdf ${file}
	pdflatex ${file}


count:	words
words:	ps
	ps2ascii ${file}.ps| wc


xdvi:
	xdvi -keep ${file} &


backup:
	zip -9y versions/version-`date +"%Y%m%d"`.zip *


# target clean is not complete
clean:
	-rm *~ lablst.* ${file}.dvi ${file}.ps ${file}.pdf ${file}.aux ${file}.bbl ${file}.blg ${file}.brf ${file}.glg ${file}.glo ${file}.gls ${file}.idx ${file}.ilg ${file}.ind ${file}.ist ${file}.lof ${file}.log ${file}.lot ${file}.out ${file}.toc ${file}.tpt
