
# About

## TL;DR version

My biggest **Laptop** reasons are not having to manage USB sticks, and it has much more features than standalone.\
My biggest **DDJ-1000** reason is big jogwheels.\
My biggest **Traktor** reason is using my OS folders as "playlists", its effects and its advanced mapping possibilities.

## About DJ Estrela

I'm a DJ since year 2000. Some free contributions for you to enjoy:

a) A quite broad knowledge base that covers Traktor, Mappings, Laptop optimization, Controllers, etc...\
<https://github.com/pestrela/dj_kb#table-of-contents>

b) The most popular traktor mapping for the DDJ-1000. This also works for other 4 deck controllers (SX2, SRT, SZ, XZ, etc)\
<https://maps.djtechtools.com/mappings/9279>

c) CMDR, the free  TSI mapping editor for Traktor\
<https://github.com/cmdr-editor/cmdr/> 

d) My specific music styles are Trance and 80s (Italo Disco). I also play commercial Top-40.\
<https://djestrela.com/>



## About this Knowledge Base

This page contains my DJ knowledge base. 
It covers dozens of questions that I've answered over the years in forums and Facebook groups.

These cover [why I'm using Traktor](#Traktor-software) instead of eg Rekordbox, 
what are [its limitations](#Which-features-I-miss-in-Traktor), info about [Effects](#Effects), workarounds to 
[elastic beatgrids](#Traktor-Elastic-Beatgrids) and the [Slow preferences window](#Traktor-Slow-preferences-Window);
closely related is how I [organize my files using OS-Folders only](#OS-Folders) without any playlists; 

I'm using [DDJ controllers](#Hardware-Controllers) from Pioneer and made [very large mappings](#Free-Mappings) free to use; 
specific info is on the [installation processs](#How-to-install-my-Traktor-mappings) 
and videos showing the [features step-by-step](#can-i-see-a-demo-video-of-your-mappings); 
on a technical level please find why I've moved to [BOME](#BOME-mappings-migration).

Also described is my free [DJ Software Tools](#Free-DJ-Software-Tools), 
including the latest [CMDR TSI editor](#What-features-did-you-add-to-the-CMDR-TSI-editor)
and many other tools for eg [CUE files](#how-i-build-perfect-tracklists-using-cue-files); 
there also info on the tricky process to [convert DJ collections](#DJ-collection-converters) 
between softwares without 26-ms shifts for free.

Recently I've written about the [Rekordbox v6](#Rekordbox-v6-topics) migration, 
and my first experience with [MIXXX](#mixxx-topics), which is fully open source.
I also found and listed multiple [DJ tutorials](#DJ-tutorials), in including [midi tutorials](#midi-mapping-tutorials).
Also read about unique [Music Styles](#Music-Styles) and how to find new music.

Finally, there is a lot of info on [how to optimize your laptop](#DJ-Software-optimization) to avoid audio glitches, 
general tips for [Windows](#Windows-usage), 
keyboard shortcuts to [search in Youtube and Discogs](#What-shortcuts-you-added-for-Youtube-Google-and-Discogs), 
plus more [other stuff](#Other-topics).


Below a detailed [table of contents](#Table-of-Contents) of the whole thing, 
and a [MindMap picture](#MindMap-Summary) to get you started.
     
      
## Some metrics of my free contributions

These are my biggest crontibutions.\
What did you enjoyed the most? please tell me to pedro.estrela@gmail.com

* Knowledge Base: 20K words 
  * <https://github.com/pestrela/dj_kb>
* DDJ-1000 mapping: 7K downloads
  * <https://maps.djtechtools.com/mappings/9279>
* DDJ-SX2/SZ/SRT mapping: 5K downloads 
  * <https://maps.djtechtools.com/mappings/9222>
* CMDR Changelog: 180 lines
  * <https://github.com/cmdr-editor/cmdr#2020-improvements>
  
 
 
## Open questions for 2021

Question #1:\  
What is the future of controleirism in 2021? 
Why do the new generation of DJs seem apparently satisfied with the current capabilities of Serato and Rekordbox "as-is"?

Question #2:\  
How could happen that Traktor/NI dropped the jogwheel in 2014 with the S8/remix decks, but in 2021 is still the ONLY major sofwtare without flexible beatgrids?

question #3:\  
What is your opinion of realtime STEMS seperaation of VDJ 2021 and Djay AI?




## MindMap Summary

This page has my knowledge sharing about Traktor, Mappings, Hardware, DJing, DJ Set, etc.\
The picture below summarizes the main ideas and dependencies explained in these blog posts.
![traktor_mindmap](pics/traktor_mindmap.png?raw=true)

   
   
## ProfBX answer

I've participated in a reddit thread with ProfBX from PioneerDJ. 
[This thread](https://www.reddit.com/r/DJs/comments/nfcl9p/pioneer_dj_cdj3000_now_supports_djay_pro_ai/gzwdywv/?utm_source=reddit&utm_medium=web2x&context=3)
covers a lot of ground on my contributions, so its a good summary of parts of this knowledge base

   
  
bome: I hit the limits of BOME itself a couple of times. This is how I made some workarounds:  
<https://pestrela.github.io/dj_kb/bome_mappings/#some-limitations-of-bome-mappings>  

regarding exclusivity: Its a pity that Serato (the company) allowed MIDI mode on the ddj-1000,  
but disallowed MIDI screens like the original DDJ-1000  
<https://serato.com/forum/discussion/1736390>

NI having a copy of each controller:  
I see your point. I guess this was the case for the DDJ-SZ and DDJ-SX2 that had official pioneer mappings.  
Would the solution, to focus on ONLY the best selling controllers and send NI a demo unit?  

Your traktor mapping on the DJM-S11 / Djay CDJ-3000:  
understood of course. I was asking for the proper company decision.  
This would be driven by the business decisions to sell more devices. At the time this was certainty the case for the SX2.  

Industry standard quality:   
fully Understood. Again, this will only work when Pioneer sees the business case. I believe it exists, but of course I do not see the numbers.

Faster MIDI messages:  
Please see this short video. I've found that I would create massive slowdowns in macOS catalina by sending too many .back to back messages to the device.  
Windows is not affected. Bootcamp in mac is not affected.  
--
Solution was only to slowdown messages with bome timers.  
As you can imagine this made the bome code a lot more complex.  
<https://youtu.be/Us0gS__qR7c?t=93>  


Platter message rate:  
I actually measured this in bome - see a graph in slide 83 of this pdf. This enabled to improve the latency a bit by combining messages and making it predictive, but it doesn't reach HID feeling of course.   
<https://github.com/pestrela/dj_maps/blob/main/ddj_1000/1%20-%20BOME%20version/2%20-%20Documentation/Installation%20Guide%20-%20BOME%20mappings.pdf>  

BOME programming vs GUI:  
fully agreed. I've made a lot of on the CMDR TSI editor, but I rarely use it these days.   
Instead my TSI is basically remote control, and all logic was moved to BOME which is far easier to program.  
<https://cmdr-editor.github.io/cmdr/>  

this was also the solution to th extremely disturbing slowness of the preferences window, that happens when you create more pages to have more than 8 variables  
<https://pestrela.github.io/dj_kb/traktor_slow_prefs/>  


Regarding your help:  
I have found several MIDI issues over the years on the DDJ implementation.  

The biggest one is that the DDJ-800 has no MIDI jog screens, even tough they are described in the documentation.  
<https://pestrela.github.io/dj_kb/free_mappings/#missing-jog-screens-on-ddj-800-and-ddj-1000srt>  

This is a list of smaller tickets / bugs. Only one was successfully fixed.  
<https://pestrela.github.io/dj_kb/free_mappings/#list-of-ddj-1000-firmware-bugs-open-tickets>  

 
 