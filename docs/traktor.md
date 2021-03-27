
# Traktor software


## Why is Traktor my software of choice

Traktor has unique features - big and small - that I depend on.\
Other softwares have nice unique features too, but I built my workflows on these specific ones.

Posts:
* [a) Automatic database repair (mass relocate)](#why-is-traktor-my-software-of-choice-a-automatic-finds-moved--renamed-files-mass-relocate)
* [b) OS Search (no playlists)](#why-is-traktor-my-software-of-choice-b-os-search-no-playlists)
* [c) Advanced MIDI mapping](#why-is-traktor-my-software-of-choice-c-advanced-midi-mapping)
* [d) Hotcues move the temporary cue as well](#why-is-traktor-my-software-of-choice-d-hotcues-move-the-temporary-cue-as-well)
* [e) Stronger Sync than others](#Why-is-Traktor-my-software-of-choice-e-Stronger-Sync-than-others)

more info: <https://github.com/pestrela/dj_kb#why-is-traktor-my-software-of-choice>

See also [which features I miss in Traktor](#Which-features-I-miss-in-Traktor), and [STEMS info](#How-to-create-your-own-karaoke-files-automatically-using-Stems-and-AI).


## Why is Traktor my software of choice: a) Automatic finds Moved / Renamed files (mass relocate)

Traktor is above to find RENAMED files fully automatically without losing CUE points, beat grid or re-analysis.

I RENAME and MOVE files very regularly at the OS-folders level, using Windows Explorer/macOS finder.

When Traktor starts, it does a "consistency check" to confirm if all files are still there. (demo: [0:24 of this video](https://www.youtube.com/watch?v=i_zYavcCa7k&t=24s)). This finds all missing files in a single go (demo: [0:50 of this video](https://www.youtube.com/watch?v=i_zYavcCa7k&t=50))\
Then, the mass-relocate process fixes everything in a single go as well; you just select the root folder that contains your files "somewhere". In the extreme worst case this would be your whole hard drive. (demo: [5:36 of this video](https://www.youtube.com/watch?v=i_zYavcCa7k&t=320s)).

The relocate process is reasonably straightforward for MOVED files. However it is much much harder for RENAMED files.\
Traktor is the only software that achives that because it fingerprints everything in a private field called "[AudioId](https://www.mail-archive.com/mixxx-devel@lists.sourceforge.net/msg05061.html)")

When the mass-relocate process ends, everything is magically found again. Crucially all metadata is kept: CUE points, beat grid, analysed BPM, stripe, etc.\
Together with the OS-search feature described below, this enables me to use folders as "virtual playlists".
* **Comparison to Rekordbox v6:** V6 fixed this problem, well done! However it is not a solution because of the [missing XML export issue](#issues-of-the-V6-Rekordbox-migration---major)
* **Comparison to Rekordbox v5:** Renamed files need to be relocated FILE by FILE.\
Moved files can be done FOLDER by FOLDER.\
If this manual process is skipped, the files are seen as brand new, losing all meta-data.\
[An external tool](https://github.com/edkennard/rekordbox-repair) helps the moved files case. [Example of Pioneer forum request](https://forums.pioneerdj.com/hc/en-us/community/posts/115018095303-Reasons-to-think-i-leave-from-rekordbox-?page=1#community_comment_360000392646)
* **Comparison to VDJ:** Everything need to be relocated FILE by FILE.
* **Comparison to Serato:** To test.


## Why is Traktor my software of choice: b) OS-search to use (no playlists)

Traktor allows searching inside any OS folders. I don't have DJ playlists inside Traktor; instead, my OS-folders are my "virtual playlists".\
I have a very large collection with dozens of genres, sub-genres and decades. For that I've created a structure where each decade is a separate folder, inside a parent genre/sub-genre folders.\
When I'm playing a specific genre I can search only that decade (=OS folder). If I want something else I can always search the whole collection at any time.\
([See this blog post for more detail on these methods](#how-to-manage-your-collection-using-operating-systems-folders-and-without-dj-playlists-ie-using-only-finder-windows-explorer-etc))
* **Comparison to Rekordbox:** Rekordbox displays OS folders, but you can't search inside them. [Example of Pioneer forum request](https://forums.pioneerdj.com/hc/en-us/community/posts/115018095303-Reasons-to-think-i-leave-from-rekordbox-?page=1#community_comment_360000392646)
* **Comparison to Serato:** Serato has a nicer way to display OS folders, but you can't search inside them
* **Comparison to VDJ:** VDJ has really good OS-searches, better than traktor, by having a "recurse" option to see all sub-folder files in a flat view



## Why is Traktor my software of choice: c) Advanced MIDI mapping
  
Traktor supports complex MIDI mapping with 8x variables, 2x conditionals and any number of actions per MIDI input

My [DDJ-1000 mapping has FX chains of the Jogwheel](https://github.com/pestrela/dj_maps/tree/main/ddj_1000/). For a demo, see at 6:30 of this video: https://www.youtube.com/watch?v=h9tQZEHr8hk&t=392s \
My [AKAI AMX mapping has 10 layers built using shifts and states](https://github.com/pestrela/dj_maps/tree/main/akai_amx) to cram A LOT more functionality than the existing buttons.\
This is only possible if midi mapping has variables and multiple actions per physical input.
\
* **Comparison to Rekordbox:** No variables at all, no multiple actions. They only allow you to assign a single command to a single button. 
* **Comparison to Serato:** No variables at all, no multiple actions. They only allow you to assign a single command to a single button. 
* **Comparison to VDJ:** VDJ is even better than traktor, has it has a full scripting language built-in ([VDJscript](https://www.virtualdj.com/wiki/VDJscript.html)). 
It features infinite variables, conditions and states; Traktor only has 8 variables, 2 conditions and 8 states.\
  VDJ also features extremely nice [mapping editor](https://www.youtube.com/watch?v=4SU2OyDB9PQ&t=200),
  [pad editor](https://www.youtube.com/watch?v=eT1nZVpUUr8&t=50),
  and [custom button editor](https://www.youtube.com/watch?v=nGbw2RHV_j0&t=180), all with dropdowns and chained together.

See also ["Why I moved to BOME midi mapping"](#BOME-mappings-migration).


## Why is Traktor my software of choice: d) Hotcues move the temporary cue as well

**Update:** I've now made a video to show this  request: https://www.youtube.com/watch?v=tINljMwc4Co

I use the hotcues as internal "bookmarks". In Traktor, pressing a hotcue moves the temporary cue as well.\
This is very useful for  previewing an old song that you dont remember anymore. When you are done, you just move it to the last point using the big round button.
* **Comparison to Rekordbox:** No option to move the temporary cue when pressing a hotcue. This causes massive confusion to me every single time. This would be trivial to fix using advanced MIDI mapping. [This was requested in their forum](https://forums.pioneerdj.com/hc/en-us/community/posts/360021313752-Is-there-any-way-at-all-to-reassign-the-cue-button-to-cue-to-the-most-recently-selected-hot-cue-rather-than-only-being-used-to-make-cue-points-)
* **Comparison to Serato:** untested
* **Comparison to VDJ:** untested, but not a problem for sure (trivial to change using advanced MIDI mapping)

## Why is Traktor my software of choice: e) Stronger Sync than others

Traktor features a very strong master clock that was built for the remix decks. As such its sync is in general stronger than the other softwares I tested. 
Using Beatsync the phrasing is always kept for any action I might do to the track: Beatjump, Hot cues, Temporary Cue, Pitch bend, Tempo change, Scratch, etc.

* **Comparison to Serato:** see [this comparison video](https://www.youtube.com/watch?v=pyAj4IyFNCs). Even there I still found myself having the "gold" sync instead of the desired "blue" sync
* **Comparison to Rekordbox:** It has the best sync outside Traktor 
* **Comparison to VDJ:** untested

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


## Traktor Readme and Changelog

These documents are useful to understand the history of Traktor, and the latest version notes:
* <https://github.com/pestrela/music/blob/master/traktor/tools_traktor/Traktor_Pro_Changelog.pdf>
* <https://github.com/pestrela/music/blob/master/traktor/tools_traktor/Traktor_Pro_Readme.pdf>

See also the interview with the [lead Traktor Programmer](https://github.com/pestrela/music/blob/master/pic_sets/traktor_interview/Interview%20with%20the%20lead%20Traktor%20programmer.pdf).

TBD: add original reviews of every major traktor version to show the evolution

