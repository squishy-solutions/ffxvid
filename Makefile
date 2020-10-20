# Makefile for ffxvid

PREFIX=/usr/local
DOCDIR=$(PREFIX)/share/doc
MANDIR=$(PREFIX)/share/man/man1

install:
	mkdir -p -m 755 $(PREFIX)/bin $(DOCDIR)/ffxvid $(MANDIR)
	
	cp -f ffxvid $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/ffxvid
	cp -f AUTHORS LICENSE README ChangeLog *.txt $(DOCDIR)/ffxvid
	chmod 644 $(DOCDIR)/ffxvid/*
	cp -f ffxvid.1 $(MANDIR)
	gzip -9 -f $(MANDIR)/ffxvid.1

uninstall:
	rm -f $(PREFIX)/bin/ffxvid
	rm -f $(MANDIR)/ffxvid.1.gz
	rm -rf $(DOCDIR)/ffxvid
