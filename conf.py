# Configuration file for the Sphinx documentation builder.
#
# This file only contains a selection of the most common options. For a full
# list see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Path setup --------------------------------------------------------------

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#
# import sys, os

# directory relative to this conf file
# CURDIR = os.path.abspath(os.path.dirname(__file__))
# add custom extensions directory to python path
# sys.path.insert(0, os.path.join(os.path.abspath(os.path.dirname(__file__)), 'extensions'))
# -- Project information -----------------------------------------------------

project = 'VLC User Documentation'
copyright = 'This page is licensed under a CC-BY-SA 4.0 Int. License'
author = 'VideoLAN Team'

# The full version, including alpha/beta/rc tags
release = None 

language = None

# -- General configuration ---------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
extensions = [
    'sphinx_tabs.tabs'
]

# Add any paths that contain templates here, relative to this directory.
templates_path = ['./templates']

# List of patterns, relative to source directory, that match files and
# directories to ignore when looking for source files.
# This pattern also affects html_static_path and html_extra_path.
exclude_patterns = ['_build','.venv']


# -- Options for HTML output -------------------------------------------------

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#
import sphinx_rtd_theme
html_theme = "sphinx_rtd_theme"
html_theme_path = [sphinx_rtd_theme.get_html_theme_path()]
html_theme_options = {
    'display_version': True,
    'prev_next_buttons_location': 'bottom',
    'style_external_links': False,
    'style_nav_header_background': '#4595BA',
    'collapse_navigation': True,
    'sticky_navigation': True,
    'navigation_depth': 4,
    'includehidden': True,
    'titles_only': False
}

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['static']

def setup(app):
    app.add_stylesheet("css/theme_overide.css")
    app.add_javascript("js/version_switch.js")

# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
html_logo = "static/images/vlc-logo.svg"

# The favicon
html_favicon = 'static/images/favicon.png'

# The master toctree document.
master_doc = 'index'

# If false, no module index is generated.
html_domain_indices = False

# If false, no index is generated.
html_use_index = True

# If true, the index is split into individual pages for each letter.
html_split_index = True

# If true, links to the reST sources are added to the pages.
html_show_sourcelink = True

# If true, "Created using Sphinx" is shown in the HTML footer. Default is True.
html_show_sphinx = False

# If true, "(C) Copyright ..." is shown in the HTML footer. Default is True.
# html_show_copyright = tags.has('development')

# If true, license is shown in the HTML footer. Default is True.
html_show_license = True

gettext_uuid = True 

gettext_compact = False
# Language to be used for generating the HTML full-text search index.
# Sphinx supports the following languages:
#   'da', 'de', 'en', 'es', 'fi', 'fr', 'h', 'it', 'ja'
#   'nl', 'no', 'pt', 'ro', 'r', 'sv', 'tr', 'zh'
html_search_language = 'en'

# translations
locale_dirs = ['locale/']   # Path to locale
gettext_compact = False     # optional.
