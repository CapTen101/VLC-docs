.. _doc_android_report_a_bug:

==================
Android Report bug
==================

.. admonition:: Note!

   This page describes how to report Android bugs. (`Other how to pages <https://wiki.videolan.org/VLC_HowTo/>`_)

-------------------------------
Are you sure it's a *true* bug?
-------------------------------

Well, you know the old adage: "*Have you tried turning it off and on again*?" ;)
Don't be mistaken - we believe you but sometimes, it is truly not our fault. So before becoming grumpy, try these steps:

* Restart your Android device, then relaunch VLC.
* Still getting the bug? Try to uninstall and re-install VLC.

The bug is definitely still there? Now you can keep reading this page.

-------------------
What you have to do
-------------------

If you want to help us solve an issue you experience on VLC for Android, we need to know a few things:

* your exact device name (go to **Settings > About Phone > Model Number**).
* your Android version (go to **Settings > About Phone > Android Version**).
* your VLC version (go to **VLC > Options > About**).
* a log file (see below).
* whether the issue occurs only on one media (video or music) or all of them
* location to a sample, a screenshot etc.

If you were asked to do this by a developer from the `VideoLAN forum <https://forum.videolan.org/>`_, then please respond with this information in the same thread.
If not, send us this information at videolan.android@gmail.com.

However, if you are competent enough, feel free to create a report on the `VLC bug tracker <https://trac.videolan.org/vlc/>`_. Please note that any tickets which do not follow the standards for bug reporting will be *closed* systematically.

-------------------------
How to find the log file?
-------------------------

..........................
If VLC for Android crashes
..........................

Normally, when VLC for Android crashes it will leave behind a ``vlc_logcat_<date and some numbers>.log`` file in your **SD card's root**.
You can then retrieve this to your computer using the file transfer mechanism offered by your device (e.g. Mass storage, etc). Or, you can use `OI File Manager <http://www.openintents.org/en/filemanager>`_ (open source file browser) to view and manipulate the file (e.g. move it to a folder where it's uploadable to PC).

Then, send us this ``vlc_logcat_<...>.log`` file.
If you do not find any log in the form of ``vlc_logcat_<...>.log``, then you probably have a native crash. See below for details on native crashes.

.. figure:: /images/support/support_android_report_a_bug.png
   :alt: Log files in your SD card's root
   :align: center
   :scale: 40 %

........................................
Playback issues where VLC does not crash
........................................

If VLC does not crash, you have to manually create a log file.

1. Ensure VLC is completely closed by force-stopping it in Android settings.
2. Start VLC.
3. Go to **Settings → Advanced → Debug** logs (at the very bottom), and tap Start logging. 
4. Go back and play the media file in question and/or try to reproduce the issue.
5. Once you are done playing the file, go back to the **Debug logs** screen. You can find the log in this screen. To retrieve it, copy it to the Android clipboard and paste it on a mail for example.
6. Or dump this log by pressing **Dump Logcat Log** and send the generated file by mail.
7. You can also paste it on any `pastebin <http://pastebin.com/>`_ site or however you wish and send us the link.
8. Press **Stop logging** to end the debugging session and return to normal usage.

And that's it.

.....................
User interface issues
.....................

Go to **Preferences → Advanced debugging → dump** logcat and upload the provided file.

............................
Advanced users or developers
............................

* However, in some cases (such as on certain Huawei phones who use a non-standard implementation of Logcat) you will need access to a computer and enable adb debugging. To do this, first ADB debugging must be enabled - **Settings → Developer options → USB debugging**, or on older phones, **Settings → Applications → Development → USB debugging**. In both cases, ensure that the option is checked.
* An easier approach might be to install `Terminal (a.k.a. Term.apk) <https://github.com/jackpal/Android-Terminal-Emulator/wiki>`_ if you haven't already. Open Terminal and clear the logcat buffer with ``logcat -c``. Then, re-open VLC and try to make it crash. Once it crashes, then re-open Terminal and type in letter-for-letter, case sensitive: 
  ``cd /sdcard && logcat -d > log.txt`` into the terminal, and hit Enter. Pull the file "log.txt" under the SD card to your PC and pastebin.
* The normal developers' approach is to install the `Android SDK <http://developer.android.com/sdk/installing/index.html>`_ and run `adb logcat -d > log.txt`, then pastebin the log.txt.


...............................
Native crashes (advanced stuff)
...............................

Sometimes, you might asked by one of the developers for a **backtrace**, or **native trace**. If so, then please see `AndroidCompile #Native debugging <https://wiki.videolan.org/AndroidCompile/#Native_debugging>`_.
<<<<<<< HEAD


=======
>>>>>>> 29ebae5... toctree warning fixed, support_android_report_a_bug.rst completed
