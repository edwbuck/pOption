VERSION=1.0.0

DESTDIR=

prefix=${DESTDIR}/usr

all: 

install:
	mkdir -p ${prefix}/share/doc/perl-Option/samples
	cp examples/ExceptionExample ${prefix}/share/doc/perl-Option/samples 
	cp examples/HelpFormatterExample ${prefix}/share/doc/perl-Option/samples 
	cp examples/HelpExample ${prefix}/share/doc/perl-Option/samples 
	cp examples/RequiredIfExample ${prefix}/share/doc/perl-Option/samples 
	cp examples/RequiredUnlessExample ${prefix}/share/doc/perl-Option/samples 
	mkdir -p ${prefix}/share/perl5/vendor_perl/Option
	cp src/Option/Parser.pm ${prefix}/share/perl5/vendor_perl/Option

uninstall:

clean:

distclean:
	rm -rf perl-Option-${VERSION}.tgz

mostlyclean:

maintainer-clean:
	
dist: Makefile examples src
	tar -czf perl-Option-${VERSION}.tgz --transform 's,^,perl-Option-${VERSION}/,' $^

check:

installcheck:

installdirs:
