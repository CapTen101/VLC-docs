#####
Media
#####

**************
Playing a file
**************

To play a file, open the :guilabel:`Media menu` as seen in the picture below:

.. figure::  /static/images/userguides/media_homepage.PNG
   :align:   center

Then select the :guilabel:`Open File` menu item.

.. figure::  /static/images/userguides/open_file.PNG
   :align:   center

An Open File dialog box will appear. Select the file you want to open and select :guilabel:`Open`.

.. figure::  /static/images/userguides/movie.PNG
   :align:   center

After you click :guilabel:`Open`, VLC will then start playing the designated file. 

An alternative to the aforementioned step is to simply drag and drop your file into the VLC main interface or the playlist window from the :program:`File explorer` on Windows and :program:`Finder` on Mac OS X

.. figure::  /static/images/userguides/main_media.PNG
   :align:   center

****************************
Playing a CD/DVD/VCD/Blu-ray
****************************

To play a CD, VCD or a DVD, open the :menuselection:`Media --> Open Disc` menu item.

.. figure::  /static/images/userguides/open_disc.PNG
   :align:   center

In the :guilabel:`Open Disk` dialog box as shown in the diagram below, select your preferred media type (DVD, Blu-ray, Audio CD, or SVCD/VCD).

.. figure::  /static/images/userguides/disc.PNG
   :align:   center

You can either select the drive in which the media is located by selecting the drive letter from the :guilabel:`Disc Device` drop-down list, or you can click the :guilabel:`Browse` button, which will open a 
dialog box that you can use to browse for the media you wish to play with VLC. There is also an option for No DVD menus, when reading a DVD. 

If you want to start the DVD or VCD playback from a given title and chapter instead of from the beginning, you can set it using the :guilabel:`Title and Chapter` selectors. 
You can also set the Audio and Subtitles track using the selectors.

.. figure::  /static/images/userguides/starting_positions.PNG
   :align:   center

Click :guilabel:`Play` to start the playlist or :guilabel:`Cancel` to go back to the default screen of VLC.

.. figure::  /static/images/userguides/play.PNG
   :align:   center

************************
Playing a network stream
************************

To open a network stream, open the :menuselection:`Media --> Open Network Stream` menu item.

.. figure::  /static/images/userguides/network.PNG
   :align:   center

A dialog box will then open with three user input boxes.

* The first one is for the user to select the :guilabel:`Protocol` of the stream that they wish to open (HTTP/HTTPS/MMS/FTP/RTSP/RTP/UDP/RDMP). 

* The second box is for the user to input the :guilabel:`Address` of the stream. 

* The third one is for the user to select the appropriate port. However in the latest version of VLC (1.1.5), the user only needs to input the Address (examples are shown in image above).

To begin playback, click on the :guilabel:`Play` button.

If you get some stuttering during playback, you can try to 
increase the size of the read buffer. This can be done in 
the Open Network Stream dialog box, by firstly checking 
the **Show more options** check box then adjusting the **Caching 
selector**, which allows you to choose the amount of time 
(in milliseconds) VLC should store data in its buffer 
before starting playback.

.. figure::  /static/images/userguides/stuttering.PNG
   :align:   center

**************************************
Playing media from an acquisition card
**************************************

To play from an acquisition card, click on the :menuselection:`Media menu --> Open Capture Device` menu as seen in the screenshot below.

.. figure::  /static/images/userguides/home_capturedevice.PNG
   :align:   center

After clicking on :guilabel:`Open Capture Device`, a dialog box will be 
displayed on the screen with different options and features to choose from. 
There, you can choose the preferred :guilabel:`Capture Mode` of your choice
from the dropdown menu. 

Aside from the afore mentioned features of VLCs capture Device, see the more capabilities below;

1. You can change the :guilabel:`Video device name` and :guilabel:`Audio device name`.
2. Users can also adjust the configuration for these devices by clicking :guilabel:`Configure`. 
3. Users can set the size of the video that will be played by the Direct Show plugin and options such as :guilabel:`Device Properties` and :guilabel:`Tuner Properties` by clicking :guilabel:`Advanced Options`.

For **Video4Linux** devices, you can set the name of the 
video and audio devices using the :guilabel:`Video device name` and :guilabel:`Audio device name` text inputs. The :guilabel:`Advanced options` button allows you to select some further 
settings useful in some rare cases, such as the chroma of the input (the way colors are encoded) and the size of the input buffer.

To use a **Hauppauge PVR card**, select the :guilabel:`PVR` tab in the :guilabel:`Open` dialog box. Use the :guilabel:`Device` text input to set
the device of the card you want to use. You can set the Norm of the tuner (PAL, SECAM or NTSC) by using the :guilabel:`Norm` Drop Down. The :guilabel:`Frequency` selector allows
you to set the frequency of the tuner (in kHz), the bitrate selector to set the bitrate of the resulting encoded stream (in bit/s). The :guilabel:`Advanced Options`
button allows to set some more settings, such as the size of the encoded video (in pixels), its framerate (in frame per second), the interval between 2 key frames, etc.

To start **playback from an acquisition card**, click :guilabel:`Play`.
