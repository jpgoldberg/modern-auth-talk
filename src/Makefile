include ./Common/common.mk

LATEXMK_OPTIONS = -shell-escape

PUB_STATIC_DIR = ../public/s

.PHONY: all
all: modern-auth.pdf 

.PHONY: publish
publish: $(PUB_STATIC_DIR)/modern-auth.pdf

.PHONY: clean
clean:
	latexmk -C

