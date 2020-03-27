####################
Adjustment & Effects
####################

VLC allows you to add adjustments and effects to the playing Video or Audio file.
 
*************
Audio Effects
*************

Equalizer
=========

VLC features a 10-band graphical equalizer, a device used to alter the relative frequencies of audio (e.g. for a bass boost). 
You can display it by selecting :menuselection:`Tools --> Effects and Filters --> Audio Effects --> Equalizer` on Windows or GNU/Linux or by clicking the :guilabel:`Equalizer` button on the macOS interface. 

.. figure::  /images/basic/settings/adjustmentsandeffects_audio.png
   :align:   center

   Audio equalizer in the Windows and GNU/Linux interface.

.. Hint:: Do not forget to check the :guilabel:`Enable` button to activate the Equalizer!

Additional Audio Effects
========================

From the :guilabel:`Audio Effects` menu, you can also access the following effects:

Compressor
   emulates a dynamic range compressor
Spatializer
   changes audio as if it was produced inside a room
Stereo Widener
   enhances the stereo effect by suppressing mono (signal common to both channels) and by delaying the signal of left into right and vice versa, thereby widening the stereo effect.
Advanced
   From this menu, you can adjust the audio pitch.

*************
Video Effects
*************

VLC features several filters able to change the video's distortion, brightness adjustment, motion blurring, etc. 

.. figure::  /images/basic/settings/adjustmentsandeffects_video.png
   :align:   center

***************
Synchronization
***************
 
Sometimes, while playing a file, you realize that the subtitle is not displayed at the right time or the lip sync doesnt match up with the sound of the audio.
This occurs when the audio is not in sync with the subtitle or video. With VLC, you can easily resolve this.

Audio/Video Synchronization
===========================

Synchronizing audio/video with VLC media player can be achieved by using the :guilabel:`hotkeys` in the guide below:

#. Detect (hear) that audio is out of sync.
#. Click on :kbd:`k` to delay the time offset of the audio. For the opposite, click on :kbd:`j`. 

Audio/Subtitle Synchronization 
==============================

To synchronize any out of sync audio and subtitle file with the VLC media player, use the :guilabel:`hotkeys` in the guide below:
 
#. Detect (see) that the subtitle is out of sync.
#. Click on :kbd:`h` to delay the time offset of the subtitle. For the opposite, click on :kbd:`g`. 

Advance/Bookmark
----------------

Whenever a subtitle is late, the hotkeys below can be used to sync the audio/subtitle of the media file. 


#. :kbd:`Shift + h` bookmarks a position in audio time.
#. :kbd:`Shift + j` bookmarks a position in subtitle time.
#. Synchronize the previously bookmarked audio and subtitle times with :kbd:`Shift + k`. 
 

Aside from using VLC hotkeys to synchronize audio and subtitle files, you can also provide a numerical delay value directly using the menu options on VLC by clicking
on :menuselection:`Tools --> Track Synchronization --> Synchronization`. 

.. figure::  /images/basic/settings/track_synchronization.PNG
   :align:   center

On the synchronization tab, enter a positive numerical value to advance the time offset or a negative value to delay time offset of the audio or subtitle synchronization.

.. figure::  /images/basic/settings/adjustmentsandeffects_synchronization.png
   :align:   center

Then click on **Close** button to save your changes.


