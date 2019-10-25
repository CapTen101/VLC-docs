.. _faq_linux:

FAQs about VLC on Linux
=======================

Compilation Errors and how to fix them
--------------------------------------

How can I fix this error - "cc1: error: invalid option 'tune=opteron'"
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The -mtune flag is not available for this type of processor in man gcc. To solve this, change the configure options and comment out all the lines where they set mcpu or mtune flags.


How can I fix this error -  "/usr/bin/ld: cannot find -lX11"
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

In the configure, there is an x_libraries variable there that is set to "/usr/X11R6/lib" (around line 16371). Because it is a 64 bit system, this variable needs to be /usr/X11R6/lib64. After changing that, it should continue compiling.

Missing header file ffmpeg/avcodec.h” and/or “Missing header file postproc/postprocess.h”
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

This problem can be solved with any of the two solutions below;

1. To get rid of these problems while compiling, run configure with these flags at least: ./configure --enable-shared --enable-shared-pp --enable-pp --enable-gpl. The description of each of those is available when doing ./configure --help

2. The path of ffmpeg is not set. Check if you can locate the file libavcodec.pc on your computer; say you had find it in /home/you/ffmpeg/ . Export the PKG_CONFIG_PATH to this location: ``export PKG_CONFIG_PATH=/home/you/ffmpeg/`` then run ./configure for VLC.
