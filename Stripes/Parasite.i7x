Version 1 of Parasite by Stripes begins here.

"Adds an event to gain the larva parasite and unlock the Black Wasp breeder insects."

insectlarva is a truth state that varies. insectlarva is usually false.
larvacounter is a number that varies.	[counts time for the various stages]
larvaegg is a number that varies.		[0 = no eggs, 1 = unfertilized, 2 = fertilized]
larvalaid is a number that varies.		[how many times a player's laid eggs]
larvaexpel is a number that varies.		[how many times a player's expelled unfertilized eggs in a row]
libidomemory is a number that varies.	[remembers pre-fight libido]

Section 1 - Insect Hive Event

Table of GameEventIDs (continued)
Object	Name
Insect Hive	"Insect Hive"

Insect Hive is a situation.
The sarea of Insect Hive is "High".
when play begins:
	add Insect Hive to BadSpots of MaleList;
	add Insect Hive to badspots of FeralList;

Instead of resolving a Insect Hive:
	say "     Searching through the high rise district, you start along a shadowy alley between two towers. You slow as you spot something unusual here. Scattered in clusters along the side are sticky orbs. They have a rather gelatinous appearance and are split open with trails of sticky slime leading from them further into the alley. All of this gives you strong reason to pause, unsure if you want to continue forward.";
	say "[bracket]Extreme content warning.[close bracket][line break]";
	say "     [bold type]Shall you proceed?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Deciding that fortune favors the bold, you continue forward. As you proceed, the passage becomes more constricted with a gray, fibrous mass covering the walls of the buildings. There's still more than enough room to pass, so you proceed. There is a strange, sweet scent in the air that you want to follow, allaying any concerns you may have about the stuff covering the building walls.";
		say "     You emerge into what was once a back loading area behind the buildings to see that it has been greatly changed. The gray mass continues here, spread across the rear of these buildings. In some places, the windows have been broken out and covered in the fibrous material to form circular holes. One of the loading bays remains open and is encrusted in gray as well. There is more of this stuff across the ground in mounds, possibly covering vehicles or simply forming shelters for more of the clusters of orbs.";
		say "     You step cautiously inside, drawn by the alluring scent you can't quite place, and approach one of these clusters. You can see them unbroken and quickly realize they are some kind of egg. The gooey contents are translucent, but too opaque to quite make out what these are. While you examine them more closely, your senses are further dulled by the scent in the air and you are too focused on the strange eggs to notice the growing buzz around you. Until it is too late, that is.";
		say "     Once you do take notice, you look up and see large insects clambering from those holes. These are large and wasp-like, slightly larger than a human being in length. They are a glossy black and fully insectile in form, unlike the rare insect humanoids you've spotted. They have large, oval eyes, twitching antennae and six insectile feet that carry them out of the hive before they take flight on their translucent wings.";
		say "     You turn to run, but find more of them have already moved to block the alleyway. Trapped here with them, they buzz around you and do not approach further. As if they were waiting for it, the scent grows stronger in the air and you take conscious notice of it, breathing it in deeply and becoming aroused by it. Your mind grows hazy and your arms drop to their sides, losing the will to resist the bugs. There are simply too many to fight, you tell yourself.";
		say "     As if sensing your acquiescence, several fly over and surround you. Your clothes and pack are pulled from your [bodytype of Player] body by their agile little claws, largely undamaged by this as they take care not to harm their prize. As they do so, their insectile legs run over your [bodydesc of Player] body, touching you in ways you find increasingly arousing. Turned on despite yourself, the attention gets you quite [if Player is male]hard[else if Player is female]aroused[else]hot[end if] as their mandibles part and long, wet tongues start sliding over your face and body. As one of these passes across your lips, you moan and suck it in, soon deep throating the slick proboscis. Another of these passes across your [if Player is female]pussy[else]asshole[end if] and pushes its way in[if Player is male] while another plays over your [cock size desc of Player] [Cock of Player] cock[end if], making you moan around your sweet mouthful.";
		say "     But just before you can find release, the wasps withdraw their tongues, making you moan in disappointment[if scalevalue of Player is 1]. One of the insects grabs you in its small, clawed feet and lifts your tiny body easily by your limbs, flying you into the open loading dock[else if scalevalue of Player < 5]. Several of the insects grab you in their small, clawed feet and lift you by your limbs and fly you into the open loading dock[else]. Several of the insects grab you in their tiny, clawed feet and try to lift you, flapping their wings as hard as they can. Your huge body is difficult for them to move until more of them grab you all over and they manage to half-carry, half-drag you up into the open loading dock[end if]. Deposited inside the hive, several things are noticeable at once. First and foremost is the large queen insect inside. While the rest of her body is only somewhat larger than the others, her abdomen is huge, many times the size of her followers. It is white and fleshy, undulating with the promise of life for the hive. The arousing scent is much stronger here and appears to be coming from her, her pheromones to control her hive also a mind-numbing aphrodisiac.";
		say "     Past her you can see several creatures, many of them humanoid and partially recognizable as having strains you've seen out in the city. They are partially insectile now, with chitinous skin, additional insect legs growing from their segmented bodies, partially insectile heads or other such features. They have more of the gray material trapping them into becoming part of the hive. Some are suspended from the ceiling by their arms and with their legs spread. Others are held on all fours and some are even built into the wall, facing it. All have expressions of mindless lust and have their bloated bellies and hips free of the binding mass. Beneath them are sticky piles of eggs with more of the slime coating their thighs.";
		say "     As you are taking this all in, the wasps pull you towards the queen and you try to struggle briefly, but can't seem to find the strength to fight them for long. Grabbed by the queen, she turns onto her side and holds you with four legs while the middle pair tease over your [bodytype of Player] body. Your arousal from earlier returns stronger than ever in the presence of her pheromones and soon she no longer has to restrain you, leaving all her limbs free to pleasure you.";
		say "     When a pair of her insect claws grab your [if Player is female]legs[else]ass cheeks[end if] and spreads them, you moan softly and suck harder on the tendril of her tongue. You watch as the end of her abdomen moves in, bringing its knotted, cock-like stinger towards your [if Player is female]cunt[else]asshole[end if], moaning as she starts to penetrate you. Your hips press into the thrusts, riding that phallic stinger, too lost in your lust to resist what you expect is coming.";
		say "     Her pale abdomen undulates as she fucks your needy body and you start to see a bulge traveling along it, moving towards the stinger. But this mass is not passively moved, but squirms with a life of its own. Realizing this, you start to struggle but, as if expecting such a reaction, the queen's legs have you restrained almost instantly. You cannot help but watch as this larva moves closer, then is pushed through the queen's phallic stinger into your [if Player is female]womb[else]belly[end if]. You can feel it moving around inside you, torn between being horrified and strangely aroused by having this living thing, this parasite, living inside you. But, regardless of how you may think of it, your body responds with a powerful climax.";
		say "     Fully expecting to be trapped as part of the hive now, you are surprised when the queen releases you, gently running her feet across your squirming belly. Soon the squirming subsides as the larva settles in, attaching itself [if Player is female]to your uterine wall[else]somewhere deep inside your belly[end if]. Several of the wasps come over and nuzzle at your belly as they push you from the hive, allowing you to grab your gear and leave this place. You are confused, but don't question your good fortune and quickly leave this bizarre hive, though a small corner of your mind can't help but think about how happy all those trapped there appeared.";
		now insectlarva is true;
		now preghijack is true;
		now mpreghijack is true;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Black Wasp":
				now area entry is "High";
				now non-infectious entry is false;
		now Resolution of Insect Hive is 1; [wasps unlocked]
	else:
		LineBreak;
		say "     Deciding discretion is the better part of valor, you exit the alley. Making note of this area, you decide to keep some distance between you and it in the future.";
		now Resolution of Insect Hive is 99; [disinterest]
	now Insect Hive is resolved;


Section 2 - Parasite

an everyturn rule:
	if insectlarva is true and skipturnblocker is 0:
		increase Libido of Player by a random number between 1 and 3;
		if larvaegg is 0:
			increase larvacounter by 1;
			if Player is female and a random chance of 1 in 3 succeeds, increase larvacounter by 1;
			if "Fertile" is listed in feats of Player and a random chance of 1 in 2 succeeds, increase larvacounter by 1;
			if "Maternal" is listed in feats of Player and a random chance of 1 in 3 succeeds, increase larvacounter by 1;
			if larvacounter >= 12 and gestation of Child is 0:
				say "     You can feel some activity inside your belly as the parasite inside you squirms about. You would be disturbed by this were it not strangely arousing. Your [if Player is female]womb[else]bowels[end if] feel warm as something rubs and pulses against your inner walls, spraying thick goo inside you. You find yourself longing to see those black wasps again. Noticing their enticing scent in the air, you soon realize that the smell is coming from you[if larvalaid > 2]. You realize that more unfertilized eggs have been laid inside you and the wasps will come looking to breed you again[else if larvalaid is 1 or larvalaid is 2] and realize the scent will draw the wasps again[end if].";
				increase Libido of Player by 10;
				now larvacounter is 0;
				now larvaegg is 1;
			else if larvacounter is odd and a random chance of 3 in 5 succeeds:
				say "[one of]You stifle a moan of pleasure as you feel the insect creature inside you move about.[or]Your insides churn as you feel the larva inside you squirm around and reposition itself.[or]There is a bulge that moves across your belly momentarily.[or]You feel the parasite inside you rubbing against your inner walls in a strangely pleasurable manner.[or]You feel a stinging sensation of painful pleasure as the parasite inside you stabs something into you. You feel a rush of arousal a few moments later.[or]The larva shifts around again, showing briefly as a bulge across your belly before settling down again.[or]You continue to feel activity from the creature inside you from time to time, but have begun to grow used to its activity.[stopping]";
				increase Libido of Player by 4;
		else if larvaegg is 1 and gestation of Child is 0:
			increase Libido of Player by 3;
			if a random chance of 1 in 3 succeeds, decrease humanity of Player by 1;
			increase larvacounter by 1;
			if larvacounter >= ( 12 + larvalaid ) and gestation of Child is 0:
				if humanity of Player - Libido of Player > 30:
					increase larvaexpel by 1;
					if larvaexpel < 3:
						say "     After enduring the squirming of the larva inside you and the strange, twisted urges you've been feeling because of it, something finally shifts inside you. You make your way somewhere private and groan as you push, expelling [if larvalaid > 2]the unfertilized egg goo from inside you[else]some thick, slimy goo from inside you[end if]. You feel relieved that you managed to endure the ordeal and can feel the parasite subside for the moment.";
						now larvacounter is -5;
						now larvaegg is 0;
						SanBoost 3;
						decrease Libido of Player by 5;
					if larvaexpel is 3:
						say "     After enduring the squirming of the larva inside you and the strange, twisted urges you've been feeling because of it, you feel a painful jab and an uncomfortable weight in your [if Player is female]womb[else]bowels[end if]. Making your way somewhere private, you groan in pain as your body pushes to expel the lump inside you. Finally, you manage to push it out and are surprised to find it not only more [if larvalaid < 2]thick goo[else]egg goo[end if], but the parasite itself. With it dead now after being prevented from fulfilling its life cycle repeatedly, you have managed to push it out, freeing you from its strange, parasitic hold. It is a pale creature, looking much like a bloated, insect larva with several tiny legs and phallic back end from which you suspect it released the [if larvalaid < 2]slimy goo[else]egg slime[end if] into you. While you'd rather have nothing more to do with the creature, you dispose of the larva in case the wasps would be drawn to its scent.";
						now insectlarva is false;
						now preghijack is false;
						now mpreghijack is false;
						now larvacounter is 0;
						now larvaegg is 0;
						SanBoost 10;
						now Libido of Player is Libido of Player / 2;
						repeat with y running from 1 to number of filled rows in Table of Random Critters:
							choose row y in Table of Random Critters;
							if Name entry is "Black Wasp":
								now area entry is "Nowhere";
								now non-infectious entry is true; [Wasps locked again]
								break;
				else:
					if HP of Player < 1, now HP of Player is 1;
					say "     The larva's activity inside you becomes too much for you and following some strange instinct, you head off alone briefly and find an elevated, open spot and wait. Soon enough, one of the black wasps is drawn in by your scent. Feeling strangely aroused and having no more will to resist it, you readily give yourself up to the large insect with a lustful moan.";
					say "[losetoblackwasp]";
			else if larvacounter is odd and a random chance of 1 in 2 succeeds:
				say "[one of]You stifle a moan of pleasure as the larva inside you squirms.[or]Your insides feel strangely warm and needy and you find your mind wandering to those black wasps.[or]You feel an emptiness inside which you long for one of those wasps to fill.[or]You feel a warm splash of more goo across your insides. This unusual sensation only arouses you further.[or]You feel a painful sting inside you that is soon replaced by the warm rush of arousal. The scent of the hive grows stronger around you.[or]The larva rubs itself against your inner walls, resulting in a strangely pleasurable sensation, but one that also makes you long for something larger to fill you.[in random order]";
		else if larvaegg is 2:
			decrease Libido of Player by 4;
			increase larvacounter by 1;
			if Player is female and a random chance of 1 in 3 succeeds, increase larvacounter by 1;
			if "Fertile" is listed in feats of Player and a random chance of 1 in 2 succeeds, increase larvacounter by 1;
			if "Maternal" is listed in feats of Player and a random chance of 1 in 3 succeeds, increase larvacounter by 1;
			if larvacounter >= 36:
				say "     You moan softly as you feel something wet inside you shift and start to move. Your bloated belly jostles around a little and you can feel the orbs inside you sliding into position. You quickly find a dark, private spot outside and lay down, rubbing your bloated belly. The wet shifting of the orbs inside you is oddly pleasurable even as you start pushing them [if Player is female]out of your womb[else]along your bowels[end if] even as the larva inside you seems to be working to help them move along. As the strange labor continues, you groan and push hard, releasing a gush of slimy fluids that soak your thighs and the ground nearby. Feeling the tennis ball-sized orbs shift around and the first of them sliding along your [if Player is female]vagina[else]rectum[end if], you pant and push in waves, stretching yourself open to eventually release it. The others soon follow, coming with less effort than the first[if Player is male]. This whole process is strangely arousing and your cock grows hard and is soon releasing a spurt of cum with each egg you press out[else if Player is female]. This whole process is strangely arousing and your cunt quivers and leaks your feminine juices as each egg is expelled[end if].";
				say "     When this bizarre labor is over, you rub your hands over your belly, sighing satisfactorily as you watch your tummy shrink down and return to its normal size. You get up and look over the mound of sticky, gel eggs you've released and part of you is strangely pleased with yourself despite what should be a rather disturbing occurrence. You feel the larva inside you shift around, sending a ripple across your tummy and head off, wondering how long it will be before the process will begin anew. Just out of earshot, you can hear the faint buzz of one of the wasps, drawn by the scent of ready eggs to gather them.";
				increase larvalaid by 1;
				now larvacounter is 0;
				now larvaexpel is 0;
				now larvaegg is 1;
				if BodyName of Player is "Black Wasp":
					SanLoss 5;
				else:
					decrease humanity of Player by 2;
				now Libido of Player is Libido of Player / 2;
			else if larvacounter >= 30:
				say "Your belly protrudes in a firm dome of pregnancy, but a rather unusual one. Rubbing your belly, you can feel the bulge of round eggs stuffed inside you. The size of your egg-filled tummy should hinder you, but it doesn't, perhaps due to the nanites or the larva inside you.";
			else if larvacounter >= 22:
				say "Your belly is somewhat rounded now, swollen with the rapid growth of something inside you. You should be worried, but there is a warm sense of fulfillment coming along with it as the larva inside you rubs itself happily against your inner walls or releases more chemicals into you.";
			else if larvacounter >= 15:
				say "You feel a pleasant warmth from deep inside you as tingles run through your lower tummy.";
		else if gestation of child > 0:
			if a random chance of 1 in 4 succeeds:
				say "The larva inside you shifts about inside your occupied womb as if impatient for its current occupant to leave so it may resume its life cycle.";
				decrease gestation of child by 2;
				if gestation of child < 1, now gestation of Child is 1;
	if Libido of Player < 0, now Libido of Player is 0;
	if Libido of Player > 100, now Libido of Player is 100;


Section 3 - Black Wasp creature

Chapter 1 - Creature Responses

to say blackwaspdesc:
	setmongender 3; [creature is male]
	say "     As you travel along, you hear a growing buzzing sound, looking up in time to see one of the black wasps [if larvaegg is 1 and gestation of Child is 0]drawn to you by your scent[else]coming in towards you[end if]. The giant insect is nearly as long as an average person's height. Shaped much like a yellowjacket but completely black, this wasp has large, oval eyes, three pairs of legs ending in small, clawed feet and a large, segmented abdomen. Looking at its abdomen, you can see its rather phallic stinger is out and dripping fluid. It is much like their queen's knotted one, though somewhat smaller. Your belly squirms as a wave of arousal washes through you, the larva inside you pumping something into you, making you increasingly aroused and eager to submit to this insect.";
	now libidomemory is Libido of Player;


to say losetoblackwasp:
	if HP of Player > 0:
		say "     Giving into the urges coming from your [if Player is female]womb[else]belly[end if] and the parasite within, you moan lustfully and bare yourself to the creature, dropping to your knees. The insect buzzes happily and moves atop you, running its insectile legs over your [bodytype of Player] body. Soon, it brings its abdomen into position and drives its stinger-cock into your [if Player is female]cunt[else]ass[end if] and starts fucking you wildly. ";
	else:
		say "     Battered by the insect until you can no longer resist, your exhausted body is pinned down by it. Its insectile legs run over your [bodydesc of Player] form, pulling off your pack and clothes quickly. It does seem to take care in doing so though, perhaps trying not to damage you further, and pushes you onto all fours. Lacking the strength to continue to struggle, you can only wait as it brings its abdomen into position and drives its stinger-cock into your [if Player is female]cunt[else]ass[end if] and starts fucking you wildly. ";
	say "As it does, it gently nibbles at you with its mandibles before opening them and letting its tongue slide across your [if scalevalue is 4 or scalevalue is 5]back and shoulders[else]neck and cheek[end if]. Despite your lovers strange nature, or perhaps even because of it, you lustfully push back into its thrust and cum loudly as its knot pushes fully into you and blasts its thick seed into you. ";
	if larvaegg is 1 and gestation of Child is 0:
		say "Your [if Player is female]womb[else]belly[end if] is filled with a satisfying warmth as its seed flows into you[if larvalaid >= 2], fertilizing the insect eggs deposited inside you[end if].";
		say "     Its pleasurable duty done once the flow of semen has ended and its knot has gone down, the insect gently releases you and buzzes off into the air. You get up slowly and head off with a strange sense of contentment welling up inside you, centered somewhere in your tummy.";
		now Libido of Player is Libido of Player / 2;
		now larvacounter is a random number between 0 and 12;
		now larvaegg is 2;
	else:
		say "Your [if Player is female]womb[else]belly[end if] is filled with a satisfying warmth as its seed flows into you, causing the larva inside you to squirm excitedly.";
		now Libido of Player is ( Libido of Player + libidomemory + libidomemory ) / 3;


to say beattheblackwasp:
	say "     You manage to resist the urge to give in to the wasp throughout the fight. Battering the big bug, you eventually manage to drive the creature off, too injured to continue seeking to mate with you for the moment. Your intense arousal drops somewhat as the big insect leaves the area and the larva's movements subside for now.";
	now Libido of Player is ( Libido of Player + libidomemory + libidomemory ) / 3;


Chapter 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Black Wasp" to infections of InsectList;
	add "Black Wasp" to infections of FurryList;
	add "Black Wasp" to infections of NatureList;
	add "Black Wasp" to infections of MaleList;
	add "Black Wasp" to infections of KnottedCockList;
	add "Black Wasp" to infections of BipedalList;
	add "Black Wasp" to infections of FlightList;
	add "Black Wasp" to infections of FeralmindList;
	add "Black Wasp" to infections of TailList;
	add "Black Wasp" to infections of TailweaponList;
	now Name entry is "Black Wasp"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The wasp grabs at you with its insect legs, trying to shove you down![or]The black insect jabs its phallic stinger against you several times, leaking precum onto you![or]The bug nips at you with its mandibles![or][if scalevalue of Player < 4]The insect grabs you flies up several feat before tossing you to the ground[else]The insect grabs onto your arm and flies frantically. While not able to lift you, it does drag you around, pulling you into something nearby[end if]![or]The wasp buzzes angrily and bashes its chitinous body against yours![or]The insects numerous feet scratch at you with their little claws![at random]";
	now defeated entry is "[beattheblackwasp]"; [ Text when monster loses. ]
	now victory entry is "[losetoblackwasp]"; [ Text when monster wins. ]
	now desc entry is "[blackwaspdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "insectile in appearance, with large, segmented eyes and a pair of antenna on your head";
	now body entry is "has become segmented like that of an insect. Your arms and legs become partially insectile, with clawed digits and inhuman joints. You also possess an additional pair of vestigial insect legs pulled up against your sides. They twitch occasionally, and you can make them move if you concentrate, but they are still too weak and hard to control for proper use yet";
	now skin entry is "plated chitin that is quite sensitive despite its hard appearance. It has an insectile appearance, is a glossy black and covers your";
	now tail entry is "You possess a large, insectile abdomen that's grown from the end of your spine. It is covered in chitinous plate, but quite sensitive, even arousing, to the touch.";
	now cock entry is "knotted";
	now face change entry is "your vision blurs and breaks into numerous images as your eyes become segmented like that of an insect. It takes you a few moments for everything to come back into focus as your altered mind somehow manages to integrate the images into a cohesive whole your mind can still understand";
	now body change entry is "you feel an odd itch at your sides and your insides churn. As your limbs change, becoming thinner and strangely jointed, your hands and feet gain sharp claws and little, grasping digits. That itchiness at your sides continues until a pair of vestigial, insectile legs grow in as your body becomes segmented, much like a bug's";
	now skin change entry is "black plates of chitinous shell grows over it";
	now ass change entry is "a growing protuberance begins to form, turning into a large, segmented bulge. As it continues to mature, it forms into an abdomen like that of a wasp";
	now cock change entry is "it pulses and throbs, spurting seed as it becomes more pointed and knotted, similar to the hive queen's own stinger";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 8;
	now cha entry is 6;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 12; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 65; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "segmented"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "insectile"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "blackwasp"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"blackwasp"	retaliation rule	--	--	--	--	--	--	--	waspparasite rule	--

this is the waspparasite rule:
	say "The parasite inside you, as if sensing the wasp nearby, [one of]squirms excitedly inside you[or]injects more mind-numbing chemicals into you[or]shifts in strangely pleasant ways inside you[or]rubs itself against your inner walls[at random]. This activity seems to excite you further, increasing your arousal and making you consider just accepting your fate[if larvaegg is 1 and gestation of Child is 0]. The idea of simply submitting to the creature is quite compelling, making the idea of giving yourself to the wasp strangely attractive[end if], almost making you falter as it moves in.";
	increase Libido of Player by a random number between 2 and 4;
	if larvaegg is 1 and gestation of Child is 0, increase Libido of Player by 2;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 1;


when play ends:
	if insectlarva is true:
		if BodyName of Player is "Black Wasp":
			if humanity of Player < 10:
				say "     Driven mad by the effects of the infection and the parasite inside you, you lose yourself to the lustful urges it is imposing upon you. You wander your way back to the hive, rejoining the wasps there. Pleased to see the return of another of their parasitic breeders, they welcome you lustfully by running their proboscis tongues over you and fucking you repeatedly. During this orgy of welcome, your hands and feet are encased in the gray material, making you a part of the hive like the other breeders. Your infected mind is pleased by this prospect and you happily let yourself be [one of]fixed into position on all fours[or]suspended spread eagle[or]trapped as part of a wall[at random] and be bred full of gooey eggs over and over again.";
				say "     It is a pleasant, mindless life that fills you with a drug-filled joy from the wonderful symbiosis you have with the hive's larva inside you. The queen is generous as well, sometimes releasing those with fertilized eggs already in them to enjoy a mindless, lustful orgy together while the insects watch their breeders amuse themselves before being reattached to the hive in new positions.";
				if larvalaid > 4:
					say "     After laying countless mounds of wonderful eggs as one of the hive's best breeders, you feel the larva inside you shift and move in a strange way you've never felt before and your scent changes. Several of the black wasps approach and you are fed an amber gel that has a very strong taste to it. But as you consume it, it becomes more and more pleasant and soon you're gorging on it until stuffed and sleepy from being so well fed. As you're drifting off, the wasps cover you a thick goo that quickly hardens. In this chrysalis, you slumber as new changes occur.";
					say "     Eventually you emerge as a young, new queen. You snuggle lustfully up to the old queen and pleasure one another as she welcomes you to your new life before you must leave. A portion of the hive gathers around you and some of your old intelligence returns, if not many of your memories or feelings. Knowing what you must do, you pick a select few of the breeders, your favorites from your past life as a breeder, and, with the help of your new followers, strike out to form a new hive in a new city where you will enjoy your regal life running the hive and implanting larva in those selected to be new breeders.";
				else:
					say "     After laying countless mounds of wonderful eggs, you feel the larva inside you shift and move in a strange way you've never felt before and you become sleepy. As you're drifting off, the wasps come over, covering you a thick goo that quickly hardens. In this chrysalis you slumber as new changes occur. Eventually you emerge as a black wasp like the others, fully joining the hive in service to the queen and her many breeders.";
			else:
				say "     You manage to hold yourself together until rescue arrives. Your insectile body is disconcerting for some of the soldiers, but others have seen worse and, despite being cautious, take you out of the city with the others they rescue. You are given a cursory examination, but they seem to think you're simply a variation on another strain and thankfully don't give you much scrutiny. The larva inside you, as if sensing the danger, subsides and hibernates during this period, bonding itself further to you and your conflicted feelings fade about your symbiont.";
				say "     Starting a new life, you have trouble making new friends because of your significantly altered body, but this doesn't bother you very much. You are quite close to the few friends that you do have. Your life as a programmer lets you avoid unnecessary interpersonal contact. You do well at this, speedily typing away with both your hands and additional pair of insect legs. Your insect instincts also result in a slightly different way of thinking, allowing you to have creative and innovative solutions for certain problems, especially with computer networking and multi-computer programs.";
				say "     And always, you have the companionship of your symbiotic larva, sharing a faint sense of its rather simple emotions. You go camping often, almost every week-end, and find a secluded, elevated spot to wait. Each time, a black wasp eventually follows your scent and comes to join you in lustful breeding of more eggs. These eggs you later deposit in an abandoned warehouse or factory in the city for the wasps to find. You move every few years once each new hive is properly established, sometimes with a few people you brought to it become fresh breeders for the new wasps['] nest. You are tempted to join these new hives from time to time, but you know your greater role is to help spread new hives and not just to enjoy the pleasures of simply being a mindless breeder for one alone.";
		else:
			if humanity of Player < 10:
				say "     As your infection begins to fully take hold of you, your body roils and the larva in you struggles before being expelled, allowing you to complete your transition into your new life without its influence corrupting your new instinctual needs.";
			else:
				if humanity of Player < 40:
					say "     For some unknown reason, when taken to the military's processing facility, you feel worried about telling them about the larva inside you and decide to keep quiet. During this period, its activity subsides and hibernates. You cannot shake the feeling of dread about informing the military, worried they'll have you killed or carved up to remove it. Somehow the thought of them removing it almost seems worse somehow. The larva avoids detection somehow, making itself seem like a part of your altered body during any scans they may make. It is a very worrisome time for you.";
					say "     Once free from the military, you go about your life as normal. But periodically during the summer months, you'll head off somewhere secluded and wait, drawing one of the black wasps to you by your scent for another egg-breeding session. As they are infrequent, you make sure that it is extra-long so that you may lustfully enjoy it. When it's time to deposit your eggs, you head off again and lay them somewhere private. There you remain to await the carrier wasp coming for them and give it some lustful attention as well before it gathers up the eggs and brings them back to the hive. You are occasionally tempted to go back and fully join the hive, but you are happiest sharing both existences.";
				else:
					say "     You feel some trepidation about bringing up the larva to the military scientists, but recognizing that the parasite is trying to manipulate you somehow, swallow the lump in your throat and tell them about the event and the larva inside you. The scientists are a mix of disturbed, horrified, intrigued and excited at this strange, parasitic relationship and hurriedly set to work examining you. They try various scans to search for it, but have trouble locating it initially as it imitates the density of your flesh and tries to hide itself as part of you. As if knowing it's been found out, it begins to writhe and roil inside you, causing you considerable pain. Sedating you and it, they quickly operate and extract it before it can damage you further. When you awaken from the operation, they shuffle you off to be questioned extensively about the situation and effects of the parasite all while performing a myriad of tests upon you and it. When it's all done, they refuse to tell you their findings and seem strangely secretive about the whole matter, making you swear secrecy on the whole incident. You would be more worried about this, but are happy to simply being rid of it and comply, eager to put that disturbing chapter of your life behind you.";

Parasite ends here.
