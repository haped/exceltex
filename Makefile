BIN=/usr/local/bin
TEXMF=/usr/local/share/texmf
MANPATH=/usr/local/man

install: exceltex exceltex.sty
	install -D -m 755 exceltex      $(BIN)/exceltex
	install -D -m 644 exceltex.sty  $(TEXMF)/tex/latex/misc/exceltex.sty
	install -D -m 644 exceltex.de.1 $(MANPATH)/de/man1/exceltex.1
	install -D -m 644 exceltex.en.1 $(MANPATH)/en/man1/exceltex.1
	install -D -m 644 exceltex.en.1 $(MANPATH)/man1/exceltex.1
	texconfig rehash

uninstall:
	rm -f $(BIN)/exceltex
	rm -f $(TEXMF)/tex/latex/misc/exceltex.sty
	rm -f $(MANPATH)/de/man1/exceltex.1
	rm -f $(MANPATH)/en/man1/exceltex.1
	rm -f $(MANPATH)/man1/exceltex.1

