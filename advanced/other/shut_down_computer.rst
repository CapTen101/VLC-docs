
========================================================
How To Shut down the computer at the end of the playlist
========================================================

------------
General idea
------------

It is not a feature included in VLC media player but small scripts can do it for you upon quitting VLC.

------------
Quitting VLC
------------

* VLC media player can exit once all items have finished playing.
* This can done by enabling :guilabel:`Play and exit` in the Playlist section under :ref:`preferences`.

.. tabs::

   .. tab:: Windows

      .. figure:: /images/advanced/Other_Play_and_exit_and_shut_down_computer.gif
         :align: center
         :scale: 60 %
   
   .. tab :: Ubuntu 18.04

      .. figure:: /images/advanced/Other_play_and_exit_and_shutdown_Linux.png
         :align: center
         :scale: 60 %


* Alternatively, you can quit VLC media player after playback is finished, by adding the following to the end of the playlist: ``vlc://quit``
     

--------
Shutdown
--------

Windows
^^^^^^^

Follow one of the below methods if you are a Windows user:

.. tabs::

   .. tab:: BAT file

      1. Create a new file with extension ``.BAT`` [use notepad] and paste in the contents from below.

      .. code:: console

               START /WAIT C:\"Program Files"\VideoLAN\VLC\vlc.exe %* vlc://quit
               shutdown -s -t 60

      2. Use VLC to create/save playlist with desired content.
      3. Drag saved playlist icon on top of .bat file

      The batch file will launch VLC and load the playlist. It will wait for the playlist to finish playing VLC will quit Batch will continue processing and system will be shutdown in 60 seconds.

   .. tab:: VBScript

      1. Make a ``.vbs`` file, copy in the code below and save.
      2. Drag and drop files onto the script file or double click the script to start it up. Supports avi, mp4, mov, wmv and 3gp files.
      3. Note: Change line 6 to TRUE to force quit all other applications.

      .. figure:: /images/advanced/Other_VLC_Auto_Shutdown.png
         :align: center
         :scale: 70%

      By `eyehawk78`, posted `on the forum here <http://forum.videolan.org/viewtopic.php?f=16&t=70391>`_

      .. code:: VBScript

                  Dim oShell, FSO, FileData, vlc_path, video_dir, user, programs
                  Dim files, seconds

                  force_shutdown = FALSE 'Set to true to force quit all other applications set to false otherwise

                  Function SelectFile()
                     Set file = CreateObject("UserAccounts.CommonDialog")
                     file.Filter = "Video Files (avi, mp4, mov, wmv, 3gp)|*.avi;*.mp4;*.mov;*.wmv;*.3gp;"
                     file.FilterIndex = 1
                     file.InitialDir = video_dir
                     InitFSO = file.ShowOpen
                     
                     If InitFSO = True Then   
                        SelectFile = file.FileName
                     Else
                        WScript.Quit
                     End If
                  End Function

                  Sub InputError(ErrorString)
                     Wscript.Echo ErrorString
                     Wscript.Quit
                  End Sub

                  files = ""

                  Set FSO = CreateObject("Scripting.FileSystemObject")
                  Set oShell = CreateObject("WScript.Shell")

                  If Wscript.Arguments.Count > 0 Then
                     For Each FileData In Wscript.Arguments   
                        Set FileInfo = FSO.GetFile(FileData)
                        If InStr(FileInfo.Type, ".avi") or InStr(FileInfo.Type, ".mp4") or InStr(FileInfo.Type, ".mov") or InStr(FileInfo.Type, ".wmv") or InStr(FileInfo.Type, ".3gp") Then
                           files = files & " " & CHR(34) & FileData & CHR(34)
                        Else
                           InputError("File " & CHR(34) & FileInfo.Name & CHR(34) & " has an unrecognised file type - Must be of type .avi, .mp4, .mov, .wmv or .3gp")
                        End If
                     Next
                  Else
                     user = oShell.ExpandEnvironmentStrings("%USERPROFILE%")
                     video_dir = oShell.ExpandEnvironmentStrings("%VLC_SHUTDOWN_VIDEOS_DIRECTORY%")

                     'If this if first run, we must save where the default video directory is

                     If video_dir = "%VLC_SHUTDOWN_VIDEOS_DIRECTORY%" Then
                        video_dir = InputBox("Please input the directory where your Videos are kept." & vbcrlf & vbNewLine & "E.g. C:\Documents and Settings\User Name\My Documents\My Videos", "First Run", user)
                        If video_dir <> "" Then
                           strComputer = "."
                           Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")

                           Set objVariable = objWMIService.Get("Win32_Environment").SpawnInstance_

                           objVariable.Name = "VLC_SHUTDOWN_VIDEOS_DIRECTORY"
                           objVariable.UserName = "<System>"
                           objVariable.VariableValue = video_dir
                           objVariable.Put_   
                        Else
                           WScript.Quit
                        End If
                     End If   
                     
                     answer = 6

                     'Loop while user wishes to add more files to playlist

                     Do While answer = 6
                        files = files & " " & CHR(34) & SelectFile() & CHR(34)
                        answer = MsgBox("Would you like to add another file to the playlist?", 3, "Continue?")
                     Loop

                     If answer = 2 Then
                        WScript.Quit
                     End If
                     
                  End If

                  'If this if first run, we must save where the default VLC directory is

                  programs = oShell.ExpandEnvironmentStrings("%PROGRAMFILES%")
                  vlc_path = oShell.ExpandEnvironmentStrings("%VLC_SHUTDOWN_VLC_LOCATION%")

                  If vlc_path = "%VLC_SHUTDOWN_VLC_LOCATION%" Then
                     vlc_path = InputBox("Please input the directory where VLC program file is kept." & vbcrlf & vbNewLine & "E.g. C:\Program Files\VideoLAN\VLC", "First Run", programs)
                     
                     If vlc_path <> "" Then
                        strComputer = "."
                        Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")

                        Set objVariable = objWMIService.Get("Win32_Environment").SpawnInstance_

                        objVariable.Name = "VLC_SHUTDOWN_VLC_LOCATION"
                        objVariable.UserName = "<System>"
                        objVariable.VariableValue = vlc_path
                        objVariable.Put_
                     Else
                        WScript.Quit
                     End If
                  End If

                  vlc_path = CHR(34) & vlc_path & "\vlc.exe" & CHR(34) 'VLC directory location

                  seconds = InputBox("Please enter the number of seconds the system should delay before commencing shutdown", "Enter Number of Seconds", "5")
                  If seconds <> "" Then
                     If IsNumeric(seconds) And seconds > 0 Then

                        oShell.Run vlc_path & " " & files & " vlc://quit", 1, TRUE
                        'Execute shutdown command
                        If force_shutdown Then
                           oShell.Run "shutdown -s -f -t " & Round(seconds) & " -c " & CHR(34) & "Automatic Shutdown: Playlist Complete" & CHR(34)
                        Else
                           oShell.Run "shutdown -s -t " & Round(seconds) & " -c " & CHR(34) & "Automatic Shutdown: Playlist Complete" & CHR(34)
                        End If
                     Else
                        InputError("Input not a number or negative")
                     End If
                  End If
                  Wscript.Quit

Linux
^^^^^

Follow the below method if you are a Linux user:

Open your terminal and execute the following bash script: (above Ubuntu 16.04)

.. code:: console

         #! /bin/sh
         vlc && shutdown -h now

With **&&**, figuratively speaking if it returns something other than "success" it doesn't perform the next command in the line.