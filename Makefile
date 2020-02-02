# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
LANGUAGE      = "en"
SPHINXOPTS    = "-D language='$(LANGUAGE)'"

VERSION = $(shell git rev-parse --abbrev-ref HEAD | sed 's;master;dev;')

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

versioned_localized_html:
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)/$(VERSION)/$(LANGUAGE)" $(SPHINXOPTS) &&\
	mkdir -p "$(BUILDDIR)/html/$(VERSION)" &&\
	rm -rf "$(BUILDDIR)/html/$(VERSION)/$(LANGUAGE)" &&\
	mv "$(BUILDDIR)/$(VERSION)/$(LANGUAGE)/html" "$(BUILDDIR)/html/$(VERSION)/$(LANGUAGE)"

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile versioned_html_lang
