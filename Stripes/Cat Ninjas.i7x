Version 1 of Cat Ninjas by Stripes begins here.
[Version 1]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds cat ninjas as a creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Ninja Cat" } to infections of furry;
	add { "Ninja Cat" } to infections of guy;


to say losetoninja:
	if cunts of player > 0:
		say "     The ninja grabs you by the arm as you stop fighting him.  With a purring rumble, he presses you against one of the walls with one paw while the other gropes your rear.  His paw moves the intervening clothes and grinds his stiff rod against your ass.  You moan softly in pleasure as the feline slides his cock into your pussy slowly.  As your excitement starts to build and you find yourself growing ever excited by the prospect of having this mysterious feline fuck you, his paws relax their grip and instead move across your body to tease your ass and breasts.";
		say "     You press your hands to the wall and push your hips back into each thrust the feline makes.  It seems he's quite adept at the art of lovemaking as well as the art of ninjutsu.  Your pussy quivers around his cock as he moves and thrusts to stimulate you to greater and greater heights while saving your orgasm for the highest point of all.  As you come to the point that you're moaning and mewling beneath him for his seed, he pushes his cock deep inside you and unleashes a hot blast of feline cum.  It is at this point that he stimulates you far past your peak, sending you into multiple orgasms that finally end with you stretched out on the floor with your thighs soaked in your own juices and feline cum leaking from your overfilled pussy.";
		say "     As silently as he came, the feline ninja disappears back into the shadows and is gone.";
	otherwise if a random chance of 1 in 2 succeeds:
		say "     The ninja grabs you by the arm as you stop fighting him.  With a purring rumble, he presses you against one of the walls with one paw while the other gropes your rear.  His paw moves the intervening clothes and grinds his stiff rod against your ass.  You groan softly as the feline probes his leaking cock into your tight asshole.  As your sphinter relaxes to accommodate the feline's penis thrusting into you, you find yourself growing ever excited by the prospect of having this mysterious feline fuck you.  His paws relax their grip and instead move across your body to tease across your body and fondle your maleness.";
		say "     You press your hands to the wall and push your hips back into each thrust the feline makes.  It seems he's quite adept at the art of lovemaking as well as the art of ninjutsu.  Your back passage quivers around his cock as he moves and thrusts to stimulate you to greater and greater heights while saving your orgasm for the highest point of all.  As you come to the point that you're moaning and mewling beneath him for his seed, he pushes his cock deep inside you and unleashes a hot blast of feline cum.  The press of his glans against your prostate as his semen blasts against it is when he chooses to stimulate you far past your peak, sending you into a powerful orgasm that splatters the wall with your seed.  It finally end with you stretched out on the floor with your balls drained and feline cum leaking from your overfilled ass.";
		say "     As silently as he came, the feline ninja disappears back into the shadows and is gone.";
	otherwise:
		say "     The ninja grabs you by the arm as you stop fighting him.  He pulls you in close and blows across his palm, sending a cloud of dust into your face.  Panting from the fight, you cannot help breathing in the dust and collapse to the floor.  When you regain consciousness, the feline ninja is gone and your face is covered in a sticky mess of feline cum.";


to say beattheninja:
	say "     Your blow causes the ninja to stumble back.  He hisses angrily at you and pulls something from his robes.  When the smoke bomb goes off at his feet, you lunge forward to grab him before he can escape, but you find yourself clutching a wooden log.  You toss it aside in frustration and continue on your way.";


to say ninjaattack:
	if a random chance of 3 in 10 succeeds:
		say "While making another acrobatic set of leaps and dodges, the ninja slips a shuriken from his robe and tosses it at you.  The bladed star stabs into your [one of]shoulder[or]hip[or]side[or]thigh[or]leg[at random].  There is a stab of pain from the strike, followed from a warm heat that flows into you from the wound, causing a surge of lustful desires in you.  As these thoughts momentarily distract you, the feline ninja moves in to make his attack.";
		increase libido of player by a random number between 2 and 5;
		if libido of player > 100, now libido of player is 100;
		let dammy be a random number between 2 and 3;
		decrease the hp of player by dammy;
		say "You take [dammy] damage from the ninja star.";
	let T be a random number between 1 and 6;
	if T is 1:
		say "The feline ninja strikes at you with his antique weapon!";
	if T is 2:
		say "Growling menacingly, the feline rakes his claws across your chest!";
	if T is 3:
		say "With a whirl of his body, the shinobi strikes you with a kick to the side!";
	if T is 4:
		say "The cat swings at you with his weapon, but slips a dagger from his robes.  The feint succeeds and you are struck in the [one of]thigh[or]arm[or]shoulder[or]side[or]hip[at random] by the small blade.  The strike tingles with heat that causes your loins to stir with excitement!";
		increase libido of player by a random number between 2 and 5;
		if libido of player > 100, now libido of player is 100;
	if T is 5:
		say "The agile cat slips behind you and sinks his claws into your chest while grinding the hard bulge between his legs against your rear.  His other paw gropes your groin, making you moan.  When you shove him off, he rolls and grabs his dropped weapon, readying it again if you continue to resist him!";
	if T is 6:
		say "The ninja leaps from the various items on display and gets behind you.  Even as you whirl to face him, his tabi boot strikes you in the side of the head!";


to say ninjadesc:
	let bonus be ( perception of player + dexterity of player - 20 ) divided by 2;
	let featbonus be 0;
	if "Experienced Scout" is listed in feats of player, increase featbonus by 1;
	if "Stealthy" is listed in feats of player, increase featbonus by 1;
	if "Wary Watcher" is listed in feats of player, increase featbonus by 3;
	let dice be a random number from 1 to 20;
	say "You roll 1d20: [dice]+[bonus]+[featbonus] = [dice + bonus + featbonus][line break]";
	if dice + bonus + featbonus is greater than 16:
		say "     As you move down the halls of the museum, you hear a faint sound from behind you and turn around quickly.  You are narrowly missed by a triad of flying shuriken that embed themselves into the floor beside you.  There is a soft thump as an agile figure in concealing clothes drops to the floor on all fours.  Slitted eyes stare out at you from behind the dark mask and pointed, feline ears are trained on you.  The ninja feline releases a soft growl and charges, pulling out an oriental weapon and attacking you.";
	otherwise:
		decrease hp of player by 8;
		increase libido of player by 10;
		if libido of player > 100, now libido of player is 100;
		say "     As you move down the halls of the museum, you hear the soft whizz of something flying through the air too late, as a pain fills your back, causing 8 damage.  This is quickly replaced by a warm rush of lustful excitement.  You turn quickly to face your attacker as you reach back to pull the trio of poisoned shuriken from your back.  There is a soft thump as an agile figure in concealing clothes drops to the floor on all fours.  Slitted eyes stare out at you from behind the dark mask and pointed, feline ears are trained on you.  The ninja feline releases a soft growl and charges, pulling out an oriental weapon and attacking you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Ninja Cat"; [Name of your new Monster]
   now attack entry is "[ninjaattack]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beattheninja]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetoninja]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[ninjadesc]"; [ Description of the creature when you encounter it.]
   now face entry is "that of a normal cat, with a small muzzle, green eyes and pointed ears"; [ Face description, format as the text "Your face is (your text)."]
   now body entry is "slender and flexible, with a feline form.  You have sharp, retractible claws on your paw-like hands and footpaws"; [ Body Description, format as the text "Your body is (your text)."]
   now skin entry is "orange tabby fur with brown stripes and lighter patches at your muzzle, chest and inner thighs.  The fur is quite soft and feels good against your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "You have a long, slender cat's tail covered in orange fur with brown stripes."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "softly barbed cock"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it shifts into a feline muzzle.  Your ears become pointed and cat-like and your eyes become green with slit pupils for seeing in the dark"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it becomes flexible and feline in form.  Your arms end in dextrous paws with sharp, retractible claws and your feet are silent cat paws"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it grows a coat of tabby cat fur.  This fur is a orange in colour, with lighter areas at your chest and muzzle with brown stripes all over"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a slender, feline tail with orange tabby markings extends from your spine"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it gains small, soft spines, but is otherwise quite human in form"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 14;
   now dex entry is 18;
   now sta entry is 10;                    
   now per entry is 14;
   now int entry is 10;
   now cha entry is 12;
   now sex entry is "Female";     [ Starting target gender is Female]
   now hp entry is 25;            [ How many HP has the monster got? ]
   now lev entry is 3;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 6;            [ Avg damage the monster does when attacking.]
   now area entry is "Museum";    [ Location of monster, in this case the Museum ]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 6;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 2;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 4;            [ Number of Breasts infection will give you. ]
   now breast size entry is 3;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex=male, usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 7;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 3;        [ Width of female sex  infection will try and give you ]
   now libido entry is 40;            [ Will raise the player's libido towards this amount]
   now loot entry is "";            [ Dropped item, if any ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Ninja Cat":
		if humanity of player is less than 10:
			say "     Corrupted by the infection, your mind falters and fails, losing itself in dreams of feudal Japan.  You are drawn back to the museum, cloaking yourself in some dark fabric you find along the way.  There you silently wander the halls until a feline ninja drops from the ceiling right in front of you.  Several others leap from the shadows and surround you.";
			say "     You and the other ninja begin to spar, trading blows and tricks while the others watch.  Eventually the battle becomes less of a fight and more of a practiced routine of blows, blocks, gropes and grinds.  The blows become fewer and the gropes become fondles until finally, without any signal, it ends.  The group backs off and disappears into the shadows and you join them, following them back to their hidden lair.";
			say "     There, you join their ranks in a night of lustful passion with several of the agile felines in your new clan.  You partake in the enjoyment of [if cocks of player > 0 and cunts of player > 0]several of the males and a few of the rare females[otherwise if cocks of player > 0]several of the rare females[otherwise]several of the males[end if] in their midst.  After rest and the food, the whole of the next day is spent in the company of the kachira, the ninja chief.  She is a tan-coloured female with green, passionate eyes and long, black hair.  Her face is stern, but her paws are soft and able to bring so much pleasure.  With her talent outstripping her many subordinates, your day is filled with such pleasures that you would follow her orders and face death for her without hesitation at any moment.  For that is what it means to be ninja.";
			if cunts of player > 0 and "Sterile" is not listed in feats of player:
				say "     In time, you grow round with kittens and bear your young into the clan.  They are raised to be ninja, protecting the museum from the shadows from any who would strike at it.";
		otherwise:
			say "     When the military comes in, you manage to resist the urge to hide from them and instead allow yourself to be taken along with the others they rescue from the fallen city.  You wait patiently for your inevitable release, though you do take to slipping into the shadows and exploring the base.  You find several containment areas holding more exotic and powerful beings, but are careful not to get too close.  You also locate the records room and make a few adjustments to them.  The next day, the group you were being held with is cleared with no further processing.  They, like yourself, aren't rendered non-infectious, though the records state their group was done the day before.  You feel only the briefest concern over having done this, for they were all marked as low-risk species and infection levels.";
		if humanity of player > 30:
			if cocks of player > 0:
				say "     While those in your group are still confused and wondering what to do next after being released and dropped off unprepared, you keep your eyes on one in particular.  Among them is a woman with pure-white fur and cat ears whom you find very enticing.  Leading her off, your skilled paws soon coax her into sex.  As you make love to her with increasing passion, she is converted more fully into a graceful feline.  She gains a cat's face and tail";
				if "One Pair" is not listed in feats of player, say ", and a second pair of breasts,";
				say " to complete her conversion.";
				say "     As your lover and mate, she is wonderful and fills your nights with excitement.  On the nights when you don't feel like wild sex, you both instead disappear into the night to beat up those who would prey on others within your territory.  Your foes are dealt with swiftly and silently with a variety of ninjutsu tricks.  And when you get home after a night's prowl, then you both are always in the mood for a wild, feline romp.  Once she becomes too advanced in her pregnancy, she can't join you, but you're happy to know that in a few years you'll have your kittens joining you in your nightly excursions.";
			otherwise:
				say "     While those in your group are still confused and wondering what to do next after being released and dropped off unprepared, you keep your eyes on one in particular.  Among them is a man with black fur, a grey muzzle and a feline tail whom you find very handsome.  Leading him off, your skilled paws soon have him hard and filling you.  As you make love to him with increasing passion, he is converted more fully into a graceful feline.  He gains feline ears and his black fur spreads down over the rest of his body, leaving only his muzzle grey.";
				say "     As your lover and mate, he is wonderful and fills your nights with excitement.  On the nights when you don't feel like wild sex, you both instead disappear into the night to beat up those who would prey on others within your territory.  Your foes are dealt with swiftly and silently with a variety of ninjutsu tricks.  And when you get home after a night's prowl, then you both are always in the mood for a wild, feline romp";
				if "Sterile" is not listed in feats of player:
					say ".  Once you become too advanced in your pregnancy, you can't join him out on the town, but you're happy to know that in a few years you'll have your kittens along for your nightly excursions.";
				otherwise:
					say ".";
					if hermaphrodite is not banned:
						say "     While on a patrol alone a few years later, you spot a feline cat burglar while on your own.  Unable to leave such a cliche alone, you test your skill against him, stalking him for a short time before he notices.  After a brief fight, you pounce the grey tabby and pin him down on the jewelry store floor.  When your mate rejoins you, seeking you after you didn't make your usual rendez-vous with him, you are already well on your way to converting the would-be thief into a sexy herm ninja by your still-active nanites.  Your mate smiles and mounts the gender-shifted male, filling her with his seed and breeding her.  After a few nights of sex, she is made into a loyal member of your family and is kept at home to breed more ninja kittens to add to family as well as for your own amusement.";
					otherwise:
						say "     While on a patrol alone a few years later, you spot a feline cat burglar while on your own.  Unable to leave such a cliche alone, you test your skill against him, stalking him for a short time before he notices.  After a brief fight, you pounce the grey tabby and pin him down on the jewelry store floor.  When your mate rejoins you, seeking you after you didn't make your usual rendez-vous with him, you are already well on your way to converting the would-be thief into a sexy female ninja by your still-active nanites.  Your mate smiles and mounts the gender-shifted male, filling her with his seed and breeding her.  After a few nights of sex, she is made into a loyal member of your family and is kept at home to breed more ninja kittens to add to family.";
		otherwise:
			say "     While those in your group are still confused and wondering what to do next after being released and dropped off unprepared, you take advantage of the situation and convince several of the felines and those with minimal infection to go off with you.  With a few ninja tricks and skilled paws, you coax them one by one into being lovers, converting them into feline ninjas like yourself.  The females are bred and filled with kittens while the males add to your growing forces.  Soon you have a small clan of your own that lurks in the darkness, doing tasks for organizations willing to pay for your shadowy services.";


[ Edit this to have the correct Name as well]
Cat Ninjas ends here.