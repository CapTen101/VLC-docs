.. _report-bug-android:

##############################
 How to Report a Bug - Android
##############################

-------------------------------
Are you sure it's a true bug?
-------------------------------

Well, you know the old adage: "*Have you tried turning it off and on again*?" ;)
Don't be mistaken - we believe you but sometimes, it is truly not our fault. So before becoming grumpy, try these steps:

* Restart your Android device, then relaunch VLC.
* Still getting the bug? Try to uninstall and re-install VLC.

The bug is definitely still there? Now you can keep reading this page.

-------------------
What you have to do
-------------------

In order for us to investigate the issue on VLC for Android, we need the following information:

* The exact device name (can be found :menuselection:`Settings --> About Phone --> Model Number`).
* The Android version (can be found :menuselection:`Settings > About Phone > Android Version`).
* The VLC version (can be found :menuselection:`VLC > Options > About`).
* A log file (see :ref:`below section <finding-log-file>`).
* Whether the issue occurs only on one media (video or music) or all of them.
* Location to a sample, a screenshot etc.
* Steps to reproduce the bug as we'll need them once we start to work on fixing the bug.

If you were asked to do this by a developer from the `VideoLAN forum <https://forum.videolan.org/>`_, then please respond with this information in the same thread.
If not, send us this information at videolan.android@gmail.com.

However, if you are confident enough about your bug being a new one, feel free to create a report on the `VLC bug tracker <https://code.videolan.org/videolan/vlc-android/-/issues>`_. 

.. admonition:: Note

   Kindly use the **bug** template while creating an issue.
   Please note that any tickets which do not follow the standards for bug reporting will be *closed* systematically.


.. _finding-log-file:

-------------------------
How to find the log file?
-------------------------

.....................
If VLC Player crashes
.....................

Normally, when VLC crashes it will leave behind a ``vlc_logcat_<date and some numbers>.log`` file in your **Device's root directory**.

.. _send-log-file:

If you do not find any log in the form of ``vlc_logcat_<...>.log``, then you probably have a **Native crash**. See :ref:`below section <native-crash-log-file>` for details on native crashes.

Then, send us this ``vlc_logcat_<...>.log`` file.


.. figure:: /images/support/support_android_report_a_bug.png
   :alt: Log files in your SD card's root
   :align: center
   :scale: 50 %

........................................
Playback issues where VLC does not crash
........................................

If VLC does not crash, you have to manually create a log file.

1. Ensure VLC is completely closed by force-stopping it in Android settings.
2. Start VLC.
3. Go to :menuselection:`Settings --> Advanced --> Debug Logs` (at the very bottom), and tap Start logging. 
4. Go back and play the media file in question and/or try to reproduce the issue.
5. Once you are done playing the file, go back to the **Debug logs** screen. You can find the log in this screen.
6. Save it to storage by clicking on :guilabel:`DUMP LOGCAT LOG` button. Then follow the asme :ref:`steps as above <send-log-file>` for sending the file to us.
7. You can also paste it on `pastebin <http://pastebin.com/>`_ site and send us the link.
8. Remember to press :guilabel:`STOP LOGGING` to end the debugging session and return to normal usage.

.....................
User Interface issues
.....................

Take a screenshot of the device's screen depicting the issue with the User Interface and follow the same steps to send it to us.


............................
Advanced users or developers
............................

* However, in some cases you will need **access to a computer** and **enable adb debugging**. To do this, first ADB debugging must be enabled: 

.. tabs::

   .. tab:: On Newer android version devices

      :menuselection:`Settings --> Developer options --> USB debugging`

   .. tab:: Or on older phones

      :menuselection:`Settings --> Applications --> Development --> USB debugging`


* The normal developers' approach is to install the `Android SDK <http://developer.android.com/sdk/installing/index.html>`_ and run in shell:

  .. code:: console
  
     adb logcat -d > log.txt
     

  and then pastebin the ``log.txt``.

.. _native-crash-log-file:

...............................
Native crashes (advanced stuff)
...............................

Sometimes, you might asked by one of the developers for a **backtrace**, or **native trace**. If so, then please see `AndroidCompile #Native debugging <https://wiki.videolan.org/AndroidCompile/#Native_debugging>`_.
