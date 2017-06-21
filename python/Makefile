# vi: set noexpandtab shiftwidth=4 :
PYTHON  = /usr/bin/env python3
SHELL   = /bin/bash

.PHONY: build-env
build-env: clean
	sudo apt install libldap2-dev python3-pip
	pip3 install --upgrade pip
	pip3 install setuptools
	git clone https://github.com/yykamei/python-libldap.git
	cd python-libldap && $(PYTHON) setup.py install --user

.PHONY: clean
clean:
	rm -rf python-libldap
