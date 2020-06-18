.. _data-piping:

################
Pipe data to VLC
################

* You can pipe input from standard input to VLC, rather than open a file or stream. VLC accepts data this way if you use a **dash** as a filename:

  .. code:: shell

     $ vlc -

* You can access a named pipe using ``fd://``:

  .. code:: shell

     $ vlc fd://nameofpipe

* Syntax in VLM conf file:

  .. code:: shell

     setup yourinput input fd://nameofpipe

* Piping passes the output of one program into the input of another:

.. admonition:: For Example
   
   Using ``cat`` which is part of `GNU coreutils <https://www.gnu.org/software/coreutils/>`_ (ie, on nix systems). ``cat`` displays the contents of a file to standard output (normally to the screen as text).
   In this case, we'll use the pipe ``|`` character to redirect this into vlc's standard input, which will then be played.

.. code:: shell

   $ cat file.mpg | vlc -

* You can get input from anywhere. A good place to get input is `ffmpeg <https://ffmpeg.org/>`_.

.. admonition:: For Example

   Say you have a ``.flv`` file (which VLC supports from version 0.8.4a onwards) and you want to play it in vlc. You could use ffmpeg to transcode it on the fly and pipe the output to vlc.


The following command will do this:

.. code:: shell

   $ ffmpeg -i 0.flv -f asf - | vlc -

A longer version with all the options ffmpeg likes to have is:

.. code:: shell

   $ ffmpeg -i 0.flv -vcodec mpeg4 -ac 1 -ab 64 -acodec mp2 -b 128 -f asf -s cif - | vlc -

The advantage of this is that you don't have to make a new file (possibly 100s of MB in size) but you will probably need a computer with higher-end configuration to carry this out. Also, you won't have much control when playing it. You can pipe into ffmpeg too, so we suppose you could pass things along ffmpeg forever, transcoding it a million different ways, and ending up in vlc (**please don't try that, your computer really wouldn't like it**).
