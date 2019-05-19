Version 1 of Knight by Stripes begins here.
[Version 1.0 - Needs full Squire creature for pairing]

"Adds a Knight creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

kpstatus is a number that varies. kpstatus is usually 4.
knightcrestnum is a number that varies. knightcrestnum is usually 1.
playercrestnum is a number that varies. playercrestnum is usually 0.
when play begins:
	add { "Knight" } to infections of guy;


to say knightdesc:
	setmongender 3; [creature is male]
	now kpstatus is 0;
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	if BodyName of Player is "Knight":
		now kpstatus is 1;
	else if BodyName of Player is "Squire":
		now kpstatus is 2;
	else if Player is bodily human and player is facially human and player is skintone human and tail of Player is "":
		now kpstatus is 3;
	else:
		now kpstatus is 4;
	now knightcrestnum is a random number between 1 and 10;
	if kpstatus is 2 and knightcrestnum is playercrestnum:
		increase knightcrestnum by 1;
		if knightcrestnum is 10, now knightcrestnum is 1;
	if debugactive is 1:
		say "DEBUG: knightcrestnum: [knightcrestnum], playercrestnum: [playercrestnum], kpstatus: [kpstatus].";
	say "     Before you stands the striking figure of a knight in his livery. He has an attractive, manly face with [one of]a short beard[or]long, flowing hair[or]a small scar that makes him look rugged without disfiguring him[or]a square jaw and noble features[or]wavy brown hair[in random order]. He is a tall and fit man, his body strong from training and combat. Equipped in a chainmail coat, this is covered by a loose tunic of bright colors. The emblem on his chest is one of a crest depicting [stateknightcrest]. He wears rather plain breeches with leather boots below the waist, the former showing a prominent package beneath the [one of]brown[or]gray[or]tan[or]dusty[at random] fabric.";
	say "     Sizing you up, he reaches for the sword at his side. ";
	if kpstatus is 1:				[player is Knight]
		if Player is herm:
			say "'Greetings. [']Tis surprising to see a noble knight and beautiful lady in one, but these are strange times. Come, let us cross swords and test our mettle against one another. To the victor go the spoils,' he adds, fondling the bulging crotch of his breeches.";
		else if Player is female:
			say "'Greetings, lady knight. It seems even the beautiful maidens may become knights in these strange times. Come, let us cross swords and test our mettle against one another. To the victor go the spoils,' he adds, fondling the bulging crotch of his breeches.";
		else:
			say "'Greetings, sir knight. It does my heart good to see another noble knight in these strange times. Let us cross swords and test our mettle against one another. To the victor go the spoils,' he adds, fondling the bulging crotch of his breeches.";
	else if kpstatus is 2:		[player is Squire]
		say "'[if Player is purefemale]Lass[else]Lad[end if]. You have taken the colors of another. Come, let me prove myself the better knight and you may follow me. O, the adventures we shall have. Let the training begin,' he says, fondling the bulging crotch of his breeches.";
	else if kpstatus is 3:		[player is human-like]
		say "'I saw your expression, peasant. A noble knight such as I cannot abide such insolence from a lowly churl such as you. I shall teach you a lesson you won't soon forget,' he says, fondling the bulging crotch of his breeches.";
	else:						[player is somehow non-human = monster!]
		say "'Lo[if showlocale is true]! I have come to these dark woods to find fearsome beasts with which to do battle - and here one approaches[else]! A fearsome beast approaches[end if]! I shall do battle with yon creature to prove my worth as a noble knight! I shall defeat you, monster... and then I shall drive my [']sword['] into you,' he adds, fondling the bulging crotch of his breeches.";

to say stateknightcrest:
	if knightcrestnum is 1:
		say "a well-hung lion passant guardant";
	else if knightcrestnum is 2:
		say "a pair of heraldric dragons performing mutual fellatio";
	else if knightcrestnum is 3:
		say "a knight carnally riding a gryphon";
	else if knightcrestnum is 4:
		say "a combatant dragon and unicorn fighting by crossing phalli";
	else if knightcrestnum is 5:
		say "three upright dildos on a green field";
	else if knightcrestnum is 6:
		say "a stag springing positioned atop an ass-up man";
	else if knightcrestnum is 7:
		say "a broken-sworded knight bottoming for the victorious knight";
	else if knightcrestnum is 8:
		say "a buxom maiden clinging to a noble knight's leg";
	else if knightcrestnum is 9:
		say "twin maidens giving a well-hung knight a hand job";
	else:
		say "a chain-wrapped sword with handle nestled firmly in cleavage";

to say stateplayercrest:
	if Playercrestnum is 0:
		say "a cock ejaculating in a fleur-de-lis pattern";
	else if Playercrestnum is 1:
		say "a well-hung lion passant guardant";
	else if Playercrestnum is 2:
		say "a pair of heraldric dragons performing mutual fellatio";
	else if Playercrestnum is 3:
		say "a knight carnally riding a gryphon";
	else if Playercrestnum is 4:
		say "combatant dragon and unicorn fighting by crossing phalli";
	else if Playercrestnum is 5:
		say "three upright dildos on a green field";
	else if Playercrestnum is 6:
		say "a stag springing positioned atop an ass-up man";
	else if Playercrestnum is 7:
		say "a broken-sworded knight bottoming for the victorious knight";
	else if Playercrestnum is 8:
		say "a buxom maiden clinging to a noble knight's leg";
	else if Playercrestnum is 9:
		say "twin maidens giving a well-hung knight a hand job";
	else:
		say "a chain-wrapped sword with handle nestled firmly in cleavage";


to say losetoknight:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if kpstatus is 1:
		if HP of Player > 0:
			say "     You lower your [if weapon object of Player is journal]hands[else][weapon object of Player][end if] and drop to one knee before the knight. He smiles as you yield to him and moves closer. 'I would have enjoyed seeing our fight through to the end, but I can see you are eager to enjoy the festivities afterwards.' Sheathing his blade, he opens his breeches and pulls forth his other sword, the one of throbbing flesh. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		else:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees. You groan and [if weapon object of Player is journal]lower your fists[else]drop your weapon[end if], unable to keep fighting. 'Another noble victory for me,' he says, posing with his sword held high before sheathing it. 'And now to celebrate our glorious duel, my fellow knight.' He opens his breeches and pulls forth his other sword, the one of throbbing flesh. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if Player is female:
			say "[knightwins_vaginal]";
		else:
			say "[knightwins_anal]";
		setmonster "Knight";
		choose row MonsterID from the Table of Random Critters;
	else if kpstatus is 2:
		if HP of Player > 0:
			say "     You lower your [if weapon object of Player is journal]hands[else][weapon object of Player][end if] and drop to one knee before the knight. He smiles as you yield to him and moves closer. '[one of]You must recognize my greatness[or]It is clear that I have impressed you[at random]. Come follow me instead and I shall show you true glory. Here, let me show you...' Sheathing his blade, he opens his breeches and pulls forth his other sword, the one of throbbing flesh. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		else:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees. You groan and [if weapon object of Player is journal]lower your fists[else]drop your weapon[end if], unable to keep fighting. 'You are a brave one, but no squire can best a trained knight,' he says with as he sheathes his sword. 'But a noble knight must have a brave squire and you should become mine.' He opens his breeches and pulls forth his other sword, the one of throbbing flesh. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if Player is purefemale:
			say "     As he divests you of your gear and any clothing, he pauses to run his fingers across your wet mount. '[']Tis not unheard of for a maiden to pose as a squire? And these are strange times with many strange customs. But no worries, I'll still accept you as my squire. Come! You may start by [']polishing my sword['],' he says, fingering your pussy meaningfully.";
			say "[knightwins_vaginal]";
		else if Player is female:
			say "     After divesting you of your gear and any clothing, runs his hands over your dual-gendered groin. 'Ahhh, and my new squire comes with a scabbard as well as a sword,' he teases, fingering your wet cunny. 'Well then, now that our swordplay is done, I shall test your sheath.'";
			say "[knightwins_vaginal]";
		else:
			say "     After divesting you of your gear and any clothing, he fingers your asshole. 'The foremost of a squire's duties is to serve his knight loyally, to provide him whatever aid he might need. And a fine squire such as yourself is just what a noble knight like me needs at the moment,' he adds, stroking his hard manhood.";
			say "[knightwins_anal]";
		now playercrestnum is knightcrestnum;
		say "     Taking a moment to look yourself over after your encounter, you see that the crest on your chest has changed to that of [stateplayercrest], like that of the knight who just fucked you. It seems you have indeed been claimed as his new squire.";
		setmonster "Squire";
		choose row MonsterID from the Table of Random Critters;
	else if kpstatus is 3:
		if HP of Player > 0:
			say "     Rather than resist the armored knight, you lower your [if weapon object of Player is journal]hands[else][weapon object of Player][end if] and give up. He smiles as you relent, giving you a final swat with the flat of his blade before sheathing his sword. 'It is right that you yield to me, peasant. I am a noble hero and I have great deeds to perform. Come [if Player is female]damsel[else]peasant[end if], tend to me and you may tell the other commoners of how you worked in service of a brave knight,' he says, pushing you down to the ground beneath him.";
		else:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees. He then pushes you down the rest of the way with his booted foot. You groan and [if weapon object of Player is journal]fall to the ground[else]drop your weapon[end if], unable to keep fighting. 'You are an upstart peasant and nothing more, remember that,' he says as he sheathes his sword while keeping his boot on you. 'I hope I have taught you your place. I am a noble knight with great deeds to perform and I should not be wasting my time dealing with [if Player is female]common maids[else]commoners[end if]. Though I do think one final lesson to properly teach you your place is in order,' he adds as he opens his breeches and pulls forth his other sword, the one of throbbing flesh. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if Player is female:
			say "     Reaching into his breeches, he pulls out his noble manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard. He then removes your gear and any clothing, leaving you bare before him. 'A common lass such as yourself should welcome the opportunity to bed a knight. Perhaps your child will be as brave and noble as I,' he says proudly as he fingers your dampening pussy.";
			say "[knightwins_vaginal]";
		else:
			say "     Pulling down his breeches, he frees his noble manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard. He then removes your gear and any clothing, leaving you bare before him. 'Even a commoner such as yourself can be of use to a knight such as I. My quest left me in need of relief... which you shall provide,' he says with a lustful grin as he looks you over.";
			say "[knightwins_anal]";
		setmonster "Squire";
		choose row MonsterID from the Table of Random Critters;
		now playercrestnum is knightcrestnum;
		say "     You sense a strange warmth inside you as the knight's semen affects you somehow. You feel an unusual attraction to the departing knight, beyond his physical, sexual appeal. It is as if there is now some intangible connection to the bold warrior who just fucked you.";
	else:
		if HP of Player > 0:
			say "     Rather than fight further, you submit to the armored knight. Flourishing his sword, he strikes a pose with a smile. 'It seems even monsters such as you have heard of my great deeds. And so you must also have heard of my other greatness,' he adds, lowering his breeches to reveal his impressive 10-inch manhood. As you stare at it, he removes your gear and any clothing, leaving you bare.";
		else:
			say "     His last blow strikes you hard, knocking you to the ground with a pained groan. And while the hardworking nanites quickly seal the wounds, you're still quite hurt and unable to keep fighting. '[one of]I have slain the monster[or]And again I have proven my heroism against yon monstrous foe[or]Another act of heroism against a monstrous beast[or]Another evil beast defeated in the name of honor[at random],' the knight declares with a flourish of his sword. Looking down at you, he sees you still alive and breathing. 'Ah, the beast still lives? An opportunity to celebrate my noble victory,' he declares, pulling down his breeches to reveal his impressive 10-inch manhood. As you stare at it, he removes your gear and any clothing, leaving you bare.";
		if Player is female:
			say "[knightwins_vaginal]";
		else:
			say "[knightwins_anal]";
		setmonster "Squire";
		choose row MonsterID from the Table of Random Critters;
		now playercrestnum is knightcrestnum;
		say "     You sense a strange warmth inside you as the knight's semen affects you somehow. You feel an unusual attraction to the departing knight, beyond his physical, sexual appeal. It is as if there is now some intangible connection to the bold warrior who just fucked you.";

to say knightwins_vaginal:
	say "     The bold knight [if HP of Player > 0]gets[else]guides[end if] you onto all fours. With your backside presented to him, he takes a moment to eye it [if kpstatus < 3]appreciatively [end if]while running a hand between your legs. He rubs and fingers your puss[yfn], getting you wet as he teases your clit[sfn]. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your wet folds before [if kpstatus is 4]firmly pushing[else]slowly easing[end if] into you in one thrust. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure[if HP of Player > 0]. The initial few thrusts are enough to get you quite aroused and any restraint you may have had quickly slips away[else]. After the initial few thrusts, you start to delight in the fucking you're receiving, your earlier resistance slipping away[end if].";
	if kpstatus is 1:
		say "     'Is this not the finest way to end a battle, my lady knight?' ";
	else if kpstatus is 2:
		say "     'This is the kind of treatment and training you shall receive as my squire, lass.' ";
	else if kpstatus is 3:
		say "     'How fortunate for you, as a mere commoner, to be able to aid a noble knight such as I,' ";
	else:
		say "     'So you see, O beast, the might and vigor of a noble knight,' ";
	say "he says[if kpstatus > 2] pompously[end if] as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body in a mix of groping and caressing	[if kpstatus < 3 and player is male]. He even reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure[end if]. The feel of his impressive manhood gliding in and out of you, rubbing across your slick vaginal walls has you grinding back against him with growing yearning. The knight holds a steady pace, his balls slapping against your thighs and crotch as he fucks the [if kpstatus is 1]noble maiden[else if kpstatus is 2]lass-in-training[else if kpstatus is 3]female peasant[else]defeated she-monster[end if] beneath him.";
	say "     You have a couple of quick orgasms as the victorious knight fucks you by the time he quickens his pace with a lustful groan. Soon after, he grabs your ass and drives hard into you, groaning his release as he sends gooey blasts of his semen into your quivering cunny. You cry out in carnal delight, climaxing hard as you feel the strong knight's virile seed shooting into you, boldly seeking to fill your womb and impregnate you. Once done, the knight slips his slick cock from your creamy pussy and [if kpstatus > 2]wipes his [']sword['] across your buttocks before resheathing it in his breeches and departing[else]moves around to have you suck it clean before resheathing it in his breeches and departing[end if].[impregchance]";

to say knightwins_anal:
	say "     The bold knight [if HP of Player > 0]gets[else]guides[end if] you onto all fours. With your backside presented to him, he takes a moment to eye it [if kpstatus < 3]appreciatively [end if]while running a hand across it. Taking your hips in hand, he lines up behind you, teasing his stiff shaft against your pucker before [if kpstatus is 4]firmly thrusting[else]slowly easing[end if] into you. You can't help but moan at the intrusion, his enlarged manhood bringing unexpected pleasure[if HP of Player > 0]. The initial few thrusts are enough to get you quite aroused and any restraint you may have had quickly slips away[else]. After the initial few thrusts, you start to delight in the buggering, your earlier resistance slipping away[end if].";
	if kpstatus is 1:
		say "     'Is this not the finest way to end a battle, sir knight?' ";
	else if kpstatus is 2:
		say "     'This is the kind of treatment and training you shall receive as my squire, lad,' ";
	else if kpstatus is 3:
		say "     'How fortunate for you, as a mere commoner, to be able to aid a noble knight such as I,' ";
	else:
		say "     'So you see, O beast, the might and vigor of a noble knight,' ";
	say "he says[if kpstatus > 2] pompously[end if] as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body in a mix of groping and caressing[if kpstatus < 3 and player is male]. He even reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure[end if]. The feel of his enlarged manhood gliding in and out of you[if Player is male], pressing at your prostate and drooling[else] as it drools[end if] copious amounts of precum has you grinding back against him with yearning. Seeing your need, he quickens his pace further until finally his groaning release unleashes gooey blasts of his semen into your clenching bowels[if Player is male]. You cum hard in response, your cock[smn] twitching and throbbing as you drain your [Ball Size Adjective of Player] [Balls] with a lustful moan[end if]. Once done, the knight slips his slick cock from your rear and wipes his [']sword['] across your buttocks before resheathing it in his breeches and departing.[mimpregchance]";

to say beattheknight:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	say "     You are victorious over the knight, forcing him to yield and withdraw. ";
	if kpstatus is 1:
		say "'You are indeed a brave and powerful knight. I salute you,' he declares with a flourish of his sword before leaving.";
	else if kpstatus is 2:
		say "'You are quite strong for a squire. Perhaps it is time you became a knight in your own right? Regardless, I salute you,' he declares with a flourish of his sword before leaving.";
	else if kpstatus is 3:
		say "'You are surprisingly strong and well-trained for a peasant. You might make a good knight if you took up a noble cause. Regardless, I must declare you the victor,' he says with a nod while sheathing his sword before leaving.";
	else:
		say "'You are a powerful one, O beast, to have bested a knight such as I. Perhaps one day we will do epic battle again, but for now, you are the victor,' he declares, withdrawing with his sword still drawn.";

to say playercrestzeroed:
	now playercrestnum is 0;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Knight"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The knight[or]Your armored foe[or]The noble knight[or]The brave warrior[at random] [one of]slashes you with his sword[or]thrusts his sword at you[or]swings his heavy sword in a measured strike[or]bashes you with the hilt of his sword[or]makes a jab with his blade[at random]!";
	now defeated entry is "[beattheknight]"; [ Text when monster loses. ]
	now victory entry is "[losetoknight]"; [ Text when monster wins. ]
	now desc entry is "[knightdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "beautiful, but strong, having a well-formed nose and [if Player is female]lovely features[else]a square jaw[end if]. With its flowing locks, it is very attractive and even looks quite noble";
	now body entry is "that of a tall and fit [if Player is female]woman[else]man[end if]. Your body is toned and muscled without being unattractively so. Across your torso is a loose tunic with an emblem stitched into it of a cock ejaculating in a fleur-de-lis pattern";
	now skin entry is "smooth, lightly-tanned";
	now tail entry is "";
	now cock entry is "human";
	now face change entry is "the bones of your head shift with the occasional pop or crack that makes you wince. As these changes progress, your face becomes similar to your old one, but more noble and lovely in appearance [if Player is female]with added strength and beauty in its altered shape[else]with a square jaw and increased attractiveness[end if]";
	now body change entry is "changes spread through it. Your muscles tense and flex and your body reshapes itself, in time becoming that of a tall and fit [if Player is female]woman[else]man[end if]. Your body is toned and muscled, looking and feeling like that of a trained warrior. As you look down at your chest, a loose tunic forms across your torso. In bright blue, pink and white, it bears the crest of a cock ejaculating in a fleur-de-lis pattern at its center. Any attempt to cover or remove this has it return in short order[playercrestzeroed]";
	now skin change entry is "exciting tingles run all over your [bodydesc of Player] body. Your flesh shifts and changes, subtly at first, until eventually becoming smooth, lightly tanned and quite human in appearance. Your right hand shows callouses from wielding something heavy and feels somehow empty without it. A few scars form, showing marks of past battles fought";
	now ass change entry is "your buttocks muscles firm up, fit for riding (or being ridden)";
	now cock change entry is "it pulses and throbs in arousal. Precum dribbles out with each pulse and your cockflesh changes as well. By the time you orgasm from the transformation, you're left with a very human-looking cock";
	now str entry is 17; [ These are now the creature's stats... ]
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat. ]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 95; [ The monster's starting HP. ]
	now lev entry is 11; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 11; [ Monster's average damage when attacking. ]
	now area entry is "Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	[temporary placement in Museum, pending final decision]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 10; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 7;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is "stray links"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 44; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]toned[or]muscled[or]fit[at random]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"stray links"	"A few stray links of chainmail that appear to have come off of something larger."	1	stray links

stray links is a grab object. It is part of the player. It is infectious. The strain of stray links is "Knight".

The usedesc of stray links is "[straylinkseffect]";

to say straylinkseffect:
	LineBreak;
	say "     You take out a handful of the chainmail links you found earlier and roll them around in your hand. As you do this, their number decreases as they disappear unnoticed into your palm. By the time you take notice of this, the tingles of infection has spread into you.";

instead of sniffing stray links:
	say "The small links of metal have no particular scent to them.";


Section 4 - Endings

[
when play ends:
	if BodyName of Player is "Knight":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Knight ends here.
