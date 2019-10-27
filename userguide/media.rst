#####
Media
#####

**************
Playing a file
**************

To play a file, open the **Media menu** as seen in the picture below:

.. figure::  /static/images/userguides/media_homepage.png
   :align:   center

Then select the **Open File** menu item.

.. figure::  /static/images/userguides/open_file.png
   :align:   center

An Open File dialog box will appear. Select the file you want to open and select Open.

.. figure::  /static/images/userguides/movie.png
   :align:   center

After you click **Open,** VLC will then start playing the designated file. 

An alternative to the aforementioned step is to simply drag and drop your file into the 
VLC main interface or the playlist window from the *File explorer* on Windows and *Finder* on Mac OS X

.. figure::  /static/images/userguides/main_media.png
   :align:   center

********************
Playing a CD/DVD/VCD
********************

To play a CD, VCD or a DVD, open the Media menu and select Open Disc menu item. In the Open Disk dialog box, select the type of media (DVD, SVCD/VCD or Audio CD).

You can either select the drive in which the media is located by selecting the drive letter from the Disc Device drop-down list, or you can select the Browse button, which will open a dialog box that you can use to browse for the media you wish to play.

If you want to start the DVD or VCD playback from a given title and chapter instead of from the beginning, you can set it using the Title and Chapter selectors. You can also set the Audio and Subtitles track using the selectors. There is also an option for No DVD menus, when reading a DVD.

To start playback select the Ok button.

*********************
Streaming Media Files
*********************

Streaming is a method of delivering audio or video content across a network without the need to download the media file before it is played. You can view or listen to the content as it arrives. It has the advantage that you don't need to wait for large media files to finish downloading before playing them.

VideoLan is designed to stream MPEG videos on high bandwidth networks. VLC can be used as a server to stream MPEG-1, MPEG-2 and MPEG-4 files, DVDs and live videos on the network in unicast or multicast. Unicast is a process where media files are sent to a single system through the network. Multicast is a process where media files are sent to multiple systems through the network.

VLC is also used as a client to receive, decode and display MPEG streams. MPEG-1, MPEG-2 and MPEG-4 streams received from the network or an external device can be sent to one machine or a group of machines.

.. figure::  /static/images/interface/Streamingdiag.jpg
   :align:   center
   
Follow the steps below to stream a file:

* From the Media menu, select Open Network Stream. The Open Media dialog box loads with the Network tab selected.
* In the Please enter a network URL text box, Type the network URL.
* Click **Play**.

Note: When VLC plays a stream, the track slider shows the progress of the playback.

.. figure::  /static/images/interface/Vlc_network_stream.png
   :align:   center

**************************************
Playing media from an acquisition card
**************************************

To play from an acquisition open the File menu, and select Open Capture Device

From here you can choose the Capture Mode and the Video/Audio Device Name. The user can also adjust the configuration for these devices by clicking Configure. The user is also able to set the size of the video that will be played by the Direct Show plugin and options such as 'Device Properties' and 'Tuner Properties' by clicking Advanced Options.

For Video4Linux devices, you can set the name of the video and audio devices using the "Video device name" and "Audio device name" text inputs. The "Advanced options..." button allows you to select some further settings useful in some rare cases, such as the chroma of the input (the way colors are encoded) and the size of the input buffer.

To use a Hauppauge PVR card, select the PVR tab in the "Open" dialog box. Use the "Device" text input to set the device of the card you want to use. You can set the Norm of the tuner (PAL, SECAM or NTSC) by using the "Norm" Drop Down. The Frequency selector allows you to set the frequency of the tuner (in kHz), the bitrate selector to set the bitrate of the resulting encoded stream (in bit/s). The "Advanced Options button allows to set some more settings, such as the size of the encoded video (in pixels), its framerate (in frame per second), the interval between 2 key frames, etc.

To start playback from an acquisition card, click Play.
