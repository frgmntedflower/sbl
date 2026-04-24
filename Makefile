CC = gcc
CFLAGS = -Wall -Wextra -O2
PREFIX = /usr/local

libsbl.a: libsbl.o
	ar rcs libsbl.a libsbl.o

libsbl.o: sbl.c sbl.h
	$(CC) $(CFLAGS) -c sbl.c -o libsbl.o

install: libsbl.a
	mkdir -p $(PREFIX)/lib
	mkdir -p $(PREFIX)/include
	cp libsbl.a $(PREFIX)/lib/libsbl.a
	cp sbl.h $(PREFIX)/include/sbl.h

uninstall:
	rm -f $(PREFIX)/lib/libsbl.a
	rm -f $(PREFIX)/include/sbl.h

clean:
	rm -f libsbl.o libsbl.a

.PHONY: install uninstall clean
