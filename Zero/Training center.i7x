Training center by Zero begins here.

Section 1- Training centre

Training centre is a room. It is fasttravel. It is private.
Old Hall is a room.
Old Lounge is a room.
Masters Room is a room.

North of Training centre is Old Hall.
North of Old Hall is Masters Room.
East of Old Hall is Old Lounge.

The description of Old Hall is "a hallway that looks like it should be condemed [line break] [if corgitalk is greater than 1]Max[otherwise]The angry corgi[end if] stormed down the eastern passage. [line break] you can also hear sounds of a orgy coming from the north".
The description of Masters Room is "[meetthemaster]".

The description of Old Lounge is "[corgilounge]".

The description of Training centre is "a make shift prison cell, its bars have been torn apart by the enraged corgi ".

corgihelp is a number that varies. corgihelp is usually 0.
mistresswon is a number that varies. mistresswon is usually 0.

to say meetthemaster: [fight whitout max]
	challenge "The Mistress";
	
to say fight the mistress: [fight whith max]
	say "as you enter the masters chamber you see what can only be described as a abomination of nature, numerous dominator and sluts are sloppily merged together into one giant mass of abominable sex, constantly fucking and being fucked, [line break]";
	if corgihelp is 1:
		say "Whith a quick nod to max you launch yourselves at the abomination";
		choose row monster from the table of random critters;
		now monsterhp is 100;
		now wdam entry is 9;
		now lev entry is 11;
		now libido entry is 20;
		now dex entry is 5;		
	otherwise:
		say "Gathering your courage you launch yourself at the abomination ";
	

to say corgilounge:
	if corgitalk is less than 0:
		say "as you enter the room, you find [if corgitalk is greater than 1]Max [otherwise]the Corgi [end if] standing over a pile af groaning dominators and sluts, all of wich are covered in bruises and bleeding hevely.[line break] Noticign you[']r entrence [if corgitalk is greater than 1]Max [otherwise]the corgi [end if]turns towards you and growls, 'get the  fuck out of here before I tear you apart'";
		say "deciding that running would be the best option, you quickly back out of the room";
		move player to Old Hall;	
	otherwise:
		say "as you enter the room, you find [if corgitalk is greater than 1]Max [otherwise]the Corgi [end if] standing over a pile af grouning dominator's and sluts, all of wich are covered in bruises and bleeding hevely.[line break] Noticign you[']r entrence [if corgitalk is greater than 1]Max [otherwise]the Corgi [end if]turns towards you and rubs the back of his head sheepishly  , 'sorry bout that, I have a bit of a temper problem, expecialy when idiot[']s like these keep trying to steal my stuff'.[line break] [if corgitalk is less than 2]'Anyway, the names Max nice to meet ya'.[end if][line break]";
		say "'Now we have to get out of here, from what i[']v manage to get out off these' he says gesturing to the pile of bloody dominator[']s 'there master is planning to induct us into its service' he shivers 'not something I want to happen, but we could also use this opitunety to take it down, if I have you[']r help that is, when you decide what to do come talk to me again '";
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
		Say "While wandering the city you come across a group of dominator's talking adamantly among themselves, deciding it would be a bad idea to be caught, you quickly dart behind a nearby upturned car. [line break]After awhile they move off and you come out of hiding contemplating what the dominator's were talking about, it appears that a small dog keeps giving them the slip and there master wants it brought to them, you don't blame that dog those dominator's are bad news, who knows what there master is like.[line break]";
		Increase sc by 1;
		stop the action;	
	if sc is 1:
		Say "As your walking around the city, a load bang catches your attention, deciding to investigate you find a short corgi dusting off his hands while walking out of alley, after the corgi is gone, you have a quick look and find, much to your amazement, a very familiar group of dominator's sprawled out on the alley floor, all of which suffering from some pretty intense injures, heading off before they wake up, you cant help but wonder what the corgi did to those dominator's and if that was the small dog those dominator's were talking about.[line break]"; 
		Increase sc by 1;
		now corgitalk is 1;
		stop the action;	
	if sc is 2:
		Say "Hearing the sounds of a large fight going on nearby, you decide to check it out, what you find however is not what you were expecting the corgi from before [if corgitalk is greater than 1]Max, [end if]is surrounded by a group of 20 of sluts and dominator[']s, while it looks like he[']s handling himself pretty well, you could help? [line break](NOTE: Consenting can lead to a end of game situation if you are on the corgi[']s bad side.)[line break]";
		if the player consents: 
			say "Deciding to help the corgi out you ram a dominator that was trying to sneak behind the corgi, knocking it to the floor, [if corgitalk is greater than 1]Max flashes you a grin before slamming his fist into a rabbit[']s gut [otherwise]the corgi flashes you a suspicious look but gives you a quick nod before slamming his fist into a rabbit[']s gut [end if] turning back to your own opponent you find a very ticked off dominator staring back at you.[line break]";
			now massdomfightwin is 1;
			challenge "Male Dominator";
			if lost is 1:
				say "[massdomfightloss]";
				now massdomfightwin is 0;
			otherwise:
				say " Having dealt with the first dominator you barely doge out of the way as a slut comes barrelling towards you![line break]";
				challenge "Male Slut";
				if lost is 1:
					say "[massdomfightloss]";
					now massdomfightwin is 0;
				otherwise:
					say " Moving towards another slut, however before you can get to it a small black whip wraps around it pulling it behind you, turning around you find that the whip is attached to[if corgitalk is greater than 1] Max[apostrophe]s[otherwise] the corgi[apostrophe]s[end if] wrist, as the slut comes sailing towards him, he flicks his wrist and begins using the slut as a makeshift wrecking ball, [line break] before you can think on this however another dominator comes barrelling towards you!";
					challenge "Male Dominator";
					if lost is 1:
						say "[massdomfightloss]";
						now massdomfightwin is 0;
					otherwise:
						say " As soon as your finished with the [slutname] a slut comes flying at you! ";
						challenge "Female Slut";
						if lost is 1:
							say "[massdomfightloss]";
							now massdomfightwin is 0;
						otherwise:
							say "The fight goes on like this for awhile and is thoroughly exhausting, though your luck takes a turn for the worse as a dominator manages to take you by surprise and throw[apostrophe]s you into[if corgitalk greater than 1] Max [otherwise] the corgi[end if].";
							say "[slutden]";
							now massdomfightwin is 0;
							now slutprotection is 1;
							increase score by 15;
		otherwise:
			say "Deciding that the corgi can handle himself you get yourself out of there as quick as possible";
			stop the action;	
		
to say massdomfightloss:			
	say "after the fight, the [slutname] hits you in the head whith a brick, knocking you out";
	decrease score by 15;
	say "[slutden]":		
			
to say slutden:	
	say "when you next awaken your in a small cell being looked over by a group of dominator's, [if corgitalk is 2]Max [otherwise]the corgi from before [end if] in unconscious on the ground next to you. [line break]Deciding to wake the corgi is a good idea, you manage to rouse him into consciousness. [line break] [if corgitalk is greater than 1]well it looks like they finally caught me, at least I have some company' he flashes you a smile before frowning at the guards 'though seriously we need to get out of here, i[']v head some rumours about there master and its not pretty, first things first we ha........[otherwise] This is all your fault, I normally handle them no sweat but you just had to get involved, yes its a nice trying to help, but I dint expect a body throw on me' he growls at you. You back away from the angry corgi and try to appease him 'whatever lets get out of here first then we can ta.....'[end if]  [if corgitalk is greater than 1] Max [otherwise]The corgi [end if] suddenly cuts himself off and stares at his wrist, 'they took it.......they fucking took it, IM GOING TO FUCKING KILL THEM' you watch in shock as a enraged corgi rips the bars apart and begins using them to beat the guards into a bloody mess, [line break]After the 'massacre' is over, the corgi storms off elsewhere, to presumably to massacre the rest of the buildings inhabitants. ";	
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
	say "Defeated you fall to the ground, now at the mercy of the abomination, [line break] You try to resist it , but as soon the creature quickly slips a collar around your neck and You mind starts to give, feeling the lustful urges consume you leaving you a willing part of the abomi..... no your masters kingdom, a beautiful kingdom where life is filled only with the wonderful sex you crave .[line break]";
	now humanity of player is 0;
	follow the turnpass rule;
	end the game saying "You become drowned in the sea of lust that is the mistress of sex.";
	
to say beattheMistress:
	say "as you land the final blow, the creature lets a final unearthly roar before dissolving in a burst of light , you quickly cover your eyes before the lights can damage them. [line break] after the light has subsided, you find that all that[']s left of  the foul abomination is a small glowing gold collar[if corgitalk is greater than 1] Max walks over to you as you kneel next to the collar, seemingly just as curious as you [otherwise]you kneel next to the collar, curious about it [end if], [line break] talking hold of the glowing collar, strange and sluty memoires assault your mind,";
	now mistresswon is 1;
	if humanity of player is less than 20:
		say "Guided by the memory's you fix the glowing collar to your neck, and visions of lust assault your already tainted mind, you real over from the intake of memory[']s, [if corgitalk is greater than 1] and Max immediately rush over and helps you up, however before you realise what your doing, you[']r locking his lips with his own. Filling him with the same lust that now rules you[end if] [line break] the collars memory[']s don[']t take long to integrate into you, telling you about your subjects, your sluts, your dominator[']s and how to control them, with this new information [if corgitalk is greater than 1] Max, your new mate and [end if] you deploy what[']s left of your dominator[']s, intent on taking control over the city.[line break] The old mistress is gone now but this new one has just begun its rule";
		end the game saying "You become drowned in the sea of lust that is the mistress of sex.";
	otherwise:
		say "you manage to hold onto your mind and take control of the cursed collar however temporarily it may be";
		say "commands filter into your mind, what do you wish to do? [line break] [collarcomandlist]";

to say wondamistressfight:
	increase score by 150;
	if corgitalk is greater than 1:
		say "[line break] you barely have time to [if corgitalk is greater than 1]explain to Max what happened[otherwise] think[end if] before the building around you starts to fall apart, seems whatever power the [if slutmaster is 1]former slut master [otherwise]slut[']s master [end if]had was holding the place together!"; 
		say "using the memory[']s gained from the collar you [if corgitalk is greater than 1]grab Max and [end if]head for the nearest exit, heading toward[']s the nearest safe zone you no, the mall";
		move Max to Mall Atrium;	
		move player to Mall Atrium;	
	otherwise:
		say "[line break] you barely have time to [if corgitalk is greater than 1]explain to Max what happened[otherwise] think[end if] before the building around you starts to fall apart, seems whatever power the [if slutmaster is 1]former slut master [otherwise]slut[']s master [end if]had was holding the place together!"; 
		say "using the memory[']s gained from the collar you [if corgitalk is greater than 1]grab Max and [end if]head for the nearest exit, heading toward[']s the nearest safe zone you no, the mall";
		move player to Mall Atrium;

to say Mistressdesc:
	say "[fight the mistress]";
	

to say collarcomandlist:
	say "do you want to get rid of the dominator[']s and sluts? (Note if you want to get rid of only one say no)";
	if the player consents: 
		say "The collar screams in agony as you give your command, after a few seconds the collar gives one final screech before falling apart, however the your command has been fulfilled and the dominator[']s and sluts now cease to be ";
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
	otherwise:
		say "Do you want to get rid of the dominators?"; [doms ]
		if the player consents:
			say "the collar realises a pulse of energy and the dominator[']s now cease to be";
			repeat with y running from 1 to number of filled rows in table of random critters:	[puts dominator as lead monster...]
				choose row y in table of random critters;
				if name entry is "Male Dominator":
					now monster is y;
					break;
			now area entry is "Nowhere";
			say "Do you want to get rid of the sluts?";
			if the player consents: [doms and sluts]
				say "the collar realises a pulse of energy and the slut[']s now cease to be";
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
				say "The collar screams in agony as you give your command, after a few seconds the collar gives one final screech before falling apart, however the your command has been fulfilled and the dominator[']s and sluts now cease to be ";
				say "[wondamistressfight]";
		otherwise:
			say "Do you want to get rid of the sluts?"; [only sluts]
			if the player consents:
				say "the collar realises a pulse of energy and the slut[']s now cease to be";
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
			otherwise:
				say "the collar whispers temptation into your mind telling you how powerful you could be as its master";
				if the player consents:
					say "the collar sinks into your skin and re-fixes itself around your neck, granting you power over the sluts , dominator[']s and maybe a little bit more.";
					add "controlcollar" to feats of the player;
					now slutmaster is 1;
					say "[wondamistressfight]";						
			
	
Section 4 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "The Mistress";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]You are rammed by the abomination! [or]The abomination punches you with its many arms![or]The abomination bites you with its many teeth![or]The abomination slams you into the wall[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheMistress]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoMistress]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[Mistressdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "is that a rabbit's, complete with a pair of long ears and twitching nose.  A slut's collar has also formed around your neck.  Any time you start to remove it, you are distracted by a need to play with yourself";[ Face description, format as the text "Your have a (your text)."] 
	now body entry is "that of a sexy rabbit's, with large bunny paws and strong, shapely legs";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "short, [one of]velvety, [or]soft, [or]shiny, [at random]white fur all over your";[ skin Description, format as the text "You have (your text)."] 
	now tail entry is "You have a short and fluffy rabbit tail.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "constantly dribbling bunny";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it stretches out into a rabbit's muzzle, two long rabbit ears sprouting from the top of your head a second later.  A slut's collar forms around your neck"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you rapidly loses fat, your body becoming that of a sexy bunny"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft and silky, white fur covers your body"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a soft and fluffy rabbit's tail sprouts"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes that of a rabbit's, uncontrollably dribbling cum"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 25;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 15;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 10;
	now int entry is 16;
	now cha entry is 14;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 200;			[ The monster's starting hit points. ]
	now lev entry is 15;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 15;			[ Monster's average damage when attacking. ]
	now area entry is "Nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 50;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

		     
Training center ends here.
