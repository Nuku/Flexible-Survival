Snake Charmer by Fenekku begins here.

[original by Kaleem mcintyre, rewritten and expanded by Fenekku]

[ Resolution of Snake Charmer:					]
[ 0: First encounter							]
[ 1: Naga wishes to see the player again		]
[ 2: Player didn't resist. Player was eaten		]
[ 3: Player resisted Naga - Naga likes Player	]
[ 4: Player accepted the Naga					]
[ 100: Player doesn't want to see vore			]
[ 101: Player rejected the Naga					]

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Snake Charmer	"Snake Charmer"

Snake Charmer is a situation.
ResolveFunction of Snake Charmer is "[ResolveEvent Snake Charmer]".
Sarea of Snake Charmer is "Zoo".

when play begins:
	add Snake Charmer to BadSpots of VoreList;
	add Snake Charmer to BadSpots of MaleList;
	add Snake Charmer to BadSpots of MindcontrolList;

to say ResolveEvent Snake Charmer:
	if Resolution of Snake Charmer is 0:
		say "     While navigating past the various enclosures and hazards within the zoo, your gaze - roaming for possible danger - pauses upon what appears to be a snake, albeit one of the giant persuasion. Slowing to a stop in your wandering to focus on the snake, you glean more details, sating your curiosity. With a giant, serpentine lower body blending seamlessly into a similarly large humanoid upper body, what you initially assumed to be an ordinary(ish) snake appears to actually be some manner of giant naga. The naga gently sways its head back and forth, hissing and flicking its tongue in a hypnotic dance. Proving the effectiveness of such a tactic is an anthro pelican, held within those muscular coils with its head slowly swaying to and fro, mirroring the naga's movements. As you watch, the naga moves closer to the pelican, pulling it upwards out of its coils as its blunted snout yawns wide.";
		if vorelevel is 1: [No vore]
			say "     Your heart sinks as you realize what you're about to witness, breaking your eyes away from the scene and assuring yourself there's nothing you can do. You quickly move away from the area, leaving the sounds of a content predator behind you.";
			now Resolution of Snake Charmer is 100;
			now Snake Charmer is resolved;
		else: [Normal or higher vore]
			say "     Your heart sinks as you realize what you're about to witness, wanting to turn away but too captivated to do so - perhaps affected by the naga's dance as the pelican is. You watch with morbid curiosity as the naga's mottled hands guide the pelican's head and shoulders into its double-hinged maw, the little bird making no move to resist as it's pulled into the dark, wet depths. The sheer strength of the muscles within the naga's throat are on full display as the white-feathered avian swiftly disappears within the serpentine snout. The last of the pelican you're able to see are its webbed feet before the naga's snout closes shut. The naga gives a final swallow before letting out a happy hiss, your eyes tracking the bulge in its throat as it travels downwards towards its likely final destination, becoming indistinguishable amongst the scales of that serpentine lower body.";
			WaitLineBreak;
			say "     The naga's eyes turning towards you are enough to break you from your trance, its gaze seductive and full of desire, though you believe more the latter. Despite what you'd just witnessed, your gaze remains locked with the naga's own, the serpentine predator's content smile developing into a full-blown grin. Curiously enough, however, instead of luring you into its scaled clutch as it likely had the pelican, the naga breaks the gaze of its own accord. Your eyes follow the naga as it slithers around a nearby enclosure, disappearing from sight. Despite it now being gone from view, its hypnotic eyes remain in your mind, encouraging you to seek it out again.";
			now Resolution of Snake Charmer is 1;
	else if Resolution of Snake Charmer is 1:
		say "     Wandering through the zoo once again, you find your pace slowing to a crawl until you stop entirely. Momentarily confused, you see a vision of a hypnotic gaze in your mind, and realization floods through you. Turning on the spot, you find your eyes once again settling upon serpentine scales. The naga from before, the one who'd locked eyes with you, is staring at you through the bars of a nearby cage. They are coiled up with their arms resting upon their tail, staring at you as you stand there in confusion. As you notice them, their tongue flicks out of their mouth, waggling in the air for a moment before disappearing back within. You're nigh-instantly enraptured by their eyes, and at this close distance - only a few feet between you and the bars - you're able to note their coloration. A deep, rich emerald, almost glowing in your mind, embedding themselves into your senses.";
		say "     The door to the cage is right in front of you and you idly think that perhaps this situation had been orchestrated by the naga. You're unable to think on the matter as a tingling suggestion fills your thoughts. 'Open the cage'. [bold type]You get the feeling that opening the cage would be a good idea, but with those emerald eyes staring so deeply into yours, you can't really be sure if that is true or not.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Open the cage. You should open the cage.";
		say "     ([link]N[as]n[end link]) - Don't open the cage. Walk away before you do.";
		if Player consents:
			LineBreak;
			say "     You approach the cage with a stuttering step, reaching for the door and grasping the cold metal bars. At this point, all you can think about is the naga's emerald eyes, and you feel there's no turning back. Pulling the door open, you hear the amused hissing of the naga as they watch you enter the cage. 'Little prey,' a dominant yet clearly masculine voice slips from his lips. 'So easily swayed.' The sound of scales on stone is the only indication you get that he is moving - all your focus is on his eyes. You don't even react as he starts slithering around you, trapped just as the pelican from before. His words sink into your mind alongside his eyes, holding you in place while he wraps your [bodytype of player] body in his coils, tightening around you and pressing your arms to your sides. 'No walking away this time.'";
			say "     Bringing his snout close to your face, he looks at you directly, so tantalizingly close. His breath washes over you, hinting at the warmth within. 'I saw your eyes as you saw mine, little prey. You saw my desire, but I saw yours.' He was right, of course. You couldn't even think of him being wrong right now, your head slowly nodding. He hisses a laugh at your acceptance, flicking his tongue against your face, 'So deliciously sweet,' before pulling away. Your heart starts to pound in your chest as [if player is not naked]the naga's hands guide you out of your clothing. 'Can't have any extras ruining your taste.' Soon enough, you're naked within his coils. Nude and trapped, [end if]you watch that predatory mouth yawn open before you. The pink flesh of the inside of his mouth revealed to your entranced sight, the darkness within inviting, you find yourself eager for him to take you. You don't have to wait long, as once that dual-hinged maw opens wide enough, he brings it down over your head.";
			WaitLineBreak;
			say "     The coils holding you in place slowly relax, pushing you upwards into waiting hands that tug and pull at you as much as the muscles within that undulating throat. Saliva covers your skin, lubricating you and easing your way into his mouth with every tug and pull. Serpentine as he is, his throat stretches wide to accommodate you as you slide into his mouth halfway, sinking deeper and deeper with every second that passes. Your body escapes his coils as he tilts his head back, hands gripping you and guiding you deeper, your head leading the charge down and inside. You are enveloped fully in darkness, and despite your heart hammering in your chest, you are calm. His emerald eyes still stuck with you as your lower body vanishes from outside, keeping you placated.";
			trigger ending "Snake Charmer Consumed";
			end the story saying "You were consumed by a hypnotic naga.";
		else:
			LineBreak;
			say "     Shaking your head, you back away from the cage. Making the effort of breaking eyesight with the naga, you feel the emerald burn of his eyes as he watches you turn to leave. He hisses behind you, sounding annoyed but oddly... Impressed. You have this feeling of certainty, that you will see him again.";
			now Resolution of Snake Charmer is 3;
	else if Resolution of Snake Charmer is 3:
		say "     Once again you find yourself wandering in the zoo, though this time with a creeping sense of anticipation. Your instincts prove to be correct when the sound of scales sliding rapidly across the ground comes from behind you. Before you can react, your [bodytype of player] body is wrapped up in strong serpentine coils, trapping your arms against your side and preventing you from mounting any sort of resistance. 'No running away this time, little prey,' the slight hiss of the naga's voice speaks directly into your ear. 'Though perhaps that title isn't quite accurate.' Moving around in front of you, you're once again face-to-face with the hypnotic naga, closer than you'd ever been before. You try to avert your eyes, but those emerald orbs are once again taking most of your focus. 'You're the first I've met able to resist my gaze.' The serpent approaches, tongue flicking against your face. 'And as such, I believe you worthy to be my mate.'";
		say "     You feel the grip of the naga's coils tighten for a bit, becoming almost painfully tight, before suddenly relaxing. The naga moves his face a bit away from yours, giving you room to free your arms from his coils. As well as physical release, your mind also seems to be freed from the naga's hypnotic influence - for the moment, allowing you to think freely. It's clear the Naga finds your resistance attractive, enough to desire you as more than just prey. The question then becomes if you're willing to reciprocate that desire, or reject him. [bold type]You're certain that you won't see him again if you reject him.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept his advances, and everything that entails.";
		say "     ([link]N[as]n[end link]) - Reject his advances; you're not interested.";
		if Player consents:
			LineBreak;
			say "     The naga's face develops into a smile, genuine yet somewhat predatory. It would seem the naga is pleased that you've accepted his advances. The naga approaches you once again, looking deep into your eyes, 'Then come, my mate, and show me your acceptance.'";
			LineBreak;
			NagaSex;
			now Resolution of Snake Charmer is 4;
		else:
			LineBreak;
			say "     The naga's expression dips slightly at your denial. 'Truly?' His voice sounds hurt, but you nod, assuring him that you're unable - or unwilling - to return his affections. He is quiet for a moment, before nodding. 'Very well, I shall respect your decision.' The coils once relaxed around you start to withdraw as the naga pulls away from you, moving to a respectful distance. 'I will remember you as the first to resist my gaze, but nothing more. I will not seek you again.' With another nod, the naga turns and slithers away from you, slowly picking up speed and vanishing into the depths of the zoo.";
			say "     You only stay standing there for a moment more before remembering the situation you're in. The naga's gaze vanishes completely from your mind, enough that you can no longer even remember what his eyes looked like. But, your decision made, you go your own way.";
			now Resolution of Snake Charmer is 101;
		now Snake Charmer is resolved;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
4	"Naga Mate"	Naga Mate	"[EventConditions_NagaMate]"	Zoo Entryway	2500	8	50

to say EventConditions_NagaMate:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Naga Mate	"Naga Mate"

Naga Mate is a situation.
Prereq1 of Naga Mate is Snake Charmer.
Prereq1Resolution of Naga Mate is { 4 }.
ResolveFunction of Naga Mate is "[ResolveEvent Naga Mate]".
Sarea of Naga Mate is "Zoo".

to say ResolveEvent Naga Mate:
	say "     'Hello, my mate,' you hear a slightly hissing voice speak from behind you. Turning to look, you smile slightly as you see the naga approaching. 'It's been a short while.' You nod, responding that it has as he slithers up, letting his coils gather around you as he circles you, before soon settling in front of you. 'So, my mate, now that we're together once again, shall we show each other that we are still mates?'";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - It's time to mate.";
	say "     ([link]N[as]n[end link]) - Not right now.";
	if Player consents:
		LineBreak;
		say "     'Well, my mate. After our first session together, I'm curious as to what you have in mind this time.' Letting you decide once again, he eagerly waits.";
		LineBreak;
		NagaSex;
	else:
		LineBreak;
		say "     'I understand.' The naga nods, starting to pull his coils out and away from you. 'The world is cruel at the moment. Dangerous. Stay safe, my mate.' With that said, he gently slithers past you, rubbing your shoulder as he passes before disappearing whence he came into the zoo.";

to NagaSex:
	say "     The naga calls on you to show him you are his mate. How will you do so?";
	[Define a list of choices to display to the player]
	let NagaSex_Choices be a list of text;
	if player is female:
		add "Snakes have two dicks, you have two holes for them." to NagaSex_Choices;
		[if Vagina Tightness of player is >=3:
			add "Have him stuff your slit" to NagaSex_Choices;]
	[if Asshole Tightness of player is >=3:
		add "Have him stuff your ass" to NagaSex_Choices;]
	add "Show him with your mouth." to NagaSex_Choices;
	[add "Maybe he should show you this time? Put that tongue to work" to NagaSex_Choices;]
	let NagaSex_Choice be what the player chooses from NagaSex_Choices;
	if NagaSex_Choice is:
		-- "Snakes have two dicks, you have two holes for them.":
			LineBreak;
			say "     The naga grins lecherously at the suggestion, bringing his hands to your hips as his dicks slowly emerge from the slit where his torso flows into coils, the scales there neatly parting to reveal the hidden treasure there. He speaks no words, his actions oddly romantic despite the situation. Reaching your hands out to those lengths, you gently rub at - and then grasp - one of the hemipenes, the firm length throbbing in your grip. The naga lets out a small hiss at your touch, seemingly a bit pent up as you move your other hand down, grasping and stroking at the other length. The naga's coils move a bit closer, holding you up as he moves a hand to your own crotch, reciprocating your touch with fingers sliding over your [Ass Description of player]. Poking and prodding at your rear entrance with delving, scaled fingers before moving even further to touch against your [Cunt Adjective of player] lips which are glistening with slight arousal, his touch causing you to let out a small gasp, before you refocus your attention on pleasing his lengths. Stroking and squeezing up and down the duo of dicks, any pre escaping sliding down the lengths helping with lubrication as you get him ready to fuck you silly.";
			say "     His fingers rub at your lips for a moment, before one is spared to slide between and into you, your slit quivering around the intruding digit as it slides deeper and deeper, halfway then all the way right up to his knuckle. He swirls it around inside you for a moment before pulling it out and replacing it with another finger, getting both his fingers - and your pussy - slick with lubrication. You let your gaze wander upwards, a small moan escaping your mouth, seeing his lustful expression as he looks down upon you, his emerald orbs looking into yours with a sense of enjoyment and eagerness, though restrained for the moment.";
			WaitLineBreak;
			say "     Pulling his fingers from your slit all at once, he instead moves to swirl them around your rear entrance, using your natural lubricant to lube up your anus, swirling around the hole before delving into it, one by one, each finger depositing more lube to prepare you for what is to come. Distracted by his fingers, you remove your hands from his shafts, squirming slightly in his coils. Seeing this, he lets out a small hiss of a laugh. 'I shall tease you no longer, my mate,' he says, affectionately, removing his fingers and once again placing his hands upon your hips. Leaning you back gently, guiding you to lay back upon his coils which move to hold you, the naga moves up atop you, his shafts sliding up along your legs to aim right at your now well-lubricated holes. You bring your hand down between your legs to help him as he gets into position, guiding one tip to poke at your slit, while the other pokes at your backdoor. Once done, you look him in the eyes and nod, signaling him to thrust upwards, burying both lengths halfway into your holes with a moan escaping your not-wholly-prepared maw.";
			say "     From there, it's as though the naga is taken by his pent-up lust, as before you're even fully accommodated to his size, his shafts start sliding out of your holes. Preparing yourself as best you can, you force your clenching holes to relax before he thrusts forward again, burying his lengths further inside you. A shuddering hiss escapes his maw as he starts to build into a rhythm, burying himself into you before pulling back, then burying himself even further within. He doesn't pull out all the way, nor does he hilt into you, his dicks too close together to be able to perform such a feat. Despite such, he doesn't lack in eagerness, nor speed as he starts picking up the pace, rocking you on his coils and making his scales rub against your back. It is only mildly uncomfortable, a kind of thing easily ignored by the pleasure radiating outwards from your canal and asshole, clenching and rippling over his lengths as moans escape your maw in harmony with his hisses of apparent pleasure.";
			WaitLineBreak;
			say "     His hips shudder along with his cocks as he grips you with his hands, his coils moving and shifting in rhythm with his thrusting, rocking you both back and forth akin to a bed. All too soon his thrusts become frantic, inconsistent, the lovemaking coming to a shuddering peak from your end first. Crying out into the air of the zoo, you orgasm around his hemipenes, milking him with both holes as you leak around him and onto his scales. The naga isn't too far behind, a few more thrusts before he slams as close to you as he can, shuddering all over as his dicks start unloading into you, spurt after spurt of cum filling your insides, even giving you a bit of pudge from the sheer amount he pumps into you.";
			say "     You huff and pant, riding the waves of orgasm with a filling sense of contentment. The naga does the same, his muscles relaxing, letting you slide back downwards, your feet once again touching the ground as his hemis slowly retreat into his genital slit.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Naga";
			CreatureSexAftermath "Player" receives "AssFuck" from "Naga";
			WaitLineBreak;
		-- "Show him with your mouth.":
			LineBreak;
			say "     The naga raises an eyeridge at your suggestion, but doesn't complain. Instead, he relaxes back upon his coils, allowing you to inspect his form, which gives you perspective to see the tips of his hemipenes poking out of his genital slit. Spotting the beginnings of his arousal, you waste no time moving forward, leading with your hands to start rubbing at the scales there, to an amused hiss from your current partner. Despite his amused response, your touch does elicit a reaction, his tips emerging more, pushing those scales apart as they emerge. Encouraged, you keep up your rubbing, moving your hands closer and closer to that opening - and when the tips are a good bit out you start bringing your mouth into play, as planned. Poking out your tongue, you dart forward and drag it over the duo of tips before you, resulting in three things happening at once. One, you think about how interesting his taste is; two, you hear him let out a hiss of restrained pleasure; and three, you watch those lengths suddenly surge upwards out of his slit.";
			say "     This, of course, doesn't deter you in the slightest. Far from it. Moving forward once again, you bring your tongue back to those lengths, licking up between them to get both at once as they throb before you, while you bring your hands up to press them together against your tongue, being rewarded with the shuddering of scales at your actions. When your tongue reaches those tips, pressed close together, you open your mouth wide and take both inside, immediately suckling on the tips while your tongue continues its work, licking and rubbing over those shafts, giving you his taste in full, including the pre that beads on his pent-up lengths. 'Ahh, expert mouthplay,' his voice reaches your ears, encouraging you to dive deeper onto his dick, taking it further into your mouth, which also helps you to work yourself into a rhythm, bobbing up a bit before going down again, his dicks poking at the back of your mouth, the point of no return.";
			WaitLineBreak;
			say "     His hands move to the back of your head as further encouragement, rubbing at your ears as you bob there for a moment, licking over his lengths. Steeling yourself, you soon take the plunge, angling your throat as you go down further on his dicks, spearing their way down your throat, causing his hands to tighten a bit on your ears before relaxing as he hisses out, the tightness of your throat seemingly spurring him onwards to orgasm, though not quite reaching that high yet. With his dicks in your throat, your breathing is restricted, but you continue heedless, bobbing and sucking. Even starting to swallow, causing your throat to ripple and milk his lengths, trying to tug them down into your stomach below, where his pre is gathering as he leaks.";
			say "     Your hands move away from his lengths due to the lack of room your mouth is taking up. He's so deep in your throat, and you see blackness round the edges of your vision as you plunge down even further. You hit a barrier soon enough, unable to go down further without bending his hemis - which refuse the attempts to mild discomforted noises from the naga. Instead, you hold there, as deep as you can, and swallow repeatedly, wrapping your tongue around and between the lengths, trying to get him to cum. You don't have to wait long, as he hisses out loudly, his dicks starting to jump in your maw, and you feel seed pumping into your stomach. With the end in sight, you start pulling back, the blackness fading as you pull air back in through your nose. Once again breathing, you're forced to swallow between breaths as he keeps pumping and pumping, some of his cum landing on your tongue allowing you to taste it. You don't falter, swallowing every drop as it comes, filling you up with his seed and removing any hunger you may have had with his nutritious load.";
			CreatureSexAftermath "Player" receives "OralCock" from "Naga";
			PlayerEat 5;
			WaitLineBreak;
			say "     After a good bit of pumping, his dicks soon start firing blanks, throbs slowing to a stop, allowing you to pull away from his crotch and smile up at him, moving back to give him room as he straightens up, his dicks slowly retreating into their home.";
	say "     The naga breathes a bit heavy after your lovemaking session, slowly uncoiling from around you to free you fully as he nods towards you. 'Thank you, my mate, and apologies for my... rough nature. I have been without for too long.' You nod back, reassuring him as he smiles. 'I shall seek you out again, my mate. Until then, stay safe.' His words spoken, the naga gives a small wave before turning and starting to slither away, leaving you with a warm sense of satisfaction, and a good bit of fullness.";

Section 2 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Snake Charmer Consumed"	"BadEnd"	"Eaten"	Snake Charmer Consumed rule	1	false

This is the Snake Charmer Consumed rule:
	if ending "Snake Charmer Consumed" is triggered:
		say "     Held within the naga's stomach, the muscles slowly caress and undulate over you, softening your form more and more. You soon fall asleep, lulled by the movements and the naga's hypnotizing gaze, still sticking with you. You don't wake up again, as the naga's body digests you, breaking your body down and softening you into a nutrient-rich goo, feeding the naga for days to come.";
		the Player is dead;


Snake Charmer ends here.