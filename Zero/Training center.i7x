Training center by Zero begins here.

Section 1- Training centre

Training centre is a room. It is fasttravel. It is private.
Old Hall is a room.
Old Lounge is a room.
Masters Room is a room.

North of Training centre is Old Hall.
North of Old Hall is Masters Room.
East of Old Hall is Old Lounge.

The description of Old Hall is "a hallway that looks like it should be condemned[line break][if corgitalk is greater than 1]Max[else]The angry corgi[end if] stormed down the eastern passage.[line break]you can also hear sounds of an orgy coming from the north".
The description of Masters Room is "[meetthemaster]".

The description of Old Lounge is "[corgilounge]".

The description of Training centre is "a make shift prison cell, its bars have been torn apart by the enraged corgi ".

corgihelp is a number that varies. corgihelp is usually 0.
mistresswon is a number that varies. mistresswon is usually 0.

to say meetthemaster: [fight without max]
	challenge "The Mistress";

to say fight the mistress: [fight with max]
	say "as you enter the masters chamber you see what can only be described as a abomination of nature, numerous dominators and sluts are sloppily merged together into one giant mass of abominable sex, constantly fucking and being fucked.[line break]";
	if corgihelp is 1:
		say "With a quick nod to max you launch yourselves at the abomination";
		choose row monster from the table of random critters;
		now monsterhp is 100;
		now wdam entry is 9;
		now lev entry is 11;
		now libido entry is 20;
		now dex entry is 5;
	else:
		say "Gathering your courage you launch yourself at the abomination ";


to say corgilounge:
	if corgitalk is less than 0:
		say "as you enter the room, you find [if corgitalk is greater than 1]Max[else]the Corgi[end if] standing over a pile of groaning dominators and sluts, all of which are covered in bruises and bleeding heavily.[line break]Noticing your entrance [if corgitalk is greater than 1]Max[else]the corgi[end if] turns towards you and growls, 'get the fuck out of here before I tear you apart'";
		say "deciding that running would be the best option, you quickly back out of the room";
		move player to Old Hall;
	else:
		say "as you enter the room, you find [if corgitalk is greater than 1]Max[else]the Corgi[end if] standing over a pile of groaning dominators and sluts, all of which are covered in bruises and bleeding heavily.[line break]Noticing your entrance [if corgitalk is greater than 1]Max[else]the Corgi[end if] turns towards you and rubs the back of his head sheepishly, 'sorry bout that, I have a bit of a temper problem, especially when idiots like these keep trying to steal my stuff'.[line break][if corgitalk is less than 2]'Anyway, the names Max nice to meet ya'.[end if][line break]";
		say "'Now we have to get out of here, from what I've managed to get out off these' he says gesturing to the pile of bloody dominators 'their master is planning to induct us into its service' he shivers 'not something I want to happen, but we could also use this opportunity to take it down, if I have your help that is, when you decide what to do come talk to me again '";
		now corgitalk is 2;


Section 2-finding the Training centre

Domincounter is a situation.
The sarea of Domincounter is "Outside".
when play begins:
	add Domincounter to badspots of furry;
	add Domincounter to badspots of guy;

sc is a number that varies. sc is usually 0.

massdomfightwin is a number that varies. massdomfightwin is usually 0.

Instead of Resolving Domincounter:
	if sc is 0:
		Say "While wandering the city you come across a group of dominators talking adamantly among themselves, deciding it would be a bad idea to be caught, you quickly dart behind a nearby upturned car.[line break]After a while they move off and you come out of hiding contemplating what the dominators were talking about, it appears that a small dog keeps giving them the slip and their master wants it brought to them, you don't blame that dog those dominators are bad news, who knows what their master is like.[line break]";
		Increase sc by 1;
		stop the action;
	if sc is 1:
		Say "As you're walking around the city, a load bang catches your attention. Deciding to investigate you find a short corgi dusting off his hands while walking out of alley. After the corgi is gone, you have a quick look and find, much to your amazement, a very familiar group of dominators sprawled out on the alley floor, all of which are suffering from some pretty intense injuries. Heading off before they wake up, you can't help but wonder what the corgi did to those dominators and if that was the small dog those dominators were talking about.[line break]";
		Increase sc by 1;
		now corgitalk is 1;
		stop the action;
	if sc is 2:
		Say "Hearing the sounds of a large fight going on nearby, you decide to check it out. What you find, however, is not what you were expecting. The corgi from before[if corgitalk is greater than 1], Max,[end if] is surrounded by a group of twenty sluts and dominators. While it looks like he's handling himself pretty well, you could help?[line break](NOTE: Consenting can lead to a end of game situation if you are on the corgi's bad side.)[line break]";
		if the player consents:
			say "Deciding to help the corgi out you ram a dominator that was trying to sneak behind the corgi, knocking it to the floor, [if corgitalk is greater than 1]Max flashes you a grin before slamming his fist into a rabbit's gut [else]the corgi flashes you a suspicious look but gives you a quick nod before slamming his fist into a rabbit's gut [end if] turning back to your own opponent you find a very ticked off dominator staring back at you.[line break]";
			now massdomfightwin is 1;
			challenge "Male Dominator";
			if lost is 1:
				say "[massdomfightloss]";
				now massdomfightwin is 0;
			else:
				say "Having dealt with the first dominator you barely dodge out of the way as a slut comes barreling towards you![line break]";
				challenge "Male Slut";
				if lost is 1:
					say "[massdomfightloss]";
					now massdomfightwin is 0;
				else:
					say "Moving towards another slut, however before you can get to it a small black whip wraps around it pulling it behind you, turning around you find that the whip is attached to [if corgitalk is greater than 1]Max[else]the corgi[end if][']s wrist, as the slut comes sailing towards him, he flicks his wrist and begins using the slut as a makeshift wrecking ball,[line break]before you can think on this however another dominator comes barreling towards you!";
					challenge "Male Dominator";
					if lost is 1:
						say "[massdomfightloss]";
						now massdomfightwin is 0;
					else:
						say "As soon as your finished with the [slutname] a slut comes flying at you!";
						challenge "Female Slut";
						if lost is 1:
							say "[massdomfightloss]";
							now massdomfightwin is 0;
						else:
							say "The fight goes on like this for a while and is thoroughly exhausting, though your luck takes a turn for the worse as a dominator manages to take you by surprise and throws you into [if corgitalk greater than 1]Max[else]the corgi[end if].";
							say "[slutden]";
							now massdomfightwin is 0;
							now slutprotection is 1;
							increase score by 15;
		else:
			say "Deciding that the corgi can handle himself you get yourself out of there as quick as possible";
			stop the action;

to say massdomfightloses:
	say "after the fight, the [slutname] hits you in the head with a brick, knocking you out";
	decrease score by 15;
	say "[slutden]";

to say slutden:
	say "when you next awaken you're in a small cell being looked over by a group of dominators, [if corgitalk is 2]Max[else]the corgi from before[end if] unconscious on the ground next to you.[line break]Deciding to wake the corgi is a good idea, you manage to rouse him into consciousness.[line break][if corgitalk is greater than 1]well it looks like they finally caught me, at least I have some company' he flashes you a smile before frowning at the guards 'though seriously we need to get out of here, I've head some rumours about their master and it's not pretty, first things first we ha...[else]This is all your fault, I normally handle them no sweat but you just had to get involved, yes it's a nice trying to help, but I didn't expect a body thrown on me' he growls at you. You back away from the angry corgi and try to appease him 'whatever, let's get out of here first then we can ta...'[end if]  [if corgitalk is greater than 1]Max [else]The corgi[end if] suddenly cuts himself off and stares at his wrist, 'they took it... they fucking took it, I'M GOING TO FUCKING KILL THEM' you watch in shock as a enraged corgi rips the bars apart and begins using them to beat the guards into a bloody mess.[line break]After the [']massacre['] is over, the corgi storms off elsewhere, to presumably to massacre the rest of the building's inhabitants.";
	Now Domincounter is resolved;
	move Max to Old Lounge;
	move player to Training centre;




Section 3 - mistress/master


when play begins:
	add "The Mistress" to infections of girl;
	add "The Mistress" to infections of guy;
	add "The Mistress" to infections of hermaphrodite;

[Sample loss and victory text templates.]
[Numerous other variations can be found in existing creature files.]
[Change the 'template' in their names here and below to something appropriate to your creature.]

to say losetoMistress:
	say "Defeated, you fall to the ground, now at the mercy of the abomination.[line break]You try to resist it, but as soon the creature quickly slips a collar around your neck your mind starts to give, feeling the lustful urges consume you, leaving you a willing part of the abomi... no, your master's kingdom, a beautiful kingdom where life is filled only with the wonderful sex you crave.[line break]";
	now humanity of player is 0;
	follow the turnpass rule;
	end the game saying "You become drowned in the sea of lust that is the mistress of sex.";

to say beattheMistress:
	say "As you land the final blow, the creature lets a final unearthly roar before dissolving in a burst of light. You quickly cover your eyes before the lights can damage them.[line break]After the light has subsided, you find that all that's left of the foul abomination is a small glowing gold collar. [if corgitalk is greater than 1]Max walks over to you as you kneel next to the collar, seemingly just as curious as you[else]You kneel next to the collar, curious about it[end if].[line break]Taking hold of the glowing collar, strange and slutty memories assault your mind,";
	now mistresswon is 1;
	if humanity of player is less than 20:
		say "Guided by the memories you fix the glowing collar to your neck, and visions of lust assault your already tainted mind, you reel over from the intake of memories, [if corgitalk is greater than 1]and Max immediately rushre over and helps you up, however before you realize what your doing, you're locking his lips with his own. Filling him with the same lust that now rules you[end if][line break]the collar's memories don't take long to integrate into you, telling you about your subjects, your sluts, your dominators and how to control them, with this new information [if corgitalk is greater than 1]Max, your new mate and [end if]you deploy what's left of your dominators, intent on taking control over the city.[line break]The old mistress is gone now but this new one has just begun its rule";
		end the game saying "You become drowned in the sea of lust that is the mistress of sex.";
	else:
		say "you manage to hold onto your mind and take control of the cursed collar however temporarily it may be";
		say "commands filter into your mind, what do you wish to do?[line break][collarcomandlist]";

to say wondamistressfight:
	increase score by 150;
	if corgitalk is greater than 1:
		say "[line break]you barely have time to [if corgitalk is greater than 1]explain to Max what happened[else]think[end if] before the building around you starts to fall apart, seems whatever power the [if slutmaster is 1]former slut master[else]slut's master[end if] had was holding the place together!";
		say "using the memories gained from the collar you [if corgitalk is greater than 1]grab Max and [end if]head for the nearest exit, heading towards the nearest safe zone you know, the mall";
		move Max to Mall Atrium;
		move player to Mall Atrium;
	else:
		say "[line break]you barely have time to [if corgitalk is greater than 1]explain to Max what happened[else]think[end if] before the building around you starts to fall apart, seems whatever power the [if slutmaster is 1]former slut master[else]slut's master[end if] had was holding the place together!";
		say "using the memories gained from the collar you [if corgitalk is greater than 1]grab Max and [end if]head for the nearest exit, heading towards the nearest safe zone you know, the mall";
		move player to Mall Atrium;

to say Mistressdesc:
	say "[fight the mistress]";


to say collarcomandlist:
	say "do you want to get rid of the dominators and sluts? (Note if you want to get rid of only one say no)";
	if the player consents:
		say "The collar screams in agony as you give your command, after a few seconds the collar gives one final screech before falling apart, however the your command has been fulfilled and the dominators and sluts now cease to be ";
		repeat with y running from 1 to number of filled rows in table of random critters:	[puts dominator as lead monster...] [both sluts and dom]
			choose row y in table of random critters;
			if name entry is "Male Dominator":
				now monster is y;
				break;
		now area entry is "Nowhere";
		repeat with y running from 1 to number of filled rows in table of random critters:	[puts male slut as lead monster...]
			choose row y in table of random critters;
			if name entry is "Male Slut":
				now monster is y;
				break;
		now area entry is "Nowhere";
		repeat with y running from 1 to number of filled rows in table of random critters:	[puts female slut as lead monster...]
			choose row y in table of random critters;
			if name entry is "Female Slut":
				now monster is y;
				break;
		now area entry is "Nowhere";
		say "[wondamistressfight]";
	else:
		say "Do you want to get rid of the dominators?"; [doms ]
		if the player consents:
			say "the collar realizes a pulse of energy and the dominators now cease to be";
			repeat with y running from 1 to number of filled rows in table of random critters:	[puts dominator as lead monster...]
				choose row y in table of random critters;
				if name entry is "Male Dominator":
					now monster is y;
					break;
			now area entry is "Nowhere";
			say "Do you want to get rid of the sluts?";
			if the player consents: [doms and sluts]
				say "the collar realizes a pulse of energy and the sluts now cease to be";
				repeat with y running from 1 to number of filled rows in table of random critters:	[puts Female slut as lead monster...]
					choose row y in table of random critters;
					if name entry is "Female Slut":
						now monster is y;
						break;
				now area entry is "Nowhere";
				repeat with y running from 1 to number of filled rows in table of random critters:	[puts Male slut as lead monster...]
					choose row y in table of random critters;
					if name entry is "Male Slut":
						now monster is y;
						break;
				now area entry is "Nowhere";
				say "The collar screams in agony as you give your command, after a few seconds the collar gives one final screech before falling apart, however the your command has been fulfilled and the dominators and sluts now cease to be ";
				say "[wondamistressfight]";
		else:
			say "Do you want to get rid of the sluts?"; [only sluts]
			if the player consents:
				say "the collar realizes a pulse of energy and the sluts now cease to be";
				repeat with y running from 1 to number of filled rows in table of random critters:	[puts female slut as lead monster...]
					choose row y in table of random critters;
					if name entry is "Female Slut":
						now monster is y;
						break;
				now area entry is "Nowhere";
				repeat with y running from 1 to number of filled rows in table of random critters:	[puts male slut as lead monster...]
					choose row y in table of random critters;
					if name entry is "Male Slut":
						now monster is y;
						break;
				now area entry is "Nowhere";
				say "The collar screams in agony as you give your command, after a few seconds the collar gives one final screech before falling apart, however the your command has been fulfilled and the sluts now cease to be ";
				say "[wondamistressfight]";
			else:
				say "the collar whispers temptation into your mind telling you how powerful you could be as its master";
				if the player consents:
					say "the collar sinks into your skin and re-fixes itself around your neck, granting you power over the sluts, dominators and maybe a little bit more.";
					add "controlcollar" to feats of the player;
					now slutmaster is 1;
					say "[wondamistressfight]";


Section 4 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "The Mistress"; 
	now attack entry is "[one of]You are rammed by the abomination![or]The abomination punches you with its many arms![or]The abomination bites you with its many teeth![or]The abomination slams you into the wall[at random]";
	now defeated entry is "[beattheMistress]"; 
	now victory entry is "[losetoMistress]"; 
	now desc entry is "[Mistressdesc]"; 
	now face entry is "is that a rabbit's, complete with a pair of long ears and twitching nose. A slut's collar has also formed around your neck. Any time you start to remove it, you are distracted by a need to play with yourself";[ Face description, format as the text "You have a (your text)."]
	now body entry is "that of a sexy rabbit's, with large bunny paws and strong, shapely legs";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "short, [one of]velvety, [or]soft, [or]shiny, [at random]white fur all over your";[ skin Description, format as the text "You have (your text)."]
	now tail entry is "You have a short and fluffy rabbit tail.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "constantly dribbling bunny";
	now face change entry is "it stretches out into a rabbit's muzzle, two long rabbit ears sprouting from the top of your head a second later. A slut's collar forms around your neck"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you rapidly loses fat, your body becoming that of a sexy bunny"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft and silky, white fur covers your body"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a soft and fluffy rabbit's tail sprouts"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes that of a rabbit's, uncontrollably dribbling cum"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8; [ The player's stats will move towards these values through infection. ]
	now dex entry is 25; [ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 15; [ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 10;
	now int entry is 16;
	now cha entry is 14;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 200; 
	now lev entry is 15; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of breasts the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]




Training center ends here.
