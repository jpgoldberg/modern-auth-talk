# COMMON_DIR should point back to this directory
# from all sibling directories, but it can be
# redefined in other makefiles if they are not in
# sibling directories

COMMON_DIR = ./Common
LATEXMK_RC= $(COMMON_DIR)/latexmkrc


PUB_STATIC_DIR= ../public/s

$(PUB_STATIC_DIR)/%: %
	cp $< $@

%.pdf: %.tex
	latexmk -r $(LATEXMK_RC) $(LATEXMK_OPTIONS) $<

%.html: %.ipynb
	jupyter nbconvert --to=html $<
# For an explanation, see https://stackoverflow.com/a/73073900/1304076
%.tex: %.ipynb
	jupyter nbconvert --to=latex $<
	perl -pi -e '/^([ \t]*)\\usepackage{unicode-math}/ and $$_.="$$1\\usepackage[default]{fontsetup}\n"' $@

%.html %.pdf: %.Rmd
	Rscript -e "rmarkdown::render('$<', output_file = '$@')"
