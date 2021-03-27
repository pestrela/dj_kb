

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


## Mode info on the MIDI jogwheels latency But can I still scratch using MIDI? How much is the latency of your maps?


[original post](https://www.native-instruments.com/forum/threads/n-i-any-update-on-the-progress-of-traktor-dj-2.426695/page-2#post-2052187)

Did you made any latency measurements? preferable one-way-delay, or at least round-trip-times?
Because that is what matters in the end:
a) DJ hand moves
b) MIDI: controller to traktor
c) CPU: traktor processing
d) AUDIO: traktor to controller audio card
e) DJ listens via speakers


Background info:
Pioneer made money for many years selling DDJ-SZ/SX2/etc traktor-compatible that work with MIDI jogs.
They are too slow for turntablists. They are bearable for other guys.

Serato was of course HID. VirtualDJ followed immediately with HID. I stil have a VDJ license that came with my SZ.
Later rekordbox performance followed, with HID of course.

I'm maitaining the Pioneer map updated for all DDJs, and added BOME in the mix to improve the jogswheels (besides many other things).
After years of efforts, in 2021 this is still not appropriate for turntablists.
https://maps.djtechtools.com/mappings/9279
https://maps.djtechtools.com/mappings/9222



