Version 1 of Male Peacock For FS by Nuku Valente begins here.


"Adds a Male Peacock to Flexible Survival's Wandering Monsters table."


Section 1 - Monster Responses


peacockcontrol is a number that varies.

to say peacockskin:
	if cock length of player > cunt length of player:
		say "blue and green feathers covering your";
	otherwise:
		say "brown-hued feathers covering your";

to say peacocktail:
	if cock length of player > cunt length of player:
		say "You have a beautiful fan of feathers for tail.  They are decorated with hypnotic eyes.";
	otherwise:
		say "A feathered tail encircles decorates your rear, like half of a long skirt.";

to say peacockasschange:
	if cock length of player > cunt length of player:
		say "feathers emerges from it.  They form a peacock tail, that you are able to fan with ease";
	otherwise:
		say "brown feathers emerge from it.  They form a tail that comes down to your knees";

to say peacockdesc:
	say "A tall blue bird emerges from an alley.  He has a pretty blue and green plumage, and he greets you by fanning its tail.  He doesn't seems to be aggressive, though.  Maybe you could just relax... and have some friendly chat... those feathers are so... beau - wait, what the hell?  You don't know why you were thinking that!  Surely he must be the cause of this dizziness, you[']d better end this battle quickly...";
	now peacockcontrol is 0;

to say peacockattack:
	say "[one of]While you are trying to hit the feathered enemy, he trips you!  You fall flat to the ground.[or]He pushes you and flees back out of range, laughing.[or]He jumps on your shoulders as you try to grab him, and then he jumps back on the ground.  Is he mocking you?[or]The bird flaps a few feet back and fans his tail wide, waving his colourful plumage.[at random]";
	say "You take no damage.";
	increase peacockcontrol by a random number between 1 and 5;
	if peacockcontrol is greater than intelligence of player:
		now fightoutcome is 22;
		lose;

to say peacockvictory:
	now peacockcontrol is 0;
	say "You are not able to think clearly anymore.  You find yourself standing up and facing the avian, your thoughts mixed in a blur.  He beckons you to follow him; you have no choice but to walk with him into what seems a well-maintained apartment.";
	if cunts of player > 0:
		say "You feel a bit better now... you can think more clearly, as if the leash in your brain has been loosened.  You don't think you would be able to actually oppose what is about to happen, though...";
		say "He motions towards the bed in the middle of the room.  You obediently lie on the mattress, while he looks at your body with unmistakable lust, his cock already poking out of his slit.  He slides over your body... it feels like a light, warm blanket.  You think that maybe this won't be SO bad after all...";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "After you don't know how much pleasant time, you find yourself back in the city, no idea how or when.  You quickly realize that finding him will be practically impossible by now... then you realize just now that your body may have changed...";
	otherwise:
		say "He orders you to sit on the bed.  You have no choice but to obey, your body out of your control.  He examines you and, to your surprise, he sighs, mildly irritated.  'Look,' he says, 'it will be better for both of us if you won[']t remember this...'. Before you can reply, he fans his tail again...";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "...then you find yourself back in the city?  You don't remember how did you come here, or what happened in the apartment, or even where that was... and then it occurs to you that you should check what happened to your body.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


When Play begins:
	add "peacock" to infections of guy;
	add "peacock" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "peacock";
	now attack entry is "[peacockattack]";
	now defeated entry is "The last hit knocks the blue bird on the ground; he gets up quickly and flees away, is pride completely stomped."; [ Text or say command used when Monster is defeated.]
	now victory entry is "[peacockvictory]";
	now desc entry is "[peacockdesc]";
	now face entry is "bird-like head. You pass quite a bit of your time admiring your";[ Face description, format as the text "You have a (your text) face."] 
	now body entry is "tall and slender; your legs are double-jointed and bird-like, while your arms have been mutated into feathered wings, ending with five extra-thick feathers, flexible and mobile as fingers";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[peacockskin]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "[peacocktail]";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]thin red[or]undulated[or]avian-like[at random]";
	now face change entry is "your entire head gets reshaped in the shape of a bird head"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your legs became bird-like, including a painful double joint, and your arms transform into wings. You feel really light... you can[']t fly, though"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "lots of feather sprouts, until you are completely covered"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "[peacockasschange]"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes slim and undulated. It retracts into a new, just formed, slit.  Your balls are permanently absorbed in your body instead"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 6;			[ These are now the creature's stats... ]
	now dex entry is 16;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 20;
	now cha entry is 12;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 20;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 0;			[Amount of Damage monster Does when attacking.]
	now area entry is "High";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 3;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 20;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Peacock feather";			[ Loot monster drops, ]
	now lootchance entry is 35;		[ Chance of loot dropping 0-100 ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]winged[as decreasingly likely outcomes]";
	now type entry is "avian";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "pchypno";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"pchypno"	peacockhypno rule	--	--	--	--	--	--	--	--	intstrike rule


this is the peacockhypno rule:
	choose row monster from table of Random Critters;
	now monsterhit is false;
	follow the intstrike rule;
	if monsterhit is true:
		say "[peacockattack]";
	otherwise:
		say "The peacock tries to distract you with his plumage, but is forced to dodge away!";
	now peppereyes is 0;
	if hp of the player is greater than 0 and libido of player < 110:
		wait for any key;
	otherwise:
		if hp of player <= 0, now fightoutcome is 20;
		if libido of player >= 110, now fightoutcome is 21;
		Lose;
	rule succeeds;


Section 4 - Peacock Feather

peacock feather is a grab object.

Table of Game Objects(continued)
name	desc	weight	object
"Peacock feather"	"A Peacock feather. It looks pretty."	1	Peacock feather

the usedesc of Peacock feather is "[Peacock feather use]";

to say Peacock feather use:
	say "You remember that many were infected and mutated by contaminated food. It seems... no, it[']s stupid, but you bite down the feather anyway.";

Peacock feather is infectious. The strain of Peacock feather is "peacock".

instead of sniffing Peacock feather:
	say "The long feather smells of an avian male and makes your mind foggy momentarily.";


Section 5 - Endings

when play ends:
	if bodyname is "peacock":
		if humanity of player is less than 10:
			if cock length of player > cunt length of player:
				say "You decide to remain in the quarantined city. With your wits and abilities, you will surely find many different... ahem... [']fruits['] to taste.";
			otherwise:
				say "You decide to remain in the quarantined city. You become the mate of a male peacock... or rather, his favorite mate. Neither of you wants to sacrifice his fun, after all...";
		otherwise:
			say "You decide to leave and join civilization. Your pretty look and overall self controlled behaviour gives you a job in what is considered the high society. You still have your... [']teeny sins['], you could say...";
			if cunt length of player > cock length of player:
				if intelligence of player > 18:
					say "One day, however, your mind clicks. You manage to recall everything that the hypnosis altered or blocked completely... and it was actually really pleasant times. Still, you make bag and baggage and set off immediately to the quarantined city. You are determined to find him, and make clear that YOU are going to be in charge now...";


Male Peacock For FS ends here.
