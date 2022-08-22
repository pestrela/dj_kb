

# Rekordbox v6 topics

* [Issues of the V6 Rekordbox migration - Major](#issues-of-the-V6-Rekordbox-migration---major)
* [Issues of the V6 Rekordbox migration - Minor](#issues-of-the-V6-Rekordbox-migration---minor)
* [What is NOT unlocked in the Rekordbox V6 hardware options](#What-is-NOT-unlocked-in-the-Rekordbox-V6-hardware-options)
* [How to ignore Rekordbox upgrades](#How-to-ignore-Rekordbox-upgrades-completely)


## Issues of the V6 Rekordbox migration - Major

update 2021-05: v6.3 added the XML export feature again. Well done.
<https://rekordbox.com/en/support/releasenote/>

1) **Vendor Lock-in:**

* V6 encrypts the database and removed the XML export option.
  * Discussion: https://www.reddit.com/r/DJs/comments/g11s3l
  * Workaround: https://www.reddit.com/r/DJs/comments/g2c9l9
* This vendor lock-in doesn't look good on latest European regulations:
  * "To eliminate vendor lock-in practices, the Regulation provides for and encourages 
  the development of codes of conduct for service providers. With these codes of conduct, 
  consumers should be able to switch to other service providers more easily."
  * source: https://www.gtlaw-amsterdamlawblog.com/2018/11/another-privacy-regulation-but-this-time-on-non-personal-data/

2) **Perpetual bought licenses** do not transfer to subscription model:

* I've bought a rekordbox performance (149 USD), rekordbox video (99USD)and RMX pack (9.9USD) to use in my DDJ-1000.\
  * Total cost: 260USD w/o Tax.
  * V5 licenses: https://web.archive.org/web/20200217154645/https://rekordbox.com/en/plan/pluspacks/
* This V5 license doesn't carry over to the new subscription model
  * Note: "check" in this table means that it is suported. It doesn't mean it is free! (https://rekordbox.com/en/support/link )
  
The XML vendor lock is a **deal breaker** for me.\
The dead V5 license is quite annoying (there will be no V5 improvements and I don't expect any support moving forward).
  
## How did the industry commenters reacted to the v6 XML export issue?

(Post to be updated periodically. Please send updates to pedro.estrela@gmail.com)

* DJ Worx: <https://djworx.com/atgrs-6tox-scales-the-rekordbox-6-walled-garden/>
  * "as each manufacturer continues to build higher walls around their ecosystems to keep you trapped inside. "
  * "will only last as long as Pioneer DJ doesn’t change the encryption key, which could be tomorrow or could be never."
  * "This alone tells me that this is a totally pointless method on Pioneer DJ’s part and that they need to change, or ideally ditch encryption completely."
* Digital DJ Tips: <https://www.digitaldjtips.com/2020/04/rekordcloud-mixo-apps-offer-new-dj-library-conversion-tools/>
  * "What about this Rekordbox 6 issue? none of the conversion apps out there old or new except Rekordcloud works with Rekordbox 6 exporting, because your data is locked down inside Rekordbox 6 in a way it wasn’t in previous versions."
* DJ Tech Tools: <https://djtechtools.com/2020/04/14/rekordbox-6-now-with-cloud-library-syncing/>
  * (issue was not specifically covered AFAIK)
* DJCU: <https://www.reddit.com/r/DJs/comments/g11s3l/xml_implicationslimitations_of_the_new_rekordbox/>
  * "Call to arms: I ask all DJs regardless if they use my tools or not, ask Pioneer DJ to bring the export to XML function back, and while at it, ask them to fix the XML import. Don't go mad at Pulse"
* Rekordcloud: <https://rekord.cloud/blog/technical-inspection-of-rekordbox-6-and-its-new-internals>
  * "It could be different: In case Pioneer reads this: do the right thing and open up Rekordbox."
* Rekordbuddy: <https://forums.next.audio/t/rekord-buddy-and-rekordbox-6-do-not-upgrade-for-now/2257/15>
  * "I’ve always done things by the book with Rekord Buddy and so my first reaction is to make we stay within the law here."
* Mixo: <https://support.mixo.dj/guide/rekordbox-6?search=9676776fd018f4b4ec565dcf1c1db0f6>
  * "We would recommend that users who wish to move their Rekordbox collections to other DJ Software avoid updating to Rekordbox 6"

My own comment is the following:

* Pedro Estrela:  https://djworx.com/traktor-s4-mk3-screen-hack-hits-version-2-0/
  * "MIXXX is fully open. After the RB6 database encryption story last week, and all this years of Traktor workarounds, it looks the best way forward."
  

## Issues of the V6 Rekordbox migration - Minor
  
Besides the XML export and the v5 licenses problems, there are additional smaller issues:  
no search box on the explorer node; no midi mapping with modifiers, multiple actions and CFX selector;  
Cannot physically delete files inside RB. Still hotcues do not move the floating cue.

Also there is a bug since 5.6.1 when [importing XML](https://www.youtube.com/watch?v=JV89dj1hDWM).  
(note: do not confuse the v5.6.1 XML **import** bug with the v6 missing XML **export** issue.) 

On the **plus side**, it now automatically auto-relocate renamed and moved tracks. 
This is a [major improvement](#why-is-traktor-my-software-of-choice-a-automatic-finds-moved--renamed-files-mass-relocate).  
It also has shared audio and video playlists.  
It also has a Day skin, which is something [all OS already support](#How-to-enable-day-skin-in-any-software)  

The other functions I either do not use (streaming, ableton link) or have my own solution ([automatic sync using a NAS](#how-i-synchronize-and-backup-my-whole-traktor-music-and-configuration-across-laptops-and-a-nas)).
 
 
## What is NOT unlocked in the Rekordbox V6 hardware options

With v6 there are combinations of equipement that unlock *some* functionality.

* Plans: https://rekordbox.com/en/plan/
* Hardware: https://rekordbox.com/en/support/link

Combining both lists, this is what is **NOT unlocked**:

* DVS (except DJM-750Mk2, 450, 250MK2, interface2, DDJ-RZ, XP1, XP2)
* Video (except RXZ)
* Sampler sequence saving
* RMX effects
* Lyrics
* Cloud Sync

All these need either the 10eur/mo or the 15eur/mo subscription (August 2020 new prices)

For example, this is how video looks like with my DDJ-1000 connected:\
"You cannot use this function in your current plan."\
![v6_video_watermark](pics/v6_video_watermark.jpg?raw=true)

Same story for DVS:\
![v6_dvs_with_ddj_1000](pics/v6_dvs_with_ddj_1000.jpg?raw=true)


## How to ignore Rekordbox upgrades completely

The last usable Rekordbox is version v5.6.0.\
Later versions either have a bug on [XML import](https://www.youtube.com/watch?v=JV89dj1hDWM), 
or they [lack XML export](#issues-of-the-V6-Rekordbox-migration---major) at all.

However, you will be nagged with an upgrade window every time you start RB.

to remove this, simply rename this file to something else:

C:\Program Files\Pioneer\rekordbox 5.6.0\Upmgr rekordbox.exe
    
   
## How to enable day skin in any software and any OS

If you are playing on the bright outside you will not see a thing.
Some softwares provide a really convenient skin for this situation.

But this feature is already native to the OS: 

Windows 10:

* Press Win + Plus / settings / Invert Colors / Turn on magnifier
* [guide](https://windowsreport.com/inverted-colors-windows-10/)

MacOS:

* “System Preferences” > “Keyboard” > “Shortcuts” > “Accessibility” > “Invert Colors"
* [guide](https://devicebar.com/invert-display-colors-on-apple-mac-os-x/2642/)
    
Second, there are freeware programs that are better, by only inverting the brightness and keepng the hues as they are 
(ie, green, yellow, red colors are unchanged). See [NegativeScreen for Windows](https://zerowidthjoiner.net/negativescreen)

## How to map the color FX (CFX) parameter knob

to map the color FX parameter in the DDJ-1000 in Rekordbox:

a) using the mouse: see 12:09 of this video  
<https://youtu.be/PyHq4kSupHw>

b) using midi mapping for Mic EQ Low:  
1. Go to the MIDI screen and export your current mapping
2. Open this mapping in a text editor
3. Add new a line at the end of the file:
  CFXSubParameter,CFXSubParameter,KnobSliderHiRes,B60F,,,,,,,,,,Fast;,CFX sub parameter  
4. Save your new mapping and import it back in to the MIDI screen

If you want to use the SAMPLE VOLR button use this instead: 
CFXSubParameter,CFXSubParameter,KnobSliderHiRes,B603,,,,,,,,,,Fast;,CFX sub parameter

NOTE: This control still won't appear in the MIDI list screen but it will work  
source: Paul Sayer

