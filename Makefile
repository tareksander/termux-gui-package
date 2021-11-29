PREFIX ?= /data/data/com.termux/files/usr

.PHONY: build clean install uninstall

wild := $(wildcard man/*.1)
manpages := $(wild:.1=.1.gz)

build: $(manpages)


%.1.gz: %.1
	gzip -k -c $< > $@



clean: 
	rm -f man/*.gz



install: build
	mkdir -p $(PREFIX)/bin/
	mkdir -p $(PREFIX)/share/man/man1/
	install -t $(PREFIX)/share/man/man1/ man/*.gz
	install -t $(PREFIX)/bin/ scripts/termux-gui-*

