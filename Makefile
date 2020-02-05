# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXBUILD   = sphinx-build
SOURCEDIR     = .
BUILDDIR      = _build
LANGUAGE      = en
SPHINXOPTS    = ""
HTML_BASEURL  ?= file://$(shell pwd)/$(BUILDDIR)/html
VERSION       ?= $(shell git rev-parse --abbrev-ref HEAD)
INSTALLDIR    ?= public

# master == dev == 4.0 for now
NUMBERED_VERSION = $(subst master,4.0,$(VERSION))

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# Create a global redirection to the VERSION/LANGUAGE of documentation
global_redirect:
	mkdir -p "$(BUILDDIR)/html/" &&\
	sed 's;REDIRECT;./$(NUMBERED_VERSION)/$(LANGUAGE)/index.html;g' root_template/redirect.html > "$(BUILDDIR)/html/index.html"

# Create a redirection to the LANGUAGE version of the documentation
versioned_redirect:
	mkdir -p "$(BUILDDIR)/html/$(NUMBERED_VERSION)" &&\
	sed 's;REDIRECT;./$(LANGUAGE)/index.html;g' root_template/redirect.html > "$(BUILDDIR)/html/$(NUMBERED_VERSION)/index.html"

versioned_localized_html:
	@$(SPHINXBUILD) -M html "$(SOURCEDIR)" "$(BUILDDIR)/$(NUMBERED_VERSION)/$(LANGUAGE)" \
		-D language='$(LANGUAGE)' -D release='$(NUMBERED_VERSION)' \
	        -D html_baseurl='$(HTML_BASEURL)' \
		-A html_baseurl='$(HTML_BASEURL)' &&\
	mkdir -p "$(BUILDDIR)/html/$(NUMBERED_VERSION)" &&\
	rm -rf "$(BUILDDIR)/html/$(NUMBERED_VERSION)/$(LANGUAGE)" &&\
	mv "$(BUILDDIR)/$(NUMBERED_VERSION)/$(LANGUAGE)/html" "$(BUILDDIR)/html/$(NUMBERED_VERSION)/$(LANGUAGE)" &&\
	echo "Build is located in $(BUILDDIR)/html/$(NUMBERED_VERSION)/$(LANGUAGE)"

install_global_redirect:
	test -f $(BUILDDIR)/html/index.html &&\
	cp -f $(BUILDDIR)/html/index.html $(INSTALLDIR)/index.html

install_version:
	test -d $(BUILDDIR)/html/$(NUMBERED_VERSION) &&\
	mkdir -p $(INSTALLDIR) &&\
	rm -rf $(INSTALLDIR)/$(NUMBERED_VERSION) &&\
	cp -r $(BUILDDIR)/html/$(NUMBERED_VERSION) $(INSTALLDIR)/$(NUMBERED_VERSION)

html: versioned_localized_html

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile global_redirect versioned_redirect versioned_localized_html html install_global_redirect install_version
