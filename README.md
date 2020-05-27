# VLC User Documentation

This repository contains the source files of [VLC](https://www.videolan.org/vlc/)'s user documentation, in reStructuredText markup language (reST).

They are meant to be generated with the [Sphinx](https://sphinx-doc.org/) documentation builder and [Read the Docs](https://github.com/readthedocs/sphinx_rtd_theme) theme to build the HTML user documentation on [VLC's website](https://docs.videolan.me/vlc-user/).

## Contributing changes

Though arguably less convenient to edit than a wiki, this git repository is meant to receive merge requests to always improve the documentation, add new pages, etc. Having direct access to the source files in a revision control system is a big plus to ensure the quality of our documentation.

## Branches organization

Each branch is linked to a version of the documentation refering to a particular version of VLC. For example:
* `3.0` branch is the documentation of VLC `3.0` version, and the default branch of the repository
* `master` branch is the documentation of VLC `master` under development version (currently 4.0)

If you have contributions that are **specific** to a **particular version** of VLC, send a merge request on the corresponding branch.

If you have generic contributions that are **not specific** to a particular version of VLC, send a merge request on the default branch.

## Editing existing pages

To edit an existing page, locate its **.rst source file** and open it in your favorite text editor. After making the necessary changes, commit the changes, push them to your fork and make a pull request.

## Adding new pages

To add a new page, create a .rst file with a meaningful name in the section you want to add a file to, e.g. `setup/mobile/ios.rst`. Write its content like you would do for any other file, and make sure to define a reference name for Sphinx at the beginning of the file (check other files for the syntax), based on the file name with a "doc_" prefix (e.g. `.. _doc_user_interface:`).

You should then add your page to the relevant "toctree" (table of contents, e.g. `setup/mobile/ios.rst`). By convention, the files used to define the various levels of toctree are prefixed with an underscore, so in the above example the file should be referenced in `setup/mobile/_ios.rst`.

## Sections organization

| Root section   | Title            | Description                                                           |
| -------------- | ---------------- | --------------------------------------------------------------------- |
| gettingstarted | Getting Started  | Includes the strict necessary to get VLC and launch one playback      |
| basic          | Basic Usage      | Most common uses of VLC                                               |
| advanced       | Advanced Usage   | Power user guides: non-default interfaces, streaming, transcode, etc. |
| reference      | Reference manual | Exhaustive description of features, compatibilities, modules, filters |
| addons         | Add-ons          | Links with third party applications & skins                           |
| support        | FAQ & Support    | FAQ, where to get help                                                |
| lore           | Lore             | History of the project, description of the VideoLAN association, etc. |

## Sphinx and reStructuredText syntax

Check Sphinx's [reST Primer](https://www.sphinx-doc.org/en/stable/rest.html) and the [official reference](http://docutils.sourceforge.net/rst.html) for details on the syntax.

Sphinx uses specific reST comments to do specific operations, like defining the table of contents (`:toctree:`) or cross-referencing pages. Check the [official Sphinx documentation](https://www.sphinx-doc.org/en/stable/index.html) for more details, or see how things are done in existing pages and adapt it to your needs.

## Adding images and attachments

To add images, please put them in an `images/` folder with the following naming convention: if you include a picture in `/<path>/<file>.rst`, your picture must follow the path: `images/<path>/<file>_<some_title>.<extension>`.

For example: if you want to include the picture `mypicture.png` in `/a/cool/path/to/myguide.rst`, move your picture file to `images/a/cool/path/to/myguide_mypicture.png`.

After this, you can include it in your page with:

```rst
.. figure::  /images/a/cool/path/to/myguide_mypicture.png
   :align: center
```

## How to build the website

### Install requirements on Linux

Before installing the `Sphinx` and `readthedocs.org` packages, you will need: 
* the `python3` language and its `pip3` package manager
* a version of [GNU Make](https://www.gnu.org/software/make/),
* the [Git tool](https://git-scm.com).

### Install requirements on Windows

Like on Linux environments, on Microsoft Windows, you need to install:
* the `python` language and its `pip` package manager
* All the `python` modules requirements with the `pip` command
* `GNU Make` tool.
* `git` tool.

There are a lot of ways to install these requirements. Here are three of them:

#### Install via Windows Subsystem for Linux (Recommended)

Windows Subsystem for Linux (WSL) is a compatibility layer for running Linux binary executables natively on Windows 10 and Windows Server 2019.
* Using WSL for first time? Get started here [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10)
* You can either choose WSL 1 or WSL 2. Install `Ubuntu` or `Debian`.
* Launch the application, and use the following commands:

```sh
sudo apt-get update && sudo apt-get install python3 python3-pip make git
```

At this point, commands to build this project on WSL are the same as on Linux system (cf. above).

#### Install via Msys2

* Install the [Msys2 system](https://www.msys2.org/)
* Launch the `msys2` app and run the following commands:

```
pacman -S python3 python3-pip make git
```

At this point, commands to build this project are the same as on Linux system (cf. above).

#### Install via native Windows tools

* Download the Python installer [here](https://www.python.org/downloads/).
* Install Python. Don't forget to check the "Add Python to PATH" box.
* Install [Git for windows](https://git-scm.com/download/win), and do not forget to check the `Add to PATH` option.
* Install [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm). Add `C:\Program Files (x86)\GnuWin32\bin\make.exe` to `PATH` environment variable.
* Use the above `pip` commands.

Note that during the first build, various installation prompts may appear and ask to install LaTeX plugins.
Make sure you don't miss them, especially if they open behind other windows, else the build may appear to hang until you confirm these prompts.

### Installing Sphinx (every platform)

To build the HTML website (or any other format supported by Sphinx, like PDF, EPUB or LaTeX), you need to install [Sphinx](https://sphinx-doc.org/) >= 1.3 as well as (for the HTML) the [readthedocs.org theme](https://github.com/snide/sphinx_rtd_theme).

Those tools are best installed using [pip](https://pip.pypa.io), Python's module installer. The Python 3 version might be provided (on Linux distros) as `pip3` or `python3-pip`. You can then run:

```sh
pip3 install -r requirements.txt
```

### Building the HTML website 

You can then build the HTML documentation from the root folder of this repository with:

```sh
make html
```

On Windows, building is still done at the root folder of this repository using the following command (`make` linux command is replaced with `make.exe`):
```sh
make.exe html
```

You can then test the changes live by opening `_build/html/` in your favorite browser.

### Building the HTML website with a custom language

If you want to build the localized version of the website for a specific language (if the localization exists), you can use the following command:

```sh
make html LANGUAGE=<lang>
```

where `<lang>` is the desired language.

## License and Credits

See [the license file](LICENSE.txt) for more details about the license.

Many thanks to Edidiong Anny-Asikpo for the original amazing [work](https://gitlab.com/Didicodes/vlc-user-documentation/).

