#####################################
 How to make VLC your default player
#####################################

This page will describe how VLC Media Player can be made the default audio/video player in Windows (10, Vista/7/8, XP), macOS, and Fedora.

********
Windows
********

===========
Windows 10
===========

For making VLC the default player for all kinds of audio/video files:

1. Go to settings. (Press Windows key, type "settings", and click on :guilabel:`Settings`).
2. Click on :guilabel:`Apps`.
3. Click on :guilabel:`Default Apps`.
4. For audio files, make VLC the default player for :menuselection:`Music Player`.
5. For video files, make VLC the default player for :menuselection:`Video Player`.

.. figure::  /images/advanced/player/vlc_as_default_player_windows_10_all.png
   :align:   center

   VLC is now the default Music and Video player. 

For making VLC the default player for a specific kind of media file:

1. Right click on a file with the extension that should open in VLC by default.
2. Go to :menuselection:`Open with -> Choose another app`.
3. Select :guilabel:`VLC Media Player` from the options.
4. Check the box :guilabel:`Always use this app to open <file extension> files`.

Where ``<file extension>`` is replaced by the extension of the kind of file selected.

.. figure::  /images/advanced/player/vlc_as_default_player_windows_10_specific.png
   :align:   center

====================
Windows Vista, 7, 8
====================

To make VLC the default player, follow these steps:

1. Open VLC and go to :menuselection:`Tools -> Preferences`. (Keyboard shortcut is `Ctrl+P`.)
2. In the :guilabel:`Interface` tab, scroll down to :menuselection:`Operating System Intergration`.
3. Click on the :guilabel:`Set up associations...` button.

.. figure::  /images/advanced/player/vlc_as_default_player_windows_vista(1).png
   :align:   center

4. A dialog box will appear with the list of various audio/video file formats.

	+ If you want some particular media files to open through VLC, check the boxes associated to those file types.
	+ If you want to set VLC the default media player for all kind of files, check the :guilabel:`Select All` box.

5. Click of the :guilabel:`Save` button.

.. figure::  /images/advanced/player/vlc_as_default_player_windows_vista(2).png
   :align:   center




===========
Windows XP
===========

The simplest way to set VLC as the default player in Windows XP is during installation. During the setup, VLC asks if the you want certain media files to be opened in VLC by default. All the file types are checked by default.

In case VLC is installed but is not the default player, the best way to set it is by uninstalling and reinstalling VLC. 

+ To keep your customisations, make sure to `uncheck` the :guilabel:`Delete preferences and cache` while uninstalling.  
+ While reinstalling VLC, keep the boxes of those media files checked which you wish would open in VLC by default. 


*******
macOS
*******

To set VLC as the default player for a specific kind of media file:

1. Right-click on a file with the extension that you want to open with VLC.
2. Click on :guilabel:`Get Info`.
3. In the :guilabel:`Open with` section, select VLC from the drop-down menu.
4. To make this change for all files of this type, click the :guilabel:`Change All` button.

For optical media like CDs/DVDs,

1. Go to :menuselection:`Apple -> System Preferences`.
2. Choose "CDs/DVDs" in the :guilabel:`Hardware section`.
3. Choose :guilabel:`Other Application` from the respective popup menu.
4. Choose VLC from the list.



******
Linux
******


=======
Fedora
=======

To make VLC the default player for all audio/video media files:

1. Go to :guilabel:`Activity`. (Keyboard shortcut is pressing the Super Key.)
2. Type ``Default Applications`` in the search bar.
3. Select :menuselection:`Settings -> Default Applications`.
4. For audio files, select ``VLC media player`` under :menuselection:`Music`.
5. For video files, select ``VLC media player`` under :menuselection:`Video`.

.. figure::  /images/advanced/player/vlc_as_default_player_fedora_all_kinds.png
   :align:   center

   VLC is now the default player for all kinds of audio and video files.

To make VLC the default player for a specific kind of media file, we need to associate VLC with that type of media file. There are three ways to do this.

^^^^^^^^^^^^^^^^^^^^^
Method 1 (GUI based)
^^^^^^^^^^^^^^^^^^^^^

1. Right click on a file with the extension that you want to open with VLC.
2. Click on :guilabel:`Properties`.
3. Select the :guilabel:`Open with` tab.
4. Select ``VLC Media Player`` from the list of options.
5. Click on the button :guilabel:`Set as default`.

.. figure::  /images/advanced/player/vlc_as_default_player_fedora_specific_method1.png
   :align:   center

   All ".mp3" files will now play in VLC media player by default.

^^^^^^^^^^^^^^^^^^^^^
Method 2 (CLI based)
^^^^^^^^^^^^^^^^^^^^^

Fedora stores system defaults in ``/usr/share/applications/gnome-mimeapps.list`` and ``/usr/share/applications/mimeapps.list``. To override these defaults, we need to make an entry in ``~/.config/mimeapps.list``, which stores the user preference for default apps while opening files.

To make VLC the default player for a kind of media file (".mp3" files for example), we need to associate the desktop entry of VLC (``vlc.desktop``) with the MIME type of ".mp3" (``audio/mpeg``). 

To do this using the "xdg-mime" command:

1. Open terminal.
2. Run the following code:

.. code-block::

	xdg-mime default vlc.desktop audio/mpeg

This will add the desktop entry ``audio/mpeg=vlc.desktop`` in both, the ``[Default Applications]`` and ``[Added Associations]`` groups in the ``~/.config/mimeapps.list`` file.

To check if "audio/mpeg" is associated with "vlc.desktop", run the following code in the terminal:

.. code-block::

	XDG_UTILS_DEBUG_LEVEL=2 xdg-mime query default audio/mpeg

The first part of this above code tells which file(s) were queried, while the second part tells which app will be invoked when opening a ".mp3" file. The output should be:

.. code-block::

	Checking /home/<username>/.config/mimeapps.list
	vlc.desktop

Where ``<username>`` is replaced by your user name.

.. figure::  /images/advanced/player/vlc_as_default_player_fedora_specific_method2.png
   :align:   center

^^^^^^^^^^^^^^^^^^^^^
Method 3 (Manual)
^^^^^^^^^^^^^^^^^^^^^

Instead of using the "xdg-mime" command, the entry can be manually made in the ``~/.config/mimeapps.list`` file. To do this, follow these steps:

1. Go to home directory.
2. Click on the hamburger menu and check the :guilabel:`Show hidden files` box.

.. figure::  /images/advanced/player/vlc_as_default_player_fedora_specific_method3(1).png
   :align:   center

   The hamburger menu is located at the top-right hand side.

3. Open the ``.config`` folder.
4. If ``mimeapps.list`` exists,

	+ Open the file in any editor.
	+ Add ``audio/mpeg=vlc.desktop`` in the ``[Default Applications]`` group.
	+ Add ``audio/mpeg=vlc.desktop;`` in the ``[Added Associations]`` group.

5. Otherwise, create a file named ``mimeapps.list`` and paste the following code:

.. code-block::

	[Default Applications]
	audio/mpeg=vlc.desktop

	[Added Associations]
	audio/mpeg=vlc.desktop;

6. Save the file.

.. figure::  /images/advanced/player/vlc_as_default_player_fedora_specific_method3(2).png
   :align:   center

   All ".mp3" files will now open with VLC by default.

**Note**: In case there are two entries under ``[Default Applications]`` group for the same kind of media file, the one on the top is considered. 

**Note 2**: Certain media files can have more than one MIME types (for example the MIME type of ".mp3" is both ``audio/mpeg`` and ``audio/mp3``). Using anyone will do the job.