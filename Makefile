PREFIX = /usr/local
MANPREFIX = /share/man
CFLAGS = -lX11
CC = cc
PROG = colorpicker

SRCS = ${PROG}.c
OBJS = ${SRCS:.c=.o}

all: ${PROG}

${PROG}: 
	${CC} ${SRCS} ${CFLAGS} -o ${PROG}

clean:
	-rm  colorpicker

install: all
	install -D -m 755 ${PROG} ${PREFIX}/bin/${PROG}
	install -D -m 644 ${PROG}.1 ${PREFIX}${MANPREFIX}/man1/${PROG}.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/${PROG}
	rm -f ${DESTDIR}${PREFIX}${MANPREFIX}/man1/${PROG}.1


.PHONY: all clean install uninstall
