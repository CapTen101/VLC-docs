.. _vlc_media_player:

****************
VLC Media Player
****************

Find all frequently asked questions by VLC users below;

Does VLC support DVDs from all regions?
+++++++++++++++++++++++++++++++++++++++

This mostly depends on your DVD drive. Testing it is usually the quickest way to find out. The problem is that a lot of newer drives are RPC2 drives these days. Some of these drives don't allow raw access to the drive untill the drive firmware has done a regioncheck. VLC uses libdvdcss and it needs raw access to the DVD drive to crack the encryption key. So with those drives it is impossible to circumvent the region protection. (This goes for all software. You will need to flash your drives firmware, but sometimes there is no alternate firmware available for your drive). On other RPC2 drives that do allow raw access, it might take VLC a long time to crack the key. So just pop the disc in your drive and try it out, while you get a coffee. RPC1 drives should 'always' work regardless of the regioncode.

Where does VLC store its config file?
+++++++++++++++++++++++++++++++++++++

Currently, a config file is created on a per user basis (there is no global configuration file). If you modify the available options in VLC and save the new configuration, then a configuration file will be created in your user directory. The precise location of this file depends on the Operating System you are running:

.. tabs::

   .. tab:: Linux/Unix

        * ``$(HOME)/.config/vlc/vlcrc`` (v0.9.0 and above)
        * ``$(HOME)/.vlc/vlcrc`` (v0.8 and older)

   .. tab:: macOS

        * ``HOME/Library/Preferences/org.videolan.vlc``
        * ``HOME/Library/Preferences/VLC`` (v0.9 and older)

   .. tab:: Windows

        * 95/98/ME: ``C:\Windows\Application Data\vlc\vlcrc``
        * 2000/XP: ``C:\Documents and Settings\%username%\Application Data\vlc\vlcrc``
        * Vista/7: ``C:\Users\%username%\Application Data\vlc\vlcrc``
        * BeOS: ``config/settings/vlcrc``


Videos are too dark!
++++++++++++++++++++

Often this is caused by video hardware overlay problems:

    * If it is only one video then use the **Settings** menu, option **Extended GUI** and try to increase the Gamma value in the **Video** tab.
    * Check your video card settings and turn off hardware video overlay. If the videos now play with proper lighting, then deinstalling and reinstalling the video drivers might help.

I cannot read DVDs!
+++++++++++++++++++

Here are a few things to check:

    * If you are on Linux/Unix, did you install the ``libdvdcss`` package?
    * Do you have write access to your DVD device? For instance, from the console: ``# chmod 666 /dev/dvd`` where **/dev/dvd** is the device corresponding to your DVD drive.

Video is choppy
+++++++++++++++

Your system might be too slow to decode all pictures. It might be that your CPU basically is not fast enough. It can also be that the subsystem is misconfigured/misdriven, this happens for example under Redhat Linux. Here are some elements to improve speed:

    * Turn on DMA on your DVD device, for instance:
        * Under Linux: ``# hdparm -d1 /dev/dvd``

        * Under Windows, go to the System section of the control panel, and go to the Hardware manager (it is sometimes in a separate tab, and sometimes, you have to go to the Advanced tab. Then, righ-click on your DVD player, and check the DMA checkbox.

    * Upgrade to the latest driver for your video board.

    * Stop other running applications.

    * Try disabling framedropping. Framedropping allows VLC not to decode some pictures when the CPU is overloaded, but can result in choppier playback under certain conditions. Framedropping behaviour can be configured in the Video preferences of VLC.

Audio and video are out of sync!
++++++++++++++++++++++++++++++++

Try using another audio output plugin and, under Unix, kill ``esd``, ``artsd`` or ``pulseaudio`` if they are running. If the problem is due to the input file, have a look at the **Audio desynchronisation compensation** option.

Why is my VLC crashing?
+++++++++++++++++++++++

Increase the verbosity level (either in the preferences or with a ``-vv`` command line option) and look at the debug messages (in the terminal or in the Messages window).

If you are convinced that it is a bug in VLC, have a look at the `bug reporting page <https://wiki.videolan.org/Report_bugs>`_.

How can I take screenshots?
+++++++++++++++++++++++++++

To take a snapshot of the video displayed by VLC, you just need to press the pre-defined snapshot hotkey:

    * Windows/Linux/Unix: **Ctrl + Alt + S**

    * Mac OS X: **Command + Alt + S**

To change it, go to Preferences → Interface → Hotkeys settings, check Advanced options, and set Take video snapshot. You can also take a snaphot via the menu Video → Snapshot. To change the snapshot format or directory, go to Preferences → Video.

Where are my screenshots?
+++++++++++++++++++++++++

If you haven't changed the snapshot directory in your preferences, your screenshots should go to:

    * Windows: ``My Documents\My Pictures\``
    
    * Linux/Unix: ``$(HOME)/.vlc/``

    * macOS: ``Pictures``

To change it, go to Preferences → Video → Video snapshot directory.

Why is my file not working on VLC?
++++++++++++++++++++++++++++++++++

Are you sure VLC supports the file? Try checking the `features page <https://www.videolan.org/vlc/features.html>`_. If it supported and you compiled VLC yourself, check if you have downloaded and installed all the codecs correctly. If it is not supported, then you are out of luck for now.

Why isn't VLC displaying all subtitles?
+++++++++++++++++++++++++++++++++++++++

If VLC has autodetected your subtitles file, or if you opened it manually, but VLC only displays some subtitles from time to time, you will need to change the subtitles file encoding.
To do this, go to **Tools** → **Preferences** → **Subtitles/OSD**, and select the right encoding format for your PC in the dropdown menu and click **Save**.


Are there skins with a full screen controller?
++++++++++++++++++++++++++++++++++++++++++++++

Full screen controllers in skins are supported since VLC 1.1. But apart from the default skin coming with VLC not many other skins have this feature.

How to enable Always on Top feature on VLC?
+++++++++++++++++++++++++++++++++++++++++++

To enable Always on Top feature you may:

    * From menu bar go to :menuselection:`View --> Always on top`  

    .. figure:: /images/support/faq/vlcmediaplayer_alwaysontop.jpg
       :align:  center 
       
    * Or Right click on the video then :menuselection:`View --> Always on top` 

    .. figure:: /images/support/faq/vlcmediaplayer_alwaysontop_right.jpg
       :align:  center
    

Cannot play youtube videos on VLC Media Player - Fix
++++++++++++++++++++++++++++++++++++++++++++++++++++


What causes the problem ?
-------------------------

Due to changes in transmission protocols of Youtube, some files become obsolete and VLC is unable to stream youtube videos.

How to fix the problem ?
------------------------

Method 1
""""""""

Be sure you have the latest version of VLC. To do this, follow :ref:`these instructions <setup>`. If you already have the latest version, you can try the :ref:`Method 2`.

.. _Method 2:

Method 2
""""""""

Follow these steps :

    * Download the **youtube.lua** file by clicking on `this link <https://code.videolan.org/videolan/vlc/-/raw/master/share/lua/playlist/youtube.lua?inline=false>`_.
    
    .. figure:: /images/support/faq/vlcmediaplayer_youtube_fix_download_image.png

    * Rename the downloaded file to **youtube.lua** if it is not (may happen with google chrome).

    .. figure:: /images/support/faq/vlcmediaplayer_youtube_fix_rename.png

    * Close VLC Media player if it is open. 
    * Now go to one of these location, depending on your operating system :


    .. tabs::

       .. tab:: Windows

            * **Windows 64-bit**: :file:`C:\\Program Files (x86)\\VideoLAN\\VLC\\lua\\playlist\\`
            * **Windows 32-bit**: :file:`C:\\Program Files\\VideoLAN\\VLC\\lua\\playlist\\`

       .. tab:: Mac

            * **Mac**: :file:`/Applications/VLC.app/Contents/MacOS/share/lua/playlist/`

       .. tab:: Linux

            * **64-bit Linux**: :file:`/usr/lib64/vlc/lua/playlist/`
            * **32-bit Linux**: :file:`/usr/lib/vlc/lua/playlist/`


    .. figure:: /images/support/faq/vlcmediaplayer_youtube_fix_directory_image.png

    * If any **youtube.luac** and/or **youtube.lua** file already exists, delete it.
    * Paste the file you downloaded - **youtube.lua** in this location.

Voila, The issue will go away and you can now watch your favourite youtube videos on VLC itself!

       
.. seealso:: :ref:`Get Help <getting_support>` - Find an answer to any question that wasnt answered here.
