#
#	Build zlib 
#

LATEST		:= zlib-1.2.6
BLD_OS		:= $(shell ../getos)
BLD_ARCH	:= $(shell ../getarch)

export BLD_OS BLD_ARCH

all:
	rm -f latest ; ln -s $(LATEST) latest
ifeq ($(BLD_OS),WIN)
	cd latest ; make -f ../Makefile.win
else
	cd latest ; ./configure
	make -C latest
endif

clean:
	make -C latest clean
