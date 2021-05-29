

 
# BOME mappings migration

Traktor has advanced MIDI mapping ([link](https://bit.ly/2NrlVzy)), which is important to extend its longevitity.

However every year Controllers get more complex, so doing mappings today ranges between hard to impossible ([link](https://bit.ly/2NrlVzy)).

Some other anedotic evidence on this are the [preferences freeze](https://www.native-instruments.com/forum/threads/preferences-window-freeze.328315/page-2#post-1870879), 
the turntable play/pause looper, the DDJ-1000SRT missing jog screens, 
and the HC-4500 mapping to get track details.

**Specific Blog posts:**
* [a) Impossible mapping features](#Why-I-moved-to-BOME-midi-mapping-Impossible-features)
* [b) Possible, but with major limits](#Why-I-moved-to-BOME-midi-mapping-Traktor-limits)
* [c) BOME limits](#Some-Limitations-of-BOME-mappings)
* [d) Future of Traktor mappings](#How-I-see-the-future-of-Traktor-mappings)

Because of this all my latest mappings require [BOME](https://www.bome.com/products/miditranslator).\
(The older versions do not require BOME and are simpler to install).


![bome_versions](pics/bome_versions.jpg?raw=true)

  
## Why I moved to BOME midi mapping: Impossible features

* **#1: 14-bit out messages**: Trakor supports *receiving* high resolution midi messages. I need to *send* them as well [on my DDJ-1000 mapping](https://github.com/pestrela/ddj/1%20MIDI%20codes/DDJ-1000RB%20-%20MIDI%20Messages.pdf)
* **#2: Sequence of Events**: For PadFX, I *first* need to change the FX, and *then* need to turn it on. This is not something Traktor support; both actions are tried simultaneously resulting in something else. More info: page 88 of the [Rudi Elephant mapping](pics/RUDI-Js%20ELEPHANT%20TSI%20for%20VCI-400SE%20%2B%20Maschine%20(MK1)%20%2B%20BCR%202000%20v2.0.pdf).
* **#3: Timers**: Something simple as end-of-track blinking require timers to schedule actions for later. Same story for [vinyl break on the play/pause button](https://www.youtube.com/watch?v=EPnmyDiaJTE), as implemented by [Traktor Mapping Service](http://traktormappingservice.com/)
* **#4: Any event as a Conditional**: Some events can be inputs to conditionals, like "is in active loop". However many events are missing, for example "which deck is master." To implement this, please see page 87 of the [Rudi Elephant mapping](pics/RUDI-Js%20ELEPHANT%20TSI%20for%20VCI-400SE%20%2B%20Maschine%20(MK1)%20%2B%20BCR%202000%20v2.0.pdf).

Some of these features are possible in QML
, which i used on the S4Mk3/S8/XDJ-1000mk2, but [is not MIDI](https://www.native-instruments.com/forum/threads/qml-to-midi-out.378533/).



## Why I moved to BOME midi mapping: Traktor Limits

Also, I've also hit the limits of Traktor mappings multiple times. Below are the features that are possible in Traktor but only by significantly increasing the mapping complexity.

* **a) more modifiers**: I use a lot more than [8 modifiers](https://www.native-instruments.com/forum/threads/controllerism-more-modifiers-more-bits-more-conditions.329045/). I use a lot more than 3 bits per modifier state. To go around this I add a lot of complexity to my mappings. This in turn [freezes your preferences](https://www.native-instruments.com/forum/threads/preferences-window-freeze.328315/page-2#post-1870879) window - please see below.
* **b) preferences window freeze:** To add more variables, you need to add extra mapping pages. Having more than 6 pages [freeze your preferences window](https://www.native-instruments.com/forum/threads/preferences-window-freeze.328315/page-2#post-1870879) **even if they are completely empty**.
* **c) more conditionals**: I use a lot more than [2 conditions in my mappings](https://www.native-instruments.com/forum/threads/add-3rd-slot-for-modifier-conditions-in-controller-manager.325569/#post-1622169). To go around this I [squeezed multipe states into each modifier](https://www.traktorbible.com/en/squeezing-modifiers.aspx). Again, this added a lot of complexity to my mappings.
* **d) global modifiers:** I miss [global modifiers](https://www.native-instruments.com/forum/threads/named-variables-operators.326339/#post-1628411), to link the state in multiple pages. More info: page 87 of the [Rudi Elephant mapping](pics/RUDI-Js%20ELEPHANT%20TSI%20for%20VCI-400SE%20%2B%20Maschine%20(MK1)%20%2B%20BCR%202000%20v2.0.pdf).


## Some Limitations of BOME mappings

[BOME](https://www.bome.com/products/miditranslator) is essential to [build my new mappings](#Why-I-moved-to-BOME-midi-mapping-Impossible-features). 
But it also have some improvement points.

In importance order:

* **A) Arrays**: [forum request](https://www.bome.com/support/kb/mt-pro-script-arrays). See also Bug#3 from the FAQ file.
* **B) Cascaded devices**: [forum request](https://www.bome.com/support/kb/cascaded-presets-loopback-devices)
* **C) More variables**: this is a lot more than Traktor, but still not enough as I'm emulating arrays


See also this list of **advanced** posts and tools:
<https://www.bome.com/support/kb/index-of-advanced-posts-and-tools>


## How I see the future of Traktor mappings

A major Traktor strength is the MIDI mappings system. They are over and over praised to be very flexible and powerful.\
Traktor maps are by far the most popular in https://maps.djtechtools.com \
Large mappings are really complex to build - but once this is done other users immediately benefit by just installing them.

However the Traktor mappings system didn't get improvements for years, and [is is now quite old](#Why-I-moved-to-BOME-midi-mapping-Traktor-limits).\
It now is also impossible to use it alone [to map the latest controllers](#Why-I-moved-to-BOME-midi-mapping-Impossible-features).

For example in my DDJ-1000 mapping I had to use BOME midi translator as a middle man:\
https://maps.djtechtools.com/mappings/9279

A second issue is that the most popular Traktor-ready controllers from NI did not got MIDI mapping capabilities at launch, and took quite a while to do so. 
In the case of the S5, this is still not possible (time of writing: May 2020)

In my view the mappings are a unique success story of Traktor. If improved, they could continue to give great results with just some minor quality-of-life changes.

## Comparison of MIDI mapping features

Sadly, Rekordbox midi mapping is the worst of the industry.
Below is a comparison to the other softwares.

|| Capabilities || Software || Features ||
| worst | Rekordbox | simple midi mapping. 1 input = 1 action |
| | Serato | Adds multiple actions for a single input. Has an easy gui |
| | Traktor | Adds 8x modifiers and 2x conditionals |
| | VirtualDJ | Adds scripting language without any limits. Has some timer support |
| | BOME | Adds full timers, raw midi messages, and GOTOs |
| best | MIXXX | javascript that has arrays, records, lists, etc |

## QML to MIDI out

QML to MIDI is a project I want to implement.  
QML has access to detailed information like exact track position, etc.
<https://www.native-instruments.com/forum/threads/qml-to-midi-out.378533/>

Because I'm doing a million tricks to get 14 bit OUT messages:  
<https://forum.bome.com/t/documentating-my-traktor-to-bome-mapping-experiences/1765/4>

The S5 and other advanced controllers expose their wiring to traktor in QML:
https://djtechtools.com/2016/09/23/hack-kontrol-s8s5-screens-advanced-layouts/

Currently we have QML to an HTTP server:  
<https://github.com/ErikMinekus/traktor-api-client>

The is a midi plugin for node.js. Next step is then adding that to the mix:  
<https://jazz-soft.net/doc/JZZ/>

Then BOME can receive this in a indendent device, and do its magic.


## QML changes to NI decks with screens (S5/S8/D2)

The are QML Mods that change the controller screens and gives more features:

* Joe Easton S4 Hack:
 * Official Thread: <https://www.native-instruments.com/forum/threads/348471/>
 * 2019 Review: <https://djworx.com/squeeze-more-out-of-your-kontrol-s4-mk3-screens-with-this-one-easy-hack/>
 * 20 Review: <https://djworx.com/traktor-s4-mk3-screen-hack-hits-version-2-0/>
* Aleix Jiménez Supreme Edition :
  * Official thread: <https://www.native-instruments.com/forum/threads/348539>
* ErikMinekus Kontrol screens:
  * Github: <https://github.com/ErikMinekus/traktor-kontrol-screens>
  * Review: <https://djtechtools.com/2016/09/23/hack-kontrol-s8s5-screens-advanced-layouts/>  
* Kokernutz Kontrol screens:
  * Github: <https://github.com/kokernutz/traktor-kontrol-screens>
  * Review: <https://djtechtools.com/2016/09/23/hack-kontrol-s8s5-screens-advanced-layouts/>
  
To get started with a trivial example, start by changing the waveform colors: <https://codepen.io/niqv/details/VQpOgw>
This is a gentle tutorial on how to change two buttons in QML: <https://kfigiela.github.io/2017/01/16/traktor-kontrol-s5-midi-mapping/> 
This is slightly deeper: https://gist.github.com/kfigiela/9efcb64f8fa80f9aa7251bc61ca54cdc



