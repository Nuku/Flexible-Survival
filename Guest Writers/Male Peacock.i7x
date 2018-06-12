Version 2 of Male Peacock by Guest Writers begins here.
[Version 2.2 - M/M player loss oral - Stripes]
[- Originally Authored By: Lago Moro -]

"Adds a Male Peacock to Flexible Survival's Wandering Monsters table."

Section 1 - Monster Responses

peacockcontrol is a number that varies.

to say peacockdesc:
	setmongender 3; [creature is male]
	say "     A tall blue bird emerges from an alley. He has a pretty blue and green plumage, and he greets you by fanning its tail. He doesn't seems to be aggressive, though. Maybe you could just relax... and have some friendly chat... those feathers are so...beau - wait, what the hell? You don't know why you were thinking that! Surely he must be the cause of this dizziness, you'd better end this battle quickly...";
	now peacockcontrol is 0;

to say peacockskin:
	if cock length of player > cunt length of player:
		say "blue and green feathers covering your";
	else:
		say "brown-hued feathers covering your";

to say peacocktail:
	if cock length of player > cunt length of player:
		say "You have a beautiful fan of feathers for tail. They are decorated with hypnotic eyes.";
	else:
		say "A feathered tail encircles decorates your rear, like half of a long skirt.";

to say peacockasschange:
	if cock length of player > cunt length of player:
		say "feathers emerges from it. They form a peacock tail, that you are able to fan with ease";
	else:
		say "brown feathers emerge from it. They form a tail that comes down to your knees";

to say peacockattack:
	say "[one of]While you are trying to hit the feathered enemy, he trips you! You fall flat to the ground.[or]He pushes you and flees back out of range, laughing.[or]He jumps on your shoulders as you try to grab him, and then he jumps back on the ground. Is he mocking you?[or]The bird flaps a few feet back and fans his tail wide, waving his colorful plumage.[at random]";
	say "You take no damage.";
	increase peacockcontrol by a random number between 1 and 5;
	if peacockcontrol > intelligence of player:
		now fightoutcome is 22;
		lose;

to say peacockvictory:
	now peacockcontrol is 0;
	choose row monster from the table of random critters;
	if cunts of player > 0:
		say "     You are not able to think clearly anymore. You find yourself standing up and facing the avian, your thoughts mixed in a blur. He beckons you to follow him; you have no choice but to walk with him into what seems a well-maintained apartment.";
		say "     You feel a bit better now... you can think more clearly, as if the leash in your brain has been loosened. You don't think you would be able to actually oppose what is about to happen, though...";
		say "     He motions towards the bed in the middle of the room. You obediently lie on the mattress, while he looks at your [bodydesc of player] body with unmistakable lust, his cock already poking out of his slit. He slides over your [bodydesc of player] body... it feels like a light, warm blanket. You think that maybe this won't be SO bad after all...";
		WaitLineBreak;
		say "     After you don't know how much pleasant time, you find yourself back in the city, no idea how or when. The time you shared with the strange bird is a hazy, yet blissful, blur. You quickly realize that finding him will be practically impossible by now... then you realize just now that your body may have changed...";
	else:
		say "     You are not able to think clearly anymore. You find yourself standing up and facing the avian, your thoughts jumbled and unfocused. He beckons you to follow him; you have no choice but to walk with him into the alleyway.";
		say "     With another flourish of his tail, you drop to your knees in front of him. You can see his growing member emerging from a slit buried in the soft plumage of his crotch. 'I need some relief, so get to it,' he says, rippling those dazzling tailfeathers. Unresisting, you lean in, taking the bird cock into your mouth. Running your hands over his feathered hips, you work that avian shaft with your lips, tongue and palate until finally rewarded with a hot, sticky mess as the bird groans in orgasmic release.";
		WaitLineBreak;
		say "     Once drained, the peacock's shaft withdraws and he gently raises your head back up to look at him and his colorful tail. He gives it a mesmerizing wave and your mind rapidly drifts away. 'It will be better for both of us if you don't remember this... Forget... Forget...' he says softly. You slump over, passing out. When you awaken, you find yourself in an alleyway with no memories of how you'd gotten there, the encounter entirely forgotten.";
		decrease XP of player by lev entry / 2; [no XP from forgotten encounter]
		if ktspeciesbonus > 0, decrease the XP of the player by 1;
		if player is submissive and HP of player > 0, decrease the XP of the player by ( ( 2 + lev entry ) / 5 );

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Peacock" to infections of guy;
	add "Peacock" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Peacock";
	now attack entry is "[peacockattack]";
	now defeated entry is "The last hit knocks the blue bird on the ground; he gets up quickly and flees away, is pride completely stomped."; [ Text or say command used when Monster is defeated.]
	now victory entry is "[peacockvictory]";
	now desc entry is "[peacockdesc]";
	now face entry is "bird-like head. You pass quite a bit of your time admiring your";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "tall and slender; your legs are double-jointed and bird-like, while your arms have been mutated into feathered wings, ending with five extra-thick feathers, flexible and mobile as fingers";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[peacockskin]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "[peacocktail]";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]thin red[or]undulated[or]avian-like[at random]";
	now face change entry is "your entire head gets reshaped in the shape of a bird head"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your legs became bird-like, including a painful double joint, and your arms transform into wings. You feel really light... you can't fly, though"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "lots of feather sprouts, until you are completely covered"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "[peacockasschange]"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes slim and undulated. It retracts into a new, just formed, slit. Your balls are permanently absorbed in your body instead"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 6;
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 20;
	now cha entry is 12;
	now sex entry is "Female"; 					[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 0; [Amount of Damage monster Does when attacking.]
	now area entry is "High"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0; [ Number of Breasts infection will give you. ]
	now breast size entry is 0; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "peacock feather";
	now lootchance entry is 35; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]winged[as decreasingly likely outcomes]";
	now type entry is "avian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "pchypno"; [ Row used to designate any special combat features, "default" for standard combat. ]

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
	else:
		say "The peacock tries to distract you with his plumage, but is forced to dodge away!";
	now peppereyes is 0;
	if HP of the player > 0 and libido of player < 110:
		wait for any key;
	else:
		if HP of player <= 0, now fightoutcome is 20;
		if libido of player >= 110, now fightoutcome is 21;
		Lose;
	rule succeeds;


Section 4 - Peacock Heat / Mating Call [by Stripes]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Peacock"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 2; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "[peacockheattrigger]"; 	[ This is the text that is written to the screen when the player comes into heat]
	now heat start entry is "[peacockheatstart]"; [ This is a to say block that causes things to happen when the player enters heat. for example the GSD sex grows wider. Delete entire line if you wish nothing to happen.]
	now heat end entry is "[peacockheatend]"; [ This is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to its previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[peacockinheat]"; [ This final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is false;
	now mpregtrigger entry is "";

to say peacockheattrigger:
	say "You can feel an increasing dampness in your loins. As you find yourself growing increasingly aroused, something hidden at the back of your mind makes you ";
	if there are no dangerous doors in the location of the player:
		say "want to leave this place and go... somewhere else...";
	else:
		let y be a random dangerous door in the location of the player;
		if marea of Y is "High":
			say "want to head out exploring.";
		else:
			say "want to leave this place and go... somewhere else...";

to say peacockinheat:
	if there are no dangerous doors in the location of the player:
		if a random chance of 3 in 5 succeeds:
			say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat... but not here...[or]A fresh flow of juices trickle down your thighs as your pussy leaks with need. A corner of your mind keeps calling you to satisfy those urges... but not here[or]You are forced to pause and finger yourself as your dripping cunt needs satisfaction. The idea of heading back to the high rise district of town to satisfy your need pops into your head.[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier. Thoughts of finding a sexy peacock to fill you sound very satisfying.[or]The waves of hot lust filling your cunt make you moan as you try to focus, but your thoughts keep wandering back to the high rise district of town.[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where. You grow tired of being here, wanting to go somewhere else now.[purely at random]";
	else:
		let y be a random dangerous door in the location of the player;
		if marea of Y is "High":
			say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat[or]A fresh flow of juices trickle down your thighs as your pussy leaks with need[or]You are forced to pause and finger yourself as your dripping cunt needs satisfaction[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier[or]The waves of hot lust filling your cunt make you moan as you try to focus[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where[purely at random][one of]. You feel a compulsion to go out and look for a male right away[or]. Your thoughts keep wandering back to the peacock you encountered before[or]. Thoughts of finding a sexy peacock to fill you sound very satisfying[or]. The urge to go looking around the neighborhood is foremost in your mind[or]. The idea of going exploring, and maybe finding someone to mate with you, is very appealing[or]. A corner of your mind keeps calling you to go out and satisfy those urges[or]. You out across the neighborhood, you want to go out and look around[or]. You hear the soft chirping of birdsong and you want to go out to find it[purely at random].";
		else:
			if a random chance of 3 in 5 succeeds:
				say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat... but not here...[or]A fresh flow of juices trickle down your thighs as your pussy leaks with need. A corner of your mind keeps calling you to satisfy those urges... but not here[or]You are forced to pause and finger yourself as your dripping cunt needs satisfaction. The idea of heading back to the high rise district of town to satisfy your need pops into your head.[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier. Thoughts of finding a sexy peacock to fill you sound very satisfying.[or]The waves of hot lust filling your cunt make you moan as you try to focus, but your thoughts keep wandering back to the high rise district of town.[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where. You grow tired of being here, wanting to go somewhere else now.[purely at random]";
	increase libido of player by 3;

to say peacockheatstart:
	increase libido of player by 8;

to say peacockheatend:
	if libido of player > 20:
		now libido of player is ( libido of player * 3 ) / 4;
		if libido of player < 20, now libido of player is 20;


Section 5 - Peacock Feather

peacock feather is a grab object. It is a part of the player. It is temporary. peacock feather is infectious. The strain of peacock feather is "Peacock".


Table of Game Objects (continued)
name	desc	weight	object
"peacock feather"	"A peacock feather. It looks pretty."	1	peacock feather

the usedesc of peacock feather is "[peacock feather use]";

to say peacock feather use:
	say "You remember that many were infected and mutated by contaminated food. It seems...no, it's stupid, but you bite down the feather anyway.";

instead of sniffing peacock feather:
	say "The long feather smells of an avian male and makes your mind foggy momentarily.";


Section 6 - Endings

when play ends:
	if bodyname of player is "Peacock":
		if humanity of player < 10:
			if cock length of player > cunt length of player:
				say "You decide to remain in the quarantined city. With your wits and abilities, you will surely find many different...ahem...[']fruits['] to taste.";
			else:
				say "You decide to remain in the quarantined city. You become the mate of a male peacock...or rather, his favorite mate. Neither of you wants to sacrifice his fun, after all...";
		else:
			say "You decide to leave and join civilization. Your pretty look and overall self controlled behavior gives you a job in what is considered the high society. You still have your...[']teeny sins['], you could say...";
			if cunt length of player > cock length of player:
				if intelligence of player > 18:
					say "One day, however, your mind clicks. You manage to recall everything that the hypnosis altered or blocked completely... and it was actually really pleasant times. Still, you make bag and baggage and set off immediately to the quarantined city. You are determined to find him, and make clear that YOU are going to be in charge now...";

Male Peacock ends here.
