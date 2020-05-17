.. _slackware:

Slackware
=========

Installing VLC on Slackware
+++++++++++++++++++++++++++++++++++++++++++

Download the up-to-date Slackware packages for VLC from `Aliens SlackBuilds <http://www.slackware.com/~alien/slackbuilds/vlc/>`_ repository.

External dependencies for VLC
+++++++++++++++++++++++++++++++++++++++++++

VLC 3.x and newer use Qt5 for the graphical user interface (GUI). 
Slackware versions before 15.0 do not include Qt5. 

First install Qt5 and its dependencies to run VLC(and to compile it if you want) on any release of Slackware before 15.0.

Slackware 14.2 and -current (pre-15.0) are supported through pre-built dependency packages in Alien's repository . These are `libxkbcommon <http://www.slackware.com/~alien/slackbuilds/libxkbcommon/>`_ , `qt5 <http://www.slackware.com/~alien/slackbuilds/qt5/>`_ and `qtwebkit <http://www.slackware.com/~alien/slackbuilds/qt-webkit/>`_ .

Only for Slackware 14.2, you need `libinput <http://www.slackware.com/~alien/slackbuilds/libinput/>`_ and  `libwacom <http://www.slackware.com/~alien/slackbuilds/libwacom/>`_ packages. 

One optional dependency : 
If you want to play encrypted DVD's ,this requires the DeCSS library. The Slackware package can be found in `Aliens restricted repository <http://slackware.nl/people/alien/restricted_slackbuilds/libdvdcss/>`_ .

Building VLC from source
+++++++++++++++++++++++++++++++++++++++++++

1. Download the build directory and then run the SlackBuild script , 

.. code-block::

    mkdir -p ~/slackbuilds/vlc
    cd ~/slackbuilds/vlc
    lftp -c "open http://www.slackware.com/~alien/slackbuilds/vlc/ ; mirror build"
    cd build
    USE_PATENTS=YES sh vlc.SlackBuild

The *SlackBuild* script will automatically download all the missing source-code archives and build a new package.

2. Install the package in the /*tmp* directory using command.

.. code-block::

    installpkg

3. If you already have a *vlc* package installed , please use the command to upgrade that package with new one.

.. code-block::

    upgradepkg

4. If you do not want the Mozilla plugin to be built you should start the slackBuild script with an extra variable  added in front.

.. code-block::

    MOZPLUGIN=NO sh vlc.SlackBuild

Mirror sites
++++++++++++++++++++++++++++++++++

You can find my VLC package on the following mirror sites:

* `slackwareorguk <http://slackware.org.uk/3rd-party/alien/slackbuilds/vlc/>`_ (thanks to Tadgy for the mirror!)

* `slackwareorgukres <http://slackware.org.uk/3rd-party/alien/restricted_slackbuilds/vlc/>`_ (version of the package with **all** codecs as well as the DeCSS library already built-in)

--`Alien <https://wiki.videolan.org/User:Alienbob/>`_ 

