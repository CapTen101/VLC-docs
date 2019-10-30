.. _faq_windows:

*************************
FAQs about VLC on Windows
*************************

Video Output 
============

Why does VLC only give black, white or garbled video output?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Usually the problem lies in display adapter drivers. If you are too scared to update your display adapter drivers, you can change VLC settings to make video work. If you are using Windows XP or older, the easiest fix is usually to disable Accelerated video output/Overlay video output which can be found first opening Tools -> Preferences and then choosing Video. After you have disabled the Accelerated video output, save your changes and restart the VLC media player to ensure that your changes are enabled.

If disabling Overlay video output doesn't fix the issue, then the next step is to change the video output module (aka VOUT). Open Tools -> Preferences -> Video  and select the module of your chioce from the Output dropdown menu.

How can I adjust brightness or contrast?
++++++++++++++++++++++++++++++++++++++++

You can adjust brightness, contrast and other settings via Extended settings. Open Tools -> Effects and Filters to adjust these settings (Video Effects -> Essential and tick Image adjust). Changes should show up realtime.

How can I keep the brightness and contrast adjustments in memory forever?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Open Tools -> Preferences (set Show Settings to All) and then choosing Video -> Filters -> Image Adjust and set values you want to use (trial and error).

Can I set file specific brightness or contrast?
+++++++++++++++++++++++++++++++++++++++++++++++

Yes, but it isn't that easy. You have to create a VLC shortcut or .bat file with the proper settings. More info can be found from this thread.

How do I set the default deinterlace method?
++++++++++++++++++++++++++++++++++++++++++++

Tools -> Preferences (Show settings: All) Video -> Filters and tick Deinterlacing video filter from under Video output filter module (NOT FROM UNDER Video filter module!). Then Video -> Filters -> Deinterlace and choose the default mode. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled. [1] image showing the Video output filter module part

VLC crashes or gives garbled images when using VMWare or VirtualBox
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This is due to buggy direct3d/video emulation. Use the GDI video output in the preferences to work around this.

Audio Output 
============

Crackles, pops, hisses and other audio anomalies
++++++++++++++++++++++++++++++++++++++++++++++++

If you hear some unwanted audio problems you can try another audio output module to see if that solves the issue (Save and restart VLC after changes). Open Tools -> Preferences (set Show Settings to All) and then choose Audio -> Output module. There are multiple output modules you can use for audio. DirectX and Win32 waveOut should work in most cases. Unfortunately VLC doesn't support ASIO.

Crackles, pops, hisses and other audio anomalies with SPDIF passthrough
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

SPDIF passthrough of Dolby Digital (AC3) and DTS audiotracks don't work with all soundcards. The Win32 waveOut output module should work better with SPDIF.

I don't hear dialog, conversations, etc. while playing 5.1 audio
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Make sure you have selected the proper speaker setup from Windows audio settings or from the soundcard control panel. If you have done so, make sure VLC also has right settings. Audio -> Audio Device to select proper speaker settings during playback.

How do I adjust audio delay?
++++++++++++++++++++++++++++

During playback you can press k or j to adjust audio delay (adjust step is 50 ms).

How can I play external audio track with video?
+++++++++++++++++++++++++++++++++++++++++++++++

Media -> Open (Advanced)... and select the video file and after that tick Show more options and then Play another media synchronously... and select the audio file you want to use. Then when playing the video go to Audio -> Audio Track -> Track 2 to select the second (or whichever it is) audio track (this so-called "Slave-mode" doesn't work correctly).

How do I change my output device in case I have multiple audio devices connected to my PC?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Open Tools -> Preferences (set Show Settings to All) and if you use DirectX, then Audio -> Output modules -> DirectX and Output device. If you use Waveout, then Audio -> Output modules -> WaveOut and Select Audio Device. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

How can I override speaker setup? (e.g. I want to always default to stereo)
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

You can force speaker setup if you use DirectX audio output from Tools -> Preferences (set Show settings to All) Audio -> Output modules -> DirectX and Speaker configuration dropdown menu. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

Why does VLC volume change when I attach my mobile phone to my computer during playback?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

This is a feature of Windows. You can adjust this via Control Panel. Open Sound and go to the Communications tab.

User interface
==============

How can I separate playback controls from the playback window?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Go to Tools -> Preferences (set Show Settings to All) and Video and untick Embedded video selection. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

How can I make skinned interface my default interface?
++++++++++++++++++++++++++++++++++++++++++++++++++++++

Go to Tools -> Preferences (set Show Settings to All) and Interface -> Main interfaces and from the Interface module dropdown box select Skinnable Interface. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled. Image about Skinnable Interface setting

Can I jump to a certain time?
+++++++++++++++++++++++++++++

You can use --start-time from command line when you start VLC. There is also Playback -> Jump to Specific Time (Ctrl+T) option in the GUI.

How can I change UI language?
+++++++++++++++++++++++++++++

You can use Tools -> Preferences and Interface and select the correct language from the Menus language dropdown list. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

Also you can use --language= from command line if you can't navigate with the current language or you want to use batch files/scripts.
For example: vlc --language=en to get English. Other options are auto, en, ar, pt_BR, en_GB, ca, zh_TW, cs, da, nl, fi, fr, gl, ka, de, he, hu, it, ja, ko, ms, oc, fa, pl, pt_PT, ro, ru, zh_CN, sr, sk, sl, es, sv, tr

How can I disable the fullscreen controller?
++++++++++++++++++++++++++++++++++++++++++++

You can use Tools -> Preferences (set Show Settings to All) and Interface -> Main interfaces -> Qt and untick Show a controller in fullscreen mode option. Image about fullscreen controller setting

Why doesn't the time slider show up?
++++++++++++++++++++++++++++++++++++

If you use WindowBlinds or a similar custom skin engine, it usually breaks the QT4 interface in VLC. So either disable that engine with VLC, or change VLC's GUI to something else (like skins2).

How can I disable showing of the filename when video starts?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Go to Tools -> Preferences (set Show Settings to All) and Video and untick Show media title on video. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

How do I disable showing of the Privacy and Network Policies dialog during first VLC startup?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Launch VLC with --no-qt-privacy-ask command-line option.

How do I disable pop up track notification shown in system tray (systray)?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Go to Tools -> Preferences (set Show Settings to All) and Interface -> Main interfaces -> Qt then untick Show notification popup on track change. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

How do I disable the Recent Media part of QT4 interface?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Go to Tools -> Preferences (set Show Settings to All) and Interface -> Main interfaces -> Qt then untick Save the recently played items in the menu. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

How do I disable the blank space at the bottom of QT4 interface? (aka Status bar)
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Untick the View -> Status Bar

How do I change playlist icons to list view or vice versa in the QT4 interface?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Click the icon/button in playlist to toggle between modes.

Codec compatibility
===================

How can I identify what codecs the file uses?
+++++++++++++++++++++++++++++++++++++++++++++

With VLC, Open the file you want and open Tools -> Codec Information.

VLC doesn't identify used codecs correctly or gives "undf" as codec or I want more information about specs
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

There are multiple video and audio identification tools, but one very useful is tool called `Mediainfo <https://mediaarea.net/en/MediaInfo>`_.

H.264/MPEG-4 AVC playback is too slow (or laggy)
++++++++++++++++++++++++++++++++++++++++++++++++

You can speed up the H.264/MPEG-4 AVC playback by disabling loop filter for H.264 decoding. To do this go to Tools -> Preferences and Input / Codecs and in the drop-down box for Skip H.264 in-loop deblocking filter change it to All. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

Also if you have multicore CPU (or one with Intel Hyper-Threading), you can lower the FFMPEG thread count. To do this go to Tools -> Preferences (Show settings: All), then Input / Codecs -> Video codecs -> FFmpeg, then locate Threads, and set it to 4 (or to 2, or to 1). Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

H.264/MPEG-4 AVC or VC-1 playback is full of image errors
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

You can also try to enable/disable GPU decoding, and see if it helps. It can be found from Tools -> Preferences and Input & Codecs and tick/untick Use GPU accelerated decoding. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

Problem with Real Audio or Real Video getting_support
+++++++++++++++++++++++++++++++++++++++++++++++++++++

Most Real Audio and Real Video should work fine with VLC 2.0.0, but if you have a file that doesn't work, then post this in a thread to the support forum.

Why can't VLC use CoreAVC, FFDshow, AC3filter, etc. codecs?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

VLC only uses built-in codecs and as such, it doesn't support VfW or DirectShow APIs for codecs. However, you are free to hack the source and use it, though; for example it is possible to make VLC into a directshow filter.

File and Media Format Compatibility
===================================

Why does some of my DVD movies crash?
+++++++++++++++++++++++++++++++++++++

If you open a DVD with the DVD selection, try using the No DVD menus option (aka dvdsimple).

Some new DVD movies use copy protection mechanisms that VLC doesn't support. It might help if you rip that movie to your hard drive using tools like DVDFab Decrypter or AnyDVD, and then use VLC to play these files back locally from your hard drive.

You may also be able to play these copy protected DVDs by opening the movie initialization file directly. Use the Open File function in VLC and navigate to the VIDEO_TS directory on the DVD, then open the VIDEO_TS.IFO file. Some of the newest copy protection schemes have been found to use tricks that confuse many of the current DVD software programs so they cannot locate this file properly to initiate playback on their own. This method has been found to work with some of the newest DVDs that won't open properly in VLC 1.1.11 using the standard approaches.

DVD movies don't playback smooth
++++++++++++++++++++++++++++++++

One thing that might help is increasing the VLC DVD cache. This can be done from Tools -> Preferences (set Show Settings to All) and Input / Codecs and increasing the value of Disc caching (ms) to maybe 5000 or 20000. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

If DVD files from your hard drive work better, then check that your DVD drive has DMA enabled (if it is a IDE/ATAPI DVD drive).

Can I play DVD files (VOB+IFO) from my hard drive?
++++++++++++++++++++++++++++++++++++++++++++++++++

Yes, you can. Use Media -> Open Disc... and instead of a DVD drive, point to the location of the correct folder by using either Browse... button or the customize field. For example: dvd://"c:\movies\BLOOD DIAMOND\VIDEO_TS"

How do I handle the broken AVI files?
+++++++++++++++++++++++++++++++++++++

Some AVI files may give The AVI file is broken. Seeking not work correctly. Do you want to try to repair (this might take a long time) dialog. Those AVI files have some issues and you can try to fix those files temporarily with VLC or permanently with other tools. If you don't fix those files, seeking won't work correctly and those files may also crash other players.

Can I always perform the same repair action?
++++++++++++++++++++++++++++++++++++++++++++

Yes, you can. This can be done from Tools -> Preferences (set Show Settings to All) and Input / Codecs -> Demuxers -> AVI and select the wanted action from Force index creation dropdown box. Ask is default (it will always ask what you want to do). Always fix tries to always fix AVI files and Never fix always starts the playback without fixing. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

Can I fix those broken AVI files permanently?
+++++++++++++++++++++++++++++++++++++++++++++

Yes. You can try for example `DivFix++ <http://www.divfix.org/>`_ or `Virtualdub <http://www.virtualdub.org/>`_. If you still encounter any problem, read an answer given to a VLC user on our `forum <https://forum.videolan.org/viewtopic.php?f=14&t=45427&p=143688&hilit=virtualdub#p143688>`_ if you encounter any issues.

Can I fix those broken or partially downloaded Matroska/MKV files too?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Yes. You can try `Meteorite <http://www.mkvrepair.com/>`_ for fixing.

Some MP4 or 3GP files don't have audio at all
+++++++++++++++++++++++++++++++++++++++++++++

If those files have AMR audio (usually ones from mobile phones) they might not work with current stable VLC versions.

How do I enable Blu-ray disc playback (for commercially released Blu-rays)
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

You have to download some additional files, `here <http://vlc-bluray.whoknowsmy.name/>`_

Subtitles 
=========

How do I adjust subtitle delay?
+++++++++++++++++++++++++++++++

During playback you can press h or g to adjust subtitle delay (adjust step is 50 ms).

How can I select the right subtitle track?
++++++++++++++++++++++++++++++++++++++++++

If your video has multiple subtitle tracks, you can select the one you would like to see from Video -> Subtitles Track.

Can I disable hardcoded or "burned" subtitles with VLC?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++

No, you can't. 

Can I change font, font size, style or color?
+++++++++++++++++++++++++++++++++++++++++++++

You can with text-based subtitle formats (Subtitles codecs). Go to Tools -> Preferences and Subtitles/OSD and adjust anything you want. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

How can I change the subtitles text encoding?
+++++++++++++++++++++++++++++++++++++++++++++

If you see wrong characters on screen or failed to convert subtitle encoding error message you should try to change Default encoding option which can be found from Tools -> Preferences and Subtitles/OSD. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

General 
=======

How do I reset my VLC settings?
+++++++++++++++++++++++++++++++

If you can start VLC, go to Tools -> Preferences and then click on the Reset Preferences button and Save to reset the existing VLC settings. Remember to restart VLC after that to make sure changes are enabled.

If you can't start VLC, go to %appdata% folder and delete the vlc folder from there (Start -> run and type %appdata%\vlc there and press OK if you can't locate %appdata%).

Also start menu -> VideoLan -> "Reset VLC media preferences ..."

Why does my VLC media player crashe on startup?
+++++++++++++++++++++++++++++++++++++++++++++++

This usually happens because VLC setting files have been corrupted. Resetting VLC settings should fix this.

Can VLC burn CD, DVD, HD DVD or Blu-ray discs?
++++++++++++++++++++++++++++++++++++++++++++++

No, you can't. 

Is VLC legal in all countries?
++++++++++++++++++++++++++++++

Probably not. The DeCSS module might violate DMCA (and similar laws), and some codecs would require licenses for personal/commercial use. There haven't been any court cases related to VLC, but companies should make sure they pay license fees to license holders if they use VLC commercially and use patented formats or codecs.

Can I run multiple VLC instances?
+++++++++++++++++++++++++++++++++

Yes, you can.

How can I make VLC preview my eMule downloads?
++++++++++++++++++++++++++++++++++++++++++++++

Check out this `forum post <https://forum.videolan.org/viewtopic.php?f=14&t=61826#p206451>`_.

How do I specify the folder where the recorded files (via red rec button) will be stored?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Tools → Preferences and Input & Codecs and Record directory or filename. Remember to press Save to save VLC settings and restart VLC after that to make sure changes are enabled.

.. seealso:: :ref:`Get Help <getting_support>` - Find an answer to any question that wasnt answered here.