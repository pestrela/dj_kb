
# Traktor software


## Why I use Traktor:

Traktor has unique features - big and small - that I depend on.  
Other softwares have nice unique features too, but I built my workflows on these specific ones.

Posts:

* [a) Preview files on the Browse Encoder](#why-i-use-traktor-a-preview-files-on-the-browse-encoder)
* [b) Avoid creating playlists (Folder filtering)](#why-i-use-traktor-b-avoid-creating-playlists-folder-filtering)

* [c) Avolid creating playlists (Mass relocate)](#why-i-use-traktor-c-avolid-creating-playlists-mass-relocate)

* [d) MIDI mapping variables (ie, Modifiers and Conditions)](#why-i-use-traktor-d-midi-mapping-variables-ie-modifiers-and-conditions)
* [e) Hotcues move the temporary cue as well](#why-i-use-traktor-e-hotcues-move-the-temporary-cue-as-well)
* [f) Strong Beat Sync](#why-i-use-traktor-f-strong-beatsync)


more info: <https://github.com/pestrela/dj_kb#why-i-use-traktor>

See also [which features I miss in Traktor](#Which-features-I-miss-in-Traktor), and [STEMS info](#How-to-create-your-own-karaoke-files-automatically-using-Stems-and-AI).






## Why I use Traktor: a) Preview files on the Browse Encoder
 
I have a massive collection [of many different styles](os_folders).  
Traktor enables me to quickly **navigate and hear** this collection without moving my hand.  
Other softwares lack "MIDI modifiers" - they are required to share the encoder with different actions.  


**More details**: 

[This video](https://www.youtube.com/watch/BYNpNWP25qY) shows the below workflow:

* Turn the Browse encoder to select a track
* Press it to start listening the preview player
* **Without moving your hand**: turn the encoder to seek inside the preview player
* Release the button to stop listening
* Continue searching the next track

This idea came from the S4 MK3 (see at 14:55 in [this video](https://youtu.be/q4vZZjH1wEI?t=898))

**Software suport:**

* **Traktor**: it has modifiers, so it is trivial to use the browser encoder to *either* seek or search
* **DJay**: misses encoder seeking, modifiers to share encoder, and PP "hold" interaction ([forum request](https://community.algoriddim.com/t/preview-player-enable-seeking-with-the-browser-encoder/42175)))
* **VirtualDJ**: it will probably be fully supported 
* **Rekordbox**: preview player is only with the mouse
* **Serato**: It doesnt have preview player at all
 
 
 
 
 
 
 
## Why I use Traktor: b) Avoid creating playlists (Folder filtering)

Traktor allows searching inside any OS folder.  
This allows me use the OS folders without DJ playlists.  
Other softwares just show the folders, but do not enable searching inside them.  

**More details**: 

I don't have DJ playlists inside Traktor; instead, my OS-folders are my "virtual playlists".  
I have a very large collection with dozens of genres, sub-genres and decades. For that I've created a structure where each decade is a separate folder, inside a parent genre/sub-genre folders.

When I'm playing a specific genre I can search only that decade (=OS folder). If I want something else I can always search the whole collection at any time.
([See this blog post for more detail on these methods](#how-to-manage-your-collection-using-operating-systems-folders-and-without-dj-playlists-ie-using-only-finder-windows-explorer-etc))

**Software suport:**

* **DJay**: TBD
* **Rekordbox:** it  displays OS folders, but you can't search inside them. [Example of Pioneer forum request](https://forums.pioneerdj.com/hc/en-us/community/posts/115018095303-Reasons-to-think-i-leave-from-rekordbox-?page=1#community_comment_360000392646)
* **Serato:** it has a nicer way to display OS folders, but you can't search inside them
* **VDJ:** it has really good OS-searches, better than traktor, by having a "recurse" option to see all sub-folder files in a flat view





## Why I use Traktor: c) Avolid creating playlists (Mass relocate)

Traktor supports **mass relocate** to automatically repair the database ("consistency check").  
This allows me to RENAME files at will - it repairs the database on startup.  
Other softwares only support MOVING files around, not RENAMING them. Even there, the repair move operation is a manual process.  


**More details**:

I RENAME and MOVE files very regularly at the OS-folders level, using Windows Explorer/macOS finder.

When Traktor starts, it does a "consistency check" to confirm if all files are still there. (demo: [0:24 of this video](https://www.youtube.com/watch?v=i_zYavcCa7k&t=24s)). This finds all missing files in a single go (demo: [0:50 of this video](https://www.youtube.com/watch?v=i_zYavcCa7k&t=50))  
Then, the mass-relocate process fixes everything in a single go as well; you just select the root folder that contains your files "somewhere". In the extreme worst case this would be your whole hard drive. (demo: [5:36 of this video](https://www.youtube.com/watch?v=i_zYavcCa7k&t=320s)).

The relocate process is reasonably straightforward for MOVED files. However it is much much harder for RENAMED files.

Traktor is the only software that achives that because it fingerprints everything in a private field called "[AudioId](https://www.mail-archive.com/mixxx-devel@lists.sourceforge.net/msg05061.html)")

When the mass-relocate process ends, everything is magically found again. Crucially all metadata is kept: CUE points, beat grid, analysed BPM, stripe, etc.  
Together with the OS-search feature described below, this enables me to use folders as "virtual playlists".

**Software suport:**

* **Rekordbox v6:** V6 fixed this problem, well done! However it is not a solution because of the [missing XML export issue](#issues-of-the-V6-Rekordbox-migration---major)
* **Rekordbox v5:** Renamed files need to be relocated FILE by FILE.  
Moved files can be done FOLDER by FOLDER.  
If this manual process is skipped, the files are seen as brand new, losing all meta-data.  
[An external tool](https://github.com/edkennard/rekordbox-repair) helps the moved files case. [Example of Pioneer forum request](https://forums.pioneerdj.com/hc/en-us/community/posts/115018095303-Reasons-to-think-i-leave-from-rekordbox-?page=1#community_comment_360000392646)
* **VDJ:** Everything needs to be relocated FILE by FILE.
* **Serato:** To test
* **DJay**: to test


 
 
 
 
## Why I use Traktor: d) MIDI mapping variables (ie, Modifiers and Conditions)

Traktor supports complex MIDI mapping with 8x variables, 3x bits states, 2x conditionals, and infinite actions per MIDI input.  
This allows me to add functions to exiting buttons, eg having the preview player on the browse encoder.  
Other softwares do not support variables at all.  


**More details**:

My [DDJ-1000 mapping has FX chains of the Jogwheel](https://github.com/pestrela/dj_maps/tree/main/ddj_1000/). For a demo, see at 6:30 of this video: https://www.youtube.com/watch?v=h9tQZEHr8hk&t=392s   
My [AKAI AMX mapping has 10 layers built using shifts and states](https://github.com/pestrela/dj_maps/tree/main/akai_amx) to cram A LOT more functionality than the existing buttons.  
This is only possible if midi mapping has variables and multiple actions per physical input.  


**Software suport:**

* **DJay**: It only has 1x modifier, with one bit state [forum request](https://community.algoriddim.com/t/traktor-style-modifiers-and-conditions/11849). This enables one shifted layer. It has internal variables [for the pad modes](https://community.algoriddim.com/t/how-to-work-with-modifiers-in-the-midi-mapping-xml/32183/12), but these are not geberal. It supports multiple actions per input, but it is [not deterministic](https://community.algoriddim.com/t/hotcues-should-move-the-start-cue-as-well/42180/).
* **Rekordbox:** No variables at all, no multiple actions. They only allow you to assign a single command to a single button. 
* **Serato:** No variables at all, no multiple actions. They only allow you to assign a single command to a single button. 
* **VDJ:** VDJ is even better than traktor, has it has a full scripting language built-in ([VDJscript](https://www.virtualdj.com/wiki/VDJscript.html)). 

It features infinite variables, conditions and states; Traktor only has 8 variables, 2 conditions and 8 states.
VDJ also features extremely nice [mapping editor](https://www.youtube.com/watch?v=4SU2OyDB9PQ&t=200),
  [pad editor](https://www.youtube.com/watch?v=eT1nZVpUUr8&t=50),
  and [custom button editor](https://www.youtube.com/watch?v=nGbw2RHV_j0&t=180), all with dropdowns and chained together.

See also ["Why I moved to BOME midi mapping"](#BOME-mappings-migration).




## Why I use Traktor: e) Hotcues move the temporary cue as well

Traktor allows me to use the hotcues as "bookmarks". Ie, after selecting the mix-in hotcue, I want the big round button to be there already. Same story for loops.  
Other softwares treat the hotcues as independent of the floating cue (AKA "start cue").

Demo video: https://www.youtube.com/watch?v=tINljMwc4Co


**Software suport:**

* **DJay**: This can be added in midi mapping, but it is broken - it moves the cue [to random places](
https://community.algoriddim.com/t/hotcues-should-move-the-start-cue-as-well/42180/)
* **Serato:** No option to move the temporary cue when pressing a hotcue. This causes massive confusion to me every single time. This would be trivial to fix using advanced MIDI mapping.
* **Rekordbox:**: this was an issue [for years](https://forums.pioneerdj.com/hc/en-us/community/posts/360021313752-Is-there-any-way-at-all-to-reassign-the-cue-button-to-cue-to-the-most-recently-selected-hot-cue-rather-than-only-being-used-to-make-cue-points-). I *think* it is now fixed with a new option.
* **Comparison to VDJ:** untested, but not a problem for sure (trivial to change using advanced MIDI mapping)





## Why I use Traktor: f) Strong BeatSync

Traktor features a very strong master clock that was built for the remix decks. As such its sync is in general stronger than the other softwares I tested. 
Using Beatsync the phrasing is always kept for any action I might do to the track: Beatjump, Hot cues, Temporary Cue, Pitch bend, Tempo change, Scratch, etc.


**Software suport:**

* **Serato:** see [this comparison video](https://www.youtube.com/watch?v=pyAj4IyFNCs). Even there I still found myself having the "gold" sync instead of the desired "blue" sync
* **Rekordbox:** It has the best sync outside Traktor 
* **VDJ:** untested
* **DJay:** tbd

See also: <https://djtechtools.com/2011/10/23/looking-into-sync-power-functions-in-traktor-2/>
    
    
    
    
    
## Which features I miss in Traktor

Specific features:

* **#1: Elastic beatgrids**: This is crucial as I play very old music and many music styles. [tool](#how-to-emulate-elastic-beatgrids-in-traktor)
* **#2: Include subcrates** just like [serato](https://support.serato.com/hc/en-us/articles/227626268-Subcrates)
* **#3: Pioneer DDJ**: Plug-and-Play to Pioneer gear / DDJ controllers, because this is the [most popular equipment today](https://github.com/pestrela/music/tree/master/census_graphs)
* **#4: Pad modes**: I have multiple pad modes in my mappings, but would love to see them on screen, and have an associated pad editor just like Rekordbox and VirtualDJ
* **#5: Turntable FX**: Turntable start&stop on the [play/pause button](https://www.youtube.com/watch?v=EPnmyDiaJTE)
* **#6: Video support**
* **#7: [VDJscript](https://www.virtualdj.com/wiki/VDJscript.html)**, with a lot more than 8x variables and 2x conditions
* **#8: Smart playlists** and related tracks

In general I fully agree with [this Digital DJ Tips article](https://www.digitaldjtips.com/2019/10/what-next-for-traktor/). Generic comments:

* **#1:** “Please embrace hardware partners again…”
* **#2:** “Please speed up software development!”
* **#3:** “Please, no more reinventing the wheel :)”

But in the end Traktor has [has unique features that I depend on](#why-is-traktor-my-software-of-choice).

See also the [most popular DJ softwares census](https://github.com/pestrela/music/tree/master/census_graphs).

## Include subcrates like serato

Serato has an option to enables very easy **local searches** on a folder and its sub-folders only. 

From the [serato manual](https://support.serato.com/hc/en-us/articles/360001013076-Intro-Setup):  
"Crates Include Subcrates: When enabled, Crates in your Library will also show the contents of any included Subcrates. "

Something similar could be done with smartlists, but this feature works automatically for any folder and for any tree structure.

For example, given this structure:

```
Music collection
  Dance
  Rock
  HipHop
    Old school
      file1
      file2
    New hiphop
      file3
      file4
```

in Traktor, clicking on "hiphop" will show nothing. This is because the files are inside the specific playlists.
in Serato, same story if "include subcrates" is OFF; however, if "include subcrates" is ON, then clicking hiphop will show 4 files, taken from both oldschool and new school.

This concept is similar how the whole collection contains all files from all playlists, but generalized to specific localized folders with ONLY its sub-folders contents. So no mixing of hip-hop with dance, and all of this automatic for any tree structure.


## How to create your own karaoke files automatically using Stems and AI

**Update:** this is now [realtime in DJay](https://www.digitaldjtips.com/2020/06/djay-pro-ai-talkthrough-review/) and [VirtualDJ](https://www.digitaldjtips.com/2020/06/virtual-dj-2021-real-time-stems/). 
Well done!!!  

[Stems](https://www.youtube.com/watch?v=grgjIhs-OC8) is a new file format that contains 4 sub-tracks you can mix on your own. 
This is read and manipulted nativelly by Traktor.
 
[Spleeter](https://www.theverge.com/2019/11/5/20949338/vocal-isolation-ai-machine-learning-deezer-spleeter-automated-open-source-tensorflow)
 is a open-source AI tool that quickly isolates the vocals in any song, producing four seprate audio files. 
 ([Another link](https://deezer.io/releasing-spleeter-deezer-r-d-source-separation-engine-2b88985e797e)).
 
[Stemgen](https://github.com/axeldelafosse/stemgen) is a script that groups several programs to generate a stem file automaticalyy

[NUO stems](https://github.com/dj-nuo/nuo-stems) is the same idea, but fully packaged, supported, and with helper functions to [clone the existing cues]([traktor_clone_cues.py](#about-traktor_clone_cuespy)
) to the new files.

Want to just have a quick go with stems? [This pack](https://www.native-instruments.com/en/specials/stems-for-all/free-stems-tracks/) has example tracks.  
Of which I recommend these files:

* LM_StockholmSyndrome.stem.mp4
* NR_FeverLine.stem.mp4
* PR_OhNo.stem.mp4


**Update:**

Spleeter claims VirtualDJ uses it:  
<https://github.com/deezer/spleeter#projects-and-softwares-using-spleeter>

VirtualDJ claims otherwise:  
<https://www.virtualdj.com/forums/235562/General_Discussion/FAQ_about_VirtualDJ_2021.html>


## Traktor Readme and Changelog

These documents are useful to understand the history of Traktor, and the latest version notes:

* <https://github.com/pestrela/music/blob/master/traktor/tools_traktor/Traktor_Pro_Changelog.pdf>
* <https://github.com/pestrela/music/blob/master/traktor/tools_traktor/Traktor_Pro_Readme.pdf>

See also the interview with the [lead Traktor Programmer](https://github.com/pestrela/music/blob/master/pic_sets/traktor_interview/Interview%20with%20the%20lead%20Traktor%20programmer.pdf).

TBD: add original reviews of every major traktor version to show the evolution


## List of traktor resources and software

See the this "awesome" list in github:
<https://github.com/mktg/AwesomeTraktor>



