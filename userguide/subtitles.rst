#########
Subtitles
#########

VLC supports many kinds of subtitles.

*****************************
Media with included subtitles
*****************************

Many types of media can have embedded subtitles. VLC can read subtitles for the following media formats:

* DVD
* SVCD
* OGM files
* Matroska (MKV) files

Subtitles are enabled by default in VLC media player. To disable them, click on the **Subtitle** menu to find available subtitles tracks
for the file and select **Disable** to turn off the subtitles. Depending on the media, a description (language, for example) might be available for the track.

To disable subtitles by default, go to **Tools** and select **Preferences** and click on **Subtitles/OSD**, then uncheck the **Enable subtitles** checkbox and click **Save**.

.. figure::  /static/images/userguides/subtitle.PNG
   :align:   center

**DVD** and **SVCD** subtitles are merely images, so you won't be able to change anything for them. 
**OGM** and **Matroska** subtitles are rendered text, so you will be able to change several options.

******************
Font modifications
******************

Text rendering options can be changed in the **Preferences** of the **Tools** tab. To change the font type and size, click on 
**Vidoe** > **Subtitles/OSD** and from the dropdown menu of **Font** and **Font size**, choose your preferred prefernece. 
You need to restart your stream for the font modifications to take effect.

***************
Subtitles files
***************

While modern file formats like Matroska or OGM can handle subtitles directly, older formats like AVI can't. Therefore, a number of subtitles files formats have been created. You need two files: the video file and the subtitles file that only contains the text of the subtitles and timestamps.

VLC can handle these types of subtitles files:

* MicroDVD
* SubRIP
* SubViewer
* SSA                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
* Sami
* Vobsub (this one is quite special: it is not made from text but from images, which means that you can't change the fonts)

To open a subtitles file, use the Advanced Open dialog box (Menu File, Open file). Select your file by clicking on the Browse button. Then, check the Subtitle options checkbox and click on the "Settings" button.


You can then select the subtitles file by clicking the Browse button. You can also set a few options like character encoding, alignment and size.

An alternative is loading subtitles from the Subtitles Track menu item under the Video tab.

.. Note:: For Vobsub subtitles, you need to select the .idx file, not the .sub file. Encoding, alignment and size won't have any effect for Vobsub subtitles.

Font can be changed as explained in the previous section.

***********************
Loading Subtitle Tracks
***********************

A subtitle is a textual version of a movie’s dialogue. Subtitles are helpful if you are viewing a movie that contains foreign language(s). You can load subtitles for video tracks. Subtitles of the formats .cdg, .idx, .srt, .sub, .utf, .ass, .ssa, .aqt, .jss, .psb, .rt and smi are supported.

VLC can read subtitles for the media formats such as DVD, SVCD, OGM files, and Matroska (MKV) files.

To enable the subtitle for a track, select Open File under the Subtitle menu item from the Video menu. The Open Subtitles File dialog box is displayed.

Locate the file which contains the subtitle and click on Open. The subtitles are displayed.