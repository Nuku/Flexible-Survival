Version 1 of Nerdy Mouse by Guest Writers begins here.
[Original by McRabid]
[Version 0.5 - Touch-ups and framework for player victory sex created.]
[Version 1 - Moved to Guest Writers]

"Adds a Nerdy Mouse creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say nerdymousedesc:
	setmongender 3; [creature is male]
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     As you're exploring the Campus Quad you almost literally collide with a short brown mouse [one of]with his nose buried in a book[or]absorbed with a handheld game system[or]reading a comic book[at random]. He's wearing thick circular glasses, a t-shirt [one of]reading 'I get +8 on all of my intelligence rolls'[or]reading 'l337'[or]with a picture of a blue police box[or]with a picture of a wizard casting a spell[at random], a pair of blue jeans and carries a large messenger bag.";
		say "     The mouse stares at you from behind his large glasses for a moment before letting out a startled squeak and jumping away from you. He adopts an almost comical boxing stance before speaking. 'I... I'm not afraid of you stupid bullies anymore! [one of]Allons-y[or]Engage[or]Excelsior[or]Let's get dangerous[or]Roll for initiative[at random]!' he cries, charging in with his arms flailing and his eyes tightly closed.";

to say losetonerdymouse:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     The mouse grins at you and sticks his tongue out mockingly 'Brains over brawn ftw! Ha ha ha! Ha ha ha ha ha!' he arches his back and looks up to the sky as he gives his oddly familiar laugh. After laughing in this manner for an excessively long time, he turns his attention back to you and, empowered by his victory over you, flips you off while grinning.";
		if Player is not male and Breast Size of Player > 0: [no cock and at least an A-cup]
			say "     The rodent freezes as he stares at you. 'Oh crap, oh crap... I... I am so... soooo sorry. I... I was just so caught up in defending myself... Are you okay Miss?' As he talks, he's hurrying to your side to help you up, only to trip over his own feet. The nerd ends up face first between your breasts. Almost immediately you feel a dampness in your cleavage, the little nerd undoubtedly drooling at having a close up with breasts. He pulls back quickly, his face beet red. 'I didn't mean it! I would never do... er... not that you aren't pretty. I just.. prefer girls that have an IQ higher than their bust size.' The mouse's embarrassment had been so cute right up until that point. As if sensing your rising anger, he gives a startled squeak before scampering away as fast as he can.";
		else if Breast Size of Player > 0: [cock + at least an A-cup]
			say "     The rodent freezes as he stares at you. 'Oh crap, oh crap... I... I am so... soooo sorry. I.. I was just so caught up in defending myself... Are you okay Miss?' As he talks, he's hurrying to your side to help you up, only to trip over his own feet. The nerd ends up face first between your breasts. Almost immediately you feel a dampness in your cleavage, the little nerd undoubtedly drooling at having a close up with breasts. The mouse places his paws down to push himself up, one landing right on your crotch. The mouse bolts upright, his face covered in a blush. 'You... have a...' He clears his throat, blushing. 'I didn't mean to grab... I... uh...' He stands quickly, an obvious bulge in his pants, and without another word, bolts as quickly as he can.";
		else if scalevalue of Player < 3: [smaller than average player body]
			say "     He stares at you for a moment before smiling and holding out a paw to help you up. 'Sorry, us little guys really shouldn't be fighting each other. AH CHOO.' His ears flatten back as he looks at you sheepishly. 'I... s-sorry - allergies.' He hands you a tissue so you can wipe your face off. 'I think I'm still allergic to pet dander. At least I'm not a cat or a dog. Then I'd be allergic to myself.' He laughs some before starting to walk away. 'Watch yourself out there.'";
		else:
			say "     'You're the loser now. Jerk!' The mouse, empowered with his victory over you, grows bold and spits on you. Having had enough of this smarmy little bastard you stagger to your feet with fists balled. He gives a terrified squeak before darting off as fast as he can run.";

to say beatthenerdymouse:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     You smirk at the defeated nerd as he slumps to the ground with a whimper. 'You... you're just jealous that I'm smarter than you,' the nerd sniffles as he pushes his glasses back up his maw. You stare at him for some time, giving the nerd enough time to stand back up, but a warning look from you makes him think better of running away. You feel a growing urge to get some payback on the little upstart";
		[This section to be replaced with the lower portion once sex is added]
		say ".";
		say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks[or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse squeaks[or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie[at random]. Satisfied with adding insult to injury you wander away from the humiliated nerd.";

[
	if Player is neuter:
		say ".";
		say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks[or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse squeaks[or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie[at random]. Satisfied with adding insult to injury you wander away from the humiliated nerd.";
	else:
		say ". Shall you go for some [link]sexy fun (1)[as]1[end link], a little [link]kinky payback (2)[as]2[end link] or just go for a [link]final reminder (0)[as]0[end link] to put this nerd in his place?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
		if calcnumber is 1:		[playful sex]
			if Player is female:
				say "***Ride mousie cock. A mix of apologetic and overly eager, but still fun. Finishes quick, but messy.";
			else if anallevel > 1 and a random chance of anallevel in 5 succeeds:
				say "***Ride mousie cock - anal. Tries to refuse, but his body is definitely turned on. Finishes quick, but messy.";
			else:
				say "***Mutual frot. Mousie blushing and shy, but clearly enjoying it.";
		else if calcnumber is 2:	[rough/bully sex]
			if Player is male and anallevel > 1 and a random chance of anallevel in 5 succeeds:
				say "***Anal on mousie.";
			else if Player is herm:
				say "***Force mousie into oral. Make suck cock and lick pussy. Tease how he seems to love that cock and how this is probably the most pussy he'll ever get so he better do a good job.";
			else if Player is male:
				say "***Force mousie into oral. Make suck cock and lick pussy. Tease how he seems to love that cock.";
			else:
				say "***Force mousie into oral. Make suck cock and lick pussy. Tease how this is probably the most pussy he'll ever get.";
		else:
			say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks[or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse squeaks[or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie[at random]. Satisfied with adding insult to injury you wander away from the humiliated nerd.";
]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mouse"; [name of the overall species of the infection, used for children, ...]
	add "Nerdy Mouse" to infections of RodentList;
	add "Nerdy Mouse" to infections of FurryList;
	add "Nerdy Mouse" to infections of NatureList;
	add "Nerdy Mouse" to infections of MaleList;
	add "Nerdy Mouse" to infections of TaperedCockList;
	add "Nerdy Mouse" to infections of SheathedCockList;
	add "Nerdy Mouse" to infections of BipedalList;
	add "Nerdy Mouse" to infections of TailList;
	now Name entry is "Nerdy Mouse";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The mouse blocks another attack from you, while shouting 'Barrier!' by using his messenger bag as a shield. OUCH! What does he have in there anyway?[or]Seemingly recalling a self-defense class, the mouse shouts 'I don't know you! This is my purse!' as he manages to deliver a swift, and very painful, kick right to your groin.[or]'Look behind you! A three-headed monkey!' The mouse shouts, pointing behind you. You turn to look and find nothing, your pride is wounded for falling for the oldest trick in the book, further punctuated by a heady thump of his satchel bag onto your head![or]The mouse flails his balled up fists in your general direction. It would be almost comical if he wasn't actually hitting you.[or]The mouse flails his heavy bag wildly while blocking his face. '[mnfacequote]!' he squeaks with fear. The bag ends up clocking you in the side of the head with a heavy thud.[or]The nerdy mouse swings his little fists wildly with his eyes squeezed tightly shut, some of his frantic blows hitting you.[at random]";
	now defeated entry is "[beatthenerdymouse]";
	now victory entry is "[losetonerdymouse]";
	now desc entry is "[nerdymousedesc]";
	now face entry is "that of an anthropomorphic mouse, complete with large ears and slightly buck teeth"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a lithe mouse with very little definition"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "light tan fur covers your"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your tail is roughly the same length as your body, thin and naked like that of a typical mouse."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "rodent"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your gums start to hurt around your two front teeth, almost like you're teething all over again, your tongue feels over them finding your front teeth have grown larger giving you slightly bucked teeth. Before you're able to fully comprehend this, you feel the very shape of your skull starting to change, growing out into a short muzzle, your ears shift and grow much larger giving your head the appearance of a mouse"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your stomach churns and tightens, as you reach to it you can feel your muscles shrinking along with the rest of you. The focus on your shrinking body moves to the changing shape of your hands and feet as they turn into furless, mouse-like paws"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "you give an idle scratch to your belly to get at a sudden itch. As the itch subsides, you feel thin fur covering the area. A moment later you feel two more spots itching, soon your entire body is just one big itch that you can't scratch. After what feels like hours of scratching your body finally relaxes enough to notice your whole body is now covered in soft, light tan fur"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "An itch forms at your backside, reaching back to scratch at it reveals a change occurring. A tail is growing from the base of your spine. After several minutes you become the proud owner of a naked whip of a tail, like that of a mouse"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "a sudden wave of euphoria shoots through your groin. The feeling leaves you gasping for what feels like hours before you finally compose yourself enough to actually look at your crotch. You find your cock has grown slender and is now covered in a protective sheath when not aroused"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 8;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11;
	now per entry is 9;
	now int entry is 17;
	now cha entry is 11;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 32;
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ] [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "nerdy mouse fur"; 	[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "nerdy mouse cum";
	now TrophyFunction entry is "-";
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lanky[or]skinny[or]lithe[or]short[at random]";
	now type entry is "[one of]rodent[or]murine[or]mousey[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




to say mnfacequote:
	say "[one of]Don't break my glasses[or]Not in the face! Not in the face[or]Larp rules! Larp Rules! Aiming for the head is cheating[at random]";


Table of Game Objects (continued)
name	desc	weight	object
"nerdy mouse fur"	"A tuft of grey and white fur that looks like it has been pulled out of the coat of a mouse. It's nicely soft."	0	nerdy mouse fur

nerdy mouse fur is a grab object. It is temporary.
Usedesc of nerdy mouse fur is "[NerdyMouseFurUse]".
nerdy mouse fur is infectious. Strain of nerdy mouse fur is "Nerdy Mouse".

to say NerdyMouseFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";

instead of sniffing nerdy mouse fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"nerdy mouse cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Nerdy Mouse Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	nerdy mouse cum

nerdy mouse cum is a grab object. nerdy mouse cum is cum.
nerdy mouse cum is infectious. Strain of nerdy mouse cum is "Nerdy Mouse".
Usedesc of nerdy mouse cum is "[nerdy mouse cum use]";

to say nerdy mouse cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing nerdy mouse cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Section 3 - Endings

[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Nerdy Mouse Infection"	"Infection"	""	Nerdy Mouse Infection rule	1000	false

This is the Nerdy Mouse Infection rule:
	if Player has a body of "Nerdy Mouse":
		trigger ending "Nerdy Mouse Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You give in to the vast nerdiness inside your head. After pouring over all of the books you can find in the library you grow bored and desire a more structured path of learning. Wandering around, you eventually find yourself at the College Campus and are overjoyed at the thought of getting a higher education. Almost immediately you find yourself on the receiving end of a wedgie to shouts of 'NERD!'. Ah, sweet academia.";
		else:
			say "     You survived, by some miracle, with your humanity still intact. It takes some time but you finally find a place you fit in, surrounded by those like you, by fellow nerds.";
			if Player is male: [MALE]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player: [F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else: [F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Nerdy Mouse ends here.
