Version 1 of Viking Man by Wahn begins here.
[Version 1 - New Male Variant]

"Adds a male variant of the Viking to Flexible Survival"

Section 1 - Creature Responses

Section 2 - Creature Insertion

to say VikingManLoses:
	if inasituation is true:
		say ""; [dealt with in the event]
	else:
		say "WIP Viking Man Loss";

to say VikingManWins:
	if inasituation is true:
		say ""; [dealt with in the event]
	else:
		if HP of Player > 0: [player submits]
			if the player is not facially human or the player is not bodily human or the player is not skintone human: [non-human player = a monster]
				if charisma of Player > 15: [handsome enough for some sexy time]
					say "     'What, you surrender so easily you outlander beast? The tales told of powerful creatures in the world, not mewling weaklings.' With a scoff, he shoves you to the ground. 'Let's see if you're at least of use for some pleasure.' With that, he puts down his weapon and starts undressing, soon revealing a tough and strong body in unashamed nakedness.";
					say "[VikingManWinSex]";
				else: [ugly people just get robbed]
					say "     'What, you surrender so easily you outlander beast? The tales told of powerful creatures in the world, not mewling weaklings.' With a scoff, he shoves you to the ground. 'Let's see if you've at least got something worth taking.' With that, he starts poking around in your stuff.";
					say "[VikingManLooting]";
			else: [human form player]
				if charisma of Player > 15: [handsome enough for some sexy time]
					say "     'Hmph - you're just another of those weaklings that run around like frightened chickens when they're raided. Where are the mighty warriors sung about in the tales of strange new lands like this?' With a scoff, he shoves you to the ground. 'Let's see if you're at least of use for some pleasure.' With that, he puts down his weapon and starts undressing, soon revealing a tough and strong body in unashamed nakedness.";
					say "[VikingManWinSex]";
				else: [ugly people just get robbed]
					say "     'What, you surrender so easily you outlander beast? The tales told of powerful creatures in the world, not mewling weaklings.' With a scoff, he shoves you to the ground. 'Let's see if you've at least got something worth taking.' With that, he starts poking around in your stuff.";
					say "[VikingManLooting]";
		else: [player loses]
			if the player is not facially human or the player is not bodily human or the player is not skintone human: [non-human player = a monster]
				if charisma of Player > 15: [handsome enough for some sexy time]
					say "     Leaving you dazed with his last blow, he gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, he lets his gaze wander over you appraisingly. 'Still, there was at least some fight in you. I wonder if you can please a man too, creature...' With that, he puts down his weapon and starts undressing, soon revealing a tough and strong body in unashamed nakedness.";
					say "[VikingManWinSex]";
				else: [ugly people just get robbed]
					say "     Leaving you dazed with her last blow, he gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, he lets his gaze wander over you appraisingly. 'Let's see if you've at least got something worth taking.' With that, he starts poking around in your stuff.";
					say "[VikingManLooting]";
			else: [human form player]
				if charisma of Player > 15: [handsome enough for some sexy time]
					say "     Leaving you dazed with his last blow, he gives you a shove and you fall on your ass. 'I win. Not a big surprise, but at least you fought back a bit.' Looking down on your prone form, he lets his gaze wander over you appraisingly. 'You've shown some courage and just might be worth taking as a serf. Let's see how you measure up providing pleasure to me...' With that, he puts down his weapon and starts undressing, soon revealing a tough and strong body in unashamed nakedness.";
					say "[VikingManWinSex]";
				else: [ugly people just get robbed]
					say "     Leaving you dazed with her last blow, he gives you a shove and you fall on your ass. 'I win. Not a big surprise, but at least you fought back a bit.' Looking down on your prone form, he lets his gaze wander over you appraisingly. 'Let's see if you've at least got something worth taking.' With that, he starts poking around in your stuff.";
					say "[VikingManLooting]";

to say VikingManLooting:
	if carried of food >= 1:
		say "     Finding some food in your pack, he puts it in his satchel and then walks away, leaving you lying in the dust without any look back.";
		ItemLoss food by 1;
	else if carried of water bottle >= 1:
		say "     Finding a bottle of water in your pack, he puts it in his satchel and then walks away, leaving you lying in the dust without a look back.";
		ItemLoss water bottle by 1;
	else:
		say "     Not finding anything to his liking as he throws one after another of your belongings aside, the Viking man grumbles 'What a waste of time.' Then he turns away from you and walks off, leaving you lying in the dust without any look back.";

to say VikingManWinSex:
	say "WIP VikingWinSex";

to say VikingManLoses:
	if the player is not facially human or the player is not bodily human or the player is not skintone human: [non-human player = a monster]
		say "     Breathing heavily and with a visible sheen of sweat on his brow, the Viking warrior takes a few steps back and calls out, 'Wait! I see that you're a properly powerful monster to be reckoned with after all, so how about we call a truce? Two fighters of like strength beating each other bloody is fucking stupid, right?!' You almost open your mouth to tell him that you're the one who is beating his ass, not the other way around, but something about the way he shifts his grip on that axe tells you that what you've seen up till now was him testing your strength and trying to beat you down without deadly intent. He may be wary to keep fighting, but putting him with his back to a wall could very well make your match escalate in an unfortunate manner. In the end, you shake off your urge to keep fighting and accept his offer.";
		say "     'I knew a cunning beast like you would see reason,' the young man says in a cocky tone, then gives you a nod. You can almost hear the future tale of the 'legendary, cunning monster' he fought against in your ears, as he will surely tell a little bit of a tall tale of what happened here to his shipmates later. The sound of him clearing his throat pulls you out of the fantasy, and you see the viking look at you expectantly. 'Okay then! A truce has been offered and accepted. I owe you a boon, to satisfy the debt of honor and make sure that there are no hard feelings. What would you have of me?'";
	else: [human player]
		say "     Breathing heavily and with a visible sheen of sweat on his brow, the Viking warrior takes a few steps back and calls out, 'Wait! I see that you're a mighty warrior in your own right, so how about we call a truce? Two fighters of like strength beating each other bloody is fucking stupid, right?!' You almost open your mouth to tell him that you're the one who is beating his ass, not the other way around, but something about the way he shifts his grip on that axe tells you that what you've seen up till now was him testing your strength and trying to beat you down without deadly intent. He may be wary to keep fighting, but putting him with his back to a wall could very well make your match escalate in an unfortunate manner. In the end, you shake off your urge to keep fighting and accept his offer.";
		say "     'I knew a cunning person like you would see reason,' the young man says in a cocky tone, then gives you a nod. You can almost hear the future tale of the 'legendary, cunning warrior' he fought against in your ears, as he will surely tell a little bit of a tall tale of what happened here to his shipmates later. The sound of him clearing his throat pulls you out of the fantasy, and you see the viking look at you expectantly. 'Okay then! A truce has been offered and accepted. I owe you a boon, to satisfy the debt of honor and make sure that there are no hard feelings. What would you have of me?'";
	say "[VikingManSexMenu]";

to say VikingManSexMenu:
	LineBreak;
	say "     What do you want to do with the Viking?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Demand some food from him";
	now sortorder entry is 0;
	now description entry is "Ask the Viking for food";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk him for some Viking cum";
	now sortorder entry is 1;
	now description entry is "Collect a bottle of cum from him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow him off";
	now sortorder entry is 2;
	now description entry is "Suck the Viking warrior's cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 3;
	now description entry is "Impale yourself on the Viking warrior's cock";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 4;
		now description entry is "Take the Viking warrior's ass";
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
				if (nam is "Demand some food from him"):
					say "[BeatenVikingManLoot]";
				if (nam is "Milk him for some Viking cum"):
					say "[BeatenVikingManSex1]";
				if (nam is "Blow him off"):
					say "[BeatenVikingManSex2]";
				if (nam is "Ride his cock"):
					say "[BeatenVikingManSex3]";
				if (nam is "Fuck his ass"):
					say "[BeatenVikingManSex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You just walk away after checking him over for loot.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BeatenVikingManLoot:
	say "...";

to say BeatenVikingManSex1: [milk him]
	say "...";

to say BeatenVikingManSex2: [blow him]
	say "...";
	CreatureSexAftermath "Player" receives "OralCock" from "Viking Man";

to say BeatenVikingManSex3: [ride his cock]
	say "...";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Viking Man";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Viking Man";

to say BeatenVikingManSex4: [fuck his ass]
	say "...";
	CreatureSexAftermath "Viking Man" receives "AssFuck" from "Player";

to say VikingManAttacks:
	if VikingRelationship is 9:
		say "[one of]Chief Frithjof swings his axe and lands a hit on you, though you luckily manage to turn away from it in time so it just leaves a bleeding cut and doesn't take your arm off.[or]The Viking chieftain slams his shield against your chest, making you stumble backwards dazedly.[or]A sudden kick from the Viking Chieftain against the side of your leg leaves you numb and weakened.[or]You manage to evade a swing of his axe, but the chieftain slams the hilt of the weapon into your stomach, making you double over in pain.[or]Frithjof slams his shield into your chest, driving the air from your lungs.[or]Rushing at you with his shield held in front of him, Frithjof slams against you and bowls you over.[at random]";
	else: [regular male viking attack messages]
		say "[one of]He lands a shallow cut on you. Seems he's not really trying to kill you in earnest, more likely to subjugate you instead...[or]The Viking man slaps the broad side of his sword against your head, leaving you seeing stars for a moment.[or]A sudden kick against the side of your leg leaves you numb and weakened.[or]He slams his shield into your chest, driving the air from your lungs.[at random]";

to say VikingManDesc:
	if VikingRelationship is 9:
		say "     Gripping the handle of his axe tightly, the Viking chieftain points at you with it. 'I still don't know what you did to my daughter, but you'll pay for it, may it have been a spell, drug or anything else. No amount of trickery can save you now!' Then he attacks, rushing at you with a loud war-cry.";
	else: [regular male viking description]
		if "Viking Man" is not listed in EncounteredEnemies of Player and "Viking Woman" is not listed in EncounteredEnemies of Player: [never ran into any Viking]
			say "     As you walk along the beach, you notice something moving out on the water. Turning your gaze toward it and straining your eyes a bit, you recognize it as a Viking longboat with a big square sail. Where did that thing come from? On the other hand... with all the things happening these days, the sudden appearance of Vikings isn't all that surprising. As you watch, you see a smaller boat being rowed towards the bigger one. Looks like they went ashore a while ago - or maybe dropped off som-[line break][line break]";
			say "     *thunk, thunk* sounds come from behind you, and as you turn around you find yourself confronted with a male Viking, hitting the broad side of his sword against his round wooden shield to attract your attention. He's got shoulder-length blond hair, the impressive physique of a seasoned fighter and is dressed in light scale mail. His gaze wanders over you appraisingly, then he says:[line break]";
			if the player is not facially human or the player is not bodily human or the player is not skintone human: [sees player as a legendary monster]
				say "     'So we did land in the land of the legends, with monsters roaming about. Let's see if the old men spoke the truth when they told their stories about oh so powerful beasts. Let's fight, creature!' A challenging look in his eye, he brings up his shield again and raises the axe, rushing at you.";
			else: [human player to be raided]
				say "     'So you're an inhabitant of this strange land? I'm not impressed. I bet you'll just squawk like a plucked chicken as all the others did when we carried off the loot. But who knows - prove me wrong if you can, weakling!' A challenging look in his eye, he brings up his shield again and raises the axe, rushing at you.";
		else:
			say "     As you walk along the beach, you notice something from the corner of your eye, out at sea: It's that Viking longboat again! Judging from last time, that means there might very well be one or more of the raiders on the coast with you. Turning around and vigilantly letting your gaze wander over the area, you spot a bit of blond hair peek over a dune. Sadly, the Viking warrior that had been hiding there in ambush realizes that you made his position, so he stands up and charges, axe raised high as he shouts, ";
			if the player is not facially human or the player is not bodily human or the player is not skintone human: [sees player as a legendary monster]
				say "'Let's fight, creature!'";
			else: [human player to be raided]
				say "'Surrender your belongings, weakling!'";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Viking";
	add "Viking Man" to infections of HumanList;
	add "Viking Man" to infections of HistoricalList;
	add "Viking Man" to infections of MaleList;
	add "Viking Man" to infections of BipedalList;
	now Name entry is "Viking Man";
	now enemy title entry is "Viking Warrior";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[VikingManAttacks]";
	now defeated entry is "[VikingManLoses]";
	now victory entry is "[VikingManWins]";
	now desc entry is "[VikingManDesc]";
	now face entry is "a handsome young man's, framed by a mane of shoulder-long, unkempt blond hair. Your cheeks and chin sport a short blond beard";
	now body entry is "that of a young man, quite fit and healthy. It is garbed in a woolen tunic and pants, plus a pair of leather boots";
	now skin entry is "smooth, pale"; [ format as "Your body is covered in (your text) skin"]
	now tail entry is "You have a tight, firmly muscled butt."; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a handsome male visage, the cheeks and chin covered by a short blond beard. Your hair turns into a shoulder-length blond mane"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a that of a young man, and a fit and healthy one at that"; [  format as "Your body feels funny as (your text)." ]
	now skin change entry is "it smoothes out, becoming the pale tint of a northern European"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets tight and firmly muscled"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 20;
	now sta entry is 18;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Male";
	now HP entry is 80;
	now lev entry is 9;
	now wdam entry is 15;
	now area entry is "Nowhere";             [ Case sensitive]
	[now area entry is "Nowhere";]         [ TODO: Disable until update]
	now Cock Count entry is 1;             [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 10;
	now Ball Size entry is 2;              [ Size of balls ]
	now Nipple Count entry is 2;           [ Number of nipples. ]
	now Breast Size entry is 0;            [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;             [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;         [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 60;                [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "dried cod";         [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40;            [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;                  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "Nordic"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "human";             [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is "Viking Woman"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;         [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"dried cod"	"A broad strip of dried and salted cod, just the right snack for an active viking on the prowl. Looks like someone has already taken a bite or two out of it."	1	dried cod

instead of sniffing dried cod:
	say "Raising the piece of meat to your nose, you can definitively confirm that it is indeed fish.";

dried cod is a grab object.
Usedesc of dried cod is "[dried cod use]";

to say dried cod use:
	say "You stick a corner of the dried fish in your mouth and tear a piece off, chewing it thoroughly. A bit tough at first, but it tastes well enough. A thought comes up in the back of your head, and you wonder if it's such a good idea to share food that someone else has already nibbled on... but then, becoming more like a Viking wouldn't be so bad, would it?";
	PlayerEat 15;
	if "Iron Stomach" is not listed in Feats of Player:
		VikingManInfect;

to VikingManInfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Viking Man":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	infect "Viking Man";
	now non-infectious entry is true;


Section 4 - NPC

[
Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Viking Man Infection"	"Infection"	""	Viking Man Infection rule	1000	false

This is the Viking Man Infection rule:
	if Player has a body of "Viking Man":
		trigger ending "Viking Man Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is male:
				say "...";
			else if Player is female and "Sterile" is not listed in feats of Player:
				say "...";
			else:
				say "...";
		else:
			say "...";
]

Viking Man ends here.
