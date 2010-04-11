#
#	Build matrixssl 
#

LATEST		:= matrixssl-1-8-8-open
BLD_OS		:= $(shell ../getos)
BLD_ARCH	:= $(shell ../getarch)

export BLD_OS BLD_ARCH

all:
	rm -f latest ; ln -s $(LATEST) latest
ifeq ($(BLD_OS),WIN)
	cd latest/src ; make -f ../../Makefile.win
else
	make -C latest/src
endif

clean:
	make -C latest/src clean
