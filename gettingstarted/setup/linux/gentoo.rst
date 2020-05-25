.. _gentoo:

Gentoo
======

Install VLC in Portage
+++++++++++++++++++++++

1. You need to set certain **USE flags** to install latest version of VLC. Some `USE flags <https://wiki.gentoo.org/wiki/VLC#USE_flags>`_ are given here.

2. If you are interested in enabling some **USE** flags . See `downloadgentoo <http://www.videolan.org/vlc/download-gentoo.html>`_ for a recommended list of USE flags.

3. After setting desired USE flags for the initial installation , emerge VLC.

Emerge
++++++

Issue on the commandline:

.. code-block:: 

    emerge --ask media-video/vlc

Webm support
++++++++++++

Webm is a popular video format. 
The `vorbis` , `vpx` and `matroska` **USE flags** must be enabled for this to work.

Streaming online multimedia
+++++++++++++++++++++++++++

To stream multimedia objects (YouTube, Vimeo, music, and more ) , enable the `lua` **USE flag** .It is highly recommended package if you have `gentoolkit <https://packages.gentoo.org/packages/app-portage/gentoolkit>`_ installed.

Simply issue:
    
.. code-block::
    
    euse -E lua -p media-video/vlc

USE flags
+++++++++
Some useful flags are listed here.

**a52** 
Enable support for decoding ATSC A/52 streams used in DVD . 

**dvbpsi** 
Enable support for Mpeg-TS files(.ts,.m2ts,.mts) via `media-libs/libdvbpsi` .  

**dvd** 
Add support for DVDs.  

**encode**
Enable streaming-output support and videolan manager to control multiple streams from within one instance.

**jpeg**
Add JPEG image support.

**mp3**
Add support for reading mp3 files .

**mpeg**
Add libmpeg2 support for mpeg-1 and mpeg-2 video streams. 

**mtp**
Enable support for Media Transfer protocol.  

**xml**
Add support for xml files. 


Find more flags `here <https://wiki.gentoo.org/wiki/VLC#USE_flags>`_
