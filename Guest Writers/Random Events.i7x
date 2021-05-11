Random Events by Guest Writers begins here.
[Original by Hiccup]
[Several events transferred to Consolidated Outside Events in Song's folder]
[Moved to Guest Writers]

"Adds several new random events that can trigger while exploring. These events have no effect on the gameplay, but they do add more detail to the game world."

Section 1 - The Situations

Table of GameEventIDs (continued)
Object	Name
Wet Clothes	"Wet Clothes"

Wet Clothes is a situation.
ResolveFunction of Wet Clothes is "[ResolveEvent Wet Clothes]".
Sarea of Wet Clothes is "Warehouse".

to say ResolveEvent Wet Clothes:
	say "     While exploring the city, you discover several small piles of shredded clothes. The clothes, a large part of the sidewalk, and several nearby parked cars are completely soaked in spooge. Whatever did this, sprayed gallons of the stuff everywhere, soaking, and probably mutating, all the humans nearby. You decide to leave before whatever did this 'cums' back.";
	increase the score by 1;
	now Wet Clothes is Resolved;

["Politics" event revised in Misc Events file - Pandemonium]

Table of GameEventIDs (continued)
Object	Name
Failed Survivor	"Failed Survivor"

Failed Survivor is a situation.
ResolveFunction of Failed Survivor is "[ResolveEvent Failed Survivor]".
Sarea of Failed Survivor is "Junkyard".

to say ResolveEvent Failed Survivor:
	say "     While exploring the junkyard, you discover a discarded backpack that looks very similar to yours. You open it up and see that the only thing inside is a journal. You look at the journal and start to read it.";
	LineBreak;
	say "     Day 1: When the mutants first appeared I took shelter in an old basement for several days, but I can't stand waiting any longer. I'm going to get out of this crazy city!";
	say "     Day 2: Oh god, why did I ever leave the safety of that basement?! As soon as I stepped outside, some strange creature jumped me and started fucking me! I think it impregnated me, which is very distressing because I was a man before it filled me with its seed.";
	say "     Day 3: My pregnant belly has grown huge in an impossibly short amount of time, but I can't worry about that right now. I've been having trouble thinking straight recently and my mind is being filled with dirty fantasies. That's the least of my problems however, because I think that the creature that fucked me yesterday is following me.";
	say "     Day 4: Can't... think straight... must... fuck.";
	LineBreak;
	say "     The rest of the journal is soaked with so much cum that it's unreadable. You discard it.";
	increase the score by 1;
	now Failed Survivor is Resolved;

Table of GameEventIDs (continued)
Object	Name
Tracks	"Tracks"

Tracks is a situation.
ResolveFunction of Tracks is "[ResolveEvent Tracks]".
Sarea of Tracks is "Plains".

to say ResolveEvent Tracks:
	say "     While exploring around some collapsing buildings, you discover a short trail of footprints leading through some mud. At first, the footprints are human, but the tracks slowly change until they look like they were made by hooves. You follow the tracks as long as you can, but you eventually lose the trail.";
	increase the score by 1;
	now Tracks is Resolved;


[School Spirit, Another Survivor, Masturbating Fox and Giant Egg moved to Consolidated Outside Events in Song's folder]


Random Events ends here.
