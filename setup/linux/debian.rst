.. _debian:

Debian
======

1. Open the `VLC website <https://www.videolan.org/vlc/download-windows.html>`_ on your browser.

2. Click on `Get VLC for Debian GNU/Linux <https://www.videolan.org/vlc/download-debian.html>`_ to see a list of stable releases of VLC for download. 

**A standard install without libdvdcss:**

.. code-block::

    # apt-get update
    # apt-get install vlc <optional extra components>


Or search for vlc with the graphical package manager you like best. It should be in the main Debian repository in the section Video software. Additional plugins are available and most require manual selection, e.g. vlc-plugin-access-extra, vlc-plugin-notify and vlc-plugin-jack.

**A standard install with libdvdcss:**

A simple install of the libdvdcss package can be found `here <https://download.videolan.org/debian/stable/>`_, but for future bug fixes add the following lines to your /etc/apt/sources.list:

.. code-block::

    deb https://download.videolan.org/debian/stable stable main
    deb-src https://download.videolan.org/debian/stable stable main

Then:

.. code-block::

    # apt-get update
    # apt-get install vlc libdvdcss2 <optional extra components>

This will allow you to decrypt DVDs.