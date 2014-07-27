SHELL := /bin/bash

note.pdf: note.tex *.tex 
ifneq "$(shell cat *.tex | grep FIXME)" ""
	$(error Something not fixed!)
endif
	pdflatex -output-directory build note.tex; open build/note.pdf
