Version 2 of Knight by Voidsnaps begins here.
[Version 2.0 - Unfucked the code, unfucked the writing, unfucked the content. Will likely have an associated NPC and scenes related to them. Also added win scenes.]

"Adds a Knight creature to Flexible Survival's Wandering Monsters table"

Section 1 - Loot Table

to say GenerateTrophyList_Knight:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "stray links" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "water bottle" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "indigo potion" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if a random chance of (5 + LootBonus) in 100 succeeds: [rare drop]
		add "medieval breastplate" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";


Section 2 - Creature Responses

kpstatus is a number that varies. kpstatus is usually 4.
knightcrestnum is a number that varies. knightcrestnum is usually 1.
playercrestnum is a number that varies. playercrestnum is usually 0.

to say knightdesc:
	[Sets target gender of Knight infection according to Player preferences]
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	[]
	[Knight's View of the Player, depending on infection]
	if BodyName of Player is "Knight":
		now kpstatus is 1; [player is a knight]
	else if BodyName of Player is "Squire":
		now kpstatus is 2; [player is a squire]
	else if Player is bodily human and player is facially human and player is skintone human:
		now kpstatus is 3; [player is human]
	else:
		now kpstatus is 4; [player is anything else]
	[]
	[Randomizer bits]
	now knightcrestnum is a random number between 1 and 10;
	if kpstatus is 2 and knightcrestnum is playercrestnum:
		increase knightcrestnum by 1;
		if knightcrestnum is 10, now knightcrestnum is 1;
	[]
	if debugactive is 1:
		say "DEBUG: knightcrestnum: [knightcrestnum], playercrestnum: [playercrestnum], kpstatus: [kpstatus].";
	project Figure of Knight_clothed_armed_icon;
	say "     Before you stands the striking figure of a knight in his livery. He has an attractive, manly face, framed by black hair and a full beard covering his square jaw. He is a tall and fit man, his body strong from training and combat. His upper body is covered in a fine chainmail coat, further supplemented by a shiny breastplate and bracers. Over his shoulder and down the back hangs a long cloak, bearing [stateknightcrest] embroidered across the middle. He wears rather plain breeches with some armor plates strapped over them, and leather boots.";
	say "     Sizing you up with emerald-green eyes, he reaches for the sword at his side. ";
	if kpstatus is 1: [player is Knight]
		if Player is herm:
			say "'Greetings. [']Tis surprising to see a noble knight and beautiful lady in one, but these are strange times. Come, let us cross swords and test our mettle against one another. To the victor go the spoils,' he adds, fondling his awakening lance through his laced pantaloons, bringing your attention to its bulging outline.";
		else if Player is female:
			say "'Greetings, lady knight. It seems even the beautiful maidens may become knights in these strange times. Come, let us cross swords and test our mettle against one another. To the victor go the spoils,' he adds, fondling his awakening lance through his laced pantaloons, bringing your attention to its bulging outline.";
		else:
			say "'Greetings, sir knight. It does my heart good to see another noble knight in these strange times. Let us cross swords and test our mettle against one another. To the victor go the spoils,' he adds, fondling his awakening lance through his laced pantaloons, bringing your attention to its bulging outline.";
	else if kpstatus is 2: [player is Squire]
		if SubjectPro of Player is "he":
			say "'Lad, ";
		else if SubjectPro of Player is "she":
			say "'Lass, ";
		else:
			say "'Recruit, ";
		say "Thou hast taken the colors of another! Come, let me prove myself the better knight. Oh, the adventures we shall have. A more accomplished master awaits,' he says, fondling his awakening lance through his laced pantaloons, bringing your attention to its bulging outline.";
	else if kpstatus is 3: [player is human-like]
		say "'Mine eyes saw your expression, peasant. A noble knight such as I cannot abide such insolence from a lowly churl such as thou. I shall teach thee a lesson thy churlish mind won't soon forget,' he says, fondling his awakening lance through his laced pantaloons, bringing your attention to its bulging outline.";
	else: [player is somehow non-human = monster!]
		say "'Lo! I have come to these dark woods to find fearsome beasts with which to do battle - and here one approaches! I shall defeat yon creature to prove mine worth as a noble knight! Thou shalt fall, monster... and then I shall drive mine 'sword' into thy stone,' he adds, fondling his awakening lance through his laced pantaloons, bringing your attention to its bulging outline.";

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
		say "twin maidens giving a well-hung knight a handjob";
	else:
		say "a chain-wrapped sword with handle nestled firmly in cleavage";

to say stateplayercrest:
	if Playercrestnum is 0:
		say "a cock ejaculating in a fleur-de-lis pattern";
	else if Playercrestnum is 1:
		say "a well-hung lion passant guardant";
	else if Playercrestnum is 2:
		say "a pair of heraldic dragons performing mutual fellatio";
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
		say "twin maidens giving a well-hung knight a handjob";
	else:
		say "a chain-wrapped sword with handle nestled firmly in cleavage";

to say playercrestzeroed:
	now playercrestnum is 0;

to say losetoknight:
	project Figure of Knight_hard_icon;
	if kpstatus is 1:
		if HP of Player > 0:
			say "     You lower your [if weapon object of Player is not journal][weapon object of Player][else]hands[end if] and drop to one knee before the knight. He smiles as you yield to him and moves closer. 'I would have enjoyed seeing our fight through to the end, but I can see thou art eager to enjoy the festivities afterwards.' Sheathing his blade, he opens his breeches and unsheathes his manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		else:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees. You groan and [if weapon object of Player is journal]lower your fists[else]drop your weapon[end if], unable to keep fighting. 'Another noble victory for a conquering hero,' he says, posing with his sword held high before sheathing it. 'And now to celebrate our glorious duel, my fellow knight.' Sheathing his blade, he opens his breeches and unsheathes his manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if Player is female:
			say "[knightwins_vaginal]";
		else:
			say "[knightwins_anal]";
		setmonster "Knight";
		choose row MonsterID from the Table of Random Critters;
	else if kpstatus is 2:
		if HP of Player > 0:
			say "     You lower your [if weapon object of Player is not journal][weapon object of Player][else]hands[end if] and drop to one knee before the knight. He smiles as you yield to him and moves closer. '[one of]Thou must recognize my greatness[or]It is clear that I have impressed you[at random]. Follow and I shall show thee true glory. Here, allow mine demonstration...' Sheathing his blade, Sheathing his blade, he opens his breeches and unsheathes his manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		else:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees. You groan and [if weapon object of Player is not journal]drop your [weapon object of Player] to the ground[else]lower your fists[end if], unable to keep fighting. 'You are a brave one, but no squire can best a trained knight,' he says with as he sheathes his sword. 'But a noble knight requires a squire, so come, partake of my expertise.' Sheathing his blade, he opens his breeches and unsheathes his manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if Player is purefemale: [females]
			say "     As he divests you of your gear and any clothing, he pauses to run his fingers across your wet mound, tracing your lower lips with calloused fingers. '[']Tis not unheard of for a maiden to pose as a squire, I suppose! These are strange times with many strange customs. But worry not, I'll accept your conscription, my squire. Come! Thy tongue may start by [']serving as my scabbard['],' he says, stirring your pussy pointedly.";
			say "[knightwins_vaginal]";
		else if Player is female: [herms]
			say "     After divesting you of your gear and any clothing, runs his hands over your dual-gendered groin. 'How pleasant that my new squire comes with a scabbard as well as a sword,' he teases, fingering your wet cunny. 'As our swordplay concludes, allow me to sheathe my weapon.'";
			say "[knightwins_vaginal]";
		else:
			say "     After divesting you of your gear[if Player is not naked] and any clothing[end if], he caresses your rear entrance, dipping his middle finger inside to test your depths. 'The foremost of a squire's duties is to serve his knight loyally, to provide comfort on a lonely night. And a fine squire such as yourself is just what a noble knight like mineself requires,' he adds, polishing his throbbing sword with eager strokes.";
			say "[knightwins_anal]";
		now playercrestnum is knightcrestnum;
		say "     Taking a moment to look yourself over after your encounter, you see that the crest on your chest has changed to that of [stateplayercrest], like that of the knight who just fucked you. It seems you have indeed been claimed as his new squire.";
		setmonster "Squire";
		choose row MonsterID from the Table of Random Critters;
	else if kpstatus is 3: [Player is human shaped]
		if HP of Player > 0:
			say "     Rather than resist the armored knight, you lower your [if weapon object of Player is not journal][weapon object of Player][else]hands[end if] and give up. He smiles as you relent, giving you a final swat with the flat of his blade before sheathing his sword. '[']Tis right that you yield to mine glor, peasant. A noble hero, with great deeds to perform, deserves the adoration of the masses. Come [if Player is female]damsel[else]peasant[end if], tend to mine carnal hunger and thou mayest tell the other commoners of how thee serviced a brave knight,' he says, pushing you to the ground and leaning over you with hunger in his eyes.";
		else:
			say "     The knight's final blow, turned at the last moment to the flat of the blade, knocks you to your knees. A swift kick impacts your chest, knocking the wind out of you and you groan, [if weapon object of Player is not journal]dropping your [weapon object of Player] to the ground[else]lowering your fists[end if], too exhausted to fight. 'Peasants should know their place. Commoners have no place on the field of battle.' Sneering as his boot grinds against your chest, he continues in a haughty voice. 'I hope I have taught thee thy place. A noble knight with great deeds to perform should not be wasting time dueling [if Player is female]common wenches[else]commoners[end if]. Though I do think one final lesson is in order,' he adds. Sheathing his blade, he opens his breeches and unsheathes his manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard.";
		if Player is female:
			say "     Reaching into his breeches, he unsheathes his noble manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard. He then removes your gear[if Player is not naked] and any clothing[end if], leaving you bare before him. 'A common lass such as thyself should welcome the opportunity to bed a knight. Perhaps your child will be as brave and noble as I,' he says with a pompous sneer as he plunders your dampening pussy with two fingers.";
			say "[knightwins_vaginal]";
		else:
			say "     Pulling down his breeches, he frees his noble manhood. It is an impressive 10 inches of man-meat, perfectly shaped, uncut and steel hard. He then removes your gear[if Player is not naked] and any clothing[end if], leaving you bare before him. 'Even a commoner can be of use to a knight. My quest left me in need of relief... Prepare yourself,' he says with a lustful grin as his gleaming eyes travel over your body, lingering on the space between your legs.";
			say "[knightwins_anal]";
		setmonster "Squire";
		choose row MonsterID from the Table of Random Critters;
		now playercrestnum is knightcrestnum;
		say "     You sense a strange warmth inside you as the knight's semen affects you somehow. You feel an unusual attraction to the departing knight, beyond his raw sexual magnetism. It is as if there is now some intangible connection to the bold warrior who just fucked you.";
	else: [Player is some other creature]
		if HP of Player > 0:
			say "     Rather than fight further, you submit to the armored knight. Flourishing his sword, he strikes a pose with a smile. 'It seems even monsters such as you have heard of my great deeds. And so you must also have heard of mine greatsword,' he adds, lowering his breeches to reveal his impressive 10-inch manhood. As you stare at it, he removes your gear and any clothing, leaving you bare.";
		else:
			say "     His last blow strikes you hard, knocking you to the ground with a pained groan. And while the hardworking nanites quickly seal the wounds, you're still quite hurt and unable to keep fighting. '[one of]I have slain the monster[or]And again I have proven my heroism against yon monstrous foe[or]Another act of heroism against a monstrous beast[or]Another evil beast defeated in the name of honor[at random],' the knight declares with a flourish of his sword. Looking down at you, he sees you struggling to sit up. 'Ah, the beast still lives? An opportunity to celebrate mine noble victory,' he declares, pulling down his breeches to reveal his impressive 10-inch manhood. As you stare at it, he removes your gear and any clothing, leaving you bare.";
		WaitLineBreak;
		if Player is female:
			say "[knightwins_vaginal]";
		else:
			say "[knightwins_anal]";
		setmonster "Squire";
		choose row MonsterID from the Table of Random Critters;
		now playercrestnum is knightcrestnum;
		say "     You sense a strange warmth inside you as the knight's semen affects you somehow. You feel an unusual attraction to the departing knight, beyond his physical, sexual appeal. It is as if there is now some intangible connection to the brave warrior who just fucked you.";

to say knightwins_vaginal: [TODO: individualize these more, or just replace them entirely with something better]
	if kpstatus is 1: [Player knight]
		say "     The bold knight guides you onto all fours. Bare and vulnerable, you shiver as he takes a moment to eye it appreciatively, running a hand between your legs. He fondles your pussy with rough fingers, drawing dewy droplets of feminine lubricant from your depths as he teases your clit. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your wet folds before slowly easing into you, bottoming out. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure. After the initial few thrusts, you start to delight in the fucking you're receiving, and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'Is this not the finest way to end a battle, my lady knight?' he says as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if committing it to memory. [if Player is male]He reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure. [end if]The sensation of his impressive manhood gliding in and out of you sets your world aflame, sending tingles through your body as he stirs your innards with long thrusts, slapping his balls against your nether lips until they sting.";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you gush around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against your womb. Once done, the knight slips his slick cock from your creamy pussy, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, thrusting away as you slurp him clean.";
	else if kpstatus is 2: [Player squire]
		say "     The bold knight guides you onto all fours. Bare and vulnerable, you shiver as he takes a moment to eye it appreciatively, running a hand between your legs. He fondles your pussy with rough fingers, drawing dewy droplets of feminine lubricant from your depths as he teases your clit. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your wet folds before slowly easing into you, bottoming out. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure. After the initial few thrusts, you start to delight in the fucking you're receiving, and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'Your training begins now. Prepare yourself, squire,' he says as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if committing it to memory. [if Player is male]He reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure. [end if]The sensation of his impressive manhood gliding in and out of you sets your world aflame, sending tingles through your body as he stirs your innards with long thrusts, slapping his balls against your nether lips until they sting. It's all worth it of course, to serve your noble knight, as he deserves!";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you gush around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against your womb. Once done, the knight slips his slick cock from your creamy pussy, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, thrusting away as you slurp him clean.";
	else if kpstatus is 3: [Player human]
		say "     The bold knight guides you onto all fours. Bare and vulnerable, you shiver as he takes a moment to eye it appreciatively, running a hand between your legs. He fondles your pussy with rough fingers, drawing dewy droplets of feminine lubricant from your depths as he teases your clit. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your wet folds before slowly easing into you, bottoming out. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure. After the initial few thrusts, you start to delight in the fucking you're receiving, and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'Rejoice, peasant. It's not often that one as lowborn as yourself enjoys the attentions of one of my station,' he says pompously as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if committing it to memory. [if Player is male]He reaches around to take hold of your erection, stroking it in time to his thrusting, adding to your pleasure. [end if]The sensation of his impressive manhood gliding in and out of you sets your world aflame, sending tingles through your body as he stirs your innards with long thrusts, slapping his balls against your nether lips until they sting. Still, you endure, knowing that resistance will draw his ire";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you gush around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against your womb. Once done, the knight slips his slick cock from your creamy pussy, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, thrusting away as you slurp him clean with watering eyes.";
	else if kpstatus is 4: [Player creature]
		say "     The bold knight pushes you onto all fours. Eyeing your pussy with a lecherous grin, he jams his fingers into your pussy, his voice echoing in your ears. 'For a beast, you've got a pleasant enough hole. I suppose I won't have to be gentle. Rutting males wouldn't offer you that kindness.' Rough fingering squeezes wetness from your aching pussy, and you grit your teeth, determined not to enjoy the knight's unwanted advances. Finally, his calloused fingers slurp free from your drooling cunt and he lines himself up, gripping your hips and sliding his stiff shaft against your wet folds before slamming himself to the root with a grunt. You can't help but hiss between clenched teeth at the intrusion, his enlarged manhood bringing unwanted pleasure along with throbbing pain. After the initial few thrusts, you give in to your carnal side and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'So you see, filthy beast, the might and vigor of a noble knight,' he says with a sneer as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if to sear your humiliation into your memory. The feel of his impressive manhood gliding in and out of you soon drags an unbidden moan from your clenched lips, and you subtly push back, earning a chuckle and a slap to your ass.";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you gush around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against your womb. Once done, the knight slips his slick cock from your creamy pussy, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, smearing his cock over your face and demanding your subservience with a condescending tone. 'Suckle, foul beast. Perhaps civilized seed will tame your savage heart.' You contemplate biting his cock, but your exhaustion gets the better of you and you lap the mess away like a defeated dog.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Knight";
	CreatureSexAftermath "Player" receives "OralCock" from "Knight";

to say knightwins_anal:
	if kpstatus is 1: [Player knight]
		say "     The bold knight guides you onto all fours. Bare and vulnerable, you shiver as he takes a moment to eye it appreciatively, running a hand between your legs. He fondles your ass with rough fingers, spitting on your upturned hole and jabbing his fingers past your clenching pucker to explore your inner walls. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your slickened pucker before slowly easing into you, bottoming out. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure. After the initial few thrusts, you start to delight in the fucking you're receiving, and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'Is this not the finest way to end a battle, my errant knight?' he says as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if committing it to memory. Reaching around to [if Player is male]take hold of your erection,[else]rub your nullified bulge[end if] stroking it in time to his thrusting, adding to your pleasure. The sensation of his impressive manhood gliding in and out of you sets your world aflame, sending tingles through your body as he stirs your innards with long thrusts, slapping his balls against your ass cheeks until they sting.";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you clamp around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against inner walls and filling your bowels. Once done, the knight slips his slick cock from your creamy asshole, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, thrusting away as you slurp him clean.";
	else if kpstatus is 2: [Player squire]
		say "     The bold knight guides you onto all fours. Bare and vulnerable, you shiver as he takes a moment to eye it appreciatively, running a hand between your legs. He fondles your ass with rough fingers, spitting on your upturned hole and jabbing his fingers past your clenching pucker to explore your inner walls. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your slickened pucker before slowly easing into you, bottoming out. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure. After the initial few thrusts, you start to delight in the fucking you're receiving, and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'Your training begins now. Prepare yourself, squire,' he says as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body in a mix of groping and caressing. [if Player is male]take hold of your erection,[else]rub your nullified bulge[end if] stroking it in time to his thrusting, adding to your pleasure. The feel of his impressive manhood gliding in and out of you[if Player is male], pressing at your prostate and drooling[else] as it drools[end if] copious amounts of precum has you grinding back against him with yearning. Seeing your need, he quickens his pace until finally his groaning release unleashes gooey blasts of his semen into your clenching bowels[if Player is male]. You cum hard in response, your cock twitching and throbbing as you drain your [Ball Size Adjective of Player] balls with a lustful moan[end if]. Once done, the knight slips his slick cock from your creamy pussy, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, thrusting away as you slurp him clean.";
	else if kpstatus is 3: [Player human]
		say "     The bold knight guides you onto all fours. Bare and vulnerable, you shiver as he takes a moment to eye it appreciatively, running a hand between your legs. He fondles your ass with rough fingers, spitting on your upturned hole and jabbing his fingers past your clenching pucker to explore your inner walls. Taking your hips in hand, he lines up behind you, sliding his stiff shaft against your slickened pucker before slowly easing into you, bottoming out. You can't help but moan at the intrusion, his enlarged manhood bringing considerable pleasure. After the initial few thrusts, you start to delight in the fucking you're receiving, and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'Rejoice, peasant. It's not often that one as lowborn as yourself enjoys the attentions of one of my station,' he says as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if committing it to memory. Reaching around to [if Player is male]take hold of your erection,[else]rub your nullified bulge[end if] stroking it in time to his thrusting, adding to your pleasure. The sensation of his impressive manhood gliding in and out of you sets your world aflame, sending tingles through your body as he stirs your innards with long thrusts, slapping his balls against your ass cheeks until they sting.";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you clamp around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against inner walls and filling your bowels. Once done, the knight slips his slick cock from your creamy asshole, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, thrusting away as you slurp him clean.";
	else if kpstatus is 4: [Player creature]
		say "     The bold knight pushes you onto all fours. Eyeing your asshole with a lecherous grin, he jams his fingers into it without warning, his voice echoing in your ears. 'For a beast, you've got a pleasant enough hole. I suppose I won't have to be gentle. Rutting males wouldn't offer you that kindness.' Rough fingering squeezes a whimper from your lips, but a wad of spit coats your entrance to ease the way, and you grit your teeth, determined not to enjoy the knight's unwanted advances as he works you open. Finally, his calloused fingers slurp free from your drooling cunt and he lines himself up, gripping your hips and sliding his stiff shaft against your cheeks before slamming himself to the root with a grunt. You can't help but hiss between clenched teeth at the intrusion, his enlarged manhood bringing unwanted pleasure along with throbbing pain as it savages your prostate. After the initial few thrusts, you give in to your carnal side and [if HP of Player > 0]any restraint you may have had quickly slips away[else]your earlier resistance slips away[end if].";
		say "     'So you see, filthy beast, the might and vigor of a noble knight,' he says with a sneer as he quickens his pace and fucks you with added flourish and vigor. His hands roam over your [bodydesc of Player] body, caressing every inch of you as if to sear your humiliation into your memory. The feel of his impressive manhood gliding in and out of you soon drags an unbidden moan from your clenched lips, and you subtly push back, earning a chuckle and a slap to your ass.";
		say "     Quick, jabbing thrusts awaken something inside of you, and before long, you're squirming, begging for more as you gush around that heroic dick. Grabbing your ass and driving hard into you, the knight groans his release as he sends throbbing waves of his seed splashing against your prostate. Once done, the knight slips his slick cock from your creamy asshole, straddling your face and wiping his cock across your lower lip. Slipping his half-hard shaft between your lips for a quick clean, he grips your hair, smearing his cock over your face and demanding your subservience with a condescending tone. 'Suckle, foul beast. Perhaps civilized seed will tame your savage heart.' You contemplate biting his cock, but your exhaustion gets the better of you and you lap the mess away like a defeated dog.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Knight";
	CreatureSexAftermath "Player" receives "OralCock" from "Knight";

to say beattheknight:
	project Figure of Knight_clothed_icon;
	say "     You are victorious over the knight, forcing him to yield. ";
	if kpstatus is 1: [Player Knight]
		say "'You are indeed a brave and powerful knight. I salute you,' he declares with a flourish of his sword before attempting to leave. Over his shoulder, he shoots you a cocky grin. 'I can't imagine you will win our next bout.'";
	else if kpstatus is 2: [Player Squire]
		say "'You are quite strong for a squire. Perhaps it is time you became a knight in your own right? Regardless, I salute you,' he declares with a flourish of his sword before attempting to leave. Over his shoulder, he shoots you a cocky grin. 'Though next time, I think you'll find I won't hold back.'";
	else if kpstatus is 3: [Player Human]
		say "'You are surprisingly strong and well-trained for a peasant. You might make a good knight if you took up a noble cause. Regardless, I must declare you the victor,' he says with a nod while sheathing his sword before attempting to leave. Over his shoulder, he shoots you a cocky grin. 'Though first, you'd have to apprentice under a knight. Find me again if you wish to serve me.'";
	else: [any other Player]
		say "'You are a powerful beast. Perhaps one day we will do epic battle again, but for now, you are the victor,' he declares, withdrawing with his sword still drawn. A lecherous grin spreads across his face, and you swear you see the piece of armor above his crotch twitch as he continues. 'Should you renounce your evil ways, perhaps you could become a captive beast. I'll admit, you are not unpleasing to the eye.'";
	LineBreak;
	say "     [bold type]Do you allow the knight to leave? He attacked you, and that usually has consequences in this city...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Just let the weird guy go. The less time you have to spend with him the better.";
	say "     ([link]N[as]n[end link]) - Stop him and give a reminder that he owes you a boon. There's a bunch of fun you could have with him.";
	if Player consents: [let him go]
		LineBreak;
		say "     Shaking your head, you decide against stopping the strange knight, allowing him to retreat from view. You're not in the mood. Shouldering your pack, you continue exploring, putting the knight from your mind.";
	else:
		if kpstatus is 1: [Player Knight]
			say "     Stopping the knight in his tracks, you push him back onto his ass, admonishing him for his rudeness. In these lands, a knight has to offer his betters a token of their affection. Such a blatant violation of the chivalric code requires punishment! Taken aback, the knight mulls over your words, then swallows, setting aside his sword and shield. 'Forgive mine rudeness then. I was not aware of the traditions of this land. How might I correct mine egregious error?' Dropping to one knee, he bows before you, his short, sweat-dripping hair messy from your fight.";
		else if kpstatus is 2: [Player Squire]
			say "     Stopping the knight in his tracks, you block his path, swallowing as you prepare to confront a knight despite your lowly station. Stumbling over your words, you explain that to commemorate your victory, you would like to test the knight's sexual prowess. Disappearing without allowing you this boon would be an unchivalrous thing to do. Taken aback, the knight mulls over your words, then smirks, setting aside his sword and shield. 'Forgive mine rudeness then. I was not aware of the traditions of this land. How might I correct mine egregious error?' Standing before you, he crosses his arms, awaiting your answer as his face and short hair glisten with sweat from your altercation.";
		else if kpstatus is 3: [Player Human]
			say "     Stopping the knight in his tracks, you block his path, indignantly demanding to know what the fuck is wrong with him. You were going about your own business, and he attacked you. Isn't it a knight's duty to protect the 'peasants' rather than accost them? Scoffing at your words, the knight sets aside his sword and shield, running a hand through his hair and shaking his head. 'Thou art full of courage, peasant. Alright, I shall grant thou this boon. How do you wish to exact your vengeance? Speak up.'";
		else: [any other Player]
			say "     Stopping the knight in his tracks, you confront him about his arrogant, awful comments about your appearance. This 'beast' just kicked his ass. Does he think he can walk away from you without repercussions? If you endure his abuse, you'll get something out of it! Taken aback, the knight laughs, looking you up and down. 'Perhaps I was wrong about thou, beast. Allow me to apologize for mine behavior. How might I atone?' His apology sounds condescending, but he awaits your answer, arms crossed and eyebrow cocked.";
		say "[RandomKnight_SexMenu]";

to say RandomKnight_SexMenu:
	project Figure of Knight_clothed_icon;
	say "     [bold type]What exactly do you want to do with the handsome knight?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Willingly suck his cock and worship his sweaty body";
	now sortorder entry is 1;
	now description entry is "He's hot and sweaty and you want a taste! Get on your knees and show the knight a good time";
	[]
	if Player is male: [male+herm+dick only]
		choose a blank row in table of fucking options;
		now title entry is "Demand he worship your dick";
		now sortorder entry is 2;
		now description entry is "Make him clean your cock and empty your balls";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Willingly ride his cock, for your shared pleasure";
	now sortorder entry is 3;
	now description entry is "Ride his dick! You're taking charge and you're going to use his cock as a toy";
	[]
	if Player is male: [male+herm+dick only]
		choose a blank row in table of fucking options;
		now title entry is "Sink your cock into the knight's tight hole";
		now sortorder entry is 4;
		now description entry is "Sheathe yourself in the muscular man's ass";
	[]
	if Player is female: [female+herm+pussy only]
		choose a blank row in table of fucking options;
		now title entry is "Demand he worship your pussy";
		now sortorder entry is 5;
		now description entry is "Make him eat you out until you coat his face with your pussy nectar";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk the knight";
	now sortorder entry is 6;
	now description entry is "Milk a hot bottle of knightly seed from him for reasons unknown";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Willingly suck his cock and worship his sweaty body"):
					say "[Knight_Random_GiveBJ]";
				else if (nam is "Demand he worship your dick"):
					say "[Knight_Random_GetBJ]";
				else if (nam is "Willingly ride his cock, for your shared pleasure"):
					say "[Knight_Random_RideCock]";
				else if (nam is "Sink your cock into the knight's tight hole"):
					say "[Knight_Random_AssFuck]";
				else if (nam is "Demand he worship your pussy"):
					say "[Knight_Random_PussyLick]";
				else if (nam is "Milk the knight"):
					say "[Knight_Random_CumBottle]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Changing your mind about this whole thing, you tell the knight that he's released from his obligation - this time. 'Peculiar folk reside in this domain,' he comments with a raised eyebrow, then shrugs. 'Very well, I will take my leave then. Goodday, my worthy opponent.'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Knight_Random_GiveBJ:
	project Figure of Knight_clothed_icon;
	say "     The scent pouring off of the sweaty man is intoxicating, and as you breathe it in, standing before him, you can't help the ideas streaming into your head. You may have won, but the thought of giving yourself to this hunk of man grows by the second. Steeling yourself, you broach the subject, asking if the knight would let you inspect the battle-hardened body beneath his armor. 'Peculiar... Perhaps thou wouldst be more at home presenting thyself?' The knight teases you, flexing one of his biceps and grinning. 'I jest. No doubt you could smite me twice over in my weakened state.' Starting to disrobe, he pauses, then offers you his arm. 'Thou wish to peek beneath mine armor? Then 'tis only fair that the work falls to thy capable hands.'";
	say "     Somehow, even after you beat the knight, he disarmed you with that devilishly handsome smile. Without thinking, you reach out, fingers releasing the straps of the knight's bracers, and peeling them away, revealing glistening, tanned, muscled forearms with corded veins. Swinging a sword must be quite the workout. Next, your trembling fingers work their way up those bulging biceps, rolling over steely muscles slippery with sweat. Looking from the knight's handsome smirk to the prize under your fingertips, you lean in, rolling your tongue over bare skin and barely suppressing a moan. There's a manly funk wafting from him, and you're sure heavy armor has contributed to it, filling your nose with unfiltered masculinity as you nuzzle closer to his underarms.";
	WaitLineBreak;
	project Figure of Knight_clothed_shirtless_icon;
	say "     '[']Tis intoxicating, is it not?' The knight helps you, lifting his arm and loosening the straps hiding his muscular torso behind that metal plate. 'The scent of a real man. Many a squire has spent hours acquainting themselves with my body.' His words are a low, vibrating growl, and you're sure that he's enjoying the attention, arrogant as he is. Your hands shake as you navigate the breastplate, but it falls to the ground with a clatter just as you reach the moist underarms peeking from beneath those toned arms. The knight's chest was bare beneath the armor! Somehow, that fact is exciting. It's as if he was trying to provide an erotic show for you. 'Lick.' The knight demands as you breathe in his scent, inches from a sparse patch of hair dripping with moisture. Shoving you into his pit and demanding subservience with his iron grip, the knight forces your face into musky darkness, overwhelming your senses with masculine drippings.";
	WaitLineBreak;
	project Figure of Knight_clothed_undies_icon;
	say "     With an empty-headed moan, you bask in the heady scent, your tongue slipping out to suck the sweat from his hair. The degradation of the act only adds to your enjoyment, dragging muffled moans from your throat. Before long, you're all but suckling, thrusting your hips forward to relieve your needy sex. 'Disrobe.' The knight murmurs with approval dripping from his voice, stepping out of his lower armor and revealing a pulsing bulge clad in a thin cloth undergarment. 'I would not want to stain thy clothing.' While his speech seems polite, you feel his arrogance shining through since he thinks you'll suck his cock. He's right, but his assumption is rude. Unbidden, you drop to your knees and bury your nose in that twitching bulge, shuddering as it awakens under your heated breath. His scent is more concentrated around his cock, and a wet patch appears at the tip of his hardening member. You groan aloud, hooking your fingers in his waistband and tugging them down, nearly slapping yourself in the face with that half-hard shaft.";
	WaitLineBreak;
	project Figure of Knight_hard_icon;
	say "     You don't need the knight to tell you what to do. Nuzzling against that drooping tip, you suckle at his foreskin, tugging at it with your teeth and darting forward to capture his cockhead as his dick jumps. Inch after inch hardens between your lips, aided by your bobbing head, and before long, he's sheathed fully in your mouth, with glistening pubes surrounding your snuffling nose. 'Gods. Thy mouth is a thing of beauty.' Praising your efforts, the knight rests his hand on the back of your head, urging you on as you eagerly slurp at his shaft, your free hand frantically masturbating your needy genitals. His breath grows ragged within moments, and you feel pride at working him up. Splashes of pre herald his enjoyment, and his twitching cock seems ready to blow at any second, bucking like a wild, unbroken horse. The knight's hands shove you against his crotch as his cock erupts, working that ten-inch cock between your eager lips and threatening your throat with every thrust. All you can do is gulp his seed and try to stop yourself from passing out, squirting your desire to the ground below as you frantically [if Player is female]finger yourself to completion[else if Player is male]stroke yourself to completion[end if].";
	say "     Once your legs recover from your orgasm, you stand on weak footing, leaving the knight to sit and stroke his flagging cock. Sparing him one last longing glance and licking your lips of his essence, you gather your equipment and continue on your way. Perhaps you'll return for another taste later.";
	CreatureSexAftermath "Player" receives "OralCock" from "Knight";

to say Knight_Random_RideCock:
	project Figure of Knight_hard_icon;
	if Player is female: [pussy available]
		say "     As you look over the knight, your eyes settle on his crotch. If his bulging armor is any indication, he's packing something beautifully long beneath its shiny metal, and you want a piece of his hard manhood. Telling him so, you start to disrobe, watching as the knight reveals a bulging pair of underwear and feeling your nethers twitch with desire. Usually, a knight rides a loyal steed, but perhaps it's time for the knight to be the mount. Readying yourself, you climb onto the kneeling knight's lap, slipping your arms around his broad shoulders and wiggling your hips until his growing erection slips between your cheeks. Slowly rolling your cheeks against the head of his hooded cockhead, you lean in, kissing the knight and moaning against his lips as his hands take their place on your rounded rump. You sigh as the knight guides himself into your pussy, delighting in the stretching sensation of a well-hung manhood as you welcome him to the root. You're slow at first as you trail your lips along his shaft, but before long, you're bouncing at a breakneck pace, your kiss growing wetter and more desperate as his beard scratches against your cheeks.";
		say "     The knight is happy to grab onto your bouncing hips and hang on for dear life, meeting your display of tonguesmanship with eager lips and hard thrusts. Judging by his desperately pumping hips, he's already close, and you doubt your sloppily clamping inner muscles are helping things. Still, the look of intense concentration on his face is oddly endearing. He's trying *so hard* to show off his stamina. Breaking your kiss, you decide to help the knight, sucking and mouthing at his neck as you feel his heartbeat quicken and his breath come in wheezing pants. Before long, he's pounding into you, slamming home and basting your cervix in thick, virile cream. You're not long behind, gushing around the knight's shaft as he pumps you full of concentrated baby-batter, your pussy clenching to milk every drop. As he slips out of you, half-hard and spent, you rest against him, panting into his chest and feeling his essence drool from your abused hole.";
		WaitLineBreak;
		say "     You spend a few moments listening to the exhausted knight breathing before you decide that it's time to move on. Gathering your gear, you leave him to fall backward next to his gear, his cock still drooling seed. He should be fine. He has his sword to fight off any mutants, and somehow, you think he'd enjoy the challenge. Shouldering your pack, you imagine the naked knight slaying a dragon with nothing but a sword and a shield. How absurd.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Knight";
	else: [assfucks ho!]
		say "     As you look over the knight, your eyes settle on his crotch. If his bulging armor is any indication, he's packing something beautifully long beneath its shiny metal, and you want a piece of his hard manhood. Telling him so, you start to disrobe, watching as the knight reveals a bulging pair of underwear and feeling your nethers twitch with desire. Usually, a knight rides a loyal steed, but perhaps it's time for the knight to be the mount. Readying yourself, you climb onto the kneeling knight's lap, slipping your arms around his broad shoulders and wiggling your hips until his growing erection slips between your cheeks. Slowly rolling your cheeks against the head of his hooded cockhead, you lean in, kissing the knight and moaning against his lips as his hands take their place on your rounded rump. You sigh as the knight guides himself into your ass, delighting in the stretching sensation of a well-hung manhood as you welcome him to the root. You're slow at first as you trail your pucker along his shaft, but before long, you're bouncing at a breakneck pace, your kiss growing wetter and more desperate as his beard scratches against your cheeks.";
		say "     The knight is happy to grab onto your bouncing hips and hang on for dear life, meeting your display of tonguesmanship with eager lips and hard thrusts. Judging by his desperately pumping hips, he's already close, and you doubt your sloppily clamping inner muscles are helping things. Still, the look of intense concentration on his face is oddly endearing. He's trying *so hard* to show off his stamina. Breaking your kiss, you decide to help the knight, sucking and mouthing at his neck as you feel his heartbeat quicken and his breath come in wheezing pants. Before long, he's pounding into you, slamming home and basting your bowels in thick, virile cream. You're not long behind creaming the knight's toned abs as your shaft sprays its desire, mimicking the pulsing sword filling your ass to the brim. As he slips out of you, half-hard and spent, you rest against him, panting into his chest and feeling his essence drool from your abused hole.";
		WaitLineBreak;
		say "     You spend a few moments listening to the exhausted knight breathing before you decide that it's time to move on. Gathering your gear, you leave him to fall backward next to his gear, his cock still drooling seed. He should be fine. He has his sword to fight off any mutants, and somehow, you think he'd enjoy the challenge. Shouldering your pack, you imagine the naked knight slaying a dragon with nothing but a sword and a shield. How absurd.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Knight";

to say Knight_Random_GetBJ:
	project Figure of Knight_clothed_icon;
	say "     You breathe in the scent pouring off your body, glistening with sweat from exertion, and you smirk, your mind filling with deliciously erotic ideas for punishing the knight's arrogance. You should be in charge, not some blowhard in a tin can! Stripping as the night watches with a cocked eyebrow, you explain that you'd like him to worship your body. A chivalrous knight would show his betters reverence! The knight mulls over your words, his eyes lingering on your crotch. After a moment, he nods. 'Thy words ring true. I cannot, in good conscience, depart without giving thy due.' Armor clattering, he kneels before you, his experience in pleasing others showing as he presses his nose against your crotch, breathing deeply as though committing your scent to memory.";
	say "     Gripping short hair, you smear sweat over the knight's beard, delighting in the prickly sensation of his beard and mustache against your cockhead. His lips part, and his tongue trails over your tip, drawing a groan from your lips as you stuff yourself into his mouth. You're not gentle, drawing wet gags from the knight's mouth as you shove yourself home, but he doesn't resist your advances, gurgling with half-lidded emerald eyes and drooling down your shaft. Where's his arrogance now? You can't help but taunt him as you fuck his face, delighting in the defeated, muffled noise that vibrates around your dick. It isn't long before the knight's clenching throat brings you to the edge of orgasm, and his subservience confronts you with a decision.";
	say "     [bold type]Do you mark his bearded face with your cum, giving him something to remember you by until he can wash his face, or do you cum in his throat and hold yourself there until he sucks you dry?[roman type][line break][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Cum on his face. That beard looks like it deserves a coat of jizz.";
	say "     ([link]N[as]n[end link]) - Bury yourself in his throat and cum!";
	if Player consents:
		LineBreak;
		say "     Ripping your cock from the knight's talented lips, you flop your saliva-slickened spire against his face, gritting your teeth as you grind your way through your orgasm. Every inch of his face, from his hair to his beard, drips with your seed. By the time you're sated, he can barely open his eyes, rubbing his manhood through his armor in a shameful display of whorish delight. As you dress, you watch the knight stroke his freed shaft with his armor still on. Somehow, the image is even more erotic, and you pause to admire the arc of his cum coating his armor, marking him with his submissiveness. Hopefully, cum doesn't cause rust- though you doubt that the knight minds, based on the cross-eyed, fucked-silly expression on his face. You leave him to pleasure himself, confident that he'll think twice about accosting you in the future. Unless, of course, he wants another faceful of seed.";
	else:
		LineBreak;
		say "     Pushing yourself to the root, you slap your musky balls against the knight's chin, drawing wet gags from the limp man's throat and sending twin streams of cum shooting from his nose. By the time you're sated, his eyes are dull, and he's openly masturbating through his armor. Muffled moans vibrate through your cock until you slurp free, allowing him to suck grateful, though cum-tainted breaths.";
		LineBreak;
		say "     Surveying the mess you've made of the knight, you can't help but wonder if it was enough. You could get him to clean your leaking shaft and sweaty balls. [bold type]Do you want to add insult to injury and force him to bury his face in your balls, cleaning the mess he made?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes. He's made a mess of your crotch. He'd better clean it up!";
		say "     ([link]N[as]n[end link]) - No, the poor knight has had enough for now.";
		if Player consents:
			LineBreak;
			say "     Gripping the knight's hair, you stuff his face behind your balls, holding him there until you feel his tongue start to lick, then trailing every inch of your orbs over his face, letting your cock rest between his eyes as he sucks each nut into his mouth, polishing it dutifully. By the time he's finished, your soft cock and sagging balls shine with spit, as clean as they'll get. As you dress, you watch the knight stroke his freed cock with his armor still on. Somehow, the image is even more erotic, and you pause to admire the arc of his cum coating his armor, marking him with his submissiveness. Hopefully, cum doesn't cause rust- though you doubt that the knight minds, based on the cross-eyed, fucked-silly expression on his face. You leave him to pleasure himself, confident that he'll think twice about accosting you in the future.";
		else:
			LineBreak;
			say "     As you dress, you watch the knight stroke his freed cock with his armor still on. Somehow, the image is even more erotic, and you pause to admire the arc of his cum coating his armor, marking him with his submissiveness. Hopefully, cum doesn't cause rust- though you doubt that the knight minds, based on the cross-eyed, fucked-silly expression on his face. You leave him to pleasure himself, confident that he'll think twice about accosting you in the future.";
	CreatureSexAftermath "Knight" receives "OralCock" from "Player";

to say Knight_Random_PussyLick:
	project Figure of Knight_clothed_icon;
	say "     You breathe in the scent pouring off your body, glistening with sweat from exertion, and you smirk, your mind filling with deliciously erotic ideas for punishing the knight's arrogance. You should be in charge, not some blowhard in a tin can! Stripping as the knight watches with a cocked eyebrow, you explain that you'd like him to worship your body. A chivalrous knight would show his betters reverence! The knight mulls over your words, his eyes lingering on your crotch. After a moment, he nods. 'Thy words ring true. I cannot, in good conscience, depart without giving  thy due.' Armor clattering, he kneels before you, his experience in pleasing others showing as he presses his nose against your crotch, breathing deeply. Gripping short hair, you smear sweat and feminine juices over the knight's beard, delighting in the prickly sensation of his beard and mustache against your sex. His lips part, and his tongue trails over your clit, drawing a groan from your lips as you ride his face like a toy.";
	say "     You're not gentle, drawing wet moans from the knight's mouth as you shove your mound against his mouth, but he doesn't resist your advances, groaning with half-lidded emerald eyes and drooling against your grinding pussy. Where's his arrogance now? You can't help but taunt him as you fuck yourself on his face, delighting in the defeated, muffled noises that vibrate against your pussy lips. It isn't long before the knight's slurping tongue brings you to the edge of orgasm, and his subservience sends your orgasm to new heights. Pushing yourself against his lapping maw, you grind your musky pussy against the knight's chin, drawing wet sloppy sounds from his lapping tongue and sending feminine nectar down his beard. By the time you're sated, his eyes are dull, and he's openly masturbating through his armor. Muffled moans vibrate through your pussy until you pull away, allowing him to suck grateful, though fem-cum-tainted breaths.";
	WaitLineBreak;
	say "     As you dress, you watch the knight stroke his freed cock with his armor still on. Somehow, the image is even more erotic, and you pause to admire the arc of his cum coating his armor, marking him with his submissiveness. Hopefully, cum doesn't cause rust- though you doubt that the knight minds, based on the cross-eyed, fucked-silly expression on his face. You leave him to pleasure himself, confident that he'll think twice about accosting you in the future.";
	CreatureSexAftermath "Player" receives "OralPussy" from "Knight";

to say Knight_Random_CumBottle:
	project Figure of Knight_hard_icon;
	say "     You don't particularly want to have sex with the knight but feel you could use a bottle of his cum. Your reasoning is unclear, but you heed your whim, asking the knight to strip, readying an empty plastic bottle from your pack. The knight scoffs at your request, tossing aside pieces of his armor and taking hold of his cock, stroking its growing length. 'Mine seed? I shall give it gladly. Thou are peculiar. Most would rather drink from the tap.' Working his shaft to its full 10 inches, he steps closer, slotting his drooling tip against the bottle's mouth. 'Watch closely. A hero's cock is a thing to behold.' Feverishly stroking, the knight pumps his hips as a drooling river of precum fills the bottom of the bottle. He wasn't lying, his cock is impressive, and the longer you watch, the more you wonder if you should have asked for a more direct donation of his seed. You aren't given long to muse, though, as the knight grunts his finish, his seed arcing within the bottle as his bucking cockhead threatens to knock the bottle from your fingers. By the time he finishes, it's nearly half-full, and as he pulls back,  his cockhead drools across your fingertips, marking your hand with his scent.";
	say "     Leaving the knight to recover from his stroking session, you thank him for the bottle of his essence, tucking it into your pack after screwing its lid on. As you walk away, he flops, idly stroking his flagging shaft and dozing on the ground.";
	LineBreak;
	ItemGain knightly seed by 1;
	CreatureSexAftermath "Knight" receives "Stroking" from "Player";

to say Knight_Random_AssFuck:
	project Figure of Knight_soft_icon;
	say "     That muscular ass, covered by a layer of armor, calls to you. You wonder if it's tight and virginal or if the knight's been giving his ass to other warriors. Perhaps it's time to find out. Bluntly, you ask if the knight will bend over for you. To the victor goes the spoils, as they say. And your spoils will be a ride on his tight ass! A grin splits the knight's handsome face, and he turns, tugging at his armor until soft cheeks lightly dusted with black hair peek through the gap, wagging his rear at you. 'Eager to taste the hole of a hero?' He chuckles, shrugging the rest of the way out of his armor and bending over, spreading those muscular cheeks with one hand. 'Sheath thy sword. No need for a lengthy preamble.' Tearing off your clothes, you take the opportunity to flop your cock between those muscular cheeks, sawing your length against his hole and biting your lower lip as sweating heat envelops cock's sensitive underbelly. You can't resist for long, and thankfully your tip drools enough lube that you slip straight in, penetrating sweltering depths.";
	WaitLineBreak;
	project Figure of Knight_hard_icon;
	say "     He's tight enough that your cock aches, but your shaft glides effortlessly, showing his pucker's experience in accepting insertions. Without wasting a moment, you hump away, encouraged by the knight's lusty groans and eager masturbation. Minutes pass with nothing but masculine groans and increasingly wet slaps, moistened by sweat and pre. Wiping your brow, you take hold of those muscular cheeks, fighting the rising tide as inner walls wring your cock like over-eager fists. You don't want to finish before your eager thrusts get the knight off, but you're barely hanging on! Thankfully, before you explode, a baritone sound of pleasure rings out, and you feel the telltale rhythmic clench of orgasm milking your cock, demanding your seed. You bottom out, adding your voice to the sounds of pleasure and draping yourself over the knight's back, your legs giving out as your balls empty in heavy spurts, filling the knight's experienced backdoor.";
	WaitLineBreak;
	say "     You ride out your orgasm in relative silence, pulling your sensitive cock from clutching depths and admiring the knight's reddened hole as it drools seed between those muscular cheeks. Tucking yourself into your pants, you leave the knight there, still stroking himself and mumbling about 'thy sword.' Somehow, you think he might enjoy submitting more than he admits.";
	CreatureSexAftermath "Knight" receives "AssFuck" from "Player";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Knight" to infections of HumanList;
	add "Knight" to infections of HistoricalList;
	add "Knight" to infections of NatureList;
	add "Knight" to infections of MaleList;
	add "Knight" to infections of BipedalList;
	now Name entry is "Knight"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
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
	now cock change entry is "it pulses and throbs in arousal. Precum dribbles out with each pulse and your cock-flesh changes as well. By the time you orgasm from the transformation, you're left with a very human-looking cock";
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
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is "stray links"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 44; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "knight milk";
	now CumItem entry is "knightly seed";
	now TrophyFunction entry is "[GenerateTrophyList_Knight]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]toned[or]muscled[or]fit[at random]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"stray links"	"A few stray links of chainmail that appear to have come off of something larger."	1	stray links

stray links is a grab object.

Usedesc of stray links is "[straylinkseffect]";

to say straylinkseffect:
	LineBreak;
	say "     You take out a handful of the chainmail links you found earlier and roll them around in your hand. As you do this, their number decreases as they disappear unnoticed into your palm. By the time you take notice of this, the tingles of infection has spread into you.";
	infect "Knight";

instead of sniffing stray links:
	say "The small links of metal have no particular scent to them.";

Table of Game Objects (continued)
name	desc	weight	object
"knightly seed"	"A small plastic bottle, halfway filled with white-ish opaque fluid. One could mistake it for some sort of thick beverage, if someone hadn't written 'knightly seed' across a label on its front. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	knightly seed

knightly seed is a grab object.
knightly seed is temporary.
knightly seed is cum.
knightly seed is infectious.
Strain of knightly seed is "Knight".
Usedesc of knightly seed is "[KnightCumUse]";

to say KnightCumUse:
	say "     Following the strange urge you have, you slam back the bottle of knightly seed you found. It has a light, not unpleasant taste to it that stays with you for a while, clinging to your tongue and the back of your throat. ";
	LibidoBoost 5;
	PlayerDrink 5;

the scent of knightly seed is "The contents of the bottle have the unmistakable scent of human semen.".

Table of Game Objects (continued)
name	desc	weight	object
"knightly man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Knightly Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	knightly man-milk

knightly man-milk is a grab object.
knightly man-milk is milky.
Purified of knightly man-milk is "distilled milk".
knightly man-milk is infectious.
Strain of knightly man-milk is "Knight".
Usedesc of knightly man-milk is "[knightly man-milk use]";

to say knightly man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the knightly man-milk run over your tongue and down your throat. Tastes rich and filling. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing knightly man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really, though there's a hint of something flowery and luxurious.";

[
Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Knight Infection"	"Infection"	""	Knight Infection rule	1000	false

This is the Knight Infection rule:
	if Player has a body of "Knight":
		trigger ending "Knight Infection"; [Here it states, that the ending has been played.]
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
