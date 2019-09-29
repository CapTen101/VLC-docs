.. _ubuntu:

Ubuntu
======

1. Open the `VLC website <https://www.videolan.org/vlc/download-ubuntu.html>`_ on your browser.

2. Click on **Download VLC** to download the VLC media player automatically onto your computer.

.. figure::  /static/images/ubuntudownload .PNG
   :align:   center

Launch the Ubuntu Software Center and go to All Software → Sound & Video then in search VLC Player. After it will come click on it and it will automatically install

You need to check that a universe mirror is listed in your /etc/apt/sources.list file.

.. code-block::

    $ sudo apt-get update
    $ sudo apt-get install vlc vlc-plugin-pulse mozilla-plugin-vlc

As given by https://help.ubuntu.com/community/RestrictedFormats/PlayingDVDs:

.. code-block::

    $ sudo apt install libdvd-pkg && sudo dpkg-reconfigure libdvd-pkg

will install a packaged version of `libdvdcss <https://wiki.videolan.org/Libdvdcss/>`_ without the need for third-party repos.