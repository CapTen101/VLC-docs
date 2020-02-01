.. _faq_macos:

***********************
FAQs about VLC on macOS
***********************

Can I run VLC on Mac OS 9?
++++++++++++++++++++++++++

VLC will not work on mac OS 9, and probably never will. However, VLC is well supported on Mac OS X .

Does VLC run on my Mac?
+++++++++++++++++++++++
Yes, there is a VLC version for any Mac made since 2001. However, the details depend on your macOS version. The current version of VLC requires Mac OS X 10.7 Lion and will run on all subsequent releases published in the last nine years (so: Mountain Lion, Mavericks, Yosemite, El Capitoan, Sierra, High Sierra, Mojave and Catalina).

The following table details the supported versions:
    +-----------------+-----------------+
    | macOS version   | VLC version     |
    +=================+=================+
    | 9               | none, see above.|
    +-----------------+-----------------+
    | 10.0 & 10.1     | 0.7.0           |
    +-----------------+-----------------+
    | 10.2            | 0.8.4a          |
    +-----------------+-----------------+
    | 10.3.9          | 0.8.6i          |
    +-----------------+-----------------+
    | 10.4.7 or later | 0.9.10          |
    +-----------------+-----------------+
    | 10.5            | 2.0.10          |
    +-----------------+-----------------+
    | 10.6            | 2.2.8           |
    +-----------------+-----------------+
    | 10.7 or later   | latest version  |
    +-----------------+-----------------+

Where can I find the web browser plugin?
++++++++++++++++++++++++++++++++++++++++
All major web browser vendors removed support for plugins, so the development of the VLC plugin was stopped. The last version was 3.0.4 and is still `available for download <https://get.videolan.org/vlc/3.0.4/macosx/VLC-webplugin-3.0.4.dmg>` for outdated web browsers. Note that both the web browsers supporting it and the VLC plugin itself are prone to known security issues and should no longer be used.

What should I do if the VLC media player on my PC bounces in the Dock and quits?
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Please check whether you're using a VLC release which is able to run on your version of Mac OS X. If it fits, run the "Remove Preferences" script provided on VLC's disk-image or delete both a folder called "VLC" and a file called org.videolan.vlc.plist in ``~/Library/Preferences`` (your personal preferences folder).

I am on Mac OS 9. Which version of VLC can I run?
+++++++++++++++++++++++++++++++++++++++++++++++++

From the download page notes: "There is not, and there will never be, a version for Mac OS 9." Kindly download vlc for Mac OS X from our `main website <http://www.videolan.org/vlc/download-macosx.html>`_.

How do you tell Apple's DVDPlayer not to start automatically when you insert a DVD?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Get to Mac OS X global system preferences, open up the "CDs & DVDs" section in the "Hardware" category, add VLC to the list of apps next to "When you insert a video DVD" and select it afterwards.

.. note:: Setting up VLC for Audio CD playback is possible this way as well.

Why won't VLC play DVDs from a region other than what my drive is set to?
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Many people try to use VLC to play DVDs from regions their drive is not set to. However, the DVD drives on most new Macs have region lockout on the hardware level, so VLC will not necessarily be able to play discs from multiple regions. You may be able to play the disc by opening it as a **Video_TS folder** instead of a **DVD**, or by changing the method used by **libdvdccss** to **decrypt DVDs**. 

In order to do this, go to **Tools** -> **Preferences** -> **Input/Codecs** -> **Access Modules** -> **DVD without menus** -> **Method used by libdvdcss for decryption** . 

If you play a lot of DVDs from different regions your best option is to buy a USB or Firewire external drive that you can set to the region you require.

.. seealso:: :ref:`Get Help <getting_support>` - Find an answer to any question that wasnt answered here.
