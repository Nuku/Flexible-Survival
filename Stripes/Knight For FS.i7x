Version 1 of Knight For FS by Stripes begins here.
[Version 1.0 - Needs full Squire creature for pairing]

"Adds a Knight creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

kpstatus is a number that varies.  kpstatus is usually 4.
knightcrestnum is a number that varies.  knightcrestnum is usually 1.
playercrestnum is a number that varies.  playercrestnum is usually 0.
when play begins:
	add { "Knight" } to infections of guy;


to say knightdesc:
	setmongender 3;		[creature is male]
	now kpstatus is 0;
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	if bodyname of player is "Knight":
		now kpstatus is 1;
	otherwise if bodyname of player is "Squire":
		now kpstatus is 2;
	otherwise if player is bodily human and player is facially human and player is skintone human and tail of player is "":
		now kpstatus is 3;
	otherwise:
		now kpstatus is 4;
	now knightcrestnum is a random number between 1 and 10;
	if kpstatus is 2 and knightcrestnum is playercrestnum:
		increase knightcrestnum by 1;
		if knightcrestnum is 10, now knightcrestnum is 1;
	if debugactive is 1:
		say "DEBUG: knightcrestnum: [knightcrestnum], playercrestnum: [playercrestnum], kpstatus: [kpstatus].";
	say "     Before you stands the striking figure of a knight in his livery.  He has an attractive, manly face with [one of]a short beard[or]long, flowing hair[or]a small scar that makes him look rugged without disfiguring him[or]a square jaw and noble features[or]wavy brown hair[in random order].  He is a tall and fit man, his body strong from training and combat.  Equipped in a chainmail coat, this is covered by a loose tunic of bright colours.  The emblem on his chest is one of a crest depicting [stateknightcrest].  He wears rather plain breeches with leather boots below the waist, the former showing a prominent package beneath the [one of]brown[or]grey[or]tan[or]dusty[at random] fabric.";
	say "     Sizing you up, he reaches for the sword at his side";
	if kpstatus is 1:				[player is Knight]
		if cocks of player > 0 and cunts of player > 0:
			say ".  'Greetings.  [']Tis surprising to see a noble knight and beautiful lady in one, but these are strange times.  Come, let us cross swords and test our mettle against one another.  To the victor go the spoils,' he adds, fondling the bulging crotch of his breeches.";
		otherwise if cunts of player > 0:
			say ".  'Greetings, lady knight.  It seems even the beautiful maidens may become knights in these strange times.  Come, let us cross swords and test our mettle against one another.  To the victor go the spoils,' he adds, fondling the bulging crotch of his breeches.";
		otherwise:
			say ".  'Greetings, sir knight.  It does my heart good to see another noble knight in these strange times.  Let us cross swords and test our mettle against one another.  To the victor go the spoils,' he adds, fondling the bulging crotch of his breeches.";
	otherwise if kpstatus is 2:		[player is Squire]
		say ".  '[if cunts of player > 0 and cocks of player is 0]Lass[otherwise]Lad[end if].  You have taken the colours of another.  Come, let me prove myself the better knight and you may follow me.  O, the adventures we shall have.  Let the training begin,' he says, fondling the bulging crotch of his breeches.";
	otherwise if kpstatus is 3:		[player is human-like]
		say " as he sees you looking at him.  'I saw your expression, peasant.  A noble knight such as I cannot abide such insolence from a lowly churl such as you.  I shall teach you a lesson you won't soon forget,' he says, fondling the bulging crotch of his breeches.";
	otherwise:						[player is somehow non-human = monster!]
		say " as he looks over your transformed state.  'Lo[if showlocale is true]!  I have come to these dark woods to find fearsome beasts with which to do battle - and here one approaches[otherwise]!  A fearsome beast approaches[end if]!  I shall do battle with yon creature to prove my worth as a noble knight!  I shall defeat you, monster... and then I shall drive my [']sword['] into you,' he adds, fondling the bulging crotch of his breeches.";

to say stateknightcrest:
	if knightcrestnum is 1:
		say "a well-hung lion passant guardant"; 
	otherwise if knightcrestnum is 2:
		say "a pair of heraldric dragons performing mutual fellatio";
	otherwise if knightcrestnum is 3:
		say "a knight carnally riding a gryphon";
	otherwise if knightcrestnum is 4:
		say "a combatant dragon and unicorn fighting by crossing phalli";
	otherwise if knightcrestnum is 5:
		say "three upright dildos on a green field";
	otherwise if knightcrestnum is 6:
		say "a stag springing positioned atop an ass-up man";
	otherwise if knightcrestnum is 7:
		say "a broken-sworded knight bottoming for the victorious knight";
	otherwise if knightcrestnum is 8:
		say "a buxom maiden clinging to a noble knight's leg";
	otherwise if knightcrestnum is 9:
		say "twin maidens giving a well-hung knight a hand job";
	otherwise:
		say "a chain-wrapped sword with handle nestled firmly in cleavage";

to say stateplayercrest:
	if playercrestnum is 0:
		say "a cock ejaculating in a fleur-de-lis pattern"; 
	otherwise if playercrestnum is 1:
		say "a well-hung lion passant guardant"; 
	otherwise if playercrestnum is 2:
		say "a pair of heraldric dragons performing mutual fellatio";
	otherwise if playercrestnum is 3:
		say "a knight carnally riding a gryphon";
	otherwise if playercrestnum is 4:
		say "combatant dragon and unicorn fighting by crossing phalli";
	otherwise if playercrestnum is 5:
		say "three upright dildos on a green field";
	otherwise if playercrestnum is 6:
		say "a stag springing positioned atop an ass-up man";
	otherwise if playercrestnum is 7:
		say "a broken-sworded knight bottoming for the victorious knight";
	otherwise if playercrestnum is 8:
		say "a buxom maiden clinging to a noble knight's leg";
	otherwise if playercrestnum is 9:
		say "twin maidens giving a well-hung knight a hand job";
	otherwise:
		say "a chain-wrapped sword with handle nestled firmly in cleavage";


to say losetoknight:
	if kpstatus is 1:
		if hp of player > 0:
			say "     You lower your [if weapon object of player is journal]hands[otherwise][weapon object of player][end if] and drop to one knee before the knight.  He smiles as you yield to him and moves closer.  'I would have enjoyed seeing our fight through to the end, but I can see you are eager to enjoy the festivities afterwards.'  Sheathing his blade, he opens his breeches and pulls forth his other sword, the one of throbbing flesh.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		otherwise:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees.  You groan and [if weapon object of player is journal]lower your fists[otherwise]drop your weapon[end if], unable to keep fighting.  'Another noble victory for me,' he says, posing with his sword held high before sheathing it.  'And now to celebrate our glorious duel, my fellow knight.'  He opens his breeches and pulls forth his other sword, the one of throbbing flesh.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if cunts of player > 0:
			say "[knightwins_vaginal]";
		otherwise:
			say "[knightwins_anal]";
		setmonster "Knight";
		choose row monster from the table of random critters;
	otherwise if kpstatus is 2:
		if hp of player > 0:
			say "     You lower your [if weapon object of player is journal]hands[otherwise][weapon object of player][end if] and drop to one knee before the knight.  He smiles as you yield to him and moves closer.  '[one of]You must recognize my greatness[or]It is clear that I have impressed you[at random].  Come follow me instead and I shall show you true glory.  Here, let me show you...'  Sheathing his blade, he opens his breeches and pulls forth his other sword, the one of throbbing flesh.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		otherwise:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees.  You groan and [if weapon object of player is journal]lower your fists[otherwise]drop your weapon[end if], unable to keep fighting.  'You are a brave one, but no squire can best a trained knight,' he says with as he sheathes his sword.  'But a noble knight must have a brave squire and you should become mine.'  He opens his breeches and pulls forth his other sword, the one of throbbing flesh.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if cunts of player > 0 and cocks of player is 0:
			say "     As he divests you of your gear and any clothing, he pauses to run his fingers across your wet mount.  '[']Tis not unheard of for a maiden to pose as a squire?  And these are strange times with many strange customs.  But no worries, I'll still accept you as my squire.  Come!  You may start by [']polishing my sword['],' he says, fingering your pussy meaningfully.";
			say "[knightwins_vaginal]";
		otherwise if cunts of player > 0:
			say "     After divesting you of your gear and any clothing, runs his hands over your dual-gendered groin.  'Ahhh, and my new squire comes with a scabbard as well as a sword,' he teases, fingering your wet cunny.  'Well then, now that our swordplay is done, I shall test your sheath.'";
			say "[knightwins_vaginal]";
		otherwise:
			say "     After divesting you of your gear and any clothing, he fingers your asshole.  'The foremost of a squire's duties is to serve his knight loyally, to provide him whatever aid he might need.  And a fine squire such as yourself is just what a noble knight like me needs at the moment,' he adds, stroking his hard manhood.";
			say "[knightwins_anal]";
		now playercrestnum is knightcrestnum;
		say "     Taking a moment to look yourself over after your encounter, you see that the crest on your chest has changed to that of [stateplayercrest], like that of the knight who just fucked you.  It seems you have indeed been claimed as his new squire.";
		setmonster "Squire";
		choose row monster from the table of random critters;
	otherwise if kpstatus is 3:
		if hp of player > 0:
			say "     Rather than resist the armoured knight, you lower your [if weapon object of player is journal]hands[otherwise][weapon object of player][end if] and give up.  He smiles as you relent, giving you a final swat with the flat of his blade before sheathing his sword.  'It is right that you yield to me, peasant.  I am a noble hero and I have great deeds to perform.  Come [if cunts of player > 0]damsel[otherwise]peasant[end if], tend to me and you may tell the other commoners of how you worked in service of a brave knight,' he says, pushing you down to the ground beneath him.";
		otherwise:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees.  He then pushes you down the rest of the way with his booted foot.  You groan and [if weapon object of player is journal]fall to the ground[otherwise]drop your weapon[end if], unable to keep fighting.  'You are an upstart peasant and nothing more, remember that,' he says as he sheathes his sword while keeping his boot on you.  'I hope I have taught you your place.  I am a noble knight with great deeds to perform and I should not be wasting my time dealing with [if cunts of player > 0]common maids[otherwise]commoners[end if].  Though I do think one final lesson to properly teach you your place is in order,' he adds as he opens his breeches and pulls forth his other sword, the one of throbbing flesh.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if cunts of player > 0:
			say "     Reaching into his breeches, he pulls out his noble manhood.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.  He then removes your gear and any clothing, leaving you bare before him.  'A common lass such as yourself should welcome the opportunity to bed a knight.  Perhaps your child will be as brave and noble as I,' he says proudly as he fingers your dampening pussy.";
			say "[knightwins_vaginal]";
		otherwise:
			say "     Pulling down his breeches, he frees his noble manhood.  It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.  He then removes your gear and any clothing, leaving you bare before him.  'Even a commoner such as yourself can be of use to a knight such as I.  My quest left me in need of relief... which you shall provide,' he says with a lustful grin as he looks you over.";
			say "[knightwins_anal]";
		setmonster "Squire";
		choose row monster from the table of random critters;
		now playercrestnum is knightcrestnum;
		say "     You sense a strange warmth inside you as the knight's semen affects you somehow.  You feel an unusual attraction to the departing knight, beyond his physical, sexual appeal.  It is as if there is now some intangible connection to the bold warrior who just fucked you.";
	otherwise:
		if hp of player > 0:
			say "     Rather than fight further, you submit to the armoured knight.  Flourishing his sword, he strikes a pose with a smile.  'It seems even monsters such as you have heard of my great deeds.  And so you must also have heard of my other greatness,' he adds, lowering his breeches to reveal his impressive 10-inch manhood.  As you stare at it, he removes your gear and any clothing, leaving you bare.";
		otherwise:
			say "     His last blow strikes you hard, knocking you to the ground with a pained groan.  And while the hardworking nanites quickly seal the wounds, you're still quite hurt and unable to keep fighting.  '[one of]I have slain the monster[or]And again I have proven my heroism against yon monstrous foe[or]Another act of heroism against a monstrous beast[or]Another evil beast defeated in the name of honour[at random],' the knight declares with a flourish of his sword.  Looking down at you, he sees you still alive and breathing.  'Ah, the beast still lives?  An opportunity to celebrate my noble victory,' he declares, pulling down his breeches to reveal his impressive 10-inch manhood.  As you stare at it, he removes your gear and any clothing, leaving you bare.";
		if cunts of player > 0:
			say "[knightwins_vaginal]";
		otherwise:
			say "[knightwins_anal]";
		setmonster "Squire";
		choose row monster from the table of random critters;
		now playercrestnum is knightcrestnum;
		say "     You sense a strange warmth inside you as the knight's semen affects you somehow.  You feel an unusual attraction to the departing knight, beyond his physical, sexual appeal.  It is as if there is now some intangible connection to the bold warrior who just fucked you.";

to say knightwins_vaginal:
	say "     The bold knight [if hp of player > 0]gets[otherwise]guides[end if] you onto all fours.  With your backside presented to him, he takes a moment to eye it [if kpstatus < 3]appreciatively [end if]while running a hand between your legs.  He rubs and fingers your puss[yfn], getting you wet as he teases your clit[sfn].  Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your wet folds before [if kpstatus is 4]firmly pushing[otherwise]slowly easing[end if] into you in one thrust.  You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure[if hp of player > 0].  The initial few thrusts are enough to get you quite aroused and any restraint you may have had quickly slips away[otherwise].  After the initial few thrusts, you start to delight in the fucking you're receiving, your earlier resistance slipping away[end if].";
	if kpstatus is 1:
		say "     'Is this not the finest way to end a battle, my lady knight?'[run paragraph on] ";
	otherwise if kpstatus is 2:
		say "     'This is the kind of treatment and training you shall receive as my squire, lass' ";
	otherwise if kpstatus is 3:
		say "     'How fortunate for you, as a mere commoner, to be able to aid a noble knight such as I,' ";
	otherwise:
		say "     'So you see, O beast, the might and vigour of a noble knight,' ";
	say "he says[if kpstatus > 2] pompously[end if] as he quickens his pace and fucks you with added flourish and vigour.  His hands roam over your [bodydesc of player] body in a mix of groping and caressing	[if kpstatus < 3 and cocks of player > 0].  He even reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure[end if].  The feel of his impressive manhood gliding in and out of you, rubbing across your slick vaginal walls has you grinding back against him with growing yearning.  The knight holds a steady pace, his balls slapping against your thighs and crotch as he fucks the [if kpstatus is 1]noble maiden[otherwise if kpstatus is 2]lass-in-training[otherwise if kpstatus is 3]female peasant[otherwise]defeated she-monster[end if] beneath him.";
	say "     You have a couple of quick orgasms as the victorious knight fucks you by the time he quickens his pace with a lustful groan.  Soon after, he grabs your ass and drives hard into you, groaning his release as he sends gooey blasts of his semen into your quivering cunny.  You cry out in carnal delight, climaxing hard as you feel the strong knight's virile seed shooting into you, boldly seeking to fill your womb and impregnate you.  Once done, the knight slips his slick cock from your creamy pussy and [if kpstatus > 2]wipes his [']sword['] across your buttocks before resheathing it in his breeches and departing[otherwise]moves around to have you suck it clean before resheathing it in his breeches and departing[end if].[impregchance]";

to say knightwins_anal:
	say "     The bold knight [if hp of player > 0]gets[otherwise]guides[end if] you onto all fours.  With your backside presented to him, he takes a moment to eye it [if kpstatus < 3]appreciatively [end if]while running a hand across it.  Taking your hips in hand, he lines up behind you, teasing his stiff shaft against your pucker before [if kpstatus is 4]firmly thrusting[otherwise]slowly easing[end if] into you.  You can't help but moan at the intrusion, his enlarged manhood bringing unexpected pleasure[if hp of player > 0].  The initial few thrusts are enough to get you quite aroused and any restraint you may have had quickly slips away[otherwise].  After the initial few thrusts, you start to delight in the buggering, your earlier resistance slipping away[end if].";
	if kpstatus is 1:
		say "     'Is this not the finest way to end a battle, sir knight?'[run paragraph on] ";
	otherwise if kpstatus is 2:
		say "     'This is the kind of treatment and training you shall receive as my squire, lad' ";
	otherwise if kpstatus is 3:
		say "     'How fortunate for you, as a mere commoner, to be able to aid a noble knight such as I,' ";
	otherwise:
		say "     'So you see, O beast, the might and vigour of a noble knight,' ";
	say "he says[if kpstatus > 2] pompously[end if] as he quickens his pace and fucks you with added flourish and vigour.  His hands roam over your [bodydesc of player] body in a mix of groping and caressing[if kpstatus < 3 and cocks of player > 0].  He even reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure[end if].  The feel of his enlarged manhood gliding in and out of you[if cocks of player > 0], pressing at your prostate and drooling[otherwise] as it drools[end if] copious amounts of precum has you grinding back against him with yearning.  Seeing your need, he quickens his pace further until finally his groaning release unleashes gooey blasts of his semen into your clenching bowels[if cocks of player > 0].  You cum hard in response, your cock[smn] twitching and throbbing as you drain your [ball size] with a lustful moan[end if].  Once done, the knight slips his slick cock from your rear and wipes his [']sword['] across your buttocks before resheathing it in his breeches and departing.[mimpregchance]";

to say beattheknight:
	say "     You are victorious over the knight, forcing him to yield and withdraw";
	if kpstatus is 1:
		say ".  'You are indeed a brave and powerful knight.  I salute you,' he declares with a flourish of his sword before leaving.";
	otherwise if kpstatus is 2:
		say ".  'You are quite strong for a squire.  Perhaps it is time you became a knight in your own right?  Regardless, I salute you,' he declares with a flourish of his sword before leaving.";
	otherwise if kpstatus is 3:
		say ".  'You are surprisingly strong and well-trained for a peasant.  You might make a good knight if you took up a noble cause.  Regardless, I must declare you the victor,' he says with a nod while sheathing his sword before leaving.";
	otherwise:
		say ".  'You are a powerful one, O beast, to have bested a knight such as I.  Perhaps one day we will do epic battle again, but for now, you are the victor,' he declares, withdrawing with his sword still drawn.";

to say playercrestzeroed:
	now playercrestnum is 0;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Knight";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The knight[or]Your armoured foe[or]The noble knight[or]The brave warrior[at random] [one of]slashes you with his sword[or]thrusts his sword at you[or]swings his heavy sword in a measured strike[or]bashes you with the hilt of his sword[or]makes a jab with his blade[at random]!";
	now defeated entry is "[beattheknight]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoknight]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[knightdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "beautiful, but strong, having a well-formed nose and [if cunts of player > 0]lovely features[otherwise]a square jaw[end if].  With its flowing locks, it is very attractive and even looks quite noble";
	now body entry is "that of a tall and fit [if cunts of player > 0]woman[otherwise]man[end if].  Your body is toned and muscled without being unattractively so.  Across your torso is a loose tunic with an emblem stitched into it of a cock ejaculating in a fleur-de-lis pattern";
	now skin entry is "smooth, lightly-tanned";
	now tail entry is "";
	now cock entry is "human";
	now face change entry is "the bones of your head shift with the occasional pop or crack that makes you wince.  As these changes progress, your face becomes similar to your old one, but more noble and lovely in appearance [if cunts of player > 0]with added strength and beauty in its altered shape[otherwise]with a square jaw and increased attractiveness[end if]";
	now body change entry is "changes spread through it.  Your muscles tense and flex and your body reshapes itself, in time becoming that of a tall and fit [if cunts of player > 0]woman[otherwise]man[end if].  Your body is toned and muscled, looking and feeling like that of a trained warrior.  As you look down at your chest, a loose tunic forms across your torso.  In bright blue, pink and white, it bears the crest of a cock ejaculating in a fleur-de-lis pattern at its centre.  Any attempt to cover or remove this has it return in short order[playercrestzeroed]";
	now skin change entry is "exciting tingles run all over your [bodydesc of player] body.  Your flesh shifts and changes, subtly at first, until eventually becoming smooth, lightly tanned and quite human in appearance.  Your right hand shows callouses from wielding something heavy and feels somehow empty without it.  A few scars form, showing marks of past battles fought";
	now ass change entry is "your buttocks muscles firm up, fit for riding (or being ridden)";
	now cock change entry is "it pulses and throbs in arousal.  Precum dribbles out with each pulse and your cockflesh changes as well.  By the time you orgasm from the transformation, you're left with a very human-looking cock";
	now str entry is 17;			[ These are now the creature's stats... ]
	now dex entry is 19;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15;			[ These values may be used as part of alternate combat. ]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 95;			[ The monster's starting hit points. ]
	now lev entry is 11;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 11;			[ Monster's average damage when attacking. ]
	now area entry is "Forest";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	[temporary placement in Museum, pending final decision]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 10;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 7;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 4;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 7;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "stray links";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 44;		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]toned[or]muscled[or]fit[at random]";
	now type entry is "human";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"stray links"	"A few stray links of chainmail that appear to have come off of something larger."	1	stray links

stray links is a grab object. It is part of the player. It is infectious.  The strain of stray links is "Knight".

The usedesc of stray links is "[straylinkseffect]";

to say straylinkseffect:
	say "[line break]";
	say "     You take out a handful of the chainmail links you found earlier and roll them around in your hand.  As you do this, their number decreases as they disappear unnoticed into your palm.  By the time you take notice of this, the tingles of infection has spread into you.";

instead of sniffing stray links:
	say "The small links of metal have no particular scent to them.";


Section 4 - Endings

[
when play ends:
	if bodyname of player is "Knight":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Knight For FS ends here.
