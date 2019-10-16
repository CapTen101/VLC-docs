.. _doc_user_interface:

##############
User Interface
##############

VLC has several interfaces:

* A cross-platform interface for Windows and GNU/Linux, which is called Qt.
* A native Mac OS X interface.
* An interface that supports skins for both Windows and GNU/Linux.

The operation of VLC is essentially the same in all the interfaces.

Windows and GNU/Linux (Qt)
--------------------------

The screenshot below shows the default interface in VLC 3.0.8 on Windows. More features can be displayed by selecting them in the View menu.

.. figure::  /static/images/interface/home_screen.PNG
   :align:   center

**There are 3 main parts to the VLC Media Player interface:**

1. The Menu bar
2. The Playback Controls
3. Volume Controls

.. figure::  /static/images/interface/home_screen.PNG
   :align:   center

Mac OS X
--------

This screenshot shows the default interface that VLC had on Mac OS X until version 1.1:

.. figure::  /static/images/interface/Default_Interface_Mac.PNG
   :align:   center

Since version 2.0 the interface has been redesigned. See OSX 2.0 interface.

.. figure::  /static/images/interface/Default_Interface_Mac.PNG
   :align:   center

**Main Interface**

The main interface has the following areas:

* Menu bar.
* Track slider - The track slider is below the menu bar. It shows the playing progress of the media file. You can drag the track slider left to rewind or right to forward the track being played. When a video file is played, the video is shown between the menu bar and the track slider.
    Note: When a media file is streamed, the track slider does not move because VLC cannot know the total duration.
* Control Buttons - The buttons below the track slider cover all the basic playback features.

.. figure::  /static/images/interface/file.png
   :align:   center


.. figure::  /static/images/interface/Playbackcontrols.png
   :align:   center

**Streaming Media Files**

Streaming is a method of delivering audio or video content across a network without the need to download the media file before it is played. You can view or listen to the content as it arrives. It has the advantage that you don't need to wait for large media files to finish downloading before playing them.

VideoLan is designed to stream MPEG videos on high bandwidth networks. VLC can be used as a server to stream MPEG-1, MPEG-2 and MPEG-4 files, DVDs and live videos on the network in unicast or multicast. Unicast is a process where media files are sent to a single system through the network. Multicast is a process where media files are sent to multiple systems through the network.

VLC is also used as a client to receive, decode and display MPEG streams. MPEG-1, MPEG-2 and MPEG-4 streams received from the network or an external device can be sent to one machine or a group of machines.

.. figure::  /static/images/interface/Streamingdiag.JPG
   :align:   center
   
**To stream a file:**

* From the Media menu, select Open Network Stream. The Open Media dialog box loads with the Network tab selected.
* In the Please enter a network URL text box, Type the network URL.
* Click **Play**.

Note: When VLC plays a stream, the track slider shows the progress of the playback.

.. figure::  /static/images/interface/Vlc_network_stream.PNG
   :align:   center


**Converting and Saving a Media File Format**

VLC can convert media files from one format to another.

**To convert a media file:**

1. From the Media menu, select Convert/Save. The Open media dialog window appears.

2. Click Add.... A file selection dialog window appears.

3. Select the file you want to convert and click Open. The Convert dialog window appears.

4. In the Destination file text box, indicate the path and file name where you want to store the converted file.

5. From the Profile drop-down, select a conversion profile.

6. Click Start.

.. figure::  /static/images/interface/Basic_interface_convert.png
   :align:   center


Media
======

.. toctree::
   :maxdepth: 1

   media/file.rst
   media/multiple_files.rst
   media/folder.rst
   media/disc.rst
   media/network_stream.rst
   media/capture_device.rst
   media/clipboard.rst
   media/save.rst
   media/convert.rst
   media/stream.rst
   media/quit.rst