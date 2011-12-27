Version 7 of Bovine For FS by Damaged begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Bovine to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Mooing is a number that varies;
CowKiller is a number that varies;
Mooed is a number that varies;
Bovine_type is a number that varies; [0 = not chosen, 1 = cow, 2 = bull]
Bull_run is a number that varies;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
to say cow vict:
	if Mooing < 1:
		say "The cow grabs you and pulls you closer, sitting down in the process. Its strong bovine arms lift you up, pressing your lips to one engorged teat, 'Drink, little heifer.  Sate yourself,' it says softly, motherly[one of].  The smell of the milk calls to your thirst and[or].  One little drop of milk leaks from the engorged teat and it drips down onto your lip, without thinking your tongue snakes out and pulls it in to your mouth.  Gasping,[at random] you push your head forward, latching onto the nipple with your lips and begin sucking happily at the breast. 'See, it's not so bad.' the cow says softly again, rocking you back and fourth in her arms as you drink.";
		now thirst of player is 0;
		now hunger of player is 0;
		infect;
		if Mooing < 8:
			increase Mooing by 1;
	otherwise:
		say "[one of]The cow sits down and you run into her waiting arms, mouth reaching to find a spare nipple.[or]You see the cow smile down at you, 'You wanted to play a little first. Come on now, it's time for your meal,' she moos softly to you and you race over, leaping into her waiting arms to grip a teat and begin sucking.[at random] The flood of pure contentment as the milk begins to flow into your throat causes you to grow sleepy, soon causing you to fall asleep completely, still drinking from her.[line break]You wake up, stomach bulging slightly, the taste of her milk still in your mouth. You let out a breath that sounds more like a [']Moo['] and wander off.";
		now thirst of player is 0;
		now hunger of player is 0;
		infect;
		
To say mooplus:
	if Mooing < 8:
		increase Mooing by 1;		
			
to say infect:
	infect;
	
to say bull vict:
	if CowKiller > 0:
		if cunts of player > 0:
			say "The big bull grunts fiercely, breathing hard after its maddened fight. It prods you with its sharp horns until you huddle on all fours.[line break]Without any warning, you feel the animal's huge member thrust into you, feeling like it will split you in half. Your cries, when you hear them, sound almost the same as the cow you remember killing as you try in vain to brace yourself against the crazed beasts rutting. It makes a bellowing cry as you feel its burning seed pour into you, filling you out, making you look, if not a little, then very pregnant.[line break]Finally done with you, and calming after its release, it wanders off to graze.";
			say "It seems the scent of your fucking has covered completely whatever smell that remained on you of the bovine cows death at your hands.";
			infect;
			now CowKiller is 0;
			if Mooing > 0:
				say "[impregchance]";
			now Mooed is 1;
		otherwise:
			say "The huge beast bellows one last time and flies at you, its head crashing hard into your side. Your cry then, reminds you of the Cow you remember killing.[line break][infect][line break]The bull seems to have calmed, it wanders off to graze.";
			say "your blood seems to have covered the scent of the female cow blood that was on your hands.";
			decrease CowKiller by 1;
	otherwise:	
		if Mooing < 1:
			say "The bull seems to lose interest in you and wanders off to find some grass to eat.";
		otherwise:
			if cunts of player > 0:
				say "Lifting its nose to the air, the bull catches your scent and you know exactly what scent that is, cow in heat.[line break]Pacing over to you it sniffs at your rear and you feel yourself rising to all fours and presenting your rear to the beast.[line break]His weight is suddenly upon you, you struggle to hold him for a moment until you feel his huge member press at your entrance. Suddenly nothing seems to matter but having him within you.[line break]His bellowing thrusts are countered by your own as you rock your hips back against his motion, feeling him deep within.[line break]Suddenly his breeding tool seems to swell even bigger, somehow filling your cavernous depths and exploding, painting every inch of your insides white.[line break][impregchance][impregchance][impregchance][line break]Dismounting he makes a loud whuffing sound and you feel so happy and full of his seed you lay down and rest just a moment, even as you begin to feel thirsty again...";
				infect;
				say "[mooplus]";
				now Mooed is 1;
			otherwise:
				say "The bull licks at you a few times but loses interest and wanders off to find some grass to munch on.[infect]";
				say "[mooplus]";

To say mooplus:
	if Mooing < 16:
		increase Mooing by 1;	
	

to say Deadcow:
	increase CowKiller by 1;
	
To say dessicate:
	decrease hunger of player by 10;
	decrease thirst of player by 10;
	
to say cow attack:
	if a random number from 1 to 20 is 1:
		say "The cow sprays wildly with milk, drenching you, making you cry out as it seems to soak your clothing. All of a sudden a precise follow up spray hits you in the mouth, the pressure forcing you to swallow or drown in it.[line break] With a gulp you get a tingling feeling from your belly and are suddenly washed in contentment.";
		if Mooing < 3:
			say "[mooplus][infect]";
		otherwise:
			say "[infect][dessicate]";
	otherwise:
		say "[one of]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your arm, causing it to sting at the pressure.[or]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your stomach, causing you to become short of breath and bend over wheezing as the focused stream hits.[at random]";

to say cow desc:
	if Mooed is 0:
		say "A twelve foot tall cow beast stands before you, 'Mmmmoooo' it says, 'Are you thirsty? I have all the milk you will ever want.' it exclaims, holding one of its four large breasts, milk slowly dribbling from its teat-like nipple.";
	otherwise:
		say "A twelve foot tall cow beast stands before you, 'Mmmmoooo' it says, 'Oh he found you then? Come here little one, I have all the milk you will ever want.' it exclaims, holding one of its four large breasts, milk slowly dribbling from its teat-like nipple.";
		
to say bull attack:
	if CowKiller > 0:
		say "[one of]The bull lowers its horns, bellowing wildly and charges at you, raking your side painfully.[or]Screaming and bucking around you the huge animal lashes out with its back hooves, knocking you aside like a tin can.[or]Shaking its huge head as it bolts around wildly, it catches you with a horn, dragging you for a while before swinging its head up and throwing you into the air. As you hit the ground you feel real pain blossom into your legs.[at random]";
	otherwise:
		if monsterhp < 20:
			say "The bull flicks its tail at you. You have finally annoyed him so much he has moved.[combat abort]";
		say "[one of]The big bull snorts softly, trying to eat grass and completely ignoring you.[or]Looks up from its grazing for a moment, making a mooing sound at you, before returning to its meal.[at random]";
		if monsterhp < 56:
			increase monsterhp by 25;
		say "You notice that the big animal is almost completely ignoring your attacks as they fail to pierce its tough hide.";

		
to say bull desc:
	if CowKiller is 0:
		say "A huge bull stands before you, 'Mmmmoooo' is all it says.";
	otherwise:
		say "A monstrous bull stands in front of you grazing. As you watch it sniffs the air and you witness the creature figuratively transform from docile to murderous rage in moments.";
	if Mooing > 0:
		say "You do notice a member of truly epic proportions slowly start to slide out from beneath the animals belly.";
	
		
		
to say bovine attack:
	if Bovine_type is 1:
		say "[cow attack]";
	otherwise:
		say "[bull attack]";
		
to say bovine defeat:
	if Bovine_type is 1:
		say "[Deadcow]The large female cow suddenly bursts into tears mooing, 'All I wanted was for you to be happy. Don't you think you could be happy with me?' before you finish it off.";
	otherwise:
		say "The large bull collapses to the ground, causing a slight shake as its mass settles.";

		
to say bovine vict:
	if Bovine_type is 1:
		say "[cow vict]";
	otherwise:
		say "[bull vict]";
	
to say bovine desc:
	choose row monster from the table of random critters;
	if a random number from 1 to 10 > 3: [female cow]
		say "[cow desc]";
		now Bovine_type is 1;
		now wdam entry is 2;            [-Amount of Damage cow Does when attacking.-]
	otherwise: [male skunk]
		say "[bull desc]";
		now Bovine_type is 2;
		if CowKiller is 0:
			now wdam entry is 0;
		otherwise:
			now wdam entry is 28;			[check for if the player has killed a cow (female bovine), if they have, its time to roll out the punishment]

	
	
	
	
		
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bovine"; [Name of your new Monster]
	now attack entry is "[bovine attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[bovine defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[bovine vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[bovine desc]";[ Description of the creature when you encounter it.]
	now face entry is "drawn forward into a very cow-like muzzle, ending at a large damp nose. Large ears flick back and forward above your head idly";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "a cross between a bovine and a humans, large splayed hips lead down to hoofed feet";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "[if looknow is 1]a thick mat of rough fur covering your body, patterned like a friesian cow over a thick[otherwise]cow patterned, furred[end if]";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "A thin, almost useless cow tail extends down over your buttocks, its only use seems to be to scare flies away.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "bovine";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it draws forward, flowing into a large blunt cows muzzle even as your ears migrate up your head and stretching out to have a very bovine appearance. Slow thoughts begin to slowly push away your present needs. You find yourself mooing softly under your breath"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "grows and stretches, bones growing hugely into the frame of a cow beast, forcing your muscles and posture to follow"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it thickens and sprouts a pattern of black and white hair, slowly merging together into a very cow-like appearance"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it stretches and splays around new bones, forming up the wide hips of a cow"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it fills with power but not need, you almost wonder what this particular infection has in store for you"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 22;
	now dex entry is 8;
	now sta entry is 18;					
	now per entry is 10;
	now int entry is 6;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 80;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 2;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;			[ Number of Breasts infection will give you. ]
	now breast size entry is 9;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 28;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 0;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

Section 3 - Monster Heat

[ IMPORTANT READ ME  - This section is compleately optional. if you do NOT want to go through the trouble of adding a particular heat text of events to your creature, just delete between the two marker comments, for clarity i have included the German shepard entry. +++++]	
[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

to say bovineheat:	
	say "You feel your throat go drier and drier, it seems only milk fresh from the cow will fill your growing stomache";
	increase thirst of player by 8 minus (Mooing divided by 2);
	if Mooing is greater than 0:
		decrease Mooing by 1;

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Bovine Cow";	[ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 1;					[ This is the number of days a heat 'cycle' lasts, usualy 7 ]
	now heat duration entry is 1;					[ This is how many days of the cycle you are actualy in heat. default is 1, set it to the same as cycle for permanently in heat.] 
	now trigger text entry is "";  [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is "";				[ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat start entry is "";		[this is a to say block that cuasees things to happen when the player enters heat. for example the GSD sex grows wider.  Delete entire line if you wish nothing to happen.]
	now heat end entry is "";		[this is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to it's previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[bovineheat]";
	
		
	
[ +++++ ]	
[ Edit this to have the correct Name as wall]
Bovine For FS ends here.

