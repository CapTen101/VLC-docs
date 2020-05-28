############################
 Other uncommon uses of VLC
############################

The modular nature of VLC media player allows you to do quite strange and unusual things with it! This page tries to list some funny and insane uses ;)

-------------------------------------------------------------------------------------------------------------------------------------------------------
Visualizations with `Caca <https://wiki.videolan.org/Documentation:Modules/caca/>`_ and `Goom <https://wiki.videolan.org/Documentation:Modules/goom/>`_
-------------------------------------------------------------------------------------------------------------------------------------------------------

* If you have vlc compiled with both `Caca <https://wiki.videolan.org/Documentation:Modules/caca/>`_ and `Goom <https://wiki.videolan.org/Documentation:Modules/goom/>`_ you can listen to music with caca rendering the output of goom which essentially means you can **show the visualisations from an audio file as colour ASCII art**!
  Try something like this:

  .. code:: shell

     $ vlc --audio-visual goom --vout caca somemusic.mp3

* Likewise, if you would like to view a video file as colour ASCII art, try the following:

  .. code:: shell

     $ vlc --vout caca somevideo.avi


----------------
Pipe data to VLC
----------------

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
   
   Using ``cat`` which is part of `GNU coreutils <https://www.gnu.org/software/coreutils/>`_ (ie, on *nix systems). ``cat`` displays the contents of a file to standard output (normally to the screen as text).
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

----------------------
Encoding Lots of Files
----------------------

This command shows how to encode a whole directory of files in Linux, without your input. When complete, it'll show a message to say it is complete. It's a single command split over several lines (with ``\``):

.. code:: shell

   for A in *.avi; do \
   echo ************************* $A ********************* ;\
   vlc --sout-all "$A" :sout="#transcode{...}:\
   std{access=file,mux=avi,url=~/$A.avi}" \
   vlc://quit -I dummy ;\
   done ;\
   Xdialog --title 'Complete' --msgbox 'All done' 0 0;

**Make sure you really understand this command before using it**. It's also a good idea to make sure you've got the right options in the transcode bit, and that it'll transcode the right files. The output is sent to your home folder in this example.



