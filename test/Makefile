EXCELTEX=../exceltex

test: test.tex test.xls
	latex test || exit 0
	$(EXCELTEX) test || exit 0
	latex test || exit 0

viewtest: test
	xdvi test

clean:
	rm -f *~ *.dvi *.log *.idx *.aux
	$(EXCELTEX) -c
