# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
LANGUAGE      = en
SPHINXOPTS    = ""
HTML_BASEURL  = file://$(shell pwd)/$(BUILDDIR)/html

VERSION = $(shell git rev-parse --abbrev-ref HEAD)

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Create a global redirection to the VERSION/LANGUAGE of documentation
global_redirect:
	mkdir -p "$(BUILDDIR)/html/" &&\
	sed 's;REDIRECT;./$(VERSION)/$(LANGUAGE)/index.html;g' root_template/redirect.html > "$(BUILDDIR)/html/index.html"

# Create a redirection to the LANGUAGE version of the documentation
versioned_redirect:
	mkdir -p "$(BUILDDIR)/html/$(VERSION)" &&\
	sed 's;REDIRECT;./$(LANGUAGE)/index.html;g' root_template/redirect.html > "$(BUILDDIR)/html/$(VERSION)/index.html"

versioned_localized_html:
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)/$(VERSION)/$(LANGUAGE)" \
		-D language='$(LANGUAGE)' -D release='$(VERSION)' \
	        -D html_baseurl='$(HTML_BASEURL)' \
		-A html_baseurl='$(HTML_BASEURL)' &&\
	mkdir -p "$(BUILDDIR)/html/$(VERSION)" &&\
	rm -rf "$(BUILDDIR)/html/$(VERSION)/$(LANGUAGE)" &&\
	mv "$(BUILDDIR)/$(VERSION)/$(LANGUAGE)/html" "$(BUILDDIR)/html/$(VERSION)/$(LANGUAGE)"

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile global_redirect versioned_redirect versioned_html_lang
