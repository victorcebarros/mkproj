# This file was created by mkproj using the C-Make Target

CFLAGS   = -g -Wall -Wextra -Wpedantic -Werror -Og
CPPFLAGS =

LDFLAGS  =

DBG      = gdb
DBGFLAGS =

BINDIR   = bin
SRCDIR   = src
OBJDIR   = obj

BIN      = TARGET_NAME
OBJ      = main.o

.PHONY: all build clean debug run setup $(BIN)

all: build

build: setup $(BIN)

clean:
	rm -rf $(OBJDIR)/*.o $(BINDIR)/$(BIN)

debug: build
	$(DBG) $(DBGFLAGS) $(BINDIR)/$(BIN)

run: build
	$(BINDIR)/$(BIN)

setup:
	@mkdir -p $(BINDIR) $(OBJDIR)

$(BIN): $(addprefix $(OBJDIR)/,$(OBJ))
	$(CC) $(LDFLAGS) $^ -o $(BINDIR)/$@

$(OBJDIR)/main.o: $(SRCDIR)/main.c
	$(CC) -c $(CFLAGS) $(CPPFLAGS) -o $@ $<
