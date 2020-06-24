.. _report-bug-desktop:

##############################
 How to Report a Bug - Desktop
##############################

If you find any bugs, or if you experience any crashes, then we would **very much** like to hear about the issue.
Here is some *detailed information* on how to submit useful bug reports. Please try to follow the bugs policy, so we all save time.

----------------------
Is it truly a new bug?
----------------------


It may seem silly, but a large proportion of the submitted bug reports are not really bugs at all, or have been known for months, and/or are already fixed.
To avoid that, please check the following:


Version
^^^^^^^

Are you using the latest version of VLC? Check the latest `releases here <https://www.videolan.org/news.html>`_.
Bug reports on older versions of VLC are likely to be ignored, because changes in newer versions of VLC may have already fixed the issue.

Preferences
^^^^^^^^^^^

*Have you tried resetting your preferences and restarting VLC yet*?

Old preferences and/or incorrect settings are common causes of problems.
See :doc:`Reset Preferences </basic/settings/preferences>` for details on how to delete your preferences. (Uninstalling VLC does not remove its old settings).


Nightly builds
^^^^^^^^^^^^^^

Before you file a new bug, please try a preview development build of our next version on our `nightly <http://nightlies.videolan.org/>`_ build website. The bug may already be fixed in those builds.

New Features
^^^^^^^^^^^^

Some things are simply not yet supported by VLC. We have a `list of things <https://trac.videolan.org/vlc/query?action=view&type=enhancement&order=priority>`_ we would like to implement in the future.
If your suggestion is not on this list, you might want to make a feature request bug on `Trac <https://trac.videolan.org/vlc/>`_.

Closed bugs
^^^^^^^^^^^

Many bugs are already known. Sometimes they are already fixed for the next version of VLC, see the nightly builds section.
Please `search <https://trac.videolan.org/vlc/>`_ the list of known and fixed issues. If you find your issue, see if it is already closed. The page of the issue will then show something like:
*Ticket #87 (Closed: fixed)*



------------
Still a bug?
------------

So you still think you found a bug? Great!

Search
^^^^^^

Search on the `forums <https://forum.videolan.org/>`_ and see if someone else has asked a similar question or has seen a similar bug.
Ask about your problem in the `relevant forum <https://forum.videolan.org/>`_ and make sure to include as much information as possible (see the pointers below). You can also describe your problem on the `relevant mailing list <https://www.videolan.org/support/lists.html>`_.

Enter the bug in the VLC Trac
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

If you are sure that you found a bug and that you have all information needed, you can enter a bug in our `Trac system <https://trac.videolan.org/vlc/>`_.
You will need to register a user account before you can file a new bug (or comment on an existing one). Don't forget to enter a valid e-mail address if you want to receive notifications when your bug is handled.

--------------------
Sending a bug report
--------------------

When you post on the forum, email us, or create a bug report, please provide as much information as possible in your report.
We try to answer all your mails, posts and reports, but there are so many that we simply do not have the time to do so for everyone.
The more sound and concrete details you provide about your issue, the better the chances that we will investigate it fully.


Information to send
^^^^^^^^^^^^^^^^^^^

Please gather the following information and send it along with your report:

1. Your **operating system** and the precise version (include the Linux distribution, or the version of Windows).
2. Your VLC media player version.
3. The **hardware** you use. Make sure to name all the audio and video hardware in question that might be related to VLC's usage.
   For instance: iMac G4 or Pentium4 with GeForce3, with an external USB dolby surround output device.
4. **Complete logs** as those from the messages dialog, **verbosity to 2** (GUI mode) or the -vvv switch (CLI mode).
5. The exact **steps to reproduce** the problem.
   Please be as precise as possible. If you are uncomfortable with words, you may also use screenshots.
6. The reproducibility of the problem: does it occur every time? If not, how often?
7. If applicable, the type (movie, music, subtitle) and the **format** of the file being played. If known, also the codec(s) in the file.
8. If the bug is a crash or lock-up/freeze, the **complete** threaded **symbolic** stack trace of VLC at the time (see also below).
9. If possible, the **video sample** in question:
   If the issue is specific to a certain file, that is always very helpful, if not indispensible. In this case, please upload as much of the file as you can to our `samples server <http://streams.videolan.org/upload/>`_ . 
10. **Email** with a valid reply address, if you are not using trac, so we can get back to you with possible additional questions.

-------------------
Filing a bug report
-------------------

If the problem is a software bug, rather than a support problem, then it is recommended to file a bug report with the listed infos above. Note that a single bug report must describe **exactly one bug**. If there are more than one bug, then as many separate bug reports should be filed.

Bugs with insufficient information may be closed as incomplete (or invalid in the worst cases). VLC developers understand that the requested infos can be difficult to gather or provide. Indeed, producing a stack trace can be complex and time-consuming. And sharing sample files can pose confidentiality, privacy or piracy issues. However as a bug reporter you have to accept that the VLC developers cannot resolve bugs without sufficient infos for analysis.

Also kindly acknowledge that VLC developers are volunteers and hence are not paid for their work. There cannot be any warranty for any kind of timeline regarding resolution of a bug.


Bug severities
^^^^^^^^^^^^^^

========== ================================================================================================================================================
Resolution Description of resolution
========== ================================================================================================================================================
blocker    Impediment to software development, e.g. build breakage on most platforms, systematic crash at startup or when playing any file input.

critical   Impediment to software release, e.g. security issue, crash in most basic and common use cases (i.e. more than 50% of user base), crash at exit.

major      Basic feature not working, e.g. inputs other than file not working, file format or codec not rendered.

normal     Expert feature not working, e.g. stream output problem, specific configuration option. Feature requests.

minor      Problem that can be worked around easily or is really unimportant.

trivial    Typing error. Self-explanatory bugfixes. Inconsequential compiler warnings.
========== ================================================================================================================================================



Bug priorities
^^^^^^^^^^^^^^

If you have a high priority issue, you can provide a patch yourself, or atleast try to resolve it and mentioning what you did on your part. The VideoLAN project and the VLC developers are often not available to attend immediately to bug queries on arrival and cannot satisfy all requests.
Do note that **abuse of "high" and "highest" priorities will only attract ill will**.


Bug resolutions
^^^^^^^^^^^^^^^

All bugs are initially filed in the new, and without a resolution. If/when a bug gets closed, the resolution must be filed. The following resolutions are currently used:


========== =====================================================================================================================================================================================================================================================================================
Resolution Description of resolution
========== =====================================================================================================================================================================================================================================================================================
fixed      The bug has been corrected in a newer version of VLC; the fixed version should be indicated under milestone.

invalid    The bug report is confusing, unintelligible or is not in English. Or the bug describes multiple separate issues in a single report. Or for any other reasons, the VLC developers are unable to analyze the bug report.

wontfix    The VLC developers believe that the problem should not be addressed because it would cause more problems that it would solve, or is otherwise a bad idea. Alternatively, the VLC developers believe that the problem can fundamentally not be addressed, even if the concern is valid.

duplicate  A report for the same problem has already been filed earlier. There is no need to keep multiple reports for a single problem. This does not necessarily mean that the bug is fixed yet.

worksforme In the specified circumstances, the VLC developers are not able to reproduce the described problem, or the described problem is actually the intended behaviour.

notvlc     The reported problem seems like it might be real. However its root cause does not lie within the VLC code base, and therefore the VLC developers cannot fix it. The bug should probably be reported **somewhere else**.

incomplete The bug report does not contain enough infos for the VLC developers to analyze the bug. *See also above*.
========== =====================================================================================================================================================================================================================================================================================



Additional remarks
^^^^^^^^^^^^^^^^^^

If you can, or if it applies to you try to take into account the following:

.. tabs::

   .. tab:: Windows users

      You can send along the last VLC crash log. The file is called `Crashdump <https://wiki.videolan.org/Crashdump/>`_. If you are familiar with **gdb**, you can use it to give us more detailed crash info. `Tutorial for GDB with Win32 <https://wiki.videolan.org/Tutorial_for_gdb_debug_under_Win32/>`_.
      If your bug is a crash, please try to reproduce and report using a `-debug build <http://nightlies.videolan.org/build/win32/last/>`_.

      If your bug is a crash, please try to reproduce and report using a ``-debug`` build.

   .. tab:: Mac OSX users

      Please send along the last part of ``~/Library/Logs/CrashReporter/VLC.crash.log`` if you can. Many crashes of VLC are logged in this file. You can open the file from VLC by going to the menu Window and choosing Messages. Now click the :guilabel:`Open CrashLog` button.

      Please make sure you send the last crash (at the bottom of the file) and that it actually is the crash you described. The Date/Time field reports the time of the crash so that way you can check if it is the crash you experienced, or an earlier one.


Compile problems
^^^^^^^^^^^^^^^^

Make sure you have read the `Developers Corner <https://wiki.videolan.org/Developers_Corner/>`_. Give the full log showing the problem:

.. code:: console
          
          ./configure <options> > logfile.txt 2>&1
          make 2>&1 > logfile.txt 2>&1


* When dealing with a ./configure issue, please provide the generated ``config.log`` file.
* Your compiler brand and version may be relevant here as well.