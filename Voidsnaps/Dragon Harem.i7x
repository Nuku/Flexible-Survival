Dragon Harem by Voidsnaps begins here.

Section 1 - Introductory Event

Table of GameEventIDs (continued)
Object	Name
Curious Door	"Curious Door"

Curious Door is a situation.
ResolveFunction of Curious Door is "[ResolveEvent Curious Door]".
Sarea of Curious Door is "Sinking Swamps".
The level of Curious Door is 16.

to say ResolveEvent Curious Door:
	say "     As you explore the swamps, you can't help but notice something strange out of the corner of your eye. A door follows your every move, appearing on any tree trunk wide enough to accommodate it. Focusing on the strange sight emboldens it, triggering a teleport to the nearest trunk. Hinges swing open just enough to reveal the slightest arcane light. At the same time, a weird, intensely attractive feeling blossoms in the back of your mind. Compulsion aside, you can still choose how to deal with this supernatural phenomenon.";
	say "     [bold type]Do you want to open the door and step inside?[roman type][line break]";
	if Player consents:
		say "     Curious despite a lingering sense of danger, you walk up to the door, looking around to see if you're hallucinating. A quick touch to the door's knob tells you you're not, and the pulsating light behind it appears to react to your touch, its warm glow brightening further until you feel the urge to close your eyes. Powering through, you tug it ajar, covering your face and gasping as a force like a wall of air pushes you forward. As you pick yourself up, you look around in wonder. Rather than the swamp stretching in all directions, a long hallway straight out of a fantasy castle continues for at least forty feet, lined with dark doors covered in chains. These doors give off an ominous feel as if shooing you away, and when you step close to one, electricity zaps you hard enough to draw a yelp. You try to turn around, but there's nothing but an empty wall behind you.";
		say "     'Welcome!' A booming voice echoes through the hall, vibrating your soul. 'This way, this way! Come closer!' Accompanying the strangely omnidirectional sound that almost feels like it's projecting into your brain, lights appear under your feet, trailing off toward the other end of the hall. You get the feeling that you should follow the path they reveal, and with no other choice, you heed it, plodding toward the source of the voice. 'Pleased to meet you.' The voice, once so powerful that you feared it would explode your head, emanates from a pitiful figure behind an imposing desk, its volume far more pleasant. There's a hoarse quality coloring it, giving the impression that its owner isn't used to speaking aloud. 'Apologies for my appearance. I was once quite handsome.'";
		WaitLineBreak;
		say "     You spend a moment examining the speaker. Bandages cover half of his face, shrouding one eye, and his white hair sticks out of gaps in the gauze, along with a strangely shiny patch or two of skin. On the uncovered side, a reptilian eye stares at you from a disfigured middle-aged face with a bag under its eye as if its owner doesn't get much sleep. One hand holds a quill dipped in ink, while the other disappears beneath robes, twisted at an unnatural angle. 'It's not polite to stare.' The mysterious figure flicks the quill with a sigh, causing it to disappear in a spark. 'I'm sure you have many questions, but first.' Snapping his fingers, the stranger magics away the desk, expanding the space around you into a massive square of empty tiles covered in strange runes. 'Could you entertain an old man's whim?' He asks, his voice taking on an unnatural growl and his exposed green eye flashing with an arcane glow.";
		challenge "Dragomancer";
		if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
			if fightoutcome is 22: [submitted]
				say "     Sighing as you give up, the mysterious stranger shakes his head. 'Pity. Thought you were strong enough. I'll call for you again once you're ready.' Pointing toward your prone form, the magician snaps his fingers, and you find yourself returning to the swamp where you first saw the door. A voice echoes in your head as you pick yourself up, and you wince at how loud it is. 'I have an interesting proposition for you. Simply return and defeat me. You won't be disappointed...'";
				TraitGain "Lost Fight" for Soot;
				now Resolution of Curious Door is 2; [Lost or fled.]
			else: [lost]
				say "     Sighing as he finishes you off, the mysterious stranger shakes his head. 'Pity. Thought you were strong enough. I'll call for you again once you're ready.' Pointing toward your prone form, the magician snaps his fingers, and you find yourself returning to the swamp where you first saw the door. A voice echoes in your head as you pick yourself up, and you wince at how loud it is. 'I have an interesting proposition for you. Simply return and defeat me. You won't be disappointed...'";
				TraitGain "Lost Fight" for Soot;
				now Resolution of Curious Door is 2; [Lost or fled.]
		else if fightoutcome > 30: [fled]
			say "      Sighing, the mysterious stranger shakes his head. 'Cowardice. It seems I must continue my search. More's the pity. Off you go.' With a wave of his hand, he sends you flying backwards, out of the hallway and back through a magically opened door to the swamps. You get the feeling you won't get another chance.";
			Now Resolution of Curious Door is 100; [Quest failed.]
		else if fightoutcome < 20: [player won]
			say "      Holding a hand up and wiping sweat from his brow, the twisted mage stops your fight. 'Excellent. It seems that my divination was correct. You are more than qualified.' A soft glow envelops the twisted man, and his back straightens slightly, all trace of your battle melting away. Rolling his shoulder back with a loud crack, he grimaces in the restored hallway, sitting heavily in his chair. 'Apologies for the 'trial by fire,' I needed to confirm my suspicions. You may call me Soot.' Confused, you ask Soot why he brought you here. This place is wildly different from the swamps where you stood moments ago, and a gut feeling tells you that you're not in your world anymore. You don't sense any hostility from the decrepit mage, but you can't help the natural wariness that's kept you alive this long.";
			say "     'Straight to the point. I suppose there's no use beating around the bush.' Directing your attention toward one of the doors nearby, the mage gestures with two fingers, sending the door flying open and revealing what appears to be an enclosure with an elemental theme. In this case, a magma-lit cave, far underground. 'I need your help subduing my life's work. I'm sure you've noticed my- regrettably- marred features by now.' Smiling ruefully and shaking his head, the mage reveals a slight portion of teeth too sharp, jagged, and randomly placed to belong to a human, hiding past thinning lips, before a grimace returns them behind the cloth bandages. 'I'm speaking of dragons. Powerful beings- far above those pale imitations that stalk your city streets and frolic among the waves in your ocean.'";
			WaitLineBreak;
			say "     'In my heyday, I was a dragomancer. I sought heights unknown to the magical community, with dragons as a conduit. With time, I magicked myself into the twisted hybrid you see before you. Only the ancient magic holding my world together could not accept what I'd become, forcing me to retreat into this fold. I've been here for...' Counting off his fingers, the dragomancer loses himself in thought, then shakes his head. 'Far too long to count.' Continuing, he leans back in his chair and sighs. 'The thinning of the veil in your world, brought on by those marvelous little machines, brought with it an opportunity. Your universe is not NEARLY as hostile to my existence, though I'm afraid I no longer have the power to break through its shell.'";
			say "     Suddenly suspicious, you ask the mage whether he has any nefarious plans for your home. It's not like you can do anything if he plans to keep you here, as you can't find an exit, but you don't appreciate manipulation. 'Hah. I assure you, I wouldn't dare. However, I'm not the one you should be worrying about. Those who seek to claim your land are already there- quite happily settling where they please. And therein lies our shared goal. I can give you the means to subdue these dragons. If you allow me to harvest what I need from them, I'll cage them here. From there, you can decide what to do with them.'";
			say "     [roman type]Will you accept Soot's quest and help him cage the dragons? It seems like it'll take some effort![roman type][line break]";
			say "     [link]Y[as]y[end link] Yes - Take on the quest. You have some... plans for those dragons.";
			say "     [link]N[as]n[end link] No - Unfortunately, you're completely uninterested and would rather return to your own world.";
			if Player consents:
				say "     Nodding eagerly, you agree to hear the mage out. You'll gladly participate in Soot's quest. You're not sure what he means by 'deciding what to do with' the dragons, but you're excited by the prospect. After all, with the state of the rest of the city, it has to be something fun. 'Wonderful! I'll allow you some time to prepare. Once you  are ready, return here and speak to me.' Soot stands and bows before you, genuine gratitude shining in his draconian eye. 'This will be the start of a grand partnership.'";
				AddNavPoint Pocket Universe;
			else:
				say "     Shaking your head, you dash the eager mage's hopes, watching his expression fall. Unfortunately for him, you don't want anything to do with his quest, or its rewards. Within moments, you find yourself outside of the Pocket Universe, staring a blank tree face. You wonder if it was all a dream, but you can still feel the slightest ache in your muscles from your fight with the dragomancer.";
				now Resolution of Curious Door is 100;
	else:
		say "     Shaking your head, you turn away and give the door a wide berth. It could be a trap! Thankfully, the door dematerializes, as if it can feel your disapproval, and you remain unmolested. You doubt you'll see it again.";
		now Resolution of Curious Door is 100;
	now Curious Door is Resolved;

Section 2 - The Dragomancer's Domain

Table of GameRoomIDs (continued)
Object	Name
Pocket Universe	"Pocket Universe"

Pocket Universe is a room. It is fasttravel. It is sleepsafe. It is private.
Description of Pocket Universe is "[Pocket Universedesc]".

the scent of Pocket Universe is "Dusty, with a strange 'zing' that you can only describe as electricity in the air. You get the feeling this place is more than it appears.".

to say Pocket Universedesc:
	say "     A long hallway stretches before you, covered in doors. Most of them have chains across them and a vaguely unpleasant aura, as though someone or something is telling you to leave them alone. Four doors at the end of the hall appear to be different though, adorned with elaborate filligree that evokes elemental themes. Twisting flames of gold, sylized, faintly glowing wind in some sort of light green gemstone, dripping water that almost seems real until further inspection reveals it's various colors of diamond, and crystalline outcroppings covered with earth cover the respective doors, though you get the feeling that they're dull compared to their usual appearance. An ornate desk sits against the far wall, with Soot sitting patiently behind it.";
	if "Helios Captured" is listed in Traits of Soot:
		say "     The flaming door that contains Helios sits to the Northwest, with heat leaking out around its edges. ";
		if "Alon Captured" is listed in Traits of Soot:
			say "To the Southeast Alon's watery door stands, with the slightest bit of artificial sunshine filtering around the edges.";

Section 3 - Dragon Rooms

[Defined here and used later.]
[Flame]
Table of GameRoomIDs (continued)
Object	Name
Magma Mountain	"Magma Mountain"

Magma Mountain is a room. It is sleepsafe.
Description of Magma Mountain is "[Magma Mountaindesc]".
the scent of Magma Mountain is "Slight brimstone scent mixes with ambient heat to singe your nose. Strangely, it's not unpleasant when mixed with the warmth wrapping your body.".
northwest of Pocket Universe is Magma Mountain.

to say Magma Mountaindesc:
	say "     A cave stretches before you, illuminated by- of all things- a pool of bubbling magma. Torches supplement the glowing orange light, highlighting the vaulted ceiling that stretches upward into the darkness. You get the feeling that you're currently inside of a dormant volcano, and the ambient heat reinforces this idea. Strangely, it's not that uncomfortable, enfolding your body like a warm blanket. You get the feeling that you could be comfortable without clothes in this place. ";
	if Helios is in Magma Mountain:
		say "Close to the magma pool, Helios sits on his back legs, staring down at you with disdain. Out of the corner of your eye, you can see him staring at you when he thinks you can't see him, his tail thrashing slightly like an excited dog's.";

[Earth]
Table of GameRoomIDs (continued)
Object	Name
Crystalline Crater	"Crystalline Crater"

Crystalline Crater is a room. It is sleepsafe.
Description of Crystalline Crater is "[Crystalline Craterdesc]".
the scent of Crystalline Crater is "Petrichor and fresh loam scent fill the air, reminding you of working in a garden the day after rain.".
Southwest of Pocket Universe is Crystalline Crater. 

to say Crystalline Craterdesc:
	say "     A starry sky stretches above you, and you find yourself staring down into a crater lined with deposits of various precious ores. A depression sits at the bottom, lined with the most shiny of gemstone clusters. Something about the place is quite calming, as though you could lie down on any patch of dirt and have the most comfortable nap of your life. ";
	[if Seb is in Crystalline Crater:
		say "Seb lies on his side in the nest at the bottom, stretching languidly and yawning as he notices you. One eye flicks open for a moment before he goes back to snoozing. A hint of arrogance permeates his behavior, as though he doesn't see you as a threat, despite your earlier clash.";]

[Water]
Table of GameRoomIDs (continued)
Object	Name
Glittering Gate	"Glittering Gate"

Glittering Gate is a room. It is sleepsafe.
Description of Glittering Gate is "[Glittering Gatedesc]".
the scent of Glittering Gate is "Fresh water scent fills the air, with the slightest hint of salt, as though a seabreeze blows from nearby.".
Southeast of Pocket Universe is Glittering Gate.

to say Glittering Gatedesc:
	say "     A breathtaking water feature greets you. Spurting water into the air from a vaguely atlantean fountain, it stares you down with marble mermaids. Nearby pools of varying colors and depths wreathed by soft, immaculate sand welcome you to take a rest, and you can't resist feeling the beach beneath your bare feet. ";
	if Alon is in Glittering Gate:
		say "A familiar form lazes in the largest of the pools, floating on his back. Alon seems unperturbed by his captivity, giving off the vibe of a poolside tourist. You catch him looking at you with his tongue running over his lips, and you get the feeling that he's thinking of something interesting.";

Table of GameRoomIDs (continued)
Object	Name
Cloudy Castle	"Cloudy Castle"

Cloudy Castle is a room. It is sleepsafe.
Description of Cloudy Castle is "[Cloudy Castledesc]".
the scent of Cloudy Castle is "Fresh air abounds, without a single trace of pollution.".
Northeast of Pocket Universe is Cloudy Castle.


to say Cloudy Castledesc:
	say "     Past the green filligree of the windy door, a breathtaking display stretches before you. Clouds have been shaped into something more solid, holding under your feet, but all directions appear to be open air, with a sunny sky above and nothing below. Breezy winds lick at your face as you look around, and the clouds pile on top of each other in the distance, creating an impressive castle. From the looks of it, there aren't many rooms, with the center mostly hollow, with a bowl-shaped depression. ";
	[if Caelus is in Cloudy Castle:
		say "Caelus lounges in the cloudy nest, looking up at you with disinterest and stretching his wings. His wingtip catches a gust and he hums a small tune in draconic baritone.";]

Dragon Harem ends here.