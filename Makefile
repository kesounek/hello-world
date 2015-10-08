
# $@ the target
# $^ is a list of all the prerequisites of the rule,
# $< is just the first prerequisite

PROG = hello

all: $(PROG)

CC=		gcc
CFLAGS=		-g -Wall
LDFLAGS=	

$(PROG): $(PROG).o
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

$(PROG).o: $(PROG).c
	$(CC) -c $(CFLAGS) $<

clean:
	rm -f *.o $(PROG)

