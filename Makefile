
SHELL := /bin/bash

include config.makefile

build:
	cd $(BUILDDIR) ; docker build -t $(IMAGENAME) . 

start:
	mkdir -p work ; \
	docker run -it --rm -p 8888:8888 \
		-e GEN_CERT=yes \
		-e GRANT_SUDO=yes \
		-e NB_UID=$$(id -u)\
		-e NB_GID=$$(id -g)\
		-u root \
		--name $(CONTAINERNAME) \
		-v $$(pwd):/home/jovyan/work \
		$(IMAGENAME)


#		-v $$(pwd)/site-packages:/opt/conda/lib/python3.6/site-packages 
#
#


