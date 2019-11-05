#########
Subtitles
#########

A subtitle is a textual version of a movie’s dialogue. Subtitles are helpful if you are viewing a movie that contains foreign language(s).
In VLC, subtitles of the formats .cdg, .idx, .srt, .sub, .utf, .ass, .ssa, .aqt, .jss, .psb, .rt and smi are supported.

*****************************
Media with included subtitles
*****************************

Many types of media can have embedded subtitles. VLC can read subtitles for the following media formats:

* DVD
* SVCD
* OGM files
* Matroska (MKV) files

Subtitles are enabled by default in VLC media player. To disable them, click on the :guilabel:`Subtitle` menu to find available subtitles tracks
for the file and select :guilabel:`Disable` to turn off the subtitles. Depending on the media, a description (language, for example) might be available for the track.

To disable subtitles by default, go to :menuselection:`Tools --> Preferences --> Subtitles/OSD`, then uncheck the :guilabel:`Enable subtitles` checkbox and click :guilabel:`Save`.

.. figure::  /static/images/userguides/subtitle.PNG
   :align:   center

**DVD** and **SVCD** subtitles are merely images, so you won't be able to change anything for them. 
**OGM** and **Matroska** subtitles are rendered text, so you will be able to change several options.

******************
Font modifications
******************

Text rendering options can be changed in the :menuselection:`Tools --> Preferences` tab. To change the font type and size, click on 
:menuselection:`Videos --> Subtitles/OSD` and from the dropdown menu of :guilabel:`Font` and :guilabel:`Font size`, choose your preferences.

.. figure::  /static/images/userguides/preferences_subtitles.jpg
   :align:   center

You need to restart your stream for the font modifications to take effect.

***************
Subtitles files
***************

While modern file formats like *Matroska* or *OGM* can handle subtitles directly, older formats like AVI can't. 
Therefore, a number of subtitles files formats have been created. You need two files: the video file and the 
subtitles file that only contains the text of the subtitles and timestamps.

VLC can handle these types of subtitles files:

* MicroDVD
* SubRIP
* SubViewer
* SSA
* Sami
* Vobsub (this one is quite special: it is not made from text but from images, which means that you can't change the fonts)

To open a subtitles file, click on the :guilabel:`use a subtitle file` check box as seen in the picture below from the dialog box that appears when you click on :guilabel:`Open file`
and select your file by clicking on the :guilabel:`Browse` button. There is also an option to set character encoding, alignment and size.

.. figure::  /static/images/userguides/use_subtitle.PNG
   :align:   center

An alternative is loading subtitles from the :menuselection:`Video --> Subtitle Track` menu.

.. Note:: For Vobsub subtitles, you need to select the *.idx* file, not the *.sub* file. Encoding, alignment and size won't have any effect for Vobsub subtitles.

