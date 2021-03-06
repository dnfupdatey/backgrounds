SUBDIRS = default extras
VERSION = 30.0.0
NAME =  f30-backgrounds-$(VERSION)

all:
	@for i in $(SUBDIRS) ; do \
		(cd $$i; make) ;\
	done;

install:
	@for i in $(SUBDIRS) ; do \
		(cd $$i; make install) ; \
	done;

dist:
	mkdir -p $(NAME)
	cp -a CC-BY-SA-4.0 $(NAME)
	cp -a CC-BY-4.0 $(NAME)
	cp -a CC0-1.0 $(NAME)
	cp -a Attribution $(NAME)
	cp -a Attribution-Extras $(NAME)
	cp -a Makefile $(NAME)
	cp -a default $(NAME)
	cp -a extras $(NAME)
	tar -c --xz -f $(NAME).tar.xz $(NAME)
	rm -rf $(NAME)

