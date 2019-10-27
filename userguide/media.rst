#####
Media
#####

**************
Playing a file
**************

To play a file, open the **Media menu** as seen in the picture below:

.. figure::  /static/images/userguides/media_homepage.PNG
   :align:   center

Then select the **Open File** menu item.

.. figure::  /static/images/userguides/open_file.PNG
   :align:   center

An Open File dialog box will appear. Select the file you want to open and select Open.

.. figure::  /static/images/userguides/movie.PNG
   :align:   center

After you click **Open,** VLC will then start playing the designated file. 

An alternative to the aforementioned step is to simply drag and drop your file into the VLC main interface or the playlist window from the **File explorer** on Windows and **Finder** on Mac OS X

.. figure::  /static/images/userguides/main_media.PNG
   :align:   center

****************************
Playing a CD/DVD/VCD/Blu-ray
****************************

To play a CD, VCD or a DVD, open the Media menu and select **Open Disc** menu item.

.. figure::  /static/images/userguides/open_disc.PNG
   :align:   center

In the Open Disk dialog box as shown in the diagram below, select your preferred meia type (DVD, Blu-ray, Audio CD, or SVCD/VCD).

.. figure::  /static/images/userguides/disc.PNG
   :align:   center

You can either select the drive in which the media is located by selecting the drive letter from the **Disc Device** drop-down list, or you can click the **Browse** button, which will open a 
dialog box that you can use to browse for the media you wish to play with VLC. There is also an option for No DVD menus, when reading a DVD. 

If you want to start the DVD or VCD playback from a given title and chapter instead of from the beginning, you can set it using the **Title and Chapter** selectors. 
You can also set the Audio and Subtitles track using the selectors.

.. figure::  /static/images/userguides/starting_positions.PNG
   :align:   center

Click **Play** to start the playlist or **Cancel** to go back to the default screen of VLC.

.. figure::  /static/images/userguides/play.PNG
   :align:   center

************************
Playing a network stream
************************

To open a network stream, open the Media menu and select the Open Network Stream menu item.

.. figure::  /static/images/userguides/network.PNG
   :align:   center

A dialog box will then open with three user input boxes. The first one is for the user to select the Protocol of the stream that they wish to open (HTTP/HTTPS/MMS/FTP/RTSP/RTP/UDP/RDMP). The second box is for the user to input the Address of the stream and the third one is for the user to select the appropriate port. However in the latest version of VLC (1.1.5), the user only needs to input the Address (examples are shown in image above).

To begin playback, select the Play button.

If you get some stuttering during playback, you can try to increase the size of the read buffer. This can be done in the Open Network Stream dialog box, by firstly checking the Show more options check box then adjusting the Caching selector, which allows you to choose the amount of time (in milliseconds) VLC should store data in its buffer before starting playback.

**************************************
Playing media from an acquisition card
**************************************

To play from an acquisition open the File menu, and select Open Capture Device

From here you can choose the Capture Mode and the Video/Audio Device Name. The user can also adjust the configuration for these devices by clicking Configure. The user is also able to set the size of the video that will be played by the Direct Show plugin and options such as 'Device Properties' and 'Tuner Properties' by clicking Advanced Options.

For Video4Linux devices, you can set the name of the video and audio devices using the "Video device name" and "Audio device name" text inputs. The "Advanced options..." button allows you to select some further settings useful in some rare cases, such as the chroma of the input (the way colors are encoded) and the size of the input buffer.

To use a Hauppauge PVR card, select the PVR tab in the "Open" dialog box. Use the "Device" text input to set the device of the card you want to use. You can set the Norm of the tuner (PAL, SECAM or NTSC) by using the "Norm" Drop Down. The Frequency selector allows you to set the frequency of the tuner (in kHz), the bitrate selector to set the bitrate of the resulting encoded stream (in bit/s). The "Advanced Options button allows to set some more settings, such as the size of the encoded video (in pixels), its framerate (in frame per second), the interval between 2 key frames, etc.

To start playback from an acquisition card, click Play.
