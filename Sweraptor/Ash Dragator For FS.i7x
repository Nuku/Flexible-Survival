Version 2 of Ash Dragator For FS by Sweraptor begins here.
[ Version 2 - Fire Breath attack added]

"Adds a Dragator to Flexible Survival's Wandering Monsters table, With Impreg chance. Dragators are naturally born feral Ash Drakes that for some magical reason are born underdeveloped"


Section 1 - Monster Responses

dragatordefeat is a number that varies.

to say dragator attack:
	if a random chance of 2 in 3 succeeds and dragatordefeat is 1:
		if cunts of player > 0:
			say "The Dragator lets out a primordial roar, the noise shakes you to your core and makes you whimper involuntarily. The Dragator seizes one of your legs and pulls it out from under you, you hit the ground with an unceremonious thud. Roughly the mutant dragon flips you onto your stomach and flops his own bulk atop your [bodyname of player] back. For the next minute you both remain very still, you catch your breath under his crushing weight. Then you feel it, the growing heat of his ludicrously large prick. The best you can tell without seeing it is that it is a double dick, shaped like a double barreled shotgun, with the length and girth of two forearms pressed together. You whimper as you realize that the massive tool is headed straight for your body. Hellbent on siring spawn within you the Dragator begins to hump in search of your hole.[line break][line break]He quickly finds your [cunt size desc of player] petals, then animalistically shoves through them stretching you out. You grimace in pain, since the member exudes a hellish heat. Having lined up his cock he begins humping against you, crunching his body like a dog to get as much penetration as possible into your prone form. Soon his breathing becomes ragged and he pants lewdly in pain. You immediately feel that there are two bulges slowly inching up both his urethra! You wiggle under him but find no purchase to escape as the two bulges stretch your cunt even further, entering you with much effort on part of the dragon. You know they are eggs, what else would they be? Still humping madly the dragator begins bashing his tool against your cervix, slowly prying it open. With a heroic thrust he breaches into your womb and then holds himself there. Grunting from the incredible strain and effort of ovipositing the eggs within you he brings you to a rough orgasm just as the eggs reach his tips. Throwing his head back he lets out another pained yet triumphant roar and you orgasm while the eggs bursting forth into your uterus, jostling about in a competition for space.[impregchance][line break][line break]You spasm weakly in the afterglow but the Dragator is still not finished! Having implanted the eggs he now continues his thrusting in an effort to fertilize you. Exhausted your thankful his orgasm comes quickly. The tool swells larger and a liquid as bright as a lantern and twice as hot gushes into your waiting belly. Grunting with satisfaction the Dragator breeds you properly, your implanted womb swells with the Ash Dragon seed and soon your body is pushed up farther away from the ground by the size of your new gravidity. The light from within your stomach shines, clearly visible and serves to make you an easier target for other Ash Dragons. Dismounting you with an almost human sigh the Dragator leaves you lying exhausted and bred on the ground like a helpless bloated light bulb.[impregchance]";
			if cunt width of player < 14, increase cunt width of player by 4;
			if cunt length of player < 16, increase cunt length of player by 1;
		otherwise:
			say "The Dragator lets out a primordial roar, the noise shakes you to your core and makes you whimper involuntarily. The Dragator seizes one of your legs and pulls it out from under you, you hit the ground with an unceremonious thud. Roughly the mutant dragon flips you onto your stomach and flops his own bulk atop your [bodyname of player] back. For the next minute you both remain very still, you catch your breath under his crushing weight. Then you feel it, the growing heat of his ludicrously large prick. The best you can tell without seeing it is that it is a double dick, shaped like a double barreled shotgun, with the length and girth of two forearms pressed together. You whimper as you realize that the massive tool is headed straight for your body. Hellbent on siring spawn within you the Dragator begins to hump in search of your hole...[line break][line break]The Dragator finds the only hole you have, your anus and pushes his virile member inside. You grimace in pain, since the member exudes a hellish heat. Having lined up his cock he begins humping against you, crunching his body like a dog to get as much penetration as possible into your prone form. Soon his breathing becomes ragged and he pants lewdly in pain. You immediately feel that there are two bulges slowly inching up both his urethra! You wiggle under him but find no purchase to escape as the two bulges stretch your ass even further, entering you with much effort on part of the dragon. You know they are eggs, what else would they be? With a titanic effort the Dragator pushes the eggs out of his own body, and they are deposited deep within yours. The beast dismounts you unceremoniously leaving you lying on the ground dreading the fact you will have to 'lay' these lumps eventually.[mimpregchance]";
	otherwise:
		say "The Dragator lets out a primordial roar, the noise shakes you to your core and makes you whimper involuntarily. The beast crawls closer to you placing its head beside yours you see it eye to eye. Slitted pupils contract as they focus on your own. The jaws of the monster snap viciously beside you and its hot lewd breath causes your stomach to churn. Then strangely enough the beast pulls away from you, seemingly unsatisfied. The Ash Dragator crawls off to hide in the debris and wait for more worthy mates to bear its spawn.'";
		now dragatordefeat is 1;

to say dragator desc:
	now firebreathcount is 0;
	now firebreathready is false;
	say "From amidst the ruins a beast crawls forth on its belly. A feral crocodile would have been your first guess but the thing becomes more alien the longer you stare at it. The hard bony scales are [one of]dark grey[or]black[or]Dark speckled with red[at random] and covered in soot, In the divots between each scale you can just discern a faint glow of orange light. The creature is propelled forward by six stubby legs. With its four beady eyes fixated upon it lunges forward. Fearing being caught from behind by such a beast you ready yourself for a fight.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	add "Ash Dragator" to infections of guy;
	now name entry is "Ash Dragator";
	now attack entry is "[one of]The croc lunges forth, and with a snap of its jaws clamps its horrible teeth down on your leg. He yanks you back and forth, your badly injured by the time you pry yourself free.[or]The Dragator lands a vicious bite on you, then pulls back quickly.[or]The vicious creature knocks you over with a powerful blow and gets its clawed forefeet onto you, clawing and slashing while its weight crushes down on you.  After several slashes, it moves back.[at random]";
	now defeated entry is "The Dragator begins to limp away on its six limbs, but as it attempts to escape you catch up to it. Leaping onto its back you deliver the killing blow.";
	now victory entry is  "The Dragator takes in a deep breath. With a mighty roar he unleashes a torrent of hellfire from his maw, engulfing everything in his path, including you.[dragator attack]";
	now desc entry is "[dragator desc]";[ Description of the creature when you encounter it.]
	now face entry is "set of horns growing out of your head that form a curious crown. The rest of your face is jet black save the molten embroidery of your veins. You have an Ash Dragon head";
	now body entry is "tall and imposing. Glittering black scales illuminated by your own luminescent blood. Cruel barbs and spikes form along your thighs, forearms and joints. Your Ash Dragon body is a fearsome sight";
	now skin entry is "[one of]obsidian black scales for[or]ashen colored scales for[at random]";
	now tail entry is "You have a long prehensile tail trailing behind you. Despite its flexibility it is extremely tough and it ends with a sharp point.";
	now cock entry is "[one of]cruelly barbed ash dragon[or]glowing ash dragon impregnator[at random]";
	now face change entry is "strange sensations which build beneath your skin. Black shining scales form beneath your features and your old face sloughs off like a mask leaving a semi-recognizable version of your old self. You grab your cranium as a splitting headache erupts, new demonic horns lancing out from your head, oddly enough they look different from the reptilian horns most of the Ash Dragons sport. They almost seem to form a crown";
	now body change entry is "pain wracks throughout it in spasms. Curling into a ball you feel your spine cracking, and from the soreness in your legs and limbs you are adding significant height to your frame. Overcome with a burning sensation, you double over, feeling sick. Your old skin peels away and falls off to reveal the black scales of the Ashen Dragon Brood. The blood in your very veins seems to swell with heat and soon you can see a glowing molten layout of your blood circulation. It forms an ornate eerie pattern over your body";
	now skin change entry is "your flesh hardens as it's modified into a scaly hide. It is burned black from the inside as your blood ignites.";
	now ass change entry is "a long prehensile tail forms from your backside. You find you can sweep it powerfully behind you. It takes some getting used too, however, soon you are using it almost like a third limb";
	now cock change entry is "it engorges itself with molten blood. It now glows a deep orange and the veins of it glow brightly. There are evil looking barbs along its tip and along its belly, when ejaculating you know they will stiffen, making it impossible to pull away from your partner. Your balls also ignite with an inner light and a painful fire begins to brew within them";
	now str entry is 15;
	now dex entry is 18;
	now sta entry is 16;
	now per entry is 13;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Both";
	now hp entry is 70;
	now lev entry is 10;
	now wdam entry is 26;
	now area entry is "Capitol";
	now cocks entry is 1;
	now cock length entry is 15;
	now cock width entry is 15;
	now breasts entry is 2;
	now breast size entry is 14;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 16;
	now cunt width entry is 17;
	now libido entry is 40;
	now lootchance entry is 25;		[ Chance of loot dropping 0-100 ]
	now loot entry is "ash dragon heart";
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]powerful[or]fearsome[at random]";
	now type entry is "draconic";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath";	[ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Ash Dragator":
		if humanity of player is less than 10:
			say "Compelled by some strange notion you venture towards the western center of the city. The buildings become more decrepit and it is obvious at one point or another nearly everything here has been on fire. As you wander further and further through the destruction you finally come to the capitol building. It stands above the ruins of surrounding skyscrapers like some ominous monolith. A roar, ripped from hell echoes from the capitol buildings peak. Your belly tingles with fertility. Somehow, you know your destiny waits on the top floor.";
			if cocks of player is greater than 0:
				say "As you wander through the wastes of the city central you are attacked by several Drakenoids. You handily defeat them each in turn and always leave a dishonoured female with a bloated glowing belly in your wake. Using your 'double barreled' tool you even manage to hunt a few of the -normal- creatures from the surrounding city as you circle the capitol building. Each time you pin some squealing female or male you revel in the exquisite pain the eggs travelling up your penis and into your partner.As much as you would like, you have no time to wait and see your squealing dragon offspring be born from your victims. Eventually manage to build up an underground nest in an abandoned subway tunnel and trap enough females to build a suitable harem. Your new home is naturally lit by the round glowing bellies of your repeatedly impregnated partners.";
			if cunts of player is greater than 0:
				say "Unable to fend off the mental strain of the infection your mind goes feral and you adopt the body of an Ash Scout, a humanoid ash dragon. As you make your way back into the territory of the Ash brood you are once more caught and pinned by a familiar Dragator. He drags you down a nearby tunnel and you find yourself as part of his new nest. The nest is lit by other females of varying races who lie scattered about trapped by their own glowing fecundity. The dragator pins you in the prone position and lines up his double dick with your cunt. With a savage snarl he barrels forth spearing you on his length. After nearly an hour of ecstatic spasms on your part, he finally reaches his peak. Your uterus balloons outward into a huge gravid sphere the size of a beach ball. The dimly lit nest now highly illuminated by your bellies molten contents. Trapped now and forever by an endless stream of this beasts virility you pass out, finally satisfied. You bear the spawn of the Ash Brood for the rest of your life, never again seeing natural sunlight in the dark underground tunnels.";
		otherwise:
			say "Having retained your sanity as an Ash Dragon you manage to escape the city. However civilization proves to much for your new urges and after a short span of time in which you spread many wild oats you find yourself fleeing to the east. A dark presence has emerged from the infected city, it is rumoured, and seems to be headed in your general direction.";

Table of Game Objects(continued)
name	desc	weight	object
"ash dragon heart"	"Hot to the touch, and still simmering. You have to pay top dollar for hearts like these."	1	ash dragon heart

ash dragon heart is a grab object.
ash dragon heart is infectious. The strain of ash dragon heart is "Ash Dragator".
the usedesc of ash dragon heart is "With some trepidation you sink your teeth into the flesh of the Dragon heart. Food's food, right?.".
The purified of ash dragon heart is "food".

instead of sniffing ash dragon heart:
	say "The meaty heart smells of bloody meat, soot and volcanic ash.";

Ash Dragator For FS ends here.
