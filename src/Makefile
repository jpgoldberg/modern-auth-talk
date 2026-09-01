include ./Common/common.mk

LATEXMK_OPTIONS = -shell-escape

PUB_STATIC_DIR = ../public/

IMAGES = im_so_random.png leeks-like-a-sieve.png opaque-meme.jpg

SETUP = build.tex

.PHONY: all
all: modern-auth.pdf 

modern-auth.pdf: modern-auth.tex $(BUILD) $(IMAGES)






.PHONY: publish
publish: $(PUB_STATIC_DIR)/modern-auth.pdf

.PHONY: clean
clean:
	latexmk -C

