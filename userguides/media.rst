#####
Media
#####

**************
Playing a file
**************

To play a file, open the :guilabel:`Media menu` as seen in the picture below:

.. figure::  /images/userguides/media_homepage.png
   :align:   center

Then select the :guilabel:`Open File` menu item.

.. figure::  /images/userguides/media_open_file.png
   :align:   center

An Open File dialog box will appear. Select the file you want to open and select :guilabel:`Open`.

.. figure::  /images/userguides/media_movie.png
   :align:   center

After you click :guilabel:`Open`, VLC will then start playing the designated file. 

An alternative to the aforementioned step is to simply drag and drop your file into the VLC main interface or the playlist window from the :program:`File explorer` on Windows and :program:`Finder` on Mac OS X

.. figure::  /images/userguides/media_main.png
   :align:   center

****************************
Playing a CD/DVD/VCD/Blu-ray
****************************

To play a CD, VCD or a DVD, open the :menuselection:`Media --> Open Disc` menu item.

.. figure::  /images/userguides/media_open_disc.png
   :align:   center

In the :guilabel:`Open Disk` dialog box as shown in the diagram below, select your preferred media type (DVD, Blu-ray, Audio CD, or SVCD/VCD).

.. figure::  /images/userguides/media_disc.png
   :align:   center

You can either select the drive in which the media is located by selecting the drive letter from the :guilabel:`Disc Device` drop-down list, or you can click the :guilabel:`Browse` button, which will open a 
dialog box that you can use to browse for the media you wish to play with VLC. There is also an option for No DVD menus, when reading a DVD. 

If you want to start the DVD or VCD playback from a given title and chapter instead of from the beginning, you can set it using the :guilabel:`Title and Chapter` selectors. 
You can also set the Audio and Subtitles track using the selectors.

.. figure::  /images/userguides/media_starting_positions.png
   :align:   center

Click :guilabel:`Play` to start the playlist or :guilabel:`Cancel` to go back to the default screen of VLC.

.. figure::  /images/userguides/media_play.png
   :align:   center

************************
Playing a network stream
************************

Streaming is a method of delivering audio or video content across a network without the need to download the media file 
before it is played. You can view or listen to the content as it arrives. It has the advantage that you don't need to wait 
for large media files to finish downloading before playing them.

VideoLan is designed to stream MPEG videos on high bandwidth networks. VLC can be used as a server to stream MPEG-1, MPEG-2 and 
MPEG-4 files, DVDs and live videos on the network in :term:`Unicast` or :term:`Multicast`. VLC is also used as a client to receive, decode and display MPEG streams. MPEG-1, MPEG-2 and MPEG-4 streams received from
the network or an external device can be sent to one machine or a group of machines.

.. figure::  /images/userguides/media_old_diag.jpg
   :align:   center

To play a network stream, click on :menuselection:`Media` on the menu bar and select :menuselection:`Open Network Stream`. 
The Open Media dialog box loads with the Network tab selected. In the tab, enter a network URL in the text box and click on :guilabel:`Play`.

.. figure::  /images/userguides/media_network.png
   :align:   center

.. note:: When VLC plays a stream, the track slider shows the progress of the streamed file.

**************************************
Playing media from an acquisition card
**************************************

To play from an acquisition card, click on the :menuselection:`Media menu --> Open Capture Device` menu as seen in the screenshot below.

.. figure::  /images/userguides/media_home_capturedevice.png
   :align:   center

After clicking on :guilabel:`Open Capture Device`, a dialog box will be 
displayed on the screen with different options and features to choose from. 
There, you can choose the preferred :guilabel:`Capture Mode` of your choice
from the dropdown menu. 

Aside from the afore mentioned features of VLCs capture Device, see the more capabilities below;

1. You can change the :guilabel:`Video device name` and :guilabel:`Audio device name`.
2. Users can also adjust the configuration for these devices by clicking :guilabel:`Configure`. 
3. Users can set the size of the video that will be played by the Direct Show plugin and options such as :guilabel:`Device Properties` and :guilabel:`Tuner Properties` by clicking :guilabel:`Advanced Options`.

Video4Linux
+++++++++++

For Video4Linux devices, you can set the name of the 
video and audio devices using the :guilabel:`Video device name` and :guilabel:`Audio device name` text inputs. The :guilabel:`Advanced options` button allows you to select some further 
settings useful in some rare cases, such as the chroma of the input (the way colors are encoded) and the size of the input buffer.

Hauppauge PVR card
++++++++++++++++++

To use a Hauppauge PVR card, select the :guilabel:`PVR` tab in the :guilabel:`Open` dialog box. Use the :guilabel:`Device` text input to set
the device of the card you want to use. You can set the Norm of the tuner (PAL, SECAM or NTSC) by using the :guilabel:`Norm` Drop Down. The :guilabel:`Frequency` selector allows
you to set the frequency of the tuner (in kHz), the bitrate selector to set the bitrate of the resulting encoded stream (in bit/s). The :guilabel:`Advanced Options`
button allows to set some more settings, such as the size of the encoded video (in pixels), its framerate (in frame per second), the interval between 2 key frames, etc.

To start **playback from an acquisition card**, click :guilabel:`Play`.
