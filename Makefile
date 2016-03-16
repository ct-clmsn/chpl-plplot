CC=chpl

#INCDIR=$(HOME)/opt/include
INCDIR=/usr/include
C_HEADERFILES=$(INCDIR)/plplot/plplot.h

#LIBDIR=$(HOME)/opt/lib
LIBDIR=/usr/lib
LIBS=-lplplotd

CCFLAGS=-I$(INCDIR) -L$(LIBDIR) $(C_HEADERFILES) $(LIBS)
UNIT_TEST1=unit1

$(UNIT_TEST1):
	$(CC) $(CCFLAGS) $(UNIT_TEST1).chpl -o $(UNIT_TEST1)
	
all: $(UNIT_TEST1) 

clean:
	rm $(UNIT_TEST1)
