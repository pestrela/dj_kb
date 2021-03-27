# Mappings Tricks

This section covers advanced mapping tricks. Most of these refer to the limitations of  modifiers. 


The second part of this section is are self-contained demos of **Advanced tricks**:
* **Preview Player:** https://maps.djtechtools.com/mappings/10915
* **Backwards loop and Reloop:** https://maps.djtechtools.com/mappings/10252
* **BOME access all 9x mixerFX:** https://maps.djtechtools.com/mappings/10575

## Modifier basics

Each page has 8 local modifiers. Each modifier stores 8 different states. 

If you run out of modifiers you could get 8 more by just creating another page.

However, this has the following implications:
* modifiers remain local per page - there are no global modifiers
* extra MIDI pages make your [preferences window slow](#Traktor-Slow-preferences-Window).

The remaining of this section explains how to go around these limitations.

  
## How to share modifiers by holding multiple states of different buttons

Typically you use one modifier per event you want tracked, with interaction "hold". This leds to the simplest usage by far.

For example:
* M1=“shift pressed”  (0=not pressed ; 1=pressed)
* M2=“jog pressed” (0=not pressed ; 1=pressed)

In this example you would effectively waste 12 states.

If the events are **independent,** you could share the modifier trivially by holding different values as follows:
* M1=0 -> nothing pressed
* M1=1 -> shift pressed
* M1=2 -> jog pressed

The issue is that this doesn't work for dependent events. Only the last state is remembered.

Example: If you press shift and then press the jog, you would forget that the shift is pressed. Worse, of you then release the shift while still pressing the jog, you now forget that the jog is still being pressed!

The way to fix this is to map all combinations that might happen:
M1=0 -> nothing pressed
M1=1 -> shift pressed, jog NOT pressed
M1=2 -> shift NOT pressed, jog pressed
M1=3 -> shift AND jog pressed

This no longer works with "hold" commands. In this case you have to map the whole state machine explicitly, by separating presses (AKA direct) and releases (AKA invert). Plus you also need to add conditionals to all events.

Example:
* IF M=0; IF press shift, THEN M=1
* IF M=1; IF press shift INVERT, THEN M=0
etc

Second, this trick leads to massive duplication on regular entries, because now actions that depend on the jog being pressed means "2" or "3"... and there is no “OR” operation in traktor. So the only way 

## How to add more than 8 states

Another trick: what to do if you need >8 states?
In this case, use 2 modifiers with a reserved state that means “locked”.
Ie, that the second modifier is being used to extend the states.
This leads to 7 usable states per modifier.
Example, imagine that “7” is the locked state.
The first 14 fully independent states would be:

M1=0, M2=7 (locked)
M1=1, M2=7 (locked)
...
M1=6, M2=7 (locked)
(notice the transition here)
M1=7 (locked), M2=0
M1=7 (locked), M2=1
...
M1=7 (locked), M2=6



## What are demos of advanced mapping tricks

In order of complexity:

### 0) Browse List or Tree (like rekordbox or Serato)

todo: make a simple demo of moving trough the browser list/tree like stewe:
https://forum.djtechtools.com/showthread.php?t=88950&p=731238#post731238
https://forum.djtechtools.com/attachment.php?attachmentid=25832&d=1440801074


### A) Preview Player: 

**Links:**
* Download Link: https://maps.djtechtools.com/mappings/10915

** Summary:**
* Hold a button to start listening the preview player
* Without moving your hand, turn the encoder to seek inside the preview player
* Release button to stop listening
* Without moving your hand, turn the encoder to seek to select another track
  
  
![](pics/mappings/preview_player_demo.jpg?raw=true)

  

### B) Backwards loop and Reloop: 

**Links:**
* Download Link: https://maps.djtechtools.com/mappings/10252

** Summary:**
* Use this mapping to adjust the LoopIn point (regular loops adjust the LoopOUT point
* Use cases:
  * extend a track that literally just ended;
  * extend a beat just before a breakdown
  * repeat a build-up several times
* Reloop: use this feature to return to a previous loop (just like CDJs)
  
![](pics/mappings/loops_adjust_backwards_reloop.jpg?raw=true)
  
  
### C) BOME access all 9x mixerFX: 

**Links:**
* Download Link:
https://maps.djtechtools.com/mappings/10575

** Summary:**
* Use this mapping to acecess all 9x mixerFX by sending mouse clicks directly to the preferences window
* the normal midi mode you can only use 4x mixerFX

![](pics/mappings/bome_change_traktor_mixerfx.jpg?raw=true)
 
 
 
 
 