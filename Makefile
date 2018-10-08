#
# Makefile for PHYS201 Slides
#
# Costas Andreopoulos <costas.andreopoulos@stfc.ac.uk>
#

ACYEAR  = 201819
VERSION = v03

00   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Intro\)
0001 : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Intro\ +\ Lecture\ 01\)
01   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 01\)
02   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 02\)
03   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 03\)
04   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 04\)
05   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 05\)
06   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 06\)
07   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 07\)
08   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 08\)
09   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 09\)
10   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 10\)
11   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 11\)
12   : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}\ \(Lecture\ 12\)
all  : NAME = PHYS201_${ACYEAR}-Slides-${VERSION}

00   : tex_start add_tex00 tex_end pdf
01   : tex_start add_tex01 tex_end pdf
0001 : tex_start add_tex00 add_tex01 tex_end pdf
01b  : tex_start add_tex01b tex_end pdf
02   : tex_start add_tex02 tex_end pdf
03   : tex_start add_tex03 tex_end pdf
04   : tex_start add_tex04 tex_end pdf
05   : tex_start add_tex05 tex_end pdf
06   : tex_start add_tex06 tex_end pdf
07   : tex_start add_tex07 tex_end pdf
08   : tex_start add_tex08 tex_end pdf
09   : tex_start add_tex09 tex_end pdf
10   : tex_start add_tex10 tex_end pdf
11   : tex_start add_tex11 tex_end pdf
12   : tex_start add_tex12 tex_end pdf
all  : tex_start add_tex00 add_tex01 add_tex02 add_tex03 add_tex04 add_tex05 add_tex06 add_tex07 add_tex08 add_tex09 add_tex10 add_tex11 add_tex12 tex_end pdf
each : 0001 02 03 04 05 06 07 08 09 10 11 12

tex_start:
	echo '\documentclass{beamer}'        >  main_tmp.tex
	echo '\input{slides_settings.tex}'   >> main_tmp.tex
	echo '\\begin{document}'             >> main_tmp.tex

tex_end:
	echo '\end{document}' >> main_tmp.tex

add_tex00: FORCE
	echo '\input{slides_lecture00_main.tex}'  >> main_tmp.tex
add_tex01: FORCE
	echo '\input{slides_lecture01_main.tex}'  >> main_tmp.tex
add_tex02: FORCE
	echo '\input{slides_lecture02_main.tex}'  >> main_tmp.tex
add_tex03: FORCE
	echo '\input{slides_lecture03_main.tex}'  >> main_tmp.tex
add_tex04: FORCE
	echo '\input{slides_lecture04_main.tex}'  >> main_tmp.tex
add_tex05: FORCE
	echo '\input{slides_lecture05_main.tex}'  >> main_tmp.tex
add_tex06: FORCE
	echo '\input{slides_lecture06_main.tex}'  >> main_tmp.tex
add_tex07: FORCE
	echo '\input{slides_lecture07_main.tex}'  >> main_tmp.tex
add_tex08: FORCE
	echo '\input{slides_lecture08_main.tex}'  >> main_tmp.tex
add_tex09: FORCE
	echo '\input{slides_lecture09_main.tex}'  >> main_tmp.tex
add_tex10: FORCE
	echo '\input{slides_lecture10_main.tex}'  >> main_tmp.tex
add_tex11: FORCE
	echo '\input{slides_lecture11_main.tex}'  >> main_tmp.tex
add_tex12: FORCE
	echo '\input{slides_lecture12_main.tex}'  >> main_tmp.tex

pdf: FORCE
	pdflatex main_tmp.tex
	mv main_tmp.pdf ${NAME}.pdf

clean: FORCE
	rm *nav
	rm *aux
	rm *log
	rm *out
	rm *snm
	rm *toc
	rm main_tmp.*

FORCE:
