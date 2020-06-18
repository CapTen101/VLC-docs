.. _caca-and-goom:

#################################
Visualizations with Caca and Goom
#################################

-----------------
A little heads up
-----------------

`libcaca <http://caca.zoy.org/wiki/libcaca>`_ is a graphics library that outputs text instead of pixels, so that it can work on older video cards or text terminals. 

`Goom <https://www.fovea.cc/?page=details_produits&id=goom>`_ allows you to admire your music! It's a cool visual effects generator for almost every multimedia player. It includes a large number of trippy hypnotic effects that dance, swirl and pop with the music.

-----
Usage
-----

* If you have vlc compiled with both Caca and Goom you can listen to music with caca rendering the output of goom which essentially means you can **show the visualisations from an audio file as colour ASCII art**!
  Try something like this:

  .. code:: shell

     $ vlc --audio-visual goom --vout caca somemusic.mp3

* Likewise, if you would like to view a video file as colour ASCII art, try the following:

  .. code:: shell

     $ vlc --vout caca somevideo.avi


.. seealso:: References for later read :

   * `libcaca-wikipedia <https://en.wikipedia.org/wiki/Libcaca>`_
   * `caca- VideoLan wiki <https://wiki.videolan.org/Documentation:Modules/caca/>`_
   * `goom- VideoLan wiki <https://wiki.videolan.org/Documentation:Modules/goom/>`_
