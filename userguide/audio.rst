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

1. Select Open File in the Media menu.
2. Select an audio file and click on the Play button. Immediately after that, the selected track will be played on my VLC.

***********************************
Enabling and disabling audio tracks
***********************************

On VLC, you have the option to disable and enable a track. 

.. tabs::

   .. tab:: Disable 

        Select **Audio Track** from the **Audio menu** and click on the **Disable** option from the dropdown menu to stop the selected track.

   .. tab:: Enable

        To enable the track again, select the designated Track option in the **Audio Track** from the **Audio menu**.

***************
Recording Audio
***************

Recording the audio of any track you are playing is also allowed on VLC. However, the record button used for this is hidden by default.

To make the Disable button visible, use one of these methods below:

.. tabs::

   .. tab:: Advanced Controls

        In the **View menu**, click on **Advanced Controls** to display the advanced toolbar directly above :ref:`Playback Controls <playback_controls>`. 
        This advanced toolbar contains the Record button. Once the Record button is visible, click it to start recording.

   .. tab:: Customize interface

        Select **Customize interface** in the **Tools menu** and drag the record button to to any location of your choice in Line 2. Once the Record button is visible, click it to start recording.

        .. note:: Line 2 is the default line shown on VLC.


The recording from a shoutcast stream is stored on the default storage folder for videos or music on your computer under a name like *vlc-record-Date-Time-Channel-Track.mp3*
Example: "vlc-record-2011-09-22-10h19m48s-Radio CAFF-Silencio - Arrabal Salvaje.mp3". 

You can automatically cut the stream into tracks by relaying the stream through Streamripper, i.e. by directing StreamRipper to the ShoutCast stream and directing VLC to the relaying port of StreamRipper (default http://localhost:8000).

***********
Stereo Mode
***********

This option helps you to listen to audio files in two modes: stereo and mono.

To listen to an audio track in either the Stereo or Mono mode:

1. Click on the **Media** menu and select Open File or Open Disc from the dialog box displayed on your screen. 
2. Select an audio file and click on the Play button. 
3. Select Mono in Audio Device from the Audio menu if you want to listen to the audio track in the Mono mode. 
4. Select Stereo in Audio Device from the Audio menu if you want to listen to the audio track in the Stereo mode.

**Definition of Terms**

* Stereo - refers to the reproduction of the sound in two or more independent audio channels using more than one speaker. If you use this option, you would feel as though the sound is played from all the directions. You can observe this in a regular home theatre with 5.1 or 6.1 speakers.
* Mono - refers to monaural sound that uses a single channel for sound reproduction.
* Left - You can observe this in a regular audio player with 2.1 speakers. If you select the Left option, the music is played only in the left speaker. The speaker on your right is automatically switched OFF.
* Right - If you select the Right option, the music is played only in the speaker on your right side. The speaker on your left is automatically switched OFF.
* Reverse Stereo – There are several applications that are used to reverse the stereo whereas VLC has an in-built feature to reverse the stereo. This option is useful if you want the audio to play in tandem with the video. You can use the Reverse Stereo option if you want to deliberately change the audio output.
  Imagine that you are watching a video. In the video, a person walks on the left side but the sound is produced on the right speaker. You can correct this by selecting the Reverse Stereo option in VLC. Select the Reverse Stereo option and play the same scene in the video and observe the difference.

You can observe this with 2.1, 5.1, 6.1 and 8.1 speakers.

***************
Visualize Audio
***************

Visualizations display splashes of colour and geometric shapes and generate animated imagery based on a piece of music.

The different visual effects available are Spectrometer, Scope, Spectrum, VU Meter and Goom. This menu item can also be used to disable a visualization.

Select an option under the Visualizations option from the Audio menu to view the effects. The selected visualization is then played.
To disable visualizations, select Disable under Visualizations from the Audio menu. The visualization is then disabled.
Spectrum visualization on VLC.

******************
Maximum VLC Volume
******************

To change the maximum volume in % that VLC should use, go to Tools → Preferences (select All at bottom left corner) → Interface → Main interfaces → Qt → Maximum volume displayed.

Save it and restart VLC.