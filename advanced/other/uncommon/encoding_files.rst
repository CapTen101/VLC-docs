.. _encoding-many-files:

######################
Encoding Lots of Files
######################

This command shows how to encode a whole directory of files in Linux, without your input. When complete, it'll show a message to say it is complete. It's a single command split over several lines (with ``\``):

.. code:: bash

   for A in *.avi;\
   do echo ************************* $A ********************* ;\
   vlc --sout-all "$A" :sout="#transcode{...} :std{access=file,mux=avi,url=~/$A.avi}" vlc://quit -I dummy ;\
   done ;\
   Xdialog --title 'Complete' --msgbox 'All done' 0 0;

.. warning::

   **Make sure you really understand this command before using it**. 

It's also a good idea to make sure you've got the right options in the transcode bit, and that it'll transcode the right files. The output is sent to your home folder in this example.
