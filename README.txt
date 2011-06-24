Welcome to OCD Box
This is the first project I have done, so everything will be sketchy.
Program is arduino, put into arduino and it can be programmed onto arduino uno (and possibly other boards, I do not know). 
The main program is in OCDBox, the other directories are for parts of the program that i used to create them all.
Currently it has three modes:
Mode 0: Any switch that is pushed up will get pushed back down. It will go into this mode as long as neither of the other two modes are selected
Mode 1: There are 8 possible patterns that it will be happy with, in these circumstances, all the arms will remain inside, if it is not in one of these, then all of the arms will come out and attempt to flick their switch until its happy, even if one arms switch is already pushed to the other side, it will do this.
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

Mode 2: All the switches can be freely moved apart from switch 5, of which cannot be in the up position, if it is in this position, then that single arm will come out and switch it back
Mode Madagascar: This is a mode that is enabled if no mode is enabled, which should never happen, it basically just flashes the LEDs and makes sure all the motors are disabled.
s* = switch*
m* = motor*
