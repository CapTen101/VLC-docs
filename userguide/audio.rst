#####
Audio
#####

The VLC media player can play several audio formats:
.asf, .avi, .divx, .dv, .mxf, .ogg, .gm, .ps, .ts, .vob, 
and .wmv. It can also convert audio tracks and use several visualizations.

.. note:: The commands in the Audio menu are only enabled when an audio file is being played.

**********************
Playing an audio track
**********************

To play a track, follow the steps below:

1. Select the :menuselection:`Media --> Open File` menu.

.. figure::  /images/userguides/open_file.png
   :align:   center

2. Select an audio file and click on the :guilabel:`Open` button. Immediately after that, the selected track will be played on my VLC.

.. figure::  /images/userguides/audio_windows.png
   :align:   center

***********************************
Enabling and disabling audio tracks
***********************************

On VLC, you have the option to disable and enable a track. 

.. tabs::

   .. tab:: Disable 

        Select the :menuselection:`Audio --> Audio Track` menu and click on the :guilabel:`Disable` option from the dropdown menu to stop the selected track.

   .. tab:: Enable

        To enable the track again, select the designated Track in the :menuselection:`Audio --> Audio Track` menu.

***************
Recording Audio
***************

Recording the audio of any track you are playing is also allowed on VLC. However, the record button used for this is hidden by default. To make the :guilabel:`Disable` button visible, use one of these methods below:

.. tabs::

   .. tab:: Advanced Controls

        Click on :menuselection:`View --> Advanced Controls` to display the advanced toolbar directly above :ref:`Playback Controls <playback_controls>`. 
        This advanced toolbar contains the :guilabel:`Record` button. Once the :guilabel:`Record` button is visible, click it to start recording.

   .. tab:: Customize interface

        Select :menuselection:`Tools --> Customize interface` menu and drag the record button to to any location of your choice in :guilabel:`Line 2`. Once the :guilabel:`Record` button is visible, click it to start recording.

        .. note:: :guilabel:`Line 2` is the default line shown on VLC.


The recording from a shoutcast stream is stored on the default storage folder for videos or music on your computer under a name like :file:`vlc-record-Date-Time-Channel-Track.mp3`
Example: :file:`vlc-record-2011-09-22-10h19m48s-Radio CAFF-Silencio - Arrabal Salvaje.mp3`.

You can automatically cut the stream into tracks by relaying the stream through :program:`Streamripper`, i.e. by directing :program:`StreamRipper` to the :program:`ShoutCast` stream and directing VLC to the relaying port of :program:`StreamRipper` (default http://localhost:8000).

***********
Stereo Mode
***********

This option helps you to listen to audio files in two modes :term:`Stereo` and :term:`Mono`.

To listen to an audio track in either the Stereo or Mono mode:

1. Click on :menuselection:`Media --> Open File or Open Disc` from the dialog box displayed on your screen. 
2. Select an audio file and click on the :guilabel:`Play` button. 
3. Select :menuselection:`Audio --> Audio Device --> Mono` if you want to listen to the audio track in the Mono mode.
4. Select :menuselection:`Audio --> Audio Device --> Stereo` if you want to listen to the audio track in the Stereo mode.

.. figure::  /images/userguides/stereo.png
   :align:   center

***************
Visualize Audio
***************

Visualizations display splashes of colour and geometric shapes and generate animated imagery based on a piece of music. Select the type of visualizations option from the Audio menu to view the effects.
The different visual effects available are:

* :guilabel:`Spectrometer`
* :guilabel:`Scope`
* :guilabel:`Spectrum`
* :guilabel:`VU Meter`
* :guilabel:`Goom`
* :guilabel:`projectM`
* :guilabel:`3D Spectrum`

.. figure::  /images/userguides/visualization.png
   :align:   center
   
To disable visualizations, click on :menuselection:`Visualizations --> Disable` drop down menu.

******************
Maximum VLC Volume
******************

To change the maximum volume in of an audio file, go to :menuselection:`Tools --> Preferences`, select :guilabel:`All` at bottom left corner, then :menuselection:`Interface --> Main interface --> Qt --> Maximum volume displayed`. Then :guilabel:`Save` it and restart VLC.

