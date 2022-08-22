
# Traktor Slow preferences Window
  
This section is all about the slow preferences window.\
I've been able to reduce this from 18 seconds to only 3 seconds.
 
* [Issue explanation](#Why-MIDI-mappings-makes-the-preferences-window-slow)
* [Measurements](#How-slow-does-the-preferences-window-get)
* [Naive solution](#Could-we-just-move-all-entries-to-a-single-page)
* [Swapping configurations](#How-to-swap-Traktor-configurations-without-the-slow-preferences-window)

## Update on version 3.6

UPDATE: Latest 3.6 seems to have fixed this issue.

See at 11 seconds of this video how quickly Stevan Djumic swaps between pages:  
<https://www.youtube.com/watch?v=-Z1ogyvKWY8>
  
## Why MIDI mappings makes the preferences window slow

Traktor has thousands of useless ["MidiDefinition structures"](https://github.com/ivanz/TraktorMappingFileFormat/blob/df5f544d10e3293b72b829841e654da0db71c4b0/Tools/TSI%20Mapping%20Template.bt#L130) 
for every possible midi combination that **COULD** be used.\
This set is much much larger than the entries that are **actually used**.

Worse, these entries are replicated in every single "empty page".

In practice this makes [the preferences window very slow](https://www.native-instruments.com/forum/threads/preferences-window-freeze.328315/). 
For example [Pioneer DDJ-SZ mapping take 18 seconds to load](#How-slow-does-the-preferences-window-get).
A second sign is that it makes the TSI file much larger.

The [CMDR editor](https://github.com/cmdr-editor/cmdr#2020-improvements) removes this overhead 
(see [line 337 of this file](https://github.com/cmdr-editor/cmdr/blob/master/cmdr/cmdr.TsiLib/Device.cs#L337)).\
However Traktor still recreates these entries **per page** anyway.


## How slow does the preferences window get?

Having many midi pages makes the [preferences window slow](#Why-MIDI-mappings-makes-the-preferences-window-slow).

The biggest offender is the Pioneer mappings for the SX2 and SZ controllers. 
They have 14 pages, so it takes >18 seconds for it to load in my laptop.

My mappings are have more functions, but only take ~5 seconds to load because I only use 5 pages.

On my next version I managed to go to 3 pages, for a ~3 second delay.


|            | Version     | Pages | Delay (s) | | Entries (K) | Size (Mb) | Optimized (Mb) |
|------------|-------------|-------|-----------|-|---------|-----------|----------------------|
| Pionner    | v1.0.0      | 14    | 18.4      | | 9.3     | 10.9      | 2.7                 |
| DJ Estrela | v6.7.0      | 5     | 5.2       | | 9.7     | 5.7       | 2.8                 |
| DJ Estrela | v7.1.0      | 2     | 2.5       | | 10.0    | 4.4       | 2.7                 |

[Table Source](pics/traktor_slow_preferences_-_measurements.xlsx)


## Could we just move all entries to a single page?

No. Any complex behavior needs state variables, and each page only has 8 variables per page.

When you run out of variables the simplest action is to add a new page. 

My mappings are [much faster than the Pioneer ones](#How-slow-does-the-preferences-window-get) 
because I specifically shared variables, and I [moved functionality to BOME](#Why-I-moved-to-BOME-midi-mapping-Traktor-limits).

## How to swap Traktor configurations without the slow preferences window

[This script](https://github.com/pestrela/music/blob/master/traktor/tools_traktor/traktor_swap_configuration.sh) lets you swap between two traktor configurations easily. 

This is useful when you sometimes use a controller as your audio device, but other times use your internal sound card. 
This saves you to having to open the preferences window to change the audio device, 
which is [very slow when you have large mappings](https://www.native-instruments.com/forum/threads/preferences-window-freeze.328315/page-2#post-1870879).

**Script installation:**
* save [this script](https://raw.githubusercontent.com/pestrela/music/master/traktor/tools_traktor/traktor_swap_configuration.sh) in your desktop with "right-click"/"save-as"
* make the script executable with 'chmod +x traktor_swap_configuration.sh '
* redefine the 'traktor_root_folder' variable to your documents traktor root
* *run it once* to copy the first config

**First time setup:**
* Open Traktor
* change the config to DDJ-1000
* close traktor
* *run script*
* open traktor
* change config to internal soundcard
* close traktor

**To Activate configuration #1:**
* *run the script*
* open traktor
* confirm the audio card is ddj-1000
* Close taktor

**To Activate configuration #2:**
* *run the script*
* open traktor
* confirm the audio card is Internal Soundcard
* Close taktor

    
    