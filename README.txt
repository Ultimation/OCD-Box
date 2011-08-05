Welcome to OCD Box
----------------------------------------------------------------------------
This is the first project I have done, so everything will be sketchy.
It is also the first time I have programmed in arduino, so yeah. It may be badly written, but it works. (There are no goto's, it's okay)

Program is in Arduino (Based on wiring), put i tinto Arduinos IDE and it can be programmed onto an arduino uno (and possibly other boards, I do not know). 

You will need the TrueRandom Libary. Found here 
http://code.google.com/p/tinkerit/wiki/TrueRandom
and have that installed in your arduino folder. 


If you want to just run this on your arduino, the only part you need is OCDbox, in there is the code, the rest are just individual parts for development.


The main program is in OCDBox, the other directories are for parts of the program that i used to create them all.

Follow the project, as well as schematics and plans at UltimationEE.Blogspot.com
License is Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported (CC BY-NC-SA 3.0), found in license.txt

The program:

Currently it has three modes:

Mode 0: Any switch that is pushed up will get pushed back down. 
It will go into this mode as long as none of the other modes are enabled. 

Mode 1: To get into this mode, ALL Switches must be up when you turn OCD box on. 
There are 8 possible patterns that it will be happy with,
in these circumstances, all the arms will remain inside, if it is 
not in one of these, then all of the arms will come out and attempt 
to flick their switch until its happy, even if one arms switch is already 
pushed to the other side, it will do this.

The patterns thare are acceptable are as follows:

|Switch 1|Switch 2|Switch 3|Switch 4|Switch 5|Switch 6
------------------------------------------------------
|0	 |0	  |0	   |0	    |0	     |0
|0	 |0	  |0	   |1	    |1	     |1
|0	 |0	  |1	   |1	    |0	     |0
|0	 |1	  |0	   |1	    |0	     |1
|0	 |1	  |0	   |0	    |1	     |0
|1	 |0	  |1	   |0	    |1	     |0
|1	 |0	  |1	   |1	    |0	     |1
|1	 |1	  |0	   |0	    |1	     |1
|1	 |1	  |1	   |0	    |0	     |0
|1	 |1	  |1	   |1	    |1	     |1

Mode 2: To enter this mode, all switches but switch 5 must be down. switch 5 must be up. 
All the switches can be freely moved apart from switch 5, 
of which cannot be in the up position, if it is in this position, then
that single arm will come out and switch it back

Mode 3.5: To enter this mode, you must have all switches low apart from switch 1, which must be high. This also syncs with the TrueRandom libary which requires this input not to be grounded when used, and it's only used briefly at the start, when switching on. 
The task is to get all the switches to the top. The pattern in which you have to do this is randomly chosen every time you turn it on. 

Mode Madagascar: This is a mode that is enabled if no mode is enabled,
which should never happen, it basically just flashes the LEDs and makes sure all the motors are disabled.



s* = switch*
m* = motor*
