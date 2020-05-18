###############################
Recording what your are playing
###############################

You can record the audio or video of any content you are playing with VLC, by using the :guilabel:`Record` button.

.. _Using the Record button:

*****************
The Record button
*****************

To use the :guilabel:`Record` button:

- In the :guilabel:`Playback` menu, click on the :guilabel:`Record` |record| button to start the recording,
- Click again on the :guilabel:`Record` |record| button to stop the recording,
- you can also stop the recording by clicking the :guilabel:`Stop` button.

.. |record| image:: /images/basic/recording/playing_record_button.png
   :align: middle
   :width: 12

.. figure::  /images/basic/recording/playing_record.png
   :align:   center

The recording is stored on the default storage folder for videos or music on your computer under a name like :file:`vlc-record-Date-Time-Channel-Track.extension`.

Example: :file:`vlc-record-2011-09-22-10h19m48s-Radio CAFF-Silencio - Arrabal Salvaje.mp3`.

You can automatically cut the stream into tracks by relaying the stream through :program:`Streamripper`, i.e. by directing :program:`StreamRipper` to the :program:`ShoutCast` stream and directing VLC to the relaying port of :program:`StreamRipper` (default http://localhost:8000).

******************************
Make the Record button visible
******************************

The record button is not easily accessible by default, but you can make permanently visible. To do that, use one of these methods below:

.. tabs::

   .. tab:: Advanced Controls

        Click on :menuselection:`View --> Advanced Controls` to display the advanced toolbar directly above :ref:`Playback Controls <playback_controls>`. 
        This advanced toolbar contains the :guilabel:`Record` button. Once the :guilabel:`Record` button is visible, click it to start recording.

        .. figure::  /images/basic/recording/playing_advanced_controls.png
           :align:   center

   .. tab:: Customize interface

        Select :menuselection:`Tools --> Customize interface` menu and drag the record button to to any location of your choice in :guilabel:`Line 2`. Once the :guilabel:`Record` button is visible, click it to sart recording.

        .. note:: :guilabel:`Line 2` is the default line shown on VLC.


*****************************
Choose your recordings folder
*****************************

You can modify the folder used to store your recordings. To do that:

1. Select :menuselection:`Tools --> Preferences` or press :kbd:`Ctrl+P`.

.. figure::  /images/basic/recording/playing_set_preference.png
   :align:   center

2. Click :guilabel:`Input/Codecs`, under :guilabel:`Files` click :guilabel:`Browse...` to select a location for your recordings.

.. figure::  /images/basic/recording/playing_set_location.png
   :align:   center

.. figure::  /images/basic/recording/playing_select_folder.png
   :align:   center
   
3. Click on :guilabel:`Save`.

.. figure::  /images/basic/recording/playing_save.png
   :align:   center

  
