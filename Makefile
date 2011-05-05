
CC = gcc
PROGNAME = bairstow
BINDIR = bin
TARGET = $(BINDIR)/$(PROGNAME)
LIBNAME = libbairstow
MAINPROG = main/bairstow.c
WARNINGS = -Wall
INCLUDES = include -lm
LIBRARIES = lib/libbairstow.c
BUILDDIR = blib


deps depend:
	mkdir -p $(BUILDDIR)
	mkdir -p $(BINDIR)
	$(CC) -c $(LIBRARIES) -I$(INCLUDES) -o ${BUILDDIR}/${LIBNAME}.o
	$(CC) -c $(MAINPROG) -I$(INCLUDES) -o ${BUILDDIR}/${PROGNAME}.o
	$(CC) $(BUILDDIR)/*.o -I$(INCLUDES) -o $(TARGET)
	
make: deps
	
clean:
	find . -name '*.o' -exec rm -f {} \;
	rm -f $(TARGET)
	rm -rf $(BINDIR)
	rm -rf $(BUILDDIR)
