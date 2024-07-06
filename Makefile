CC = gcc
CFLAGS = -Wall -Wextra -O2

all: clevo-keyboard-backlight

clevo-keyboard-backlight: clevo-keyboard-backlight.c
	$(CC) $(CFLAGS) -o $@ $<

install:
	install -D -m 755 clevo-keyboard-backlight $(DESTDIR)/usr/bin/clevo-keyboard-backlight

clean:
	rm -f clevo-keyboard-backlight
