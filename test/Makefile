test: test.tex test.xls
	latex test || exit 0
	exceltex test || exit 0
	latex test || exit 0

viewtest: test
	xdvi test

clean:
	rm -f *~ *.dvi *.log *.idx *.aux
	exceltex -c
