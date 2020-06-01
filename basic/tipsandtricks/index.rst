.. _tips_and_tricks:

#############
Tips & Tricks
#############

Here are some amazing VLC Tricks & Hidden Features which will help to take your VLC experience to a totally new level. 

******************************
Converting a Media File Format
******************************

VLC can convert media files from one format to another. To do that, follow the steps below:

1. Select :menuselection:`Media --> Convert/Save`. The :guilabel:`Open` media dialog window appears.

2. Click :guilabel:`Add`. After you do that, a file selection dialog window appears.

3. Select the file you want to convert and click :guilabel:`Open`. The :guilabel:`Convert` dialog window appears.

4. In the :guilabel:`Destination` file text box, indicate the path and file name where you want to store the converted file.

5. From the :guilabel:`Profile` drop-down, select a conversion profile.

6. Click :guilabel:`Start`.

.. figure::  /images/basic/tipsandtricks/index_basic_interface_convert.png
   :align:   center

*********************
Streaming Media Files
*********************

To stream over a network with VLC, go to :menuselection:`Media menu --> Stream`

.. figure::  /images/basic/tipsandtricks/index_stream.png
   :align:   center

In the :guilabel:`Open Media` dialog, select the media (such as a file, a network stream, a disk or a capture device) you want to stream. 

.. figure::  /images/basic/tipsandtricks/index_open_media.png
   :align:   center

After you've choosen your prefered media file, click on the :guilabel:`Stream` button to display the :guilabel:`Stream Output`. 

.. figure::  /images/basic/tipsandtricks/index_stream_output.png
   :align:   center

The :guilabel:`Stream Output` displays the media source you selected so click :guilabel:`Next` to continue.

.. figure::  /images/basic/tipsandtricks/index_destination_setup.png
   :align:   center

The following streaming methods are available for use with VLC: :term:`Display locally`, :term:`File`
:term:`HTTP`, :term:`MS-WMSP (MMSH)`, :term:`UDP`, :term:`RTP` and :term:`IceCast`. 

The most common way is via :term:`HTTP`. To stream via :guilabel:`HTTP`, choose :guilabel:`HTTP` from the drop down as a "New Destination" and click :guilabel:`Add` to implement your change. Then press :guilabel:`Next` 
to continue. This process also applies to other streaming methods. 

After you click Next, a dialog box of transcoding options would be displayed on your screem. Go ahead and select a 
transcoding profile that fits the codecs and access method of your stream (such as MPEG-TS, MPEG-PS, MPEG-1, Ogg, Raw, ASF, AVI, 
MP4 and MOV) and click the :guilabel:`Next` button to continue. 

.. figure::  /images/basic/tipsandtricks/index_transcoding_options.png
   :align:   center

Finally, set up any additonal options for streaming then click on :guilabel:`Stream` to start streaming.

.. figure::  /images/basic/tipsandtricks/index_miscellaneous_options.png
   :align:   center

*************
Jigsaw Puzzle
*************

Interestingly, VLC allows you to play the Jigsaw puzzle with the screens from any movie of your choice. 
Follow the steps below to get started: 

1. Go to :menuselection:`Tools --> Effects and Filters`.
2. On the dialog box, click on the :menuselection:`Video Effects --> Geometry` tab. 
3. You will find :guilabel:`Puzzle Game` close to a check box. 
4. Click on the check box and choose the number of columns and rows that you want and press :guilabel:`Close` to save the newly made changes. 
5. If you were already playing a video, the video will automatically change to Jigsaw puzzle for you to play. If you were not playing a video before enabling this feature, open a video file and the video will automatically be displayed in the Jigsaw puzzle format as seen in the screenshot below.

.. figure::  /images/basic/tipsandtricks/index_jigsawpuzzle.png
   :align:   center

Feel free to play the Jigsaw puzzle while watching any video of your choice.

***************
Take A Snapshot
***************

Ever need to take a snapshot of a video you are watching? VLC has a way to do so. Simply use the shortcut :kbd:`Shift+S` on Windows and Linux or :kbd:`Cmd+Alt+S` on macOS. 
The image is captured in the .png picture format and is saved in the :file:`C:\\My Pictures` folder by default (:file:`C:\\Users\\Username\\Pictures`).

.. figure::  /images/basic/tipsandtricks/index_snapshot.png
   :align:   center

*********************************************************
Fingerprinting - Identify tracks and add album art easily
*********************************************************

VLC uses **MusicBrainz** - a multi-platform open-source tool that lets you easily add metadata to your music files that miss them.

It utilizes something many refer to as **AcoustID** that helps it distinguish your music files by their contents and not their other metadata fields. Metadata includes information like artist, genre, label, song titles, album name and track numbers.

So regardless of whether your **MP3s** have **zero** information accessible, you can utilize the tool to include the missing info. Thus your library becomes more cleaner and informative !

Lets see how you can identify a music file even if it has all metadata fields empty.

1. Make sure you are connected to internet. Then go to VLC.
2. Select :menuselection:`Tools --> Codec Information`. The current media information dialog window appears.

.. figure::  /images/basic/tipsandtricks/index_fingerprint_open.png
   :align:   center

3. Select :guilabel:`General` tab. Click on :guilabel:`fingerprint`.
   
.. figure::  /images/basic/tipsandtricks/index_fingerprint_fingerprint.png
   :align:   center

4. A list of matching tracks will pop up. If the track matches with any item, Click on it and choose option :guilabel:`Apply this identity to the file`. In case, there are no matches you may choose :guilabel:`Discard all identities`.
  
.. figure::  /images/basic/tipsandtricks/index_fingerprint_find.png
   :align:   center

.. figure::  /images/basic/tipsandtricks/index_fingerprint_list.png
   :align:   center

5. The track info will get updated.

6. To update the cover art, right click on image at the bottom right of dialog box.

7. Click :guilabel:`Download cover art` option. Upon clicking, the cover art will get updated automatically.

.. figure::  /images/basic/tipsandtricks/index_fingerprint_apply.png
   :align:   center

8. To save your changes, click on :guilabel:`Save metadata`.

.. figure::  /images/basic/tipsandtricks/index_fingerprint_done.png
   :align:   center

9. Thus the track information will be updated.

.. figure::  /images/basic/tipsandtricks/index_fingerprint_final.png
   :align:   center


