.. _Other_transcription_linux:

####################################
 Use VLC for transcription on Linux
####################################

--------
Overview
--------

The purpose of this section is to show you **how to configure VLC** and use the script below to **enable you to control VLC with scripted commands** and, most importantly, **take a timestamp from VLC** and automatically type it into whatever document you are working on, without ever needing to shift focus away from the document.

-------------
Prerequisites
-------------

To start, you need to have `VLC <https://www.videolan.org/vlc/>`_ (obviously), `Python 2.x <http://www.python.org/>`_ or `Python 3.x <http://www.python.org/>`_, `xautomation <http://hoopajoo.net/projects/xautomation.html>`_ OR a version of `xdotool <http://www.semicomplete.com/projects/xdotool/>`_, and you need the **OpenBSD** implementation of `netcat <http://www.openbsd.org/cgi-bin/cvsweb/src/usr.bin/nc/>`_

.. admonition:: Note
   
   See below for a version that uses the more readily available socat package.

The **OpenBSD** version of netcat is in the repositories of most major Linux distributions these days. This script is written for use in `Arch Linux <https://wiki.videolan.org/index.php?title=Arch_Linux&action=edit&redlink=1>`_, so it's likely that you will need to change the command used by netcat in the script. Arch uses ``nc.openbsd``, just replace it with whatever you need.

**Xautomation** will almost certainly be in your repos, and **xdotool** might be. xautomation seems to be the better choice if you're only concerned about how quickly it does the job, but **xdotool** is nice as well if you're doing fancier things with it.

-----
Setup
-----

This setup is window manager agnostic. It shouldn't make much difference which environment you run it in, the only practical difference will be in how you set up your control keys. I won't go over how to set up window environment here, but I will try to give you a few pointers below.

To set up vlc to use this script:

* go to :menuselection:`tools --> preferences` and click on :menuselection:`show settings --> all` at the bottom.
* From that menu, select :menuselection:`Interface --> Main Interfaces`, and check the ``Remote Control Interface`` box.
* Select :menuselection:`Interface --> Main Interfaces --> RC`, check the ``Fake TTY`` box.
* Enter ``home/YOURNAME/vlc.sock`` in the ``UNIX socket command input`` field.

You probably also want to adjust the **Very short jump length** located in :menuselection:`Interface --> Hotkeys settings`. **This script assumes that it is set for 5 seconds rather than the default of 3 seconds**. It won't affect the script if you don't change this value, as it uses the **very short jump** command rather than jogging a specific number of seconds. If you poke around the VLC docs, you'll see a seek command, but that is to go to a certain point in a file rather than going forward or backward a certain number of seconds.

* Hit **Save**.
* Restart VLC, and check to see if it creates ``vlc.sock`` in your home directory. This should be created automatically when VLC starts. If it doesn't, **check your socket path** and try again.
* Next, you need to set up your control keys for your window environment.

.. admonition:: Remember

   Make sure that whichever control keys you wish to use are not already used by your window manager. Redefine these control keys or the defaults as necessary.

   We didn't have any luck with the global hotkeys settings within VLC but it's good to have these commands in the script. You may have better results with some experimentation :)


One of our developers have these as their personal control keys:

======== =========================================================
Key      Function
======== =========================================================
F1       ~/vlccontrol.py **jogbackward**
F2       ~/vlccontrol.py **pause**
F3       ~/vlccontrol.py **pause** (no need for two, just habit ;)
F4       ~/vlccontrol.py **jogforward**
F5       ~/vlccontrol.py **timestamp**
Shift+F1 ~/vlccontrol.py **slower**
Shift+F3 ~/vlccontrol.py **normal**
Shift+F4 ~/vlccontrol.py **faster**
======== =========================================================

.. tabs::

   .. tab:: If you use ``gnome+metacity``

      You can edit your keybindings in **gconf-editor**:

      * Go to :menuselectioIf you use ``gnome+metacity``, n:`apps --> metacity --> global_keybindings` and assign a command number to control key you want.
      * Then go to :menuselection:`apps --> metacity --> keybinding_commands` and assign the appropriate commands to the command numbers.

      For example: (considering above control keys) 

      * In **global_keybindings** you would set run_command_1 to F1.
      * Then go to **keybinding_commands** and set command_1 to ``/home/YOURNAME/vlccontrol.py jogbackward``.

   .. tab:: If you use ``kde4``

      * Open :menuselection:`System Settings --> Shortcuts and Gestures --> Custom Shortcuts`.
      * In the second pane, under ::guilabel:`name`, choose an appropriate group to put your new bindings. 

      .. admonition:: Note

         It might be a good idea to create a new group for these under :``Preset Actions``, choose ``New Group`` from the ``Edit`` menu below the second pane.
      
      * Click on :guilabel:`Edit` and go to :menuselection:`New --> Global Shortcut --> Command/URL` and name the action.
      * While the new action is selected, click the :menuselection:`Trigger --> Shortcut` in the right hand pane and hit the key you wish to bind to the action (F1).
      * Then go to action and enter in the command for that action ``/home/YOURNAME/vlccontrol.py jogbackward``.

In any window manager which utilizes an ``rc.xml`` file for it's keybindings, like **OpenBox**, edit the rc.xml in a text editor and go down to the 'keybindings' section. 
Just follow along with the other keybind examples in the file, it's fairly straightforward, but your first entry should look something like this, although you will need to put in appropriate symbols around the keywords:

.. code:: console
   
   keybind key="F1"
      action name="execute"
         execute /home/delwin/vlccontrol.py jogbackward /execute
      /action
   /keybind



-------------
vlccontrol.py
-------------

Finally, here is the ``vlccontrol.py`` script. Copy the script below and paste it into a file named ``vlccontrol.py``. Save it to your home directory and make it executable with the command ``chmod 700 vlccontrol.py``:

.. code:: console

   #!/usr/bin/env python
   #### licensing nonsense - short version: New BSD License
   #Copyright (c) 2010, Derek Barnett, Skyehaven Transcription
   #Contact: derek at skyehaven.net
   #All rights reserved.
   #Redistribution and use in source and binary forms, with or 
   #without modification, are permitted provided that the following 
   #conditions are met:
   #
   #    * Redistributions of source code must retain the above 
   #copyright notice, this list of conditions and the following 
   #disclaimer.
   #    * Redistributions in binary form must reproduce the above 
   #copyright notice, this list of conditions and the following 
   #disclaimer in the documentation and/or other materials provided 
   #with the distribution.
   #    * Neither the name of the Skyehaven Transcription nor the 
   #names of its contributors may be used to endorse or promote 
   #products derived from this software without specific prior 
   #written permission.
   #
   #THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND 
   #CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, 
   #INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
   #MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
   #DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
   #CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
   #SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
   #LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF 
   #USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
   #AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
   #LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
   #IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF 
   #THE POSSIBILITY OF SUCH DAMAGE.
   #####

   ##### useful notes
   #vlc control script, compatible with python 2 or 3
   #
   #this script requires the openbsd version of netcat. gnu's version
   #does not appear to support unix sockets as of this time. it will 
   #almost certainly be in the repos of your distribution. you may need
   #to adjust this script to change the name of the binary to whatever
   #format your distribution uses (change 'nc.openbsd' below to whatever 
   #you need.)
   #
   #it also requires either xautomation (for it's xte tool) or xdotool
   #xautomation is used by default, as it's currently a bit faster
   #if you use xdotool, ensure that it's a version later than aug 2010
   #
   #to set up vlc to use this script, go to tools-&gt;preferences and 
   #click on "show settings-&gt;all" at the bottom. from that menu, 
   #select "Interface-&gt;Main Interfaces", and check the "Remote Control 
   #Interface" box. Next, select "Interface-&gt;Main Interfaces-&gt;RC",
   #check the "Fake TTY' box, and enter 'home/YOURNAME/vlc.sock'in
   #the "UNIX socket command input" field.  
   #
   #You probably also want to adjust the "Very short jump length" located
   #in "Interface-&gt;Hotkeys settings". This script assumes that it is set
   #for 5 seconds rather than the default of 3 seconds. It won't affect the
   #script if you don't change this value, as it uses the 'very short jump'
   #command rather than jogging a specific number of seconds. If you poke 
   #around the vlc docs, you'll see a seek command, but that is to go to a
   #certain point in a file rather than going forward or backward a certain
   #number of seconds.
   #
   #Hit "Save". Restart VLC, and check to see if it creates "vlc.sock" 
   #in your home directory. This should be created automatically when vlc 
   #starts. If it doesn't, check your socket path and try again.
   #
   #Next, you need to set up your hotkeys for your window environment.
   #This should work equally well in any window manger, so pick whichever
   #you like. Remember to check to make sure that whichever hotkeys you wish
   #to use are not already used by your windowmanager. Redefine these
   #hotkeys or the defaults as necessary.
   #
   #note: vlc supposedly support global hotkeys, but I didn't have any luck 
   #with them, which is why i went this route with the control script. Your
   #mileage may vary.
   #
   #I personally set it up like this:
   #F1 = ~/vlccontrol.py jogbackward
   #F2 = ~/vlccontrol.py pause (no need to have this twice, just habit)
   #F3 = ~/vlccontrol.py pause
   #F4 = ~/vlccontrol.py jogforward
   #F5 = ~/vlccontrol.py timestamp
   #Shift+F1 = ~/vlccontrol.py slower
   #Shift+F3 = ~/vlccontrol.py normal
   #Shift+F4 = ~/vlccontrol.py faster
   ##### end of rambling, on to business

   import sys
   import os

   #feed command to vlc socket to get the time played in seconds
   workingdir = os.path.join(os.path.expanduser('~'))
   vlcin = os.path.join(workingdir,'vlc.sock')
   vlcout = os.path.join(workingdir,'vlc.out')

   #accept argument when running script, e.g. './vlctimestamp.py timestamp'
   args = sys.argv[1:]
   i = "normal"
   if args:
      i = str.lower(args[0])

   #acceptable arguments: help, --help, pause, jogforward, +5, jogbackward, -5,
   #faster, slower, normal, timestamp. no argument assumes 'normal'
   if i == "help" or i == "-help" or i == "--help":
      print("""
               'help' or '--help' returns this help
               'pause' is a play/pause toggle
               'jogforward' or '+5' jumps forward 5 seconds
               'jogbackward' or '-5' jumps backward 5 seconds
               'faster' increases the tempo without increasing pitch
               'slower' decreases the tempo without decreasing pitch
               no argument or 'normal' returns vlc to normal speed
               'timestamp' types a hh:mm:ss coded timestamp into 
                           active window. see comments within this
                           script if you need to change the timestamp
                           string, offset the timestamp for a video
                           timecode, or if you've made tempo changes
                           in an audio file outside of vlc
               """)

   elif i == "jogforward" or i == "+5":
      os.system('echo "key key-jump+extrashort" | nc.openbsd -U ' + vlcin)

   elif i == "jogbackward" or i == "-5":
      os.system('echo "key key-jump-extrashort" | nc.openbsd -U ' + vlcin)

   elif i == "pause":
      os.system('echo "pause" | nc.openbsd -U ' + vlcin)

   elif i == "faster":
      os.system('echo "key key-rate-faster-fine" | nc.openbsd -U ' + vlcin)

   elif i == "slower":
      os.system('echo "key key-rate-slower-fine" | nc.openbsd -U ' + vlcin)

   elif i == "normal":
      os.system('echo "normal" | nc.openbsd -U ' + vlcin)

   elif i == "timestamp":
      #have vlc post the time ~/vlc.out
      os.system('echo "get_time" | nc.openbsd -U ' + vlcin + ' &gt; ' + vlcout)
      
      #read vlc.out and report time played in seconds
      f = open(vlcout, 'r')
      f_list = f.read().split("\n")
      if len(f_list) &gt; 2:
         sec = f_list[1]
      else:
         sec = f_list[0]
      sec = int(sec)
      
      #tempo - if you've adjusted the tempo of an audio file, in 
      #        audacity for instance, then you can use the tempo
      #        variable to give output for a timestamp postion in 
      #        original file. tempo is the percent playback speed
      #        of the modified file. 80 = -20% tempo change, etc.
      #        default is 100
      tempo = 100
      
      #don't change this. if you need an offset, take care of it below
      offset = 0

      #change offsetneeded to True if, for instance, you need to 
      #use a timecode embedded into a video rather than the playtime
      #of the file
      offsetneeded = False
      
      if offsetneeded == True:
      
      #If an offset is needed:
      #Pick a spot on the video and pause it (not the beginning). Enter the appropriate values below:
      #vtch = hours on video time code, vtcm = minutes, vtcs = seconds
         vtch = 0
         vtcm = 0
         vtcs = 0
         vtc = (vtch * 3600) + (vtcm * 60) + vtcs
      #atch = hours in actual playtime, atcm = minutes, 
      #atcs = seconds            
         atch = 0
         atcm = 0
         atcs = 0
         atc = ((((atch * 3600) + (atcm * 60) + atcs) * tempo) / 100)
         offset = vtc - atc
      
      #get the values for hh:mm:ss formatting
      sec = ((sec * tempo) / 100) + offset
      th = sec/3600
      tm = (sec&nbsp;% 3600)/60
      ts = sec&nbsp;% 60
      
      #format the timestamp, default looks like '##Inaudible 00:01:10## '
      #the timestamp in hours:minutes:seconds                    
      t = "%02d:%02d:%02d"&nbsp;% (th,tm,ts)    
      
      #string to append before timestamp
      #for no prefix, set prefix = ""
      prefix = "##Inaudible "
      #string to append after timestamp
      #for no suffix, set suffix = ""
      suffix = "## "                           
         
      #xdotool command to execute, uncomment next line to use xdotool
      #dropstamp = str("xdotool type --delay 0 --clearmodifiers '" + prefix + t + suffix + "'")
      #    
      #drop the timestamp string into active window, uncomment next line to use xdotool
      #os.system(dropstamp)
      #        
      #use xte from the xautomation package if you don't have a version of 
      #xdotool newer than august 2010
      os.system('xte "str ' + prefix + t + suffix + '"')       

   #if we don't feed an argument to the script, normalize the play speed of vlc
   else:
      os.system('echo "normal" | nc.openbsd -U ' + vlcin)


-------------------
vlccontrol-socat.py
-------------------

Below you'll find a version of the original script that was modified to use **socat**, instead of the **OpenBSD netcat build**. This should, hopefully, make the script readily available to more people, quicker. The same instructions--make it executable with the command ``chmod 700 vlccontrol-socat.py --apply``.

.. code:: console

   #!/usr/bin/env python
   #### licensing nonsense - short version: New BSD License
   #Copyright (c) 2010, Derek Barnett, Skyehaven Transcription
   #Contact: derek at skyehaven.net
   #All rights reserved.
   #Redistribution and use in source and binary forms, with or 
   #without modification, are permitted provided that the following 
   #conditions are met:
   #
   #    * Redistributions of source code must retain the above 
   #copyright notice, this list of conditions and the following 
   #disclaimer.
   #    * Redistributions in binary form must reproduce the above 
   #copyright notice, this list of conditions and the following 
   #disclaimer in the documentation and/or other materials provided 
   #with the distribution.
   #    * Neither the name of the Skyehaven Transcription nor the 
   #names of its contributors may be used to endorse or promote 
   #products derived from this software without specific prior 
   #written permission.
   #
   #THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND 
   #CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, 
   #INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF 
   #MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
   #DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
   #CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
   #SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
   #LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF 
   #USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED 
   #AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT 
   #LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
   #IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF 
   #THE POSSIBILITY OF SUCH DAMAGE.
   #####

   ##### useful notes
   #vlc control script, compatible with python 2 or 3
   #
   #this script requires the openbsd version of netcat. gnu's version
   #does not appear to support unix sockets as of this time. it will 
   #almost certainly be in the repos of your distribution. you may need
   #to adjust this script to change the name of the binary to whatever
   #format your distribution uses (change 'nc.openbsd' below to whatever 
   #you need.)
   #
   #it also requires either xautomation (for it's xte tool) or xdotool
   #xautomation is used by default, as it's currently a bit faster
   #if you use xdotool, ensure that it's a version later than aug 2010
   #
   #to set up vlc to use this script, go to tools-&gt;preferences and 
   #click on "show settings-&gt;all" at the bottom. from that menu, 
   #select "Interface-&gt;Main Interfaces", and check the "Remote Control 
   #Interface" box. Next, select "Interface-&gt;Main Interfaces-&gt;RC",
   #check the "Fake TTY' box, and enter 'home/YOURNAME/vlc.sock'in
   #the "UNIX socket command input" field.  
   #
   #You probably also want to adjust the "Very short jump length" located
   #in "Interface-&gt;Hotkeys settings". This script assumes that it is set
   #for 5 seconds rather than the default of 3 seconds. It won't affect the
   #script if you don't change this value, as it uses the 'very short jump'
   #command rather than jogging a specific number of seconds. If you poke 
   #around the vlc docs, you'll see a seek command, but that is to go to a
   #certain point in a file rather than going forward or backward a certain
   #number of seconds.
   #
   #Hit "Save". Restart VLC, and check to see if it creates "vlc.sock" 
   #in your home directory. This should be created automatically when vlc 
   #starts. If it doesn't, check your socket path and try again.
   #
   #Next, you need to set up your hotkeys for your window environment.
   #This should work equally well in any window manger, so pick whichever
   #you like. Remember to check to make sure that whichever hotkeys you wish
   #to use are not already used by your windowmanager. Redefine these
   #hotkeys or the defaults as necessary.
   #
   #note: vlc supposedly support global hotkeys, but I didn't have any luck 
   #with them, which is why i went this route with the control script. Your
   #mileage may vary.
   #
   #I personally set it up like this:
   #F1 = ~/vlccontrol-socat.py jogbackward
   #F2 = ~/vlccontrol-socat.py pause (no need to have this twice, just habit)
   #F3 = ~/vlccontrol-socat.py pause
   #F4 = ~/vlccontrol-socat.py jogforward
   #F5 = ~/vlccontrol-socat.py timestamp
   #Shift+F1 = ~/vlccontrol-socat.py slower
   #Shift+F3 = ~/vlccontrol-socat.py normal
   #Shift+F4 = ~/vlccontrol-socat.py faster
   ##### end of rambling, on to business...

   #Not quite... (Anoter quick note from the person who modified the script for socat): If you
   #look closely, I've added a couple extra controls to this, namely medium jumps forward
   #and backward.  VLC actually offers a range of commands for you to play with.  If you'd
   #like to add additional controls to the script, simply do an on-page search for "Hot Keys"
   #here: [http://wiki.videolan.org/VLC_command-line_help] 

   import sys
   import os

   #feed command to vlc socket to get the time played in seconds
   workingdir = os.path.join(os.path.expanduser('~'))
   vlcin = os.path.join(workingdir,'vlc.sock')
   vlcout = os.path.join(workingdir,'vlc.out')

   #accept argument when running script, e.g. './vlctimestamp.py timestamp'
   args = sys.argv[1:]
   i = "normal"
   if args:
      i = str.lower(args[0])

   #acceptable arguments: help, --help, pause, jogforward, +5, jogbackward, -5,
   #faster, slower, normal, timestamp. no argument assumes 'normal'
   if i == "help" or i == "-help" or i == "--help":
      print("""
               'help' or '--help' returns this help
               'pause' is a play/pause toggle
               'jogforward' or '+5' jumps forward 5 seconds
               'jogbackward' or '-5' jumps backward 5 seconds
               'faster' increases the tempo without increasing pitch
               'slower' decreases the tempo without decreasing pitch
               no argument or 'normal' returns vlc to normal speed
               'timestamp' types a hh:mm:ss coded timestamp into 
                           active window. see comments within this
                           script if you need to change the timestamp
                           string, offset the timestamp for a video
                           timecode, or if you've made tempo changes
                           in an audio file outside of vlc
               """)

   elif i == "jogforward" or i == "+5":
      os.system('echo "key key-jump+extrashort" | socat - unix:' + vlcin)

   elif i == "jogbackward" or i == "-5":
      os.system('echo "key key-jump-extrashort" | socat - unix:' + vlcin)

   elif i == "jumpforward" or i == "+10":
      os.system('echo "key key-jump+medium" | socat - unix:' + vlcin)

   elif i == "jumpbackward" or i == "-10":
      os.system('echo "key key-jump-medium" | socat - unix:' + vlcin)


   elif i == "pause":
      os.system('echo "pause" | socat - unix:' + vlcin)

   elif i == "faster":
      os.system('echo "key key-rate-faster-fine" | socat - unix:' + vlcin)

   elif i == "slower":
      os.system('echo "key key-rate-slower-fine" | socat - unix:' + vlcin)

   elif i == "normal":
      os.system('echo "normal" | socat - unix:' + vlcin)

   elif i == "timestamp":
      #have vlc post the time ~/vlc.out
      os.system('echo "get_time" | socat - unix:' + vlcin + ' &gt; ' + vlcout)
      
      #read vlc.out and report time played in seconds
      f = open(vlcout, 'r')
      f_list = f.read().split("\n")
      if len(f_list) &gt; 2:
         sec = f_list[1]
      else:
         sec = f_list[0]
      sec = int(sec)
      
      #tempo - if you've adjusted the tempo of an audio file, in 
      #        audacity for instance, then you can use the tempo
      #        variable to give output for a timestamp postion in 
      #        original file. tempo is the percent playback speed
      #        of the modified file. 80 = -20% tempo change, etc.
      #        default is 100
      tempo = 100
      
      #don't change this. if you need an offset, take care of it below
      offset = 0

      #change offsetneeded to True if, for instance, you need to 
      #use a timecode embedded into a video rather than the playtime
      #of the file
      offsetneeded = False
      
      if offsetneeded == True:
      
      #If an offset is needed:
      #Pick a spot on the video and pause it (not the beginning). Enter the appropriate values below:
      #vtch = hours on video time code, vtcm = minutes, vtcs = seconds
         vtch = 0
         vtcm = 0
         vtcs = 10
         vtc = (vtch * 3600) + (vtcm * 60) + vtcs
      #atch = hours in actual playtime, atcm = minutes, 
      #atcs = seconds            
         atch = 0
         atcm = 0
         atcs = 0
         atc = ((((atch * 3600) + (atcm * 60) + atcs) * tempo) / 100)
         offset = vtc - atc
      
      #get the values for hh:mm:ss formatting
      sec = ((sec * tempo) / 100) + offset
      th = sec/3600
      tm = (sec&nbsp;% 3600)/60
      ts = sec&nbsp;% 60
      
      #format the timestamp, default looks like '##Inaudible 00:01:10## '
      #the timestamp in hours:minutes:seconds                    
      t = "%02d:%02d:%02d"&nbsp;% (th,tm,ts)    
      
      #string to append before timestamp
      #for no prefix, set prefix = ""
      prefix = "["
      #string to append after timestamp
      #for no suffix, set suffix = ""
      suffix = "] "                           
         
      #xdotool command to execute, uncomment next line to use xdotool
      #dropstamp = str("xdotool type --delay 0 --clearmodifiers '" + prefix + t + suffix + "'")
      #    
      #drop the timestamp string into active window, uncomment next line to use xdotool
      #os.system(dropstamp)
      #        
      #use xte from the xautomation package if you don't have a version of 
      #xdotool newer than august 2010
      os.system('xte "str ' + prefix + t + suffix + '"')       

   #if we don't feed an argument to the script, normalize the play speed of vlc
   else:
      os.system('echo "normal" | socat - unix:' + vlcin)


---------------------------
Other things to be aware of
---------------------------

.. admonition:: Note

   There are a couple of things in the script which you ought to know about if you do transcription regularly enough to care about these sorts of things.

* Within the script, you'll find settings for ``tempo`` and ``offset``. Most people aren't going to need to worry about either of these and can just leave them as they sit. However, if you do alot of transcription, it's likely you'll find these to be of some value.

* The tempo setting **does not** refer to VLC's speed adjustment, rather it is used if you **have edited an audio file in an external editor** (like audacity) and changed the tempo of the audio and created a new audio file based on that.
  
  * The ``tempo`` variable is a percentage of the original audio, so at full speed, you'll want ``tempo = 100``.
  * If you slow it down 20%, you'll want 'tempo = 80', or 'tempo = 175' if you've sped it up 75%.
  * By using this, you can get a timestamp for the spot in the full speed audio file, and won't need to go back through it later and correct your timestamps.

  .. admonition:: Note
     
     it's always a good idea to do a couple of spot checks, just in case
  

  * You **DO NOT** need to change this tempo variable if you are only adjusting the speed within VLC, it takes care of itself.

* The ``offset`` section is useful if you are editing a video file which has an OSD timecode which you need to timestamp, rather than the playtime of the file. It should only be changed on **if you do have a use** for it, otherwise it's not advised to change them. 

* In order to set the script up to properly offset your video, pick a spot somewhere in the video which is **not at the beginning**, and then enter in the appropriate values.

For example:

For instance, if we have a video file which at 01:23:45 play time on the file has an OSD timecode of ``12:34:56``, you'll enter the values like this:

.. code:: console

      offsetneeded = True
   vtch = 12 <--hours on the video timecode
   vtcm = 34 <--minutes on the video timecode
   vtcs = 56 <--seconds on the video timecode

      atch = 1  <---don't use a leading 0, or the script will puke
   atcm = 23 <--minutes on the playback time
   atcs = 45 <--seconds on the playback time

You can use offset with the tempo settings.

.. admonition:: Note

   **Don't** use the video timecode at 00:00:00 on the playback time, or the calculation will be off.
   
   Check the difference between the video timecode and the playback time at the beginning and end of your file to see if it's consistent, as that will tell you if there have been any edits made. If there are edits, just change the offset numbers when you get to those points.

