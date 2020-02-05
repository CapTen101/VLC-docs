##########
Extensions
##########

**************************************
Installing Extensions from our website
**************************************

To do this, select your preferred extension from the official `VLC addon website <http://addons.videolan.org>`_ and download it to your computer.
After the extension has been downloaded successfully, copy the downloaded file to this location :file:`C:\\Users\\UserName\\AppData\\Roaming\\vlc\\lua\\extensions`.
Then restart VLC and voila, you’re done.

.. note:: Add-ons can also be activated by clicking on :menuselection:`Tools --> Plugins and extensions --> Extensions` on the menu bar.

**************************************
Installing Extensions diretly from VLC
**************************************

If you want to install an extension directly from your VLC media player, then follow the steps below:

1. Open VLC media player on your computer.

2. On the menu bar, select :menuselection:`Tools --> Plugins and extensions`.

.. figure::  /images/plugins&extensions.PNG
   :align:   center

3. On the :guilabel:`Plugins and extensions` dialogue box, you will find all the extensions and plugins created by third parties for VLC. If you cant find any, click on the :guilabel:`find more add-ons online`. This will sync VLC withe the addons avaliable on our official `VLC addon website <http://addons.videolan.org>`_. 

4. Click on the :guilabel:`Extensions` to see a list of available extensions. On seeing any interesting extension from the list, click on the :guilabel:`Install` button. Voilà, you've successfully installed your first extension on VLC. 

*****************************
Installing Extensions in lua
*****************************

VLC also allows you to install extensions in `Lua language <https://www.lua.org>`_. Follow the steps below to get upto speed on how to do this. 

1. In order to install the extension in .lua go to the file path :file:`C:\\Users\\UserName\\AppData\\Roaming\\vlc\\lua\\extensions`. Copy the lua file to install the extension.

2. If the lua folder is not found, simply create a folder with the name :file:`lua` in the previous :file:`vlc` directory. Inside the :file:`lua` folder, create another folder by name :file:`extensions` and copy the lua file inside it.

3. Once the lua file is copied, the extension will be uploaded and installed.

4. Run a video in VLC media player to test and enable the extension.
