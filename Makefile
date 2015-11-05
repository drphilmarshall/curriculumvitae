all: pdf

clean:
	-rm -f *.aux *.log *.dvi *.bbl *.blg

DOCUMENTS = PhilMarshall_NSF-bio \
            PhilMarshall_cv+publications \
            PhilMarshall_cv

SOURCES = src/*.tex

TEXFILES= $(DOCUMENTS:=.tex)
PDFFILES:= $(TEXFILES:.tex=.pdf)

%.pdf: %.tex $(SOURCES) cv.sty
	pdflatex $*
	pdflatex $*

pdf: $(PDFFILES)
