
  
# Traktor Elastic Beatgrids  

This section covers Elastic beatgrids in Traktor
* [Which tracks have multiple BPMs](#Which-tracks-have-multiple-BPMs)
* [What are Elastic Beatgrids](#What-are-Elastic-Beatgrids)
* [Softwares with Elastic Beatgrids](#Which-softwares-support-Elastic-Beatgrids)
* [Traktor emulated Elastic Beatgrids](#How-to-emulate-elastic-beatgrids-in-Traktor)
* [Traktor emulated Elastic Beatgrids (more accurate)](#How-to-emulate-Elastic-Beatgrids-in-Traktor---More-complex-workflow)
* [Which tracks benefit from emulated Elastic beatgrids](#Which-tracks-benefit-from-emulated-Elastic-beatgrids)



## Which tracks have multiple BPMs

Two types of tracks have multiple BPMs:

* **Unsteady BPMs:** 
    * Definition: these tracks floats around a single BPM (+-1% range). Examples:
    * Live drummers: [Guns N' Roses - Sweet Child O' Mine](https://www.youtube.com/watch?v=1w7OgIMMRc4)
    * Old disco / 80s Pop tracks: [Matia Bazar - Ti Sento](https://www.youtube.com/watch?v=uk7bR54G2BA)
* **Transition Tracks:**
    * Definition: these tracks have clear BPM changes (+-10% range). Examples:
    * Abrupt 85->115 bpm: [Magic Drum Orchestra - Drop it like its Hot](https://youtu.be/W-nrHptw4Ow) 
    * Smooth 126->98 bpm: [Planet Soul - Set me Free](https://www.youtube.com/watch?v=v5HEfbxk7Mw)

more lists:
[list1](https://www.reddit.com/r/DJs/comments/2hmtgc/do_you_know_of_any_house_songs_that_increase_in/)
[list2](https://www.reddit.com/r/DJs/comments/ybt30/transition_tracks/)


## What are Elastic Beatgrids

"Elastic beatgrids" is a feature that explicitly allows **multiple BPMs** in each track.

Without elastic beatgrids, the following becomes impossible to perform without the audience noticing:

* **Beatjumps:** 
    * Impossible to fix in advance because the jump happens instantaneously
* **FX BPM-synced effects:** (eg delay)
    * Impossible to fix in any situation, because FX fully depend on the beatgrid
* **AutoLoops:**
    * IN point: with quantize off, you have to enable the loop at precisely the right time
    * OUT point: In this case you have to immediately enter "loop out adjust mode" to fix the out point as fast as you can    
* **Sync beatmatch:**
    * In this case you HAVE to compensate continuously using the jogwheels on the whole eg. 60s transition (manual beatmatch)


## Which softwares support Elastic Beatgrids

Traktor misses elastic beatgrids. This was the #1 request from the [Digital DJ Tips interview](https://www.youtube.com/watch?v=iFcnImYgsII&feature=youtu.be&t=199) as well.

| Software | Elastic Beatgrids | Multiple Beatmarkers | Video |
|-----------|-------------------|------------------------------|----------------------------------------------------------------------------------------|
| **RekordBox** | yes | yes (see note1) | https://youtu.be/aTHFpwSMsZI?t=499 |
| **Serato** | yes | yes | https://youtu.be/wLt5fhZJGps&t=420 |
| **VirtualDJ** | yes | yes | https://youtu.be/PrKBerB2n3I?t=49 |
| **Traktor** | no | yes | [main discussion thread](https://www.native-instruments.com/forum/threads/how-to-fix-tracks-with-unsteady-bpms-using-just-traktor-pro.114480/) |
| **Denon Prime** | no | no (see note2) | https://www.youtube.com/watch?v=bqhDRX6ghfM&t=598 |


**Note1:** Manually beatgriding tracks in rekordbox is tricky because its a strictly left-to-right operation.\
In other words: there is no way to put beatmarkers in front of the track without deleting them at the middle/end as well. 
[more info](https://forums.pioneerdj.com/hc/en-us/community/posts/115010528306)\
**Note2:** Denon Prime [wraps tracks](https://www.youtube.com/watch?v=bqhDRX6ghfM&t=598) and has problems with ID3tag [whole BPM numbers](https://www.reddit.com/r/DenonPrime/comments/cfxqr2/prime_4s_trusted_bpm_aka_why_using_the_bpm_tag_is/). 



## How to emulate Elastic Beatgrids in Traktor


Below a recipe to **approximate** Elastic beatgrids in Traktor, automatically using Rekordbox conversion.\
The simplest method is presented first, then a more accurate/faster method is presented second.

**Important:** this is only applicable for unsteady tracks 
([more info](#Which-tracks-benefit-from-emulated-Elastic-beatgrids)). 

**Simple method:** 

1. Download the free V5 rekordbox: [link](https://rekordbox.com/en/download5/)
1. Select the tracks with single, but unsteady, BPMs: [guide](https://rekord.cloud/blog/should-you-analyze-your-tracks-with-dynamic-bpm-in-rekordbox) 
1. Analyse these tracks in dynamic mode: [guide](https://rekord.cloud/blog/should-you-analyze-your-tracks-with-dynamic-bpm-in-rekordbox)
1. Export your collection.xml: [guide](https://rekord.cloud/wiki/library-import)
1. Convert your this file from Rekordbox format to Traktor format: [guide](#which-dj-converters-avoid-the-26ms-shift-issue)
1. Import your files into Traktor: [guide](https://rekord.cloud/wiki/library-export) 

![traktor_elastic_beatgrids2](pics/traktor_elastic_beatgrids2.jpg?raw=true)

 
## How to emulate Elastic Beatgrids in Traktor - More complex workflow

This is a revised version of the [basic workflow(#How-to-emulate-Elastic-Beatgrids-in-Traktor). 

Benefits are more accuracy of the end result because it adds additional beatmarkers every 4 beats, 
it avoids the [26ms mp3 shift issue](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares)
and its a lot faster by limiting the tracks and by directly patching the cues in the collection (instead of regular importing the files).



**Concrete differences:**

1. Download specifically v5.6.0 rekordbox. 
    * This was the last without an XML import bug: [guide](https://www.youtube.com/watch?v=JV89dj1hDWM)
1. Manually remove the non-dynamic tracks from the XML.
    * There is no way to export specific playlists/tracks, you always get the whole collection
    * so by manually removing the tracks the later stages will be a lot faster  
1. Use [rekordbox_add_beatmarkers.py](https://github.com/pestrela/music/blob/master/traktor/tools_traktor/rekordbox_add_beatmarkers.py) 
    * This will force a beatmarker every 4 beats. 
    * These beatmarkers are very accurate because it still uses the dynamic BPM **before** conversion. 
1. Use a converter that specifically addresses the 26-ms shift issue: [guide](#which-dj-converters-avoid-the-26ms-shift-issue)
1. Patch your files into Traktor using [Traktor_clone_cues.py](#about-traktor_clone_cuespy)

![traktor_elastic_beatgrids3](pics/traktor_elastic_beatgrids3.jpg?raw=true)
 
[Traktor forum post](https://www.native-instruments.com/forum/threads/how-to-emulate-elastic-beatgrids-in-traktor-via-rekordbox-conversion.375229/)

## Which tracks benefit from emulated Elastic beatgrids?

**Unsteady tracks: YES**

* **Examples:** 80s Pop, 70s DiscoSound, Live drummers (any decade)
* **Typical range:** +- 1% bpm error
* **Error:** Very small; the error is reset every 4th beat will always reset it

**Transition tracks: NO**

* **Examples:**
    * [Magic Drum Orchestra - Drop it like its Hot](https://youtu.be/W-nrHptw4Ow) 85->115 bpm, Abrupt change
    * [Planet Soul - Set me Free](https://www.youtube.com/watch?v=v5HEfbxk7Mw) 126->98 bpm, Smooth change
* **Typical range:** +- 15% bpm  (change from 3/4 to 4/4 signature)
* **Error:** Too much; the 3rd beat will have an half beat error (see picture)
    * Note: setting beatmarkers every 1 beat breaks Traktor sync dynamics
  
![traktor_elastic_beatgrids1](pics/traktor_elastic_beatgrids1.jpg?raw=true)



 
 
 