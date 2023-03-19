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
	if Resolution of Snake Charmer is 0:
		say "     While navigating past the various enclosures and hazards within the zoo, your gaze - roaming for possible danger - pauses upon what appears to be a snake, albeit one of the giant persuasion. Slowing to a stop in your wandering to focus on the snake, you glean more details, sating your curiosity. With a giant, serpentine lower body blending seamlessly into a similarly large humanoid upper body, what you initially assumed to be an ordinary(ish) snake appeared to actually be some manner of giant naga. The naga gently sways its head back and forth, hissing and flicking its tongue in a hypnotic dance. Proving the effectiveness of such a tactic is an anthro pelican, held within those muscular coils with its head slowly swaying to and fro, mirroring the naga's movements. As you watch, the naga moves closer to the pelican, pulling it upwards out of its coils as its blunted snout yawns wide.";
		LineBreak;
		if vorelevel is 1: [No vore]
			say "     Your heart sinks as you realise what you're about to witness, breaking your eyes away from the scene and assuring yourself there's nothing you can do. You quickly move away from the area, leaving the sounds of a content predator behind you.";
			now Resolution of Snake Charmer is 100;
			now Snake Charmer is resolved;
		else if vorelevel is 2: [Normal vore]
			say "     Your heart sinks as you realise what you're about to witness, wanting to turn away but too captivated to do so - perhaps affected by the naga's dance as the pelican is. You watch with morbid curiosity as the naga's mottled hands guide the pelican's head and shoulders into its double-hinged maw, the little bird making no move to resist as it's pulled into the dark, wet depths. The sheer strength of the muscles within the naga's throat are on full display as the white-feathered avian swiftly disappears within the serpentine snout. The last of the pelican you're able to see are its webbed feet before the naga's snout closes shut. The naga gives a final swallow before letting out a happy hiss, your eyes tracking the bulge in its throat as it travels downwards towards its likely final destination, becoming indistinguishable amongst the scales of that serpentine lower body.";
			WaitLineBreak;
			say "     The naga's eyes turning towards you are enough to break you from your trance, its gaze seductive and full of desire, though you believe more the latter. Turning your gaze away and breaking eye contact before you fall prey to the same tactic as the pelican, you swiftly move away from the area.";
			now Resolution of Snake Charmer is 101;
			now Snake Charmer is resolved;
		if vorelevel is 3: [More vore]
			say "     Your heart sinks as you realise what you're about to witness, wanting to turn away but too captivated to do so - perhaps affected by the naga's dance as the pelican is. You watch with morbid curiosity as the naga's mottled hands guide the pelican's head and shoulders into its double-hinged maw, the little bird making no move to resist as it's pulled into the dark, wet depths. The sheer strength of the muscles within the naga's throat are on full display as the white-feathered avian swiftly disappears within the serpentine snout. The last of the pelican you're able to see are its webbed feet before the naga's snout closes shut. The naga gives a final swallow before letting out a happy hiss, your eyes tracking the bulge in its throat as it travels downwards towards its likely final destination, becoming indistinguishable amongst the scales of that serpentine lower body.";
			WaitLineBreak;
			say "     The naga's eyes turning towards you are enough to break you from your trance, its gaze seductive and full of desire, though you believe more the latter. Despite what you'd just witnessed, your gaze remains locked with the naga's own, the serpentine predator's content smile developing into a full-blown grin. Curiously enough, however, instead of luring you into its scaled clutch as it likely had the pelican, the naga breaks the gaze of its own accord. Your eyes follow the naga as it slithers around a nearby enclosure, disappearing from sight. Despite it now being gone from view, its hypnotic eyes remain in your mind, encouraging you to seek it out again.";
			now Resolution of Snake Charmer is 1;
	else if Resolution of Snake Charmer is 1:
		say "     Wandering through the zoo once again, you find your pace slowing to a crawl until you stop entirely. Momentarily confused, you see a vision of a hypnotic gaze in your mind, and realisation floods through you. Turning on the spot, you find your eyes once again settling upon serpentine scales. The naga from before, the one who'd locked eyes with you, is staring at you through the bars of a nearby cage. He is coiled up with his arms resting upon his tail, staring at you as you stand there in confusion. As you notice him, his tongue flicks out of his mouth, waggling in the air for a moment before disappearing back within. You're nigh-instantly enraptured by his eyes, and at this close distance - only a few feet between you and the bars - you're able to note their coloration. A deep, rich emerald, almost glowing in your mind, embedding themselves into your senses.";
		LineBreak;
		say "     The door to the cage is right in front of you and you idly think that perhaps this situation had been orchestrated by the naga. You're unable to think on the matter as a tingling suggestion fills your thoughts. 'Open the cage'. [bold type]You get the feeling that opening the cage would be a good idea, but with those emerald eyes staring so deeply into yours, you can't really be sure if that is true or not.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Open the cage. You should open the cage.";
		say "     ([link]Y[as]y[end link]) - Don't open the cage. Walk away before you do.";
		if Player consents:
			[say "     Approaching the cage with a slight stutter to your step..."]
			wait for any key;
			now battleground is "Void";
			the Player was ended by "Naga";
			trigger ending "Player was consumed";
			end the story saying "You were consumed by a hypnotic naga";
		else:
			say "     Shaking your head, you back away from the cage. Making the effort of breaking eyesight with the naga, you feel the emerald burn of his eyes as he watches you turn to leave. He hisses behind you, sounding annoyed but oddly... Impressed. You have this feeling of certainty, that you will see him again."
			now Resolution of Snake Charmer is 3;
	else if Resolution of Snake Charmer is 3:
		say "     Once again you find yourself wandering in the zoo, though this time with a creeping sense of anticipation. Unfortunately, while that sense only seem to increase, nothing comes to satisfy. It would seem that for the moment, there'll be no resolution here, leaving you to move on.";
		[Third time's the charm, so to speak.]
		[The naga directly wraps up the player, not to consume, but to talk.]
		[For now, there is no resolution.]