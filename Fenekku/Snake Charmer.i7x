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
		say "     Wandering through the zoo once again, you find your pace slowing to a crawl until you stop entirely. Momentarily confused, you see a vision of a hypnotic gaze in your mind, and realisation floods through you. Turning on the spot, you find your eyes once again settling upon serpentine scales. The naga from before, the one who'd locked eyes with you, is staring at you through the bars of a nearby cage. They are coiled up with their arms resting upon their tail, staring at you as you stand there in confusion. As you notice them, their tongue flicks out of their mouth, waggling in the air for a moment before disappearing back within. You're nigh-instantly enraptured by their eyes, and at this close distance - only a few feet between you and the bars - you're able to note their coloration. A deep, rich emerald, almost glowing in your mind, embedding themselves into your senses.";
		LineBreak;
		say "     The door to the cage is right in front of you and you idly think that perhaps this situation had been orchestrated by the naga. You're unable to think on the matter as a tingling suggestion fills your thoughts. 'Open the cage'. [bold type]You get the feeling that opening the cage would be a good idea, but with those emerald eyes staring so deeply into yours, you can't really be sure if that is true or not.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Open the cage. You should open the cage.";
		say "     ([link]Y[as]y[end link]) - Don't open the cage. Walk away before you do.";
		if Player consents:
			say "     You approach the cage with a stuttering step, reaching for the door and grasping the cold metal bars. At this point, all you can think about is the naga's emerald eyes, and you feel there's no turning back. Pulling the door open, you hear the amused hissing of the naga as they watch you enter the cage. 'Little prey,' A dominant yet clearly masculine voice slips from his lips. 'So easily swayed,' the sound of scales on stone is the only indication you get that he is moving - all your focus is on his eyes. You don't even react as he starts slithering around you, trapped just as the pelican from before. His words sink into your mind alongside his eyes, holding you in place while he wraps your body in his coils, tightening around you and pressing your arms to your sides. 'No walking away this time,'"
			LineBreak;
			say "     Bringing his snout close to your face, he looks at you directly, so tantalizingly close. His breathe washes over you, hinting at the warmth within. 'I saw your eyes as you saw mine, little prey. You saw my desire, but I saw yours,' He was right, of course. You couldn't even think of him being wrong right now, your head slowly nodding. He hisses a laugh at your acceptance, flicking his tongue against your face, 'So deliciously sweet,' before pulling away. Your heart starts to pound in your chest as the naga's hands guide you out of your clothing, 'Can't have any extras ruining your taste.' Soon enough, you're naked within his coils. Nude and trapped, you watch that predatory mouth yawn open before you. The pink flesh of the inside of his mouth revealed to you more intimately than you were hoping to see. Yet, the darkness within was inviting, and you find yourself eager for him to take you. You don't have to wait long, as once that dual-hinged maw opens wide enough, he brings it down over your head."
			WaitLineBreak;
			say "     The coils holding you in place slowly relax, pushing you upwards into waiting hands that tug and pull at you as much as the muscles within that undulating throat. Saliva covers your skin, lubricating you and easing your way into his mouth with every tug and pull. Serpentine as he is, his throat stretches wide to accomodate you as you slide into his mouth halfway, sinking deeper and deeper with every second that passes. Your body escapes his coils as he tilts his head back, hands gripping you and guiding you deeper, hips then feet, your head leading the charge down and inside. You were enveloped fully in darkness, and despite your heart hammering in your chest, you were calm. His emerald eyes still stuck with you as your feet vanished from outside, keeping you placated."
			wait for any key;
			now battleground is "Void";
			the Player was ended by "Naga";
			trigger ending "Player was consumed by a hypnotic naga";
			end the story saying "Held within the naga's stomach, the muscles slowly caress and undulate over you, softening your form more and more. You soon fall asleep, lulled by the movements and the naga's hypnotizing gaze, still sticking with you. You don't wake up again, as the naga's body digests you, breaking your body down and softening you into a nutrient-rich goo, feeding the naga for days to come.";
		else:
			say "     Shaking your head, you back away from the cage. Making the effort of breaking eyesight with the naga, you feel the emerald burn of his eyes as he watches you turn to leave. He hisses behind you, sounding annoyed but oddly... Impressed. You have this feeling of certainty, that you will see him again."
			now Resolution of Snake Charmer is 3;
	else if Resolution of Snake Charmer is 3:
		say "     Once again you find yourself wandering in the zoo, though this time with a creeping sense of anticipation. Unfortunately, while that sense only seem to increase, nothing comes to satisfy. It would seem that for the moment, there'll be no resolution here, leaving you to move on.";
		[Third time's the charm, so to speak.]
		[The naga directly wraps up the player, not to consume, but to talk.]
		[For now, there is no resolution.]