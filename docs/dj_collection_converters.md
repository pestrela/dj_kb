

 
# DJ collection converters

## What is the 26ms shift issue when converting cues/loops between softwares?

* We have found that 6% of the files have a shift of 26 milliseconds when going from Traktor to Rekordbox. The other 94% of the files will be fine.
* This shift is very noticeable and breaks beatgrids/loops. See below for a graphical example of this issue.
* Root issue is different interpretations of the **tricky MP3 LAME tag** (and their derivations  LACV/LAVF). Issues are:
* **Zero LAME CRC ("case c"):**
  * Traktor doesn't accept the LAME tag, but interprets the whole MPEG frame as "music", producing 26ms of garbage; 
  * Rekordbox the same, but skips the whole MPEG frame instead.
* **LAVC/LAVF reduced tags ("case b"):**
  * Traktor produces 26ms of garbage because it doesnt understand this tag; 
  * Rekordbox accepts the tag as a control frame
* Please see [this blog post](#which-dj-converters-avoid-the-26ms-shift-issue) to know who implemented this work


| Case | Signature  | TK->RB Correction  |
| ------ | ----- | ---- |
| case A | No headers | 0 ms |
| case B | Only xing OR lavc | 26 ms |
| case C | Invalid lame crc | 26ms |
| case D | Valid lame crc| 0 ms |


## 26ms shift issue links
* 26ms research work: <https://github.com/digital-dj-tools/dj-data-converter/issues/3>
* Examples of corner cases: <https://github.com/pestrela/music/tree/master/traktor/26ms_offsets/examples_tagged>
* Analysis code: <https://mybinder.org/v2/gh/pestrela/music/master>

![26ms_problem](pics/26ms_problem.png?raw=true)

## 26ms shift algorithm

```
if mp3 does NOT have a Xing/INFO tag:
     case = 'A'
     correction = 0ms
 
 elif mp3 has Xing/INFO, but does NOT have a LAME tag OR has a lavc tag:
     case = 'B'
     correction = 26ms
 
 elif LAME tag has zero CRC or an invalid CRC:
     case = 'C'
     correction = 26ms
     
 elif LAME tag has valid CRC:
     case = 'D'
     correction = 0ms
```     
     

## Which DJ converters avoid the 26ms shift issue?

Historically, there was no way to convert your collection on Windows. The only converters available were for MacOS. This has now changed recently.\
All softwares take different approaches to solve the [26ms shift problem](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares).

This is the current situation as far as I tested it myself:
* **[DJ Data Converter](https://github.com/digital-dj-tools/dj-data-converter)**: This is a command line tool for Windows, WSL, and macOS. This is where the full research of the [26ms shift problem](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares) was done, and where it was first implemented. This is [another python converter](https://github.com/ErikMinekus/traktor-scripts/blob/master/playlist-export.py).
* **[Rekord Cloud](https://rekord.cloud/wiki/convert-library)**: This is a web application, so it supports all OSes. It also has many other useful features other than DJ conversion. The authors have [read the research](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares), implemented it for the 26ms case, and then extended it for virtualDJ with a 50ms value. As it is a web app, it created added an offline optional app just to scan shift mp3s.
* **[DJCU](https://www.facebook.com/DJConversionUtility/posts/568896026977298)**: This is a macOS-only application. Recently it got the hability to convert windows files, but still from macOS only. They have a manual tool to correct the shifts after conversion (REKU). More recently they correct shifts automatically using the encoder strings. This is something that I researched before and replaced with LAME/LAVC/LAVF tags instead.
* **[Rekordbuddy](https://next.audio/)**: This is also a macOS-only application. A Windows version is on the works for many years. This app corrects some shift cases correctly automaticlaly, but it misses others as well (when I tested it on a macOS VM).
* **[MIXXX](https://github.com/mixxxdj/mixxx/pull/2119#issuecomment-533952875)**: A new upcoming feature is reading Rekordbox-prepared USB sticks nativelly. This is of course affected by the 26ms problem. Like rekordcloud, the developers have [read the research](#what-is-the-26ms-shift-issue-when-converting-cuesloops-between-softwares) and implemented it for their case (which depends on the several mp3 libraries they use).
* **[Mixo](https://support.mixo.dj/guides)**: To be tested. Mixo is an upcoming web application that does cloud-based conversion among many other features. At time of writing this is not publicly available. I've contated the team by email, and they told me they are aware of the 26ms shift issue.

## What is the source code that implements the 26ms algorithm?

I've aware of 4x different implementations of [the 26ms shift algorithm](#26ms-shift-algorithm)

* DJ Estrela
  * This is coded in bash, and parses the output of the eyeD3 and mp3guessenc tools to generate a CSV
  * <https://github.com/pestrela/music/blob/master/traktor/26ms_offsets/bin/mp3_check_encoder.sh#L813>
  * eyeD3 calculates the crc of the first 190 bytes, and then confirm if it matches the contents at byte 190:192
  * <https://github.com/nicfit/eyeD3/blob/master/eyed3/mp3/headers.py#L576>
* Mixxx
  * This is coded in C, and slightly modified from the mp3guessenc source
  * It was also extended to the offsets produced by 3 different decoders
  * <https://github.com/mixxxdj/mixxx/blob/fc9810508d92f702ead7ef9e63bb76f4afd6b245/lib/mp3guessenc-0.27.4/tags.c#L515>
  * <https://github.com/mixxxdj/mixxx/pull/2119#issuecomment-533952875>
* DJ Data converter:
  * This is coded entirely in Clojure
  * <https://github.com/digital-dj-tools/dj-data-converter/blob/master/src/converter/offset.cljc#L14>
  * <https://github.com/digital-dj-tools/mp3-parser/blob/master/src/mp3_parser/lame.cljc#L36>
* Rekordcloud:
  * Unknown language, because it is closed source. 
  * This was extended to virtualDJ as well, with the same concept of "cases"

## Rekorbuddy goes open-source

Rekordbuddy is going to be open source. See the DJworx article [here](https://djworx.com/teaser-free-world-exclusive-rekord-buddy-goes-open-source/)

Full support to this decision. Open-source enables Freedom to improve the code, which in turn drives distributed innovation. 

I already worked with other open-source projects dj-data-converter and MIXXX on the [26ms shift issue](#dj-collection-converters)
, and will do the same with rekordbuddy.

The request from Damien is clear: 

"I need help with support on the forums. I need help with the manual. 
I need help testing the app and I need help coding it to add new features. 
If you can help with any of these things, DM me here on the forums."

So please join this effort - 3 out of 4 of the above require no coding skills! 


