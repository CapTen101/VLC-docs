.. _ubuntu:

Ubuntu
======

Installing the VLC media player on the Ubuntu operating system can be done in any of the three ways below; 

1. Download VLC from Snap store
2. Download from Ubuntu Software Application
3. Download VLC through your Command Prompt

For snapstore...
1. Open the `snapstore website <https://snapcraft.io/store>`_

2. On the search bar, type in VLC and click on the press enter.

3. After the search has been displayed on your screen, click on the VLC cone icon to trigger its installation. 

4. On the VLC installation homepage, click on the install button at the top right of your screen. After clicking on install, a dropdown menu is shown asking you to choose your prefered method of installation the particaular way you intend to instal

3. Click on the VLC media player icon will be displayed on the screen, 

1. Open the `VLC website <https://www.videolan.org/vlc/download-ubuntu.html>`_ on your browser.

2. Click on **Download VLC** to download the VLC media player automatically onto your computer.

.. figure::  /static/images/ubuntu/download.PNG
   :align:   center
   
3. Open the Ubunto Software `website <https://ubuntu.com/desktop>`_

install snap store $ sudo snap install snap-store

.. code-block::

    $ sudo apt-get update
    $ sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc

As given by https://help.ubuntu.com/community/RestrictedFormats/PlayingDVDs:

.. code-block::

    $ sudo apt install libdvd-pkg && sudo dpkg-reconfigure libdvd-pkg

will install a packaged version of `libdvdcss <https://wiki.videolan.org/Libdvdcss/>`_ without the need for third-party repos.