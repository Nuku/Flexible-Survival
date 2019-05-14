Version 1 of Feral Unicorn by Taelyn begins here.
[Others can add to Feral Unicorn if keeping with the general theme set]
[Possible scenes for others to add are size and body shape variant scenes.]
[A Special scene should be written for Twisted Capacity for smaller bodies.]

"Adds a Feral Unicorn creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster description

when play begins:
	add { "Feral Unicorn" } to infections of guy;
	add { "Feral Unicorn" } to infections of furry;

to say FeralUnicornDesc:
	setmongender 3;
	say "     You hear the rustle of leaves and branches as a large equine pushes its way past them and into the open. This is no normal horse though. It is as big as a daft horse. From hoof to shoulder it is almost as tall as a human. A long spiral horn grows proudly out of its forehead, and its long, elegant mane hangs down, unkept and wild. A tuft of hair hangs from its chin, almost like a beard, and its lower legs are [']feathered['] like a Clydesdale. Its tail, however, is different than a normal horse. It stretches out behind the mystical creature, only lightly furred until the end where the hair tufted out like a weird mix of a horse and lion's tail. This was a true unicorn, and if its huge equine cock and balls had anything to tell you, a very horny male unicorn. One that was now charging towards you with lewd intent!"; [encounter text]

Section 2 - Creature Responses

Part 1 - Submit

to say LoseToFeralUnicorn:
	if scalevalue of Player < 3:
		if HP of Player > 0: [submit hotdogging]
			say "     Raising your hands, you do your best to try to tell the fantastical beast that you no longer mean to fight. The unicorn stops his charge and pauses as it gives you a thoughtful expression. He looks over your [bodyname of Player in lower case] body, seeming to be disappointed by how you aren't big enough for him to properly mount, but still pleased that you submitted to him. As if only to do you a favor, he gently prods at you with his nose, ushering you towards the stone table. Once standing in front of the stone slab, the unicorn pushes you down against it, leaving your ass up towards him. As if by magic, any clothing and gear on you is removed and appears in a heap nearby, giving the large equine full access to you.";
			say "     He begins to push against you, forcing his almost two foot long shaft between your cheeks, sliding against them as he starts to thrust. Grabbing hold of the shackles on either side of the table, you brace yourself as the stallion uses you, pre leaking over your back and ass until he pushes hard against you and whinnies in pleasure. Pearlescent cum gushes from his flaring equine dick, splattering over you and making your body tingle. Satisfied, he slips down off of you and starts to walk away back into the dense forest while leaving you with the mess.";
		else: [player lost]
			say "     You collapse in defeat as the unicorn stands proudly over you, looking over your [bodyname of Player in lower case] body. He presses his face between your legs, taking a look and getting a good sniff at your genitals before pulling away. The look he gives you is one of disapproval, possibly because you are too small for him to use properly. Without a second glance, he turns away and gallops into the forest.";
	else:
		if HP of Player > 0: 								  [DID THE PLAYER SUBMIT? - YES]
			say "     Raising your hands, you do your best to try to tell the fantastical beast that you no longer mean to fight. The unicorn stops his charge and pauses as it gives you a thoughtful expression before nudging you with his nose towards the stone table. ";
		else: [player lost]
			say "     You collapse in defeat as the unicorn stands proudly over you, looking over your [bodyname of Player in lower case] body. With a huff of satisfaction, he forces you towards the stone table against the cliff face, using the prodding of his horn as [']encouragement['] to make you move. ";
		say "Once standing in front of the stone slab, the unicorn pushes you down against it, leaving you ass up towards him. He slowly mounts you, his body pressing against you while his virile musk invades your senses. As if by magic, any clothing and gear on you is removed and appears in a heap nearby, giving the large equine full access to you. The blunt tip of his massive, drooling erection presses against your ";
		if Player is herm: 			  [Yes = HERM Identified!]
			say "sex as he adjusts his aim but doesn't enter just yet. The unicorn's horn starts to glow, and you suddenly feel a tingle as your asshole, cunt and cock[smn] as your rear entrance suddenly tightens up and your hymen regrows. [bold type]You're a virgin again![roman type] But not for long.";
			say "     Without giving you a chance to react, the feral male thrusts forwards, making you gasp when his equine shaft sinks deep into you. The magical beast begins in earnest, thrusting relentlessly into you time and time again without pause. His breath feels hot and heavy against you, and each thrust is so powerful that it pushes you hard against the table. You can't help but moan as you are bred like his mare, your virgin cunt begging for more, which he is more than happy to give you. With a few more powerful, thrusts, the unicorn's cock tip flares, sealing you up as best as he can before unleashing rope after rope of pearlescent cum deep into your awaiting womb until you feel almost bloated with his virile seed. The pleasure is too much, and you cum soon after; [if Cock Count of Player > 1]all of your own cocks erupt[else]your own cock erupts[end if] as well, spilling your own fluids against the stone, which it strangely seems to absorb into, leaving the surface clean.";
			WaitLineBreak;
			say "     Slowly, the unicorn pulls out of you, leaving your freshly used hole quivering in the afterglow while some of the unicorn jizz leaks out of you, only to be absorbed into the table. You take a moment to catch your breath before turning just in time to see the unicorn proudly trotting away into the forest, leaving you to clean yourself up and collect your gear.";
			if facename of Player is listed in infections of Equinelist or "They Have Your Eyes" is listed in feats of Player or "Breeding True" is listed in feats of Player:
				fimpregchance;
		else if Player is female: 	  [Yes = FEMALE Identified!]
			say "sex as he adjusts his aim but doesn't enter just yet. The unicorn's horn starts to glow, and you suddenly feel a tingle as your asshole and cunt suddenly start to tighten up and your hymen regrows. [bold type]You're a virgin again![roman type] But not for long.";
			say "     Without giving you a chance to react, the feral male thrusts forwards, making you gasp when his equine shaft sinks deep into you. The magical beast begins in earnest, thrusting relentlessly into you time and time again without pause. His breath feels hot and heavy against you, and each thrust is so powerful that it pushes you hard against the table. You can't help but moan as you are bred like his mare, your virgin cunt begging for more, which he is more than happy to give you. With a few more powerful, thrusts, the unicorn's cock tip flares, sealing you up as best as he can before unleashing rope after rope of pearlescent cum deep into your awaiting womb until you feel almost bloated with his virile seed.";
			WaitLineBreak;
			say "     Slowly, the unicorn pulls out of you, leaving your freshly used hole quivering in the afterglow while some of the unicorn jizz leaks out of you, only to be absorbed into the table. You take a moment to catch your breath before turning just in time to see the unicorn proudly trotting away into the forest, leaving you to clean yourself up and collect your gear.";
			if facename of Player is listed in infections of Equinelist or "They Have Your Eyes" is listed in feats of Player or "Breeding True" is listed in feats of Player:
				fimpregchance;
		else if Player is male: [Yes = MALE Identified!]
			say "asshole as he adjusts his aim but doesn't enter just yet. The unicorn's horn starts to glow, and you suddenly feel a tingle in your asshole and cock[smn] as your rear entrance suddenly starts to tighten up. [bold type]You're a virgin again![roman type] But not for long.";
			say "     Without giving you a chance to react, the feral male thrusts forwards, making you gasp when his equine shaft sinks deep into you. The magical beast begins in earnest, thrusting relentlessly into you time and time again without pause. His breath feels hot and heavy against you, and each thrust is so powerful that it pushes you hard against the table.";
			say "     You can't help but moan as you are bred like his mare, your virgin tailhole begging for more, which he is more than happy to give you. With a few more powerful thrusts, the unicorn's cock tip flares, sealing you up as best as he can before unleashing rope after rope of pearlescent cum deep into your ass until you feel almost bloated with his virile seed. The pleasure is too much, and you cum soon after; [if Cock Count of Player > 1]all of your own cocks erupt[else]your own cock erupts[end if] as well, spilling your own fluids against the stone, which it strangely seems to absorb into, leaving the surface clean.";
			WaitLineBreak;
			say "     Slowly, the unicorn pulls out of you, leaving your freshly used hole quivering in the afterglow while some of the unicorn jizz leaks out of you, only to be absorbed into the table. You take a moment to catch your breath before turning just in time to see the unicorn proudly trotting away into the forest, leaving you to clean yourself up and collect your gear.";
			if facename of Player is listed in infections of Equinelist or "They Have Your Eyes" is listed in feats of Player or "Breeding True" is listed in feats of Player:
				mimpregchance;

Part 2 - Defeat

[remove if identical to the above scene except for the starting sentences]

to say FeralUnicornFuck:
	if scalevalue of Player < 3: [Size too Small]
		say "     You collapse in defeat as the unicorn stands proudly over you, looking over your [bodyname of Player in lower case] body. He presses his face between your legs, taking a look and getting a good sniff at your genitals before pulling away. The look he gives you is one of disapproval, possibly because you are too small for him to use properly. Without a second glance, he turns away and gallops into the forest.";
	[else if scalevalue of Player is 5: [too huge]
		say "     ..."; to added later]
	else if Player is herm: 			  [Yes = HERM Identified!]
		say "     You collapse in defeat as the unicorn stands proudly over you, looking over your [bodyname of Player in lower case] body. With a huff of satisfaction, he forces you towards the stone table against the cliff face, using the prodding of his horn as [']encouragement['] to make you move. Once standing in front of the stone slab, the unicorn pushes you down against it, leaving you ass up towards him. He slowly mounts you, his body pressing against you while his virile musk invades your senses. The blunt tip of his massive, dripping erection presses against your sex as he adjusts his aim but doesn't enter just yet. The unicorn's horn starts to glow, and you suddenly feel a tingle as your asshole, cunt and cock[smn] as your rear entrance suddenly tightens up and your hymen regrows. [bold type]You're a virgin again![roman type] But not for long.";
		say "     Without giving you a chance to react, the feral male thrusts forwards, making you gasp when his equine shaft sinks deep into you. The magical beast begins in earnest, thrusting relentlessly into you time and time again without pause. His breath feels hot and heavy against you, and each thrust is so powerful that it pushes you hard against the table. You can't help but moan as you are bred like his mare, your virgin cunt begging for more, which he is more than happy to give you. With a few more powerful, thrusts, the unicorn's cock tip flares, sealing you up as best as he can before unleashing rope after rope of pearlescent cum deep into your awaiting womb until you feel almost bloated with his virile seed. The pleasure is too much, and you cum soon after; [if Cock Count of Player > 1]all of your own cocks erupt[else]your own cock erupts[end if] as well, spilling your own fluids against the stone, which it strangely seems to absorb into, leaving the surface clean.";
		WaitLineBreak;
		say "     Slowly, the unicorn pulls out of you, leaving your freshly used hole quivering in the afterglow while some of the unicorn jizz leaks out of you, only to be absorbed into the table. You take a moment to catch your breath before turning just in time to see the unicorn proudly trotting away into the forest, leaving you to clean yourself up and collect your gear.";
		if facename of Player is listed in infections of Equinelist or "They Have Your Eyes" is listed in feats of Player or "Breeding True" is listed in feats of Player:
			fimpregchance;
			[]
	else if Player is female: 	  [Yes = FEMALE Identified!]
		say "     You collapse in defeat as the unicorn stands proudly over you, looking over your [bodyname of Player in lower case] body. With a huff of satisfaction, he forces you towards the stone table against the cliff face, using the prodding of his horn as [']encouragement['] to make you move. Once standing in front of the stone slab, the unicorn pushes you down against it, leaving you ass up towards him. He slowly mounts you, his body pressing against you while his virile musk invades your senses. The blunt tip of his massive, dripping erection presses against your sex as he adjusts his aim but doesn't enter just yet. The unicorn's horn starts to glow, and you suddenly feel a tingle as your asshole and cunt suddenly start to tighten up and your hymen regrows. [bold type]You're a virgin again![roman type] But not for long.";
		say "     Without giving you a chance to react, the feral male thrusts forwards, making you gasp when his equine shaft sinks deep into you. The magical beast begins in earnest, thrusting relentlessly into you time and time again without pause. His breath feels hot and heavy against you, and each thrust is so powerful that it pushes you hard against the table. You can't help but moan as you are bred like his mare, your virgin cunt begging for more, which he is more than happy to give you. With a few more powerful, thrusts, the unicorn's cock tip flares, sealing you up as best as he can before unleashing rope after rope of pearlescent cum deep into your awaiting womb until you feel almost bloated with his virile seed.";
		WaitLineBreak;
		say "     Slowly, the unicorn pulls out of you, leaving your freshly used hole quivering in the afterglow while some of the unicorn jizz leaks out of you, only to be absorbed into the table. You take a moment to catch your breath before turning just in time to see the unicorn proudly trotting away into the forest, leaving you to clean yourself up and collect your gear.";
		if facename of Player is listed in infections of Equinelist or "They Have Your Eyes" is listed in feats of Player or "Breeding True" is listed in feats of Player:
			fimpregchance;
			[]
	else if Player is male: [Yes = MALE Identified!]
		say "     You collapse in defeat as the unicorn stands proudly over you, looking over your [bodyname of Player in lower case] body. With a huff of satisfaction, he forces you towards the stone table against the cliff face, using the prodding of his horn as [']encouragement['] to make you move. Once standing in front of the stone slab, the unicorn pushes you down against it, leaving your ass up towards him. He slowly mounts you, his body pressing against you while his virile musk invades your senses. As if by magic, any clothing and gear on you is removed and appears in a heap nearby, giving the large equine full access to you. The blunt tip of his massive, dripping erection presses against your asshole as he adjusts his aim but doesn't enter just yet. The unicorn's horn starts to glow, and you suddenly feel a tingle in your asshole and cock[smn] as your rear entrance suddenly starts to tighten up. [bold type]You're a virgin again![roman type] But not for long.";
		say "     Without giving you a chance to react, the feral male thrusts forwards, making you gasp when his equine shaft sinks deep into you. The magical beast begins in earnest, thrusting relentlessly into you time and time again without pause. His breath feels hot and heavy against you, and each thrust is so powerful that it pushes you hard against the table.";
		say "     You can't help but moan as you are bred like his mare, your virgin tailhole begging for more, which he is more than happy to give you. With a few more powerful thrusts, the unicorn's cock tip flares, sealing you up as best as he can before unleashing rope after rope of pearlescent cum deep into your ass until you feel almost bloated with his virile seed. The pleasure is too much, and you cum soon after; [if Cock Count of Player > 1]all of your own cocks erupt[else]your own cock erupts[end if] as well, spilling your own fluids against the stone, which it strangely seems to absorb into, leaving the surface clean.";
		WaitLineBreak;
		say "     Slowly, the unicorn pulls out of you, leaving your freshly used hole quivering in the afterglow while some of the unicorn jizz leaks out of you, only to be absorbed into the table. You take a moment to catch your breath before turning just in time to see the unicorn proudly trotting away into the forest, leaving you to clean yourself up and collect your gear.";
		if facename of Player is listed in infections of Equinelist or "They Have Your Eyes" is listed in feats of Player or "Breeding True" is listed in feats of Player:
			mimpregchance;
		[now virgin of Player is true;] [this is how it would be coded, but we don't have code in the rest of the game for virgin players anyways...]


Part 3 - Victory

to say BeatTheFeralUnicorn:
	say "     The Unicorn is battered and weak, seeming unable to continue fighting.";[Victory Message]
	say "     [bold type]Do you want to have some fun with a Unicorn?[roman type][line break]";[Fuck Ask]
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes";
	say "     ([link]N[as]n[end link]) - No";
	LineBreak;
	if Player consents: [Decides to fuck Feral Unicorn]
		LineBreak;
		say "[FeralUnicornSexMenu]";
	else:
		LineBreak;
		say "     You think for a moment but decide against your licentious impulse and turn to leave.";[No]

to say FeralUnicornSexMenu:
	say "     What shall you do with the mystical equine?";[Which Fuck]
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck him off";
	now sortorder entry is 1;
	now description entry is "Give the Feral Unicorn a blowjob";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 3;
		now description entry is "Butt hump the magical horse";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck him off"):
					say "[SuckFeralUnicorn]";
				if (nam is "Fuck his ass"):
					say "[FuckFeralUnicorn]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You back away and shake your head.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SuckFeralUnicorn:
	say "     The unicorn falls to the ground, exhausted and beaten from the fight. You are the victor, and his pre-dripping cock looks so inviting. The unicorn watches you as you approach, fully submissive as you place your hands on the massive, almost two foot long, horse cock. You can smell his equine musk as your fingers wrap around the thick shaft, stroking it gently and slowly coating it in his own pearlescent fluids. Tentatively licking at the male's blunt tip, you are pleasantly surprised that his pre has an earthy and sweet taste to it, and before long, your lips are wrapping around him, taking him as far into your mouth as you can while your hands continue to work the rest of the shaft. The unicorn huffs and groans at your attentions, rewarding you with more precum for you to taste as you suck and stroke the magic horse off. It takes only a few minutes before his balls twitches and the unicorn whinnies; his cockhead flares inside of your mouth as cum gushes into you like a firehose, forcing some of his hot seed down your throat before it pops free, emptying the rest onto you face and chest. You feel tingly as you catch your breath and clean yourself up, leaving the unicorn to its own devices.";

To say FuckFeralUnicorn:
	say "     The unicorn falls to the ground, exhausted and beaten from the fight, leaving you to do what you desire with it. Its equine tailhole looks particularly fun to you at the moment. With a few pushes, you manage to get the now submissive unicorn into a kneeling position so that you can position your [cockname of Player in lower case] cock against his puckered ass. Using his tail to hold yourself steady, you sink yourself into him, reveling in the feeling of his hot flesh engulfing your length. This feral creature would have treated you rough, so you see no reason to not return the favor. You pull out almost all the way, leaving just the tip inside of him, before you spear deep into the unicorn once again, making him huff in pleasure as his cock dribbles pre onto the ground.";
	say "     Pulling his tail, you thrust into him again and again, fucking his ass while the familiar pressure within your cock[smn] slowly builds. Feeling more desperate to get off, you put everything you have into pounding the pony, drawing groans of pleasure from you both before the pleasure becomes too great. With one final deep thrust, you both achieve sweet release as your cum gushes into his body, coating his insides. At the same time, his own seed splatters onto the earth below him, leaving the unicorn exhausted. After putting on your gear, you head out once more, leaving the cum-leaking beast.";


Section 2 - Infection, Loot and Stats

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Feral Unicorn";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The unicorn charges at you with his horn![or]The unicorn rears up to clobber you with his front hooves![or]The unicorn twists around and kicks at you with his back legs![at random]";
	now defeated entry is "[BeatTheFeralUnicorn]";
	now victory entry is "[LoseToFeralUnicorn]";
	now desc entry is "[FeralUnicornDesc]";
	now face entry is "that of a feral horse with a long, spiraled horn growing from your forehead. Your eyes carry a spark of magic deep within them[if Player is male], and a tuft of hair hangs from your chin like facial hair[else]and are crowned with lush lashes[end if]. Your nose is soft and velvety to the touch, while your long, elegant mane drapes downwards, unkempt and wild";
	now body entry is "more animal than human now that your body is more suited for walking on all fours than bipedal. When needed, however, you can return to standing on two legs, albeit awkwardly as your hind legs are now the strong and hoofed. Your arms, now more like forelegs, and your hands when at rest, looked like hooves and functioned like them as well, but you could spread your fingers out, allowing you to still manipulate things when needed, using your hard-tipped digits";
	now skin entry is "[one of]soft and short fur[or]pure-white fur[at random]";
	now tail entry is "Your tail is like a mix between a lion and a horse, similar to unicorns of legend. It's long and flexible and ends with a thick brush of long horse hair.";
	now cock entry is "[if Player is male][one of]equine[or]horse[or]stallion[at random][else][one of]equine[or]horse[at random][end if]";
	now face change entry is "a sensation of vertigo overcomes you and bursts of light dance in front of your eyes. It takes all your effort just to stay on your feet as you face feels like someone is stretching it. It's hard to breath; your forehead feels a sharp pain, and then you start to come around. As your mind clears, you are met with the sight of what looks to be a horse's muzzle. You quickly feel over your forehead to find that a large spiral horn is growing from it. It isn't hard to deduce that you now have a [bold type]Unicorn Face[roman type]";
	now body change entry is "muscles seem to shift around underneath the skin. Cramps cause you to stumble slightly as your heels move up both legs, forcing you to assume a more digitigrade stance, while your toes flatten and merge together to form cloven hooves. Your hands do something similar, but don't merge, allowing you to still manipulate things as if they were hands. All in all, you seem to be able to function on too legs, but are more comfortable on four now that you have a [bold type]unicorn body[roman type]."; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it starts to shimmer and change. When the process finally stops, you find you are left with short and soft, white [bold type]unicorn fur[roman type]"; [Write to fit into: "Your skin tingles as [skin change entry]." ]
	now ass change entry is "a shimmering light spreads over it, until finally a new [bold type]unicorn tail[roman type] bursts forth";
	now cock change entry is "you feel a powerful need to sink yourself into a virgin. Ass, cunt, mouth, it didn't matter as long as they were a virgin! Pressure builds within your shaft as it begins to change; the tip flattening and flaring outwards while a thick sheath forms at it's base. Your balls quiver as you are unable to hold it in any longer. Pearlescent cum gushes out of your new [bold type]Unicorn Cock[roman type], leaving you try to catch your breath";
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 16;
	now per entry is 8;
	now int entry is 8;
	now cha entry is 20;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 80; [ The monster's starting HP. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Avalon"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 20;
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 1; [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Length entry is 9;
	now Cunt Tightness entry is 5;
	now libido entry is 70; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 20; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "equine";
	now type entry is "unicorn";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Unicorn Horn

[Table of Game Objects (continued)[might change to Unicorn Cum]
name	desc	weight	object
"Unicorn Horn"	"A small pill that when consumed, will force a transformation that should remove any male genitalia that you have gained."	0	cock remover

cock remover is a grab object. It is temporary. It is a part of the player.

the usedesc of cock remover is "[unicorn horn use]".

to say cock remover use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cock Count of Player: [Cock Count of Player][line break]";
	say "You take the pill and pop it into your mouth... ";
	if Player is male:
		say "At first, you don't feel any different, that is until the head of your cock[smn] starts to tingle. You [SelfStripCrotch], inspecting yourself and seeing your dick[smn] begin to shrink and shrivel away until there is no evidence that [if Cock Count of Player > 1]they were[else]it was[end if]it was even there in the first place.";
		now Cock Count of Player is 0;
		LibidoLoss 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cock Count of Player: [Cock Count of Player][line break]";
	else:
		say "At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;]

Feral Unicorn ends here.
