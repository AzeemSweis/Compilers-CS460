CC	= cc
LEX	= flex
YACC	= bison
LIBS	= -L/usr/local/lib -lfl 

OBJS	= lex.yy.o calc.tab.o
TESTOBJS	= driver.o lex.yy.o

calc: $(OBJS)
	$(CC) -o $@ $(OBJS) $(LIBS)

testscan: $(TESTOBJS) calc.tab.h
	$(CC) -o $@ $(TESTOBJS) $(LIBS)


lex.yy.c: calc.lex calc.tab.o
	$(LEX) $<

clean:
	-rm -f lex.yy.* calc.tab.* *.o calc testscan *~

.SUFFIXES: .c .o

.c.o:
	$(CC) -c $< -o $@
