#
#	Build openssl
#

LATEST		:= openssl-1.0.0d
BLD_OS		:= $(shell ../getos)
BLD_ARCH	:= $(shell ../getarch)

ifeq ($(BLD_OS),WIN)
PATH		:= $(PWD)/../bin:$(PATH)
export 		PATH
endif

all:
	rm -f latest ; ln -s $(LATEST) latest
ifeq ($(BLD_OS),WIN)
	cd latest ; \
	rm -f libcrypto.lib libeay32.dll libssl.lib ssleay32.dll ; \
	rm -f out32dll/*.exe out32dll/*.dll out32dll/*.lib tmp32dll/* ; \
	perl Configure VC-WIN32 ; \
	cmd /c ms\\do_ms ; \
	unset MAKEFLAGS ; nmake -f ms/ntdll.mak 
else
#
#	Remove shared just because 1.0 beta is broken building shared on mac
#
ifeq ($(BLD_OS),MACOSX)
	cd latest ; ./Configure darwin64-x86_64-cc shared ; make
else
	cd latest ; ./config shared ; make
	[ -x /usr/bin/execstack ] && execstack -c latest/*.so ; true
endif
endif

clean:
	make -C latest clean

prep:
	apt-get install execstack
