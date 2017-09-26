Version 1 of Psycho Weasel For FS by Stripes begins here.
[Version 1.1 - Added male ride option]

"Adds a Psycho Weasel creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

weaselcount is a number that varies.
weaselcolour is a text that varies. weaselcolour is normally "tan".

when play begins:
	add { "Psycho Weasel" } to infections of guy;
	add { "Psycho Weasel" } to infections of furry;


to say psychoweaseldesc:
	setmongender 3; [creature is male]
	increase weaselcount by 1;
	let T be a random number between 1 and 3;
	if T is 1:
		now weaselcolour is "tan";
	else if T is 2:
		now weaselcolour is "brown";
	else if T is 3:
		now weaselcolour is "black";
	say "     Before you is a wild-eyed weasel person in an unsecured straightjacket. Despite his rather cartoonish figure and expression, he is clearly made of flesh and blood, covered in fur and quite real. His fur is a [weaselcolour] colour and he is unclothed save for the loose restraint. He has a crazed expression on his slathering face and pumps at his cock as best he can with the long sleeves overflowing his arms. Their straps jangle as he charges at you, letting you see the swirls in his eyes as he [one of]giggles madly[or]gibbers on about people shooting voodoo into his noodle[or]blathers on about artificial flavours in t-shirts[or]screams incoherently[or]mumbles how you can't trust the garden gnomes[or]mumbles quotes from [']Rain Man['][or]yells that you stole all his blue[or]growls like a beast[in random order].";

to say losetopsychoweasel:
	say "     Victorious, the crazed weasel moves in to have his way with you. His hard cock dribbles precum as he reaches for you with his covered paws. ";
	if cunts of player > 0:
		say "     He rolls you onto all fours, pushes and tugs at your pack and clothes as best he can before mounting you. With some jingling of the jacket buckles, he takes his cock in one paw and lines it up with your exposed pussy. The weasel growls and babbles some nonsense words as he thrusts into you. Your body pushes back into the thrust instinctively, starting to give into the crazed creature's lustful urges. His covered paws slide along your back and sides, sliding the sleeves over your [skin of player] flesh. His pace is frantic and erratic, sometimes slow and sensual, but often frenetic as he pounds into you while spouting off about [one of]brain-sucking mice[or]space chickens[or]government fluoride[or]mind control chemicals in condoms[or]microwave sterilized semen[or]sewer sheep[or]alligators living in the sewers[or]rats after pirate treasure[or]smuggling root beer across state lines in your socks[at random]. You do your best to ignore it, but his words seem to leak into your mind even as his precum leaks into your quivering pussy[if humanity of player <= 33]. Between moans of pleasure, you start babbling about the strangeness you've witnessed in the infected city, letting it all out as a rambling stream of consciousness, feeling a kind of release in doing so[end if].";
		say "     The crazed weasel continues to screw you, sliding his throbbing meat into you again and again. Your cunt grips and squeezes at his hard rod as he fucks you like a madman. Leaning overtop you, he takes the back of your neck into his muzzle and drives himself hard into you. You ball your hands into fists and groan in pleasure as you feel the hot rush of his semen flowing into you, filling your womb. Your vaginal walls clamp down around him, milking his cock as you cum as well.[impregchance]";
	else:
		say "     It's clear that he's going to have his way with you, one way or another.";
		say "     [bold type] Will you quickly start sucking his cock or move into position to let him mount you?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Suck his cock.";
		say "     ([link]N[as]n[end link]) - Let him mount you.";
		if the player consents:
			LineBreak;
			say "     You grab a hold of his cock and slide your mouth down over it, licking and sucking him before he can fuck you. Distracted by the blow job, he rubs his fabric-covered paws over your head and groans in pleasure. His pre leaks onto your tongue and his balls are firm and heavy, and soon you're growing excited by what you're doing. Instead of sucking him to keep him from fucking you, you start to do it because you want to, longing for that cock in your mouth as you give into the crazed creature's lustful urges. His pace is frantic and erratic, sometimes slow and sensual, but often frenetic as he pounds into you while spouting off about [one of]brain-sucking mice[or]space chickens[or]government fluoride[or]mind control chemicals in condoms[or]microwave sterilized semen[or]sewer sheep[or]alligators living in the sewers[or]rats after pirate treasure[or]smuggling root beer across state lines in your socks[at random]. You do your best to ignore it, but his words seem to leak into your mind even as his precum leaks down your throat.";
			say "     The crazed weasel continues to thrust into your mouth as you suck his cock hungrily. Gripping you firmly, he buries your face in his groin and blasts his hot load down your throat. You moan around your mouthful of pulsing cock, swallowing down the sticky cum. You rub at his ballsac, feeling the heavy orbs inside twitch as his semen is pumped out quickly, some overflowing and running down your chin and neck. As you gulp down as much of the potent fluid as you can, you find yourself wishing you'd allowed him to mount you instead.";
		else:
			LineBreak;
			say "     Deciding to simply accept what he wants, you turn around and move onto all fours. He pushes and tugs at your pack and clothes as best he can before mounting you. With some jingling of the jacket buckles, he takes his cock in one paw and lines it up with your exposed bottom. The weasel growls and babbles some nonsense words as he thrusts into you. Your body pushes back into the thrust instinctively, starting to give into the crazed creature's lustful urges. His covered paws slide along your back and sides, sliding the sleeves over your [skin of player] flesh. His pace is frantic and erratic, sometimes slow and sensual, but often frenetic as he pounds into you while spouting off about [one of]brain-sucking mice[or]space chickens[or]government fluoride[or]mind control chemicals in condoms[or]microwave sterilized semen[or]sewer sheep[or]rats after pirate treasure[or]smuggling root beer across state lines in your socks[at random]. You do your best to ignore it, but his words seem to leak into your mind even as his precum leaks into your stuffed anus[if humanity of player <= 33]. Between moans of pleasure, you start babbling about the strangeness you've witnessed in the infected city, letting it all out as a rambling stream of consciousness, feeling a kind of release in doing so[end if].";
			say "     The crazed weasel continues to screw you, sliding his throbbing meat into you again and again. Your asshole grips and squeezes at his hard rod as he fucks you like a madman. Leaning overtop you, he takes the back of your neck into his muzzle and drives himself hard into you, pressing firmly at your prostate. You ball your hands into fists and groan in pleasure as you feel the hot rush of his semen flowing into you, filling your bowels. Your anal muscles clamp down around him, milking his cock as you cum as well.[impregchance]";
	if weaselcount > 2 and inasituation is false:
		say "     When his balls are drained, he withdraws from you and stumbles off, only to be met by a vixen nurse not far away. 'Oh, there you are sweety. You were very naughty, running away like that,' she says, as if speaking to a child. 'I see you found a friend. Did you have fun playing?  Good boy. Now let's get you back to your nice room. If you're good, I'll give you a special treat,' she adds, rubbing his sheath as she tightens up his straps, binding his arms in place. She leads him off into the shadowy halls of the hospital, leaving you there, sticky with weasel cum and feeling rather fuzzy-headed for a while.";
		now weaselcount is 0;
	else:
		say "     When his balls are drained, he withdraws from you and stumbles off down the halls, [one of]whistling tunelessly[or]mumbling to himself[or]chewing at the arm of his straightjacket[or]babbling incoherently[or]waving his arms around to listen to the buckles[or]making up perverted versions of nursery rhymes as he heads off[at random]. Your mind feels rather foggy and confused as you try to collect yourself and move on.";
	decrease humanity of player by a random number between 2 and 5;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;


to say beatthepsychoweasel:
	say "     Having knocked down the weasel with your final blow, he curls up in a ball and starts rocking in place, mumbling about the bad [bodyname of player]. He wraps one cloth-covered paw around his throbbing cock and gnaws intermittently at the other. ";
	if libido of player > 29 or "Dominant" is listed in feats of player:
		say "     You prepare to continue on your way, but your arousal stops you long enough to wonder if you might take advantage of the weasel to satisfy your needs.";
		say "     [bold type]Shall you sate your lusts?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			LineBreak;
			say "     With your decision made, you move quickly up to the weasel and run your hands over his head, then down to his arms. He whimpers a little, but seems to calm down as you start securing his straightjacket. Restrained, he whimpers more, but now clearly at his inability to reach his throbbing cock, which has gotten even harder and is dripping with precum. When you take his erection in hand and stroke it, he moans softly and settles down, mumbling about [one of]rainbows and pretty, horny fairies[or]sunrises and vixen nurses[or]sponge baths and happy pills[or]fluffy owl down pillows[in random order].";
			if cocks of player > 0:
				say "     ";
				say "     [bold type]Shall you fuck the horny weasel or ride his hard cock now that you have him safely strapped up?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Fuck the horny weasel.";
				say "     ([link]N[as]n[end link]) - Ride his hard cock.";
				if the player consents:
					LineBreak;
					say "     Pushing him to lean over a nearby gurney, you grab his tail and hold it up, exposing his waiting tailhole. He wiggles his rear even as he keeps squirming, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazy creature, you press your [cock size desc of player] [cock of player] cock to his backside and sink your shaft into him. He moans lustfully and starts to mutter something about [one of]raccoons with sticky fingers[or]busty skunk women[or]pushy jaguars[or]cold thermometers[or]lubricated sigmoidoscopes[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He pushes back into each thrust you make, panting and moaning as you hold his muzzle in one hand and stroke his cock in the other. You pound away at the bound weasel's ass until you fill him with your hot cream and he spurts his load onto the gurney. Once your balls are drained, you bind his straightjacket to the railings and leave him like that, slumped onto the white sheets and leaking cum from his ass. Maybe someone else will come along to take care of him... in one way or another.";
				else if cunts of player > 0:
					LineBreak;
					say "     Grabbing the bound weasel, you push him onto a nearby gurney and hold him down by the shoulders. He struggles and snaps at you, but his cock is rock hard and leaking pre, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazed creature, you climb over him and grind your pussy down onto his leaking cock before sinking yourself down onto it. You moan in pleasure as it slides into your needy cunt. He moans and starts to mutter something about [one of]pushy nurses[or]fluffy birdies[or]giant skunk melons[or]vixens with mealtime milk[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He bucks his hips, thrusting up into as you ride his pulsing rod, panting and moaning as you hold his muzzle in one hand and his shoulder down with the other. You bounce in the bound weasel's lap until your cunt quivers and clamps down around his shaft, cumming hard and sending the manic mustelid over the edge as well. His hot semen pumps into you, filling you with a satisfied warm wetness that helps prolong your orgasm. Your [if cocks of player is 1]cock[otherwise]cocks[end if], quite hard throughout the ride, blasts its load as well, leaving a mess of your semen all over the front of his harness. Once his balls are drained, you bind his straightjacket to the railing and leave him like that, resting on the gurney and soaked in your semen and feminine juices, as well as his own cum. Maybe someone else will come along to take care of him... in one way or another.[impregchance]";
				else:
					LineBreak;
					say "     Grabbing the bound weasel, you push him onto a nearby gurney and hold him down by the shoulders. He struggles and snaps at you, but his cock is rock hard and leaking pre, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazed creature, you climb over him and grind your ass down onto his leaking cock before sinking yourself down onto it. You moan in pleasure as it slides into your tight anus. He moans and starts to mutter something about [one of]kinky coons[or]smuggling treasure[or]dropping the soap[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He bucks his hips, thrusting up into as you ride his pulsing rod, panting and moaning as you hold his muzzle in one hand and his shoulder down with the other. You bounce in the bound weasel's lap as your rear squeezes down around his shaft until the manic mustelid over the edge. His hot semen pumps into you, filling you with a satisfying, warm wetness that sets off your own orgasm. Your [if cocks of player is 1]cock[otherwise]cocks[end if], quite hard throughout the ride, blasts its load as well, leaving a mess of your semen all over the front of his harness. Once his balls are drained, you bind his straightjacket to the railing and leave him like that, resting on the gurney and soaked in your semen, as well as his own cum. Maybe someone else will come along to take care of him... in one way or another.[mimpregchance]";
			else:
				say "     Grabbing the bound weasel, you push him onto a nearby gurney and hold him down by the shoulders. He struggles and snaps at you, but his cock is rock hard and leaking pre, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazed creature, you climb over him and grind your pussy down onto his leaking cock before sinking yourself down onto it. You moan in pleasure as it slides into your needy cunt. He moans and starts to mutter something about [one of]pushy nurses[or]fluffy birdies[or]giant skunk melons[or]vixens with mealtime milk[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He bucks his hips, thrusting up into as you ride his pulsing rod, panting and moaning as you hold his muzzle in one hand and his shoulder down with the other. You bounce in the bound weasel's lap until your cunt quivers and clamps down around his shaft, cumming hard and sending the manic mustelid over the edge as well. His hot semen pumps into you, filling you with a satisfied warm wetness that helps prolong your orgasm. Once his balls are drained, you bind his straightjacket to the railing and leave him like that, resting on the gurney with his crotch soaked in your juices and his cum. Maybe someone else will come along to take care of him... in one way or another.";
		else:
			LineBreak;
			say "     Deciding it'd be best to just get away, you head off quickly before you give into your lusts.";
	else:
		say "     Deciding it'd be best to get away while you can, you make a run for it.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Psycho Weasel"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The crazed weasel batters at you with the long sleeves of his straightjacket![or]The wild-eyed creature bites you![or]The crazy weasel wraps his arms around you and humps his throbbing cock against your side![or]The weasel punches at you wildly![or]The weasel slams his shoulder into you, knocking you against the wall![or]The wild babble the creature keeps spouting fills you with confusion, giving it an opportunity to strike you![at random]";
	now defeated entry is "[beatthepsychoweasel]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetopsychoweasel]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[psychoweaseldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a weasel-like creature, with a muzzle full of pointed teeth, wild eyes and a scraggly appearance";
	now body entry is "slender and flexible, with paws for hands and feet. Your weasel body moves with manic energy, but also has some uncontrolled twitches and spasms";
	now skin entry is "scraggly brown fur over your";
	now tail entry is "Attached to your behind is a long, tube-like tail of brown fur with a dark tip. It twitches and flicks around when you don't focus on keeping it still.";
	now cock entry is "[one of]sheathed[or]weasel[or]mustelid[at random]";
	now face change entry is "strange noises fill your ears as they change, becoming small and furry. Your face shifts, reforming into a cartoonishly-shaped weasel head. You can hear [one of]voices in your head[or]radio waves picked up by your braces[or]whispers from someone you can't see[at random] as you continue to change, only realizing that you were hearing yourself babbling as the changes subside";
	now body change entry is "your torso becomes elongated and flexible. Slender and wiry, you twitch with manic energy as the transformation spreads down your arms. Your hands shake nervously and you have to resist the urge to gnaw at them as your bones pop and digits reform into nimble paws. Just as your new paws are settling into place and you're regaining control of them, the same starts to happen to your feet until you're left with a twitchy, mustelid body";
	now skin change entry is "an itchy sensation spreads over you, making you want to scratch yourself all over, just keep scratching and scratching until it's all gone if you must to make it stop. Scraggly, brown fur starts to spread over your body with a lighter cream colour on your chest. Thankfully, the itch subsides as the fur finishes growing and you sigh in relief";
	now ass change entry is "you feel a pulling sensation at the base of your spine. With some cracks and pops, it extends out, forming into a long, slender tail covered in fluffy fur";
	now cock change entry is "it gains a sheath and takes on a shape that's mostly human, but a little more slender and with a smoother glans at the tip as it becomes a little like that of a mustelid as well";
	now str entry is 13;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 45; [ The monster's starting hit points. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Hospital"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 7; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of breasts the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 58; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]wiry[or]flexible[at random]";
	now type entry is "[one of]mustelid[or]weaselly[or]weasel-like[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Psycho Weasel":
		if humanity of player is less than 10:
			say "     As your experiences in this strange city gone mad overwhelm you, you do the only sane thing... you go insane as well. Released from the bonds of sanity, you feel so much better and run wild through the city. Overflowing with the strangeness you've witnessed, you start to babble wildly about it all, letting it loose in an incoherent stream of consciousness tirade. As you do this, you wander the city as if aimlessly, though somehow you find yourself at the city hospital. Inside, you are soon met by a friendly nurse and some strong orderlies who fit you in your very own snug straightjacket. Held in the psychiatric ward, you are tended to by several of the vixens and watched over by the big jaguars. They are nice to you, keeping bound up tight for your own good, but often willing to play with you when you'd been a good boy. Occasionally you get the urge to go wander the halls for fun and sneak out to play for a while before being brought back.";
		else:
			say "     You manage to survive your time in the city, but it's definitely taken its toll on your mind. You keep it together when the soldiers come through to rescue you, but end up breaking down while their experts try to debrief you. It takes you some time and[if humanity of player > 75] [else if humanity of player > 40] some [otherwise] lots of [end if]meds to calm down.";
			if humanity of player > 50 and intelligence of player > 16:
				say "     Once you get a hold of yourself, you manage to make it through the rest of the holding period fairly well with the help of the meds. Shaken by the powerful event you've lived through, you push yourself to become a psychologist to help others similarly affected. With effort, you earn your degree and do your best to help others. Part of your practice deals with helping the infected simply cope with their changes and their new urges, while other times you must help those who've had their minds shaken by the chaotic world around them. For a brain that begins to fall apart from what it witnesses is prime ground for the infection to take hold, pushing to overwrite it fully into feral madness.";
				say "     And with so many patients coming to you with sexual instincts and urges, you get the added reward of [']helping['] many of your patients find [']healthy outlets['] for their sex drive with you. Being a typical practice of post-infection psychiatry, you enjoy a wide variety of lovers and playmates from your regular patient visits.";
			else if humanity of player > 50:
				say "     Once you get a hold of yourself, you manage to make it through the rest of the holding period fairly well with the help of the meds. Shaken by the powerful event you've lived through, but still sane, you throw yourself into [one of]abstract[or]neo-dadaist[or]expressionist[at random] artwork to deal with the tumultuous thoughts filling you. You do well enough at this despite the sharp decrease in demand for artwork in this chaotic world. But there's just something about your pieces that speaks to your patrons and the few galleries still open, allowing you to make a living off of your attempts to express yourself in this topsy-turvy world.";
				say "     There is also the added benefit of enjoying the attention from various other artists and art students who come to see your works. Your popularity has many of them eager for a chance to [']get to know you better['], allowing you a wide variety of lovers to satisfy your lustful needs.";
			else if humanity of player > 30:
				say "     Once you get a hold of yourself, you manage to make it through the rest of the holding period with only a few minor incidents with the help of the meds. Shaken by the powerful event you lived through, but still mostly sane, you go through several menial jobs. Suffering from post-traumatic stress disorder, you can never seem to hold one down for more than a year or two. You do manage to get by somehow though, partially thanks to help from your friends.";
			else:
				say "     Once you get a hold of yourself, it doesn't last. You have breakdowns every couple of days, barely managing to keep it together enough to convince them that you've not actually succumbed to the nanites. You end up institutionalized for a few months, which you mostly spend in a blissful, medicated haze. There is a nice mouse nurse there who is more than happy to visit you in your room for a bit of fun from time to time. Eventually, you get released and take odd jobs from time to time, but can't really hold down anything substantial. You do manage to get by somehow though, partially thanks to help from your friends.";

Psycho Weasel For FS ends here.
