Version 1 of Psycho Weasel by Stripes begins here.
[Version 1.1 - Added male ride option]

"Adds a Psycho Weasel creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

weaselcount is a number that varies.
weaselcolor is a text that varies.[@Tag:NotSaved] weaselcolor is usually "tan".

to say psychoweaseldesc:
	setmongender 3; [creature is male]
	increase weaselcount by 1;
	let T be a random number between 1 and 3;
	if T is 1:
		now weaselcolor is "tan";
	else if T is 2:
		now weaselcolor is "brown";
	else if T is 3:
		now weaselcolor is "black";
	say "     Before you is a wild-eyed weasel person in an unsecured straightjacket. Despite his rather cartoonish figure and expression, he is clearly made of flesh and blood, covered in fur and quite real. His fur is a [weaselcolor] color and he is unclothed save for the loose restraint. He has a crazed expression on his slathering face and pumps at his cock as best he can with the long sleeves overflowing his arms. Their straps jangle as he charges at you, letting you see the swirls in his eyes as he [one of]giggles madly[or]gibbers on about people shooting voodoo into his noodle[or]blathers on about artificial flavors in t-shirts[or]screams incoherently[or]mumbles how you can't trust the garden gnomes[or]mumbles quotes from [']Rain Man['][or]yells that you stole all his blue[or]growls like a beast[in random order].";

to say losetopsychoweasel:
	say "     Victorious, the crazed weasel moves in to have his way with you. His hard cock dribbles precum as he reaches for you with his covered paws.";
	if Player is female:
		say "     He rolls you onto all fours, pushes and tugs at your pack and clothes as best he can before mounting you. With some jingling of the jacket buckles, he takes his cock in one paw and lines it up with your exposed pussy. The weasel growls and babbles some nonsense words as he thrusts into you. Your body pushes back into the thrust instinctively, starting to give in to the crazed creature's lustful urges. His covered paws slide along your back and sides, sliding the sleeves over your [Skin of Player] flesh. His pace is frantic and erratic, sometimes slow and sensual, but often frenetic as he pounds into you while spouting off about [one of]brain-sucking mice[or]space chickens[or]government fluoride[or]mind control chemicals in condoms[or]microwave sterilized semen[or]sewer sheep[or]alligators living in the sewers[or]rats after pirate treasure[or]smuggling root beer across state lines in your socks[at random]. You do your best to ignore it, but his words seem to leak into your mind even as his precum leaks into your quivering pussy[if humanity of Player <= 33]. Between moans of pleasure, you start babbling about the strangeness you've witnessed in the infected city, letting it all out as a rambling stream of consciousness, feeling a kind of release in doing so[end if].";
		say "     The crazed weasel continues to screw you, sliding his throbbing meat into you again and again. Your cunt grips and squeezes at his hard rod as he fucks you like a madman. Leaning overtop you, he takes the back of your neck into his muzzle and drives himself hard into you. You ball your hands into fists and groan in pleasure as you feel the hot rush of his semen flowing into you, filling your womb. Your vaginal walls clamp down around him, milking his cock as you cum as well.[impregchance]";
	else:
		say "     It's clear that he's going to have his way with you, one way or another.";
		say "     [bold type]Will you quickly start sucking his cock or move into position to let him mount you?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Suck his cock.";
		say "     ([link]N[as]n[end link]) - Let him mount you.";
		if Player consents:
			LineBreak;
			say "     You grab a hold of his cock and slide your mouth down over it, licking and sucking him before he can fuck you. Distracted by the blow job, he rubs his fabric-covered paws over your head and groans in pleasure. His pre leaks onto your tongue and his balls are firm and heavy, and soon you're growing excited by what you're doing. Instead of sucking him to keep him from fucking you, you start to do it because you want to, longing for that cock in your mouth as you give in to the crazed creature's lustful urges. His pace is frantic and erratic, sometimes slow and sensual, but often frenetic as he pounds into you while spouting off about [one of]brain-sucking mice[or]space chickens[or]government fluoride[or]mind control chemicals in condoms[or]microwave sterilized semen[or]sewer sheep[or]alligators living in the sewers[or]rats after pirate treasure[or]smuggling root beer across state lines in your socks[at random]. You do your best to ignore it, but his words seem to leak into your mind even as his precum leaks down your throat.";
			say "     The crazed weasel continues to thrust into your mouth as you suck his cock hungrily. Gripping you firmly, he buries your face in his groin and blasts his hot load down your throat. You moan around your mouthful of pulsing cock, swallowing down the sticky cum. You rub at his ballsack, feeling the heavy orbs inside twitch as his semen is pumped out quickly, some overflowing and running down your chin and neck. As you gulp down as much of the potent fluid as you can, you find yourself wishing you'd allowed him to mount you instead.";
		else:
			LineBreak;
			say "     Deciding to simply accept what he wants, you turn around and move onto all fours. He pushes and tugs at your pack and clothes as best he can before mounting you. With some jingling of the jacket buckles, he takes his cock in one paw and lines it up with your exposed bottom. The weasel growls and babbles some nonsense words as he thrusts into you. Your body pushes back into the thrust instinctively, starting to give in to the crazed creature's lustful urges. His covered paws slide along your back and sides, sliding the sleeves over your [Skin of Player] flesh. His pace is frantic and erratic, sometimes slow and sensual, but often frenetic as he pounds into you while spouting off about [one of]brain-sucking mice[or]space chickens[or]government fluoride[or]mind control chemicals in condoms[or]microwave sterilized semen[or]sewer sheep[or]rats after pirate treasure[or]smuggling root beer across state lines in your socks[at random]. You do your best to ignore it, but his words seem to leak into your mind even as his precum leaks into your stuffed anus[if humanity of Player <= 33]. Between moans of pleasure, you start babbling about the strangeness you've witnessed in the infected city, letting it all out as a rambling stream of consciousness, feeling a kind of release in doing so[end if].";
			say "     The crazed weasel continues to screw you, sliding his throbbing meat into you again and again. Your asshole grips and squeezes at his hard rod as he fucks you like a madman. Leaning overtop you, he takes the back of your neck into his muzzle and drives himself hard into you, pressing firmly at your prostate. You ball your hands into fists and groan in pleasure as you feel the hot rush of his semen flowing into you, filling your bowels. Your anal muscles clamp down around him, milking his cock as you cum as well.[impregchance]";
	if weaselcount > 2 and inasituation is false:
		say "     When his balls are drained, he withdraws from you and stumbles off, only to be met by a vixen nurse not far away. 'Oh, there you are sweetie. You were very naughty, running away like that,' she says, as if speaking to a child. 'I see you found a friend. Did you have fun playing? Good boy. Now let's get you back to your nice room. If you're good, I'll give you a special treat,' she adds, rubbing his sheath as she tightens up his straps, binding his arms in place. She leads him off into the shadowy halls of the hospital, leaving you there, sticky with weasel cum and feeling rather fuzzy-headed for a while.";
		now weaselcount is 0;
	else:
		say "     When his balls are drained, he withdraws from you and stumbles off down the halls, [one of]whistling tunelessly[or]mumbling to himself[or]chewing at the arm of his straightjacket[or]babbling incoherently[or]waving his arms around to listen to the buckles[or]making up perverted versions of nursery rhymes as he heads off[at random]. Your mind feels rather foggy and confused as you try to collect yourself and move on.";
	decrease humanity of Player by a random number between 2 and 5;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;


to say beatthepsychoweasel:
	say "     Having knocked down the weasel with your final blow, he curls up in a ball and starts rocking in place, mumbling about the bad [BodyName of Player]. He wraps one cloth-covered paw around his throbbing cock and gnaws intermittently at the other.";
	if Libido of Player > 29 or "Dominant" is listed in feats of Player:
		say "     You prepare to continue on your way, but your arousal stops you long enough to wonder if you might take advantage of the weasel to satisfy your needs.";
		say "     [bold type]Shall you sate your lusts?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     With your decision made, you move quickly up to the weasel and run your hands over his head, then down to his arms. He whimpers a little, but seems to calm down as you start securing his straightjacket. Restrained, he whimpers more, but now clearly at his inability to reach his throbbing cock, which has gotten even harder and is dripping with precum. When you take his erection in hand and stroke it, he moans softly and settles down, mumbling about [one of]rainbows and pretty, horny fairies[or]sunrises and vixen nurses[or]sponge baths and happy pills[or]fluffy owl down pillows[in random order].";
			if Player is male:
				say "     ";
				say "     [bold type]Shall you fuck the horny weasel or ride his hard cock now that you have him safely strapped up?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Fuck the horny weasel.";
				say "     ([link]N[as]n[end link]) - Ride his hard cock.";
				if Player consents:
					LineBreak;
					say "     Pushing him to lean over a nearby gurney, you grab his tail and hold it up, exposing his waiting tailhole. He wiggles his rear even as he keeps squirming, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazy creature, you press your [cock size desc of Player] [Cock of Player] cock to his backside and sink your shaft into him. He moans lustfully and starts to mutter something about [one of]raccoons with sticky fingers[or]busty skunk women[or]pushy jaguars[or]cold thermometers[or]lubricated sigmoidoscopes[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He pushes back into each thrust you make, panting and moaning as you hold his muzzle in one hand and stroke his cock in the other. You pound away at the bound weasel's ass until you fill him with your hot cream and he spurts his load onto the gurney. Once your balls are drained, you bind his straightjacket to the railings and leave him like that, slumped onto the white sheets and leaking cum from his ass. Maybe someone else will come along to take care of him... in one way or another.";
				else if Player is female:
					LineBreak;
					say "     Grabbing the bound weasel, you push him onto a nearby gurney and hold him down by the shoulders. He struggles and snaps at you, but his cock is rock hard and leaking pre, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazed creature, you climb over him and grind your pussy down onto his leaking cock before sinking yourself down onto it. You moan in pleasure as it slides into your needy cunt. He moans and starts to mutter something about [one of]pushy nurses[or]fluffy birdies[or]giant skunk melons[or]vixens with mealtime milk[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He bucks his hips, thrusting up into as you ride his pulsing rod, panting and moaning as you hold his muzzle in one hand and his shoulder down with the other. You bounce in the bound weasel's lap until your cunt quivers and clamps down around his shaft, cumming hard and sending the manic mustelid over the edge as well. His hot semen pumps into you, filling you with a satisfied warm wetness that helps prolong your orgasm. Your cock[smn], quite hard throughout the ride, blasts its load as well, leaving a mess of your semen all over the front of his harness. Once his balls are drained, you bind his straightjacket to the railing and leave him like that, resting on the gurney and soaked in your semen and feminine juices, as well as his own cum. Maybe someone else will come along to take care of him... in one way or another.[impregchance]";
				else:
					LineBreak;
					say "     Grabbing the bound weasel, you push him onto a nearby gurney and hold him down by the shoulders. He struggles and snaps at you, but his cock is rock hard and leaking pre, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazed creature, you climb over him and grind your ass down onto his leaking cock before sinking yourself down onto it. You moan in pleasure as it slides into your tight anus. He moans and starts to mutter something about [one of]kinky coons[or]smuggling treasure[or]dropping the soap[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He bucks his hips, thrusting up into as you ride his pulsing rod, panting and moaning as you hold his muzzle in one hand and his shoulder down with the other. You bounce in the bound weasel's lap as your rear squeezes down around his shaft until the manic mustelid is pushed over the edge. His hot semen pumps into you, filling you with a satisfying, warm wetness that sets off your own orgasm. Your cock[smn], quite hard throughout the ride, blasts its load as well, leaving a mess of your semen all over the front of his harness. Once his balls are drained, you bind his straightjacket to the railing and leave him like that, resting on the gurney and soaked in your semen, as well as his own cum. Maybe someone else will come along to take care of him... in one way or another.[mimpregchance]";
			else:
				say "     Grabbing the bound weasel, you push him onto a nearby gurney and hold him down by the shoulders. He struggles and snaps at you, but his cock is rock hard and leaking pre, as if the struggle is all part of the fun. Deciding to just get to the action instead of further pondering the motivations of the clearly crazed creature, you climb over him and grind your pussy down onto his leaking cock before sinking yourself down onto it. You moan in pleasure as it slides into your needy cunt. He moans and starts to mutter something about [one of]pushy nurses[or]fluffy birdies[or]giant skunk melons[or]vixens with mealtime milk[as decreasingly likely outcomes], so you wrap your hand around his muzzle to silence his insane ramblings. He bucks his hips, thrusting up into as you ride his pulsing rod, panting and moaning as you hold his muzzle in one hand and his shoulder down with the other. You bounce in the bound weasel's lap until your cunt quivers and clamps down around his shaft, cumming hard and sending the manic mustelid over the edge as well. His hot semen pumps into you, filling you with a satisfied warm wetness that helps prolong your orgasm. Once his balls are drained, you bind his straightjacket to the railing and leave him like that, resting on the gurney with his crotch soaked in your juices and his cum. Maybe someone else will come along to take care of him... in one way or another.";
		else:
			LineBreak;
			say "     Deciding it'd be best to just get away, you head off quickly before you give in to your lusts.";
	else:
		say "     Deciding it'd be best to get away while you can, you make a run for it.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Psycho Weasel" to infections of MustelidList;
	add "Psycho Weasel" to infections of FurryList;
	add "Psycho Weasel" to infections of NatureList;
	add "Psycho Weasel" to infections of MaleList;
	add "Psycho Weasel" to infections of BarbedCockList;
	add "Psycho Weasel" to infections of SheathedCockList;
	add "Psycho Weasel" to infections of BipedalList;
	add "Psycho Weasel" to infections of TailList;
	now Name entry is "Psycho Weasel"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The crazed weasel batters at you with the long sleeves of his straightjacket![or]The wild-eyed creature bites you![or]The crazy weasel wraps his arms around you and humps his throbbing cock against your side![or]The weasel punches at you wildly![or]The weasel slams his shoulder into you, knocking you against the wall![or]The wild babble the creature keeps spouting fills you with confusion, giving it an opportunity to strike you![at random]";
	now defeated entry is "[beatthepsychoweasel]"; [ Text when monster loses. ]
	now victory entry is "[losetopsychoweasel]"; [ Text when monster wins. ]
	now desc entry is "[psychoweaseldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a weasel-like creature, with a muzzle full of pointed teeth, wild eyes and a scraggly appearance";
	now body entry is "slender and flexible, with paws for hands and feet. Your weasel body moves with manic energy, but also has some uncontrolled twitches and spasms";
	now skin entry is "scraggly brown fur over your";
	now tail entry is "Attached to your behind is a long, tube-like tail of brown fur with a dark tip. It twitches and flicks around when you don't focus on keeping it still.";
	now cock entry is "[one of]sheathed[or]weasel[or]mustelid[at random]";
	now face change entry is "strange noises fill your ears as they change, becoming small and furry. Your face shifts, reforming into a cartoonishly-shaped weasel head. You can hear [one of]voices in your head[or]radio waves picked up by your braces[or]whispers from someone you can't see[at random] as you continue to change, only realizing that you were hearing yourself babbling as the changes subside";
	now body change entry is "your torso becomes elongated and flexible. Slender and wiry, you twitch with manic energy as the transformation spreads down your arms. Your hands shake nervously and you have to resist the urge to gnaw at them as your bones pop and digits reform into nimble paws. Just as your new paws are settling into place and you're regaining control of them, the same starts to happen to your feet until you're left with a twitchy, mustelid body";
	now skin change entry is "an itchy sensation spreads over you, making you want to scratch yourself all over, just keep scratching and scratching until it's all gone if you must to make it stop. Scraggly, brown fur starts to spread over your body with a lighter cream color on your chest. Thankfully, the itch subsides as the fur finishes growing and you sigh in relief";
	now ass change entry is "you feel a pulling sensation at the base of your spine. With some cracks and pops, it extends out, forming into a long, slender tail covered in fluffy fur";
	now cock change entry is "it gains a sheath and takes on a shape that's mostly human, but a little more slender and with a smoother glans at the tip as it becomes a little like that of a mustelid as well";
	now str entry is 13;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Hospital"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]wiry[or]flexible[at random]";
	now type entry is "[one of]mustelid[or]weaselly[or]weasel-like[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Psycho Weasel Infection"	"Infection"	""	Psycho Weasel Infection rule	1000	false

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]
This is the Psycho Weasel Infection rule:
	if Player has a body of "Psycho Weasel":
		trigger ending "Psycho Weasel Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your experiences in this strange city gone mad overwhelm you, you do the only sane thing... you go insane as well. Released from the bonds of sanity, you feel so much better and run wild through the city. Overflowing with the strangeness you've witnessed, you start to babble wildly about it all, letting it loose in an incoherent stream of consciousness tirade. As you do this, you wander the city as if aimlessly, though somehow you find yourself at the city hospital. Inside, you are soon met by a friendly nurse and some strong orderlies who fit you in your very own snug straightjacket. Held in the psychiatric ward, you are tended to by several of the vixens and watched over by the big jaguars. They are nice to you, keeping bound up tight for your own good, but often willing to play with you when you'd been a good boy. Occasionally you get the urge to go wander the halls for fun and sneak out to play for a while before being brought back.";
		else:
			say "     You manage to survive your time in the city, but it's definitely taken its toll on your mind. You keep it together when the soldiers come through to rescue you, but end up breaking down while their experts try to debrief you. It takes you some time and [if humanity of Player < 40]lots of [else if humanity of Player < 75]some [end if]meds to calm down.";
			if humanity of Player > 50 and intelligence of Player > 16:
				say "     Once you get a hold of yourself, you manage to make it through the rest of the holding period fairly well with the help of the meds. Shaken by the powerful event you've lived through, you push yourself to become a psychologist to help others similarly affected. With effort, you earn your degree and do your best to help others. Part of your practice deals with helping the infected simply cope with their changes and their new urges, while other times you must help those who've had their minds shaken by the chaotic world around them. For a brain that begins to fall apart from what it witnesses is prime ground for the infection to take hold, pushing to overwrite it fully into feral madness.";
				say "     And with so many patients coming to you with sexual instincts and urges, you get the added reward of [']helping['] many of your patients find [']healthy outlets['] for their sex drive with you. Being a typical practice of post-infection psychiatry, you enjoy a wide variety of lovers and playmates from your regular patient visits.";
			else if humanity of Player > 50:
				say "     Once you get a hold of yourself, you manage to make it through the rest of the holding period fairly well with the help of the meds. Shaken by the powerful event you've lived through, but still sane, you throw yourself into [one of]abstract[or]neo-dadaist[or]expressionist[at random] artwork to deal with the tumultuous thoughts filling you. You do well enough at this despite the sharp decrease in demand for artwork in this chaotic world. But there's just something about your pieces that speaks to your patrons and the few galleries still open, allowing you to make a living off of your attempts to express yourself in this topsy-turvy world.";
				say "     There is also the added benefit of enjoying the attention from various other artists and art students who come to see your works. Your popularity has many of them eager for a chance to [']get to know you better['], allowing you a wide variety of lovers to satisfy your lustful needs.";
			else if humanity of Player > 30:
				say "     Once you get a hold of yourself, you manage to make it through the rest of the holding period with only a few minor incidents with the help of the meds. Shaken by the powerful event you lived through, but still mostly sane, you go through several menial jobs. Suffering from post-traumatic stress disorder, you can never seem to hold one down for more than a year or two. You do manage to get by somehow though, partially thanks to help from your friends.";
			else:
				say "     Once you get a hold of yourself, it doesn't last. You have breakdowns every couple of days, barely managing to keep it together enough to convince them that you've not actually succumbed to the nanites. You end up institutionalized for a few months, which you mostly spend in a blissful, medicated haze. There is a nice mouse nurse there who is more than happy to visit you in your room for a bit of fun from time to time. Eventually, you get released and take odd jobs from time to time, but can't really hold down anything substantial. You do manage to get by somehow though, partially thanks to help from your friends.";

Psycho Weasel ends here.
