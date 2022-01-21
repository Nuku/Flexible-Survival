Version 2 of Wolfman by Wahn begins here.
[ Version 2.2 - Relocated to College Campus area. ]

"Adds a team of football wolfmen to Flexible Survival's Wandering Monsters table, with impreg chance"

[ HP states of Septus                                                ]
[ 100: Starting State                                                ]
[   0: After the first meeting                                       ]
[   1: Defeated once                                                 ]
[   2: Defeated twice                                                ]
[   3: Defeated three times, told the player about the lair          ]
[   4: Player knows about the lair                                   ]
[   5: Player was at the lair                                        ]
[   6: Player vying to be team manager                               ]
[   7: Team manager                                                  ]
[  50: Joined the cheerleaders                                       ]
[  51: Charisma Test passed                                          ]
[  52: Initiation completed                                          ]
[  99: Kicked off the team                                           ]

[ HP of Jennifer - badass Cheerleader progression                    ]
[   0: not seen her in action yet                                    ]
[   1: saw Jennifer take down the new tryout                         ]
[   2: just heard Jennifer talk about the grabby tryout              ]

[ Dexterity of Jennifer - soda source                                ]
[   0: player doesn't know about the stash                           ]
[   1: player knows about the stash                                  ]

[ thirst states of Jennifer                                          ]
[   0: Starting State - asking for a fuck                            ]
[   1: invisibly pregnant by the player                              ]
[   2: visibly pregnant by the player                                ]

[ Jenniferfucked                                                     ]
[   0: hasn't had sex with the player                                ]
[   1: had sex with the player                                       ]

[ Jenniferpregnant - timer for the next birth (48h from start)       ]
[ Jenniferwolves   - number of offspring                             ]
[ lust of Jennifer - number of M/F w/Jennifer                        ]

JenniferFirstKidSpecialStat is a text that varies.
LastJenniferSoda is a number that varies. LastJenniferSoda is usually 2000.

Section 1 - Creature Responses & Infection

to say Septus wins:
	if HP of Septus is 6:
		if HP of Player > 0:
			say "     Unwilling to keep fighting the wolves, you step back and put up your arms, trying to calm them down, but they won't be swayed at this point. Septus tackles into you, knocking you to the ground and the others follow, all piling themselves atop you with angry growls. The last of your strength is crushed out of you, leaving you exhausted while the crowd around cheers excitedly.";
			now HP of Player is 0;
		else:
			say "     Unable to keep fighting the wolves, you wobble unsteadily only to be tackled to the ground by Septus. The others quickly follow, all piling themselves atop you with angry growls. The last of your strength is crushed out of you, leaving you exhausted while the crowd around cheers excitedly.";
	else if HP of Player > 0:
		say "     'What's this? You're supposed to show what you can do, wimp!' he sneers and shoves you to the ground. With a dismissive 'Maybe I overestimated you' he turns away and walks off.";
	else:
		say "     He steps back a bit as you collapse to your knees in exhaustion. 'Hm, there's potential in you, but you really have to step up your game. Train a bit, build some muscles and come find me again, OK?'";

To say Septus loses:
	if HP of Septus is 6:
		say "     As your blow knocks Septus to his knees, the other wolfmen still standing step back. The crowd, having changed to cheering for you gradually over the course of the match, rush forward and boost you up onto their shoulders[if jenniferwolves is 1], your lupine son carrying you on his shoulders[else], your lupine sons being at the center of those carrying you around on their shoulders[end if].";
	else:
		if BodyName of Player is "Football Wolfman":
			say "     Panting, the wolfman steps back from you to catch his breath. With an appreciating nod, Septus says, 'Well done, [if Player is female]sister[else]brother[end if]. We need more players like you.'";
		else:
			say "     Panting, the wolfman steps back from you to catch his breath. With an appreciating nod, Septus says, 'Well done, [if Player is female]girl[else]man[end if]. You're among the best I've tried out today.'";
		say "     [if (HP of Septus is 0 or HP of Septus is 1 or HP of Septus is 2)]'Keep this up, and you'll have a place in the team soon.' He gives your shoulder a squeeze, then walks off to find more candidates out in the city.[else if (HP of Septus is 3 or HP of Septus is 4)]'You've shown your strength and skill. Why don't you join us in our base camp? It's in a warehouse over near 11th street. Just look for the [bold type]entrance[roman type] of our wolfman [bold type]lair[roman type] - there's a large wolf's head painted on the front wall too, you can barely miss it.'[else if HP of Septus is 5]'See you later at the lair. I'm off to find some new candidates.'[end if]";
		if HP of Septus < 4:
			increase HP of Septus by 1;
		if Entrance to the Lair is inactive and Entrance to the Lair is not resolved and HP of Septus > 3 and HP of Septus < 99:
			now Entrance to the Lair is active;

to say Wolfmandesc:
	setmongender 3;
	choose row MonsterID from the Table of Random Critters;
	if HP of Septus is 100:
		say "     As you explore the ruined city, a tall figure suddenly steps into sight in front of you and gives you a calculating look. It's a well-toned male wolf-morph, standing on two digitigrade legs. His fur is almost completely black, except for a blood red section on his chest that forms the number 7.";
		say "     He nods his lupine head at you, saying 'I'm Septus, the talent scout of the Fairhaven Wolves. You don't look half bad - but are you worth joining the best football team of this changed world?' He gives you a toothy grin, then pounces at you.";
		now HP of Septus is 0;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Football Wolfman":
				now MonsterID is y;
				break;
		choose row MonsterID from the Table of Random Critters;
		now enemy type entry is 2; [name known]
	else if HP of Septus is 6:
		let debit be 0;
		if HardMode is true and level of Player > 12, let debit be level of Player - 12;
		now dex entry is 20 + ( ( debit * 2 ) / 5 );
		now HP entry is 95 + ( debit * 5 );
		now monsterHP is 95 + ( debit * 5 );
		now lev entry is 12 + debit;
		now wdam entry is 14 + ( ( debit * 3 ) / 10 );
		now lootchance entry is 0;
		now area entry is "Nowhere";
		say "     Septus and several of the nearest wolves move in to fight out, growling angrily and intent on throwing you out for good. The others clear the area and start cheering and howling in excitement like a rowdy crowd of football fans. At this point, the wolfmen aren't going to hold back like they have been during the recruitment and training, rushing at you like an offensive line. You growl back and flex your powerful, lupine body and charge as well, your wild instincts pumping adrenaline into your blood while a small corner of your mind hopes you haven't gotten in over your head.";
		if jenniferwolves is 1:
			say "     At least you do have at least one supporter out among the wolves encircling the fight and awaiting its outcome. The wolfman son you had with Jennifer is cheering you on from the edge of the area cleared from the match. A few of the other spectators push and growl at him, eventually a fight breaking out between him and another";
		else if jenniferwolves is 2:
			say "     At least you do have a pair of supporters out among the wolves encircling the fight and awaiting its outcome. The wolfman sons you had with Jennifer are cheering you on from the edge of the area cleared from the match. A few of the other spectators push and growl at them, eventually a fight breaking out between them and a couple of others";
		else if jenniferwolves > 2:
			say "     At least you do have a cluster of supporters out among the wolves encircling the fight and awaiting its outcome. The wolfman sons you had with Jennifer are cheering you on from the edge of the area cleared from the match. A few of the other spectators push and growl at them, but their numbers keep the others around them from daring to outright fight these opposition fans";
		if jenniferwolves > 0:
			say ". The sight of [if jenniferwolves > 1]them[else]him[end if] rooting for you boosts your determination to fight and win this battle.";
			if jenniferwolves > 4:
				increase morale of Player by 4;
				increase HP of Player by 15;
			else:
				increase morale of Player by jenniferwolves;
				increase HP of Player by jenniferwolves * 3;
	else if HP of Septus is 99:
		say "ERROR-FW99: This creature should no longer be randomly encountered.";
		now area entry is "Nowhere";
		now fightoutcome is 19;
		now combat abort is 1;
	else if HP of Septus >= 7:
		say "ERROR-FW[HP of Septus]: This creature should no longer be randomly encountered.";
		now area entry is "Nowhere";
		now fightoutcome is 19;
		now combat abort is 1;
	else:
		say "     Before you is the strong, muscled wolf you've seen before with 7 emblazoned in red right into his black-furred chest. Septus, the well-toned wolfman talent scout rushes at you, growling [one of]'Let's see what you're made of!'[or]'Let's spar a bit.'[or]'Time for some endurance training.'[at random]";

to say fw_attack:
	if HP of Septus is 6:
		say "[one of]One of the wolfman goes for a tackle, grabbing you with strong hands and pulling you to the ground. Several others pile on top of you, trying to crush the fight out of you.[or]One of wolves slams into from both sides with a sickening crunch.[or]One of the wolves grabs you from behind and holds you in place while the others ram their muscled shoulders into you like you were a tackling dummy until you manage to break free.[or]Septus moves in and, after a few feints, slams a powerful fist into your gut, no longer holding back. The great force of the blow proves why he's one of the team's star players. 'Is that all you got?' he growls.[or]You are grabbed from behind, your arm twisted painfully behind your back, allowing another to grab you and headbutt you so hard your ears ring.[or]A trio of the wolves grab you and lift you up into the air before spiking you down onto the concrete floor with a yell of 'Touchdown!'[at random]";
	else:
		say "[one of]The wolfman goes for a tackle, grabbing you with strong hands and pulls you to the ground.[or]He rushes past you, hitting you with a muscled shoulder and driving the breath from your lungs.[or]He grabs you roughly with strong clawed hands. That'll leave some bruises and scratches for sure.[or]He gives you a hard, but not that painful blow to the chest. Looks like he's pulling some of the punch out of it. 'Come on, show me what you're made of!'[or]He scores a hit against your side, growling 'That was easily avoidable - you need more training!'[at random]";


Section A - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wolfman";
	add "Football Wolfman" to infections of CanineList;
	add "Football Wolfman" to infections of FurryList;
	add "Football Wolfman" to infections of NatureList;
	add "Football Wolfman" to infections of MaleList;
	add "Football Wolfman" to infections of KnottedCockList;
	add "Football Wolfman" to infections of TaperedCockList;
	add "Football Wolfman" to infections of SheathedCockList;
	add "Football Wolfman" to infections of BipedalList;
	add "Football Wolfman" to infections of TailList;
	now Name entry is "Football Wolfman";
	now enemy title entry is "Football Wolfman Recruiter";
	now enemy Name entry is "Septus";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[fw_attack]";
	now defeated entry is "[Septus loses]";
	now victory entry is "[Septus wins]";
	now desc entry is "[Wolfmandesc]";
	now face entry is "a canine muzzle sticking out of your wolf-like head. The sharp teeth inside it make your smiles and growls pretty unforgettable for others, and the long tongue should come in handy for French kissing";
	now body entry is "tall and well muscled, standing on two legs and showing an interesting mix of lupine and human form. While your legs are fully digitigrade and end in large paws, your arms are changed but still more human-like and end in strong, now clawed, hands";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a fluffy, mid-length tail growing out of your spine, just above the grabbable buns of your ass.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]lupine[or]wolf[or]knotted[at random]";
	now face change entry is "it stretches out into a large lupine muzzle, filled with a predator's sharp teeth. A shift goes through your worldview when your ears become pointed and move to the top of your head, your vision becomes somehow 'sharper' and new scents assail your now much more sensitive nose"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it morphs into a well toned human-wolf hybrid shape. With the crunching noise of breaking bones, your legs become digitigrade - now ending in large paws instead of feet. Your arms meanwhile fill out with muscles, lengthen a bit and also change the form of their joints slightly. Still, they're closer to human than the legs - even with the new sharp claws at the ends of your fingers"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "dense black fur spreads rapidly over your form. Well, mostly black - your chest shows a large '22' on it in blood-red fur, just like your back"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a mid-length lupine tail sprouts from your backside"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker as the top of it grows to a sharp point, a large canine knot forming at the base of your new lupine sheath"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50;
	now lev entry is 6;                 [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10;               [ Monster's average damage when attacking. ]
	now area entry is "Campus";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12;        [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 40;
	now loot entry is "sports drink";   [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 100;        [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]tall[or]powerful[at random]";
	now type entry is "lupine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Wolfman ends here.
