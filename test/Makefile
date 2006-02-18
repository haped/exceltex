EXCELTEX=../exceltex $(OPTS)

check: clean test.tex test.xls $(EXCELTEX)
	latex test || exit 1
	$(EXCELTEX) test || exit 1
	latex test || exit 1

test: test.tex test.xls
	latex test || exit 1
	$(EXCELTEX) test || exit 0
	latex test || exit 0

viewtest: test
	dvipdf test
	clear
	$(EXCELTEX) test || exit 0
	xpdf test.pdf

plain: test.tex
	latex test || exit 1
	$(EXCELTEX) -p test || exit 0
	latex test

clean:
	rm -f *~ *.dvi *.log *.idx *.aux *.ps *.pdf
	rm -rf test-exltx
	$(EXCELTEX) -c test
