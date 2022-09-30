#!/usr/bin/make -f

# https://opensource.com/article/18/8/what-how-makefile
# Usage:
# make        # run all
# make all    # run say hello && init
# make say_hello    # run say hello
# make init    # run init

.PHONY: all

all: say_hello init install_rust install_go

say_hello:
	@echo "Hello World"

init:
	@bash bash/init.sh

install_rust:
	@bash bash/install-rust.sh

install_go:
	@bash bash/install-go.sh

