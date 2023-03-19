FenZoo by Fenekku begins here.

Section 1 - Snake Charmer

[original by Kaleem mcintyre, rewritten and expanded by Fenekku]

Table of GameEventIDs (continued)
Object	Name
Snake Charmer	"Snake Charmer"

Snake Charmer is a situation.
ResolveFunction of Snake Charmer is "[ResolveEvent Snake Charmer]".
Sarea of Snake Charmer is "Zoo".

when play begins:
	add Snake Charmer to BadSpots of VoreList;

to say ResolveEvent Snake Charmer:
	say "     While navigating past the various enclosures and hazards within the zoo, your gaze - roaming for possible danger - pauses upon what appears to be a snake, albeit one of the giant persuasion. Slowing to a stop in your wandering to focus on the snake, you glean more details, sating your curiosity. With a giant, serpentine lower body blending seamlessly into a similarly large humanoid upper body, what you initially assumed to be an ordinary(ish) snake appeared to actually be some manner of giant naga. The naga gently sways its head back and forth, hissing and flicking its tongue in a hypnotic dance. Proving the effectiveness of such a tactic is an anthro pelican, held within those muscular coils with its head slowly swaying to and fro, mirroring the naga's movements. As you watch, the naga moves closer to the pelican, pulling it upwards out of its coils as its blunted snout yawns wide.";
	LineBreak;
	if vorelevel is 1: [No vore]
		say "     Your heart sinks as you realise what you're about to witness, breaking your eyes away from the scene and assuring yourself there's nothing you can do. You quickly move away from the area, leaving the sounds of a content predator behind you.";
	else if vorelevel is 2 or vorelevel is 3: [Normal vore]
		say "     Your heart sinks as you realise what you're about to witness, wanting to turn away but too captivated to do so - perhaps affected by the naga's dance as the pelican is. You watch with morbid curiosity as the naga's mottled hands guide the pelican's head and shoulders into its double-hinged maw, the little bird making no move to resist as it's pulled into the dark, wet depths. The sheer strength of the muscles within the naga's throat are on full display as the white-feathered avian swiftly disappears within the serpentine snout. The last of the pelican you're able to see are its webbed feet before the naga's snout closes shut. The naga gives a final swallow before letting out a happy hiss, your eyes tracking the bulge in its throat as it travels downwards towards its likely final destination, becoming indistinguishable amongst the scales of that serpentine lower body.";
		if vorelevel is 3: [More vore]
			say "     The naga's eyes turning towards you are enough to break you from your trance, its gaze seductive and full of desire, though you believe more the latter. Despite what you'd just witnessed, your gaze remains locked with the naga's own, the serpentine predator's content smile developing into a full-blown grin. Curiously enough, however, instead of luring you into its scaled clutch as it likely had the pelican, the naga breaks the gaze of its own accord. Your eyes follow the naga as it slithers around a nearby enclosure, disappearing from sight. Despite it now being gone from view, its hypnotic eyes remain in your mind, encouraging you to seek it out again.";
		else if vorelevel is 2: [Normal vore still]
			say "     The naga's eyes turning towards you are enough to break you from your trance, its gaze seductive and full of desire, though you believe more the latter. Turning your gaze away and breaking eye contact before you fall prey to the same tactic as the pelican, you swiftly move away from the area.";
	now Snake Charmer is resolved;