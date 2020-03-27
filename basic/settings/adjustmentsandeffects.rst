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
 
Sometimes, while playing a file, you realize that the lip sync or subtitle is not displayed at the right time and this occurs when the Audio is not in sync with the Subtitle or Video. 
VLC's synchronization feature allows you to fix an audio or subtitle file that is not synced by either deplaying or hastening the audio till it is synced. 

Audio/Video Synchronization
===========================

To fix the Audio/Video synchronization with the VLC media player, follow the steps below:
 
#. Detect (hear) that audio is out of sync
#. If your audio requires to be slowed down then hit the *K* hotkey from your keyboard. For the opposite of this hit the *J* hotkey on your keyboard. A confirmation will be displayed on the top-right area of your screen.
#. Pressing the hotkey once will speed up or slow down the audio by 50 milliseconds. If you continue to press it, the number of milliseconds will continuously be incremented.
#. Speed up or slow down the sound timing of the video until you reach the desired state. Make sure that the video is playing and listen to the sound carefully and match it with the video to do this.

Audio/Subtitle Synchronization 
==============================

To fix the Audio/Subtitle synchronization with the VLC media player, follow the steps below:
 
#. Make sure you are playing a video along its subtitle.
#. If your subtitle requires to be delayed then hit the **h** hotkey from your keyboard. For the opposite of this, hit the **g** hotkey on your keyboard. A confirmation will be displayed on the top-right area of your screen.
#. Pressing the hotkeys once will delay or hasten the subtitle by 50 milliseconds. If you continue to press it, the number of milliseconds will continuously be incremented.
#. Delay or speed up the subtitle timing of the video until you reach the desired state. Listen to the audio carefully and fix the subtitle to accurately sync with your video. Some subtitles can be way off and you might require them to be delayed by a couple of seconds in order to sync with the spoken words of a video.

Advance/Bookmark
================

#. Bookmark a position in subtitle time by clicking on **Shift + j**.
#. Synchronize the previously bookmarked audio and subtitle times by cliking on **Shift + k**. 
 

Aside from using VLC hotkeys for synchronization, you can also provide a numerical delay value directly using the menu options on VLC by clicking
on :menuselection:`Tools --> Track Synchronisation --> Synchronisation from the dropdown menu. 

.. figure::  /images/basic/settings/track_synchronization.PNG
   :align:   center

On the synchronization tab, enter a positive numerical value to increase hasten the speed or a negative value to decrease the speed of the Audio or subtitle synchronization.

.. figure::  /images/basic/settings/adjustmentsandeffects_synchronization.png
   :align:   center

Then click on **Close** button to save your changes.


