

# Hardware Controllers

## Why is DDJ-1000 my hardware of choice

Previously I explained [I why use Traktor](#why-is-traktor-my-software-of-choice). So why do I use it with a controller made for Rekordbox, instead of the S4Mk3??

Before we discuss this, please note that some years ago DJs could use any Software with any Hardware combination. 
This was a fully supported (and encouraged!) model by the vendors, which used this model to make real money from real customers. 

Having said this, the DDJ-1000 has major features that I personally value significantly over the S4Mk3:

* **A) BIG jogs wheels:** This is so important that [it gets a dedicated blog post ](#why-i-like-big-jogwheels)
  
* **B) More pad modes.** All my most useful functions are a maximum of 2 clicks away - and without using any shifts. 
  Main Pad modes are a) Hotcue, b) Roll/padFX, c) MacroFX, d) JogFX. 
  Pressing twice the same pad mode cycles the top 2 sub-pages of that pad mode. This is way the Reloop Elite mixer works. 
  I’ve got even more stuff on the secondary pad modes, accessible with a shift+mode. 

* **C) Two USB ports.** This is crucial for seamless hand-overs between DJs; and for safety of connecting a backup laptop ready at any time.
  
* **D) JogFX combos on the jogs.** Please see them in my demo videos (eg 6:32 of https://www.youtube.com/watch?v=h9tQZEHr8hk&t=392s ). 
  This is turnkey in my mapping, i’m not familiar if they have it on the S4mk3 (it was present for sure on the S4MK1 DJTT mappings)

* **E) BeatFx**. This is in the correct place of the mixer (lower right corner = right hand of the DJ), with a FX selector knob to select the effect by name

* **F) Connectivity**. Thr DDJ-1000 has more inputs and outputs, microphones etc. In particular, the mixer has a full FX suite for any external inputs (colorFX + beatFX)

Note: the S4mk3 is a fantastic controller - I have recommended it to several people before. In particular the loop/beatjump encoders implementation is the gold standard for that.\
The overall integration is better, of course, which is a plus if you prefer plug-and-play vs customization. 

But in the end its really the big jogwheels that is the crucial deal breaker; This was completely abandoned by NI in 2014 with the release of the S8, and was only picked-up in 2018 with the S4MK3 (although, in my opinion, still not the same as the DDJ-1000).


## DDJ-1000 comparison to DDJ-SZ and AKAI AMX

Besides [my DDJ-1000](#why-is-ddj-1000-my-hardware-of-choice), I have several other controllers fully [mapped to Traktor](#Free-mappings). 

Main differences are:

**DDJ-1000:**

* **Jogs:** CDJ big Jogwheels 
* **Screens:** Jog screens
* **Size**: More portable than SZ, but more cramped as well
* **BeatFX:** BeatFX in the lower right corner to the mixer

**DDJ-SZ:**

* **Size:** Very spacious. A joy to use!
* **Jogs:** Extra-smooth big Jogwheels
* **Filter:** Pioneer soundcolor FXs in hardware, including the Pioneer filter with a lot of Resonance

**AKAI AMX:**

* **Ultra portable:** The AMX replaces 4x devices: Z1 Mixer + X1 controller + Twister Fighter + Audio2. 
Its so small I carry it everywhere I go. 
* **DVS:** The AMX is the cheapest and smallest way to unlock DVS 
* **Mapping:** My mapping unlocks all TP3 functions

See also [this DDJ-SZ comparison](https://www.reddit.com/r/Beatmatch/comments/c6vquf/help_me_ddj_sz_vs_ddj_1000/)
See also this general [comparison to CDJs](https://djtechtools.com/2017/07/23/ddj-cdjs-practicing-cdjs-pioneer-dj-controller/)



## Why I like BIG jogwheels

Spoiler: its not scratching!

I use jogs all the time in a controller - full list below. 
As I have big hands, I love them to be as BIG as possible.

There are the usages sorted by frequency:

* **#1: Tempo**: Adjusting tempo drift for older tracks (because of no elastic beatgrid)
* **#2: Cueing**: / fast preview to the exact spot where the track will start
* **#3: JogFX chains**: I do effects on the jog - see 6:32 of https://www.youtube.com/watch?v=h9tQZEHr8hk&t=392s
* **#4: Beagrids**: by far the quickest way to adjust beatgrids on the fly
* **#5: Scratch**: Very occasional live scratching / tricks  (see also [this post](#but-can-i-still-scratch-using-midi-how-much-is-the-latency-of-your-maps))

What I dont use on jogs:

* **Moving jogs**: these are cool, but not a deal-breaker for me
* **Haptic feedback**: this is basically a gimmick for me

## But can I still scratch using MIDI? How much is the latency of your maps?

**TL;DR:** YES you can scratch - as long you have a fast computer. Please see at 4:10 of [this video](https://www.youtube.com/watch?v=h9tQZEHr8hk&t=249) for a demo.\
Even better, try it [completely for free](#can-i-test-your-mappings-for-free), and see for youself.

**Long answer:**

Of course that If you are a 100% scratch DJ, then you should look for a native HID solution.\
But for the extreme vast majority of DJs I know, this solution is more than enough.

Some relevant points:

* Scratching is [only the 5th criteria for my jogwheels](#why-i-like-big-jogwheels)
* The [latest DDJ-1000 mapping](#What-are-the-features-of-your-DDJ-1000-Traktor-mapping) helps a lot. You can now can see the jog needle and your hand simultaneously.
* Pioneer has sold products with this solution for many years ([example](https://www.pioneerdj.com/en/support/software-information/archive/ddj-sz/#traktor))


## Mode info on the MIDI jogwheels latency

[original post](https://www.native-instruments.com/forum/threads/n-i-any-update-on-the-progress-of-traktor-dj-2.426695/page-2#post-2052187)

Did you made any latency measurements? preferable one-way-delay, or at least round-trip-times?
Because that is what matters in the end:
* a) DJ hand moves
* b) MIDI: controller to traktor
* c) CPU: traktor processing
* d) AUDIO: traktor to controller audio card
* e) DJ listens via speakers


Background info:  
Pioneer made money for many years selling DDJ-SZ/SX2/etc traktor-compatible that work with MIDI jogs.
They are too slow for turntablists. They are bearable for other guys.

Serato was of course HID. VirtualDJ followed immediately with HID. I stil have a VDJ license that came with my SZ.
Later rekordbox performance followed, with HID of course.

I'm maintaining the Pioneer map updated for all DDJs, and added BOME in the mix to improve the jogswheels (besides many other things).
After years of efforts, in 2021 this is still not appropriate for turntablists.
<https://maps.djtechtools.com/mappings/9279>
<https://maps.djtechtools.com/mappings/9222>


## How to fix DDJ-1000 loose jogs

this research was done by Jason Louis in the DDJ-1000 Users Facebook group.

video: https://www.youtube.com/watch?v=LnvZR3Kiuxs


LOOSE JOG WHEEL DISCOVERY 
READ BELOW....

It seems the part that is responsible for keeping the jog wheel in place is not the rollers at all. 

It’s a bracket that has two stationary barrels attached to it. The one in the back is for right to left movement and the one in the front is for front to back movement. 

If you have a jog wheel that is loose this is the part that has failed or has come defective from manufacturing. 

These barrels sit inside of a channel on the under side of the jog wheel top plate ( where your hand makes contact to scratch )

The way the barrels are held onto the bracket is they are pressed into the bracket and center-punched to mushroom the metal to lock it in place on the bottom. 

* When a jog wheel develops front to back movement the front barrel will be found to be loose and exhibit a wobble on the bracket. 

* When a jog wheel develops side to side movement the rear barrel will be found to be loose and exhibit a wobble on the bracket. 

If you are able to carefully center punch the shaft from the bottom of the bracket it is possible to re-secure the barrel.
Once the barrel is secured properly to the bracket your movement in your jog wheel will be eliminated. 

I’m trying to get a part number(s) in case anyone is tired of sending in their unit and it coming back not fixed. 

Honestly this is something that pioneer should have done a recall on as I’ve seen so many posts about it here and on forums and have spoke to SAM ASH and Guitar Center with both retailers aware and complaining about the issue. 

Pioneers stance is to keep quiet when all they had to do is replace this bracket that probably cost them 5.00 to have made. 

The labor for the repair is most likely why they are keeping quiet. It’s just unacceptable.

---------

This is the part that is causing all the problems.
I think it’s expensive for what it is but at least we have all the information we need.
Please share this entire post if this can help someone.

https://www.instrumentalparts.com/stay-assy-jog/

-------

Once you remove the back cover you will see many ribbon cables going to a main PCB. Once you remove all of those cables you will start to unscrew the Main PCB and lift out. After that you will need to take out the track load PCB the pad assy pcb and the loop pcb. once you remove those you can access the jog wheel screws. Note you will have to remove the track select knob , the tension adjust knob and the pitch slider cap to remove above boards before getting to the jog assy. unscrew 5 or 6 screw and remove jog assy and then you will see 2 tabs that can be pulled back gently and the jog wheel lifts up and off the unit. that's the easy part. keeping all the screws in order and where they go is something you should draw out somewhere or take pictures for the first time. ALSO make sure all the plastic buttons are seated properly when you put all the PCBs back so you don't have to reopen the device after you fully assemble it. Hope that helps

Understand how to remove the different ribbons cables, also there's a few wires that need to be placed back a certain way, if you keep good notes and have opened and worked around electronics before you can probably do it, but as I stated before... Unless you know what your doing and have some experience in working on electronics or computers I would have someone else do it.


----

it’s not easy and I would only recommend you attempt if your good with working on electronics.
You have to disassemble a lot of the controller just to get the jog wheel out.
Lots of ribbon cables and removing main and Aux PCB boards


![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_1.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_2.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_3.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_4.jpg?raw=true)!
![loose 1](https://raw.githubusercontent.com/pestrela/music/master/pic_sets/ddj_1000_loose_jogs/ddj-1000_loose_5.jpg?raw=true)!


  
## How to replace the DDJ-1000 filter knobs with Silver knobs

Both 1000 and 1000SRT have extremely [dull filter knobs](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/DDJ-1000RB.jpg). Which is a pity.\
For now the best fit is [DAA1309](https://www.pacparts.com/part.cfm?part_no=DAA1309&mfg=Pioneer) from the DDJ-SZ or DJM-900. This is an almost perfect fit.

Folder with pictures of the knobs: [here](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs)

* [DAA1309](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/DAA1309.png):
    * This has the best fit overall. The knob is slightly higher than desired.
    * [Part list](https://www.pacparts.com/part.cfm?part_no=DAA1309&mfg=Pioneer): \
      DJM-900NX2/2000NX1/750\
      DDJ-SZ/ DDJ-RZ/ DDJ-RZX
  
* [DAA1320/DAA1350](https://github.com/pestrela/music/tree/master//pic_sets/silver_knobs/DAA1320.jpg):
    * this was confirmed NOT to work
    * [parts list]((https://www.pacparts.com/part.cfm?part_no=DAA1320&mfg=Pioneer)): DJM-S9 / DJM-900SRT / XDJ-RX / XDJ-RX2

* [100-SX3-3009](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/100-SX3-3009.jpg):
    * not tested
    * [part list](https://www.pacparts.com/part.cfm?part_no=100-SX3-3009&mfg=Pioneer): DDJ-RX
  
* [DAA1373](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/DAA1373.jpg):
    * not tested
    * [parts list](https://www.pacparts.com/part.cfm?part_no=DAA1373&mfg=Pioneer): DJM750 MK2 / 250MK2 / 450 / S3
  
* [Rane 2015](https://github.com/pestrela/music/tree/master/pic_sets/silver_knobs/rane%202015%20filters.jpg):
    * this was confirmed to work [by another user](https://www.facebook.com/photo.php?fbid=3050933838255437&set=gm.672781936578130&type=3&theater&ifg=1)


## About Dj-Skins.com

I recommend you to change the look of your device and protect it against fingerprints by using a Skin from <http://dj-skins.com>.

It looks gorgeous!

Please see the full gallery [here](https://github.com/pestrela/music/blob/master/pic_sets/dj-skins.com).

Example:
![ ](https://github.com/pestrela/music/raw/master/pic_sets/dj-skins.com/1%20-%20dj-skins.com%20-%20ddj_1000%20and%20Akai%20AMX.jpg?raw=true)

  



