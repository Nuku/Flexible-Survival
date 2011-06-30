Version 7 of Bovine Cow For FS by Damaged begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Bovine to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Mooing is a number that varies;
CowKiller is a number that varies;
Mooed is a number that varies;
to say bovine attack:
	if Mooing is less than 1:
		say "The cow grabs you and pulls you closer, sitting down in the process. Its strong bovine arms lift you up, pressing your lips to one engorged teat, 'Drink little heifer, sate yourself.' it says softly, motherly.[one of]The smell of the milk calls to your thirst and[or]One little drop of milk leaks from the engorged teat and it drips down onto your lip, without thinking your tongue snakes out and pulls it in to your mouth. Gasping[at random] you push your head forward, latching onto the nipple with your lips and begin sucking happily at the breast. 'See, its not so bad.' the cow says softly again, rocking you back and fourth in her arms as you drink.";
		now thirst of player is 0;
		now hunger of player is 0;
		infect;
		if Mooing < 8:
			increase Mooing by 1;
	otherwise:
		say "[one of]The cow sits down and you run into her waiting arms, mouth reaching to find a spare nipple.[or]You see the cow smile down at you, 'You wanted to play a little first. Come on now, its time for your meal.' she moos softly to you and you race over, leaping into her waiting arms to grip a teat and begin sucking.[at random] The flood of pure contentment as the milk begins to flow into your throat causes you to grow sleepy, soon causing you to fall asleep completely, still drinking from her.[line break]You wake up, stomach bulging slightly, the taste of her milk still in your mouth. You let out a breath that sounds more like a, 'Moo' and wander off.";
		now thirst of player is 0;
		now hunger of player is 0;
		infect;
		



Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
To say mooplus:
	if Mooing is less than 8:
		increase Mooing by 1;	
		
to say infect:
	infect;

to say Deadcow:
	increase CowKiller by 1;
	
To say dessicate:
	decrease hunger of player by 10;
	decrease thirst of player by 10;
	
to say mooattack:
	if a random number from 1 to 20 is 1:
		say "The cow sprays wildly with milk, drenching you, making you cry out as it seems to soak your clothing. All of a sudden a precise follow up spray hits you in the mouth, the pressure forcing you to swallow or drown in it.[line break] With a gulp you get a tingling feeling from your belly and are suddenly washed in contentment.";
		if Mooing is less than 3:
			say "[mooplus][infect]";
		otherwise:
			say "[infect][dessicate]";
	otherwise:
		say "[one of]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your arm, causing it to sting at the pressure.[or]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your stomach, causing you to become short of breath and bend over wheezing as the focused stream hits.[at random]";

to say cowdesc:
	if Mooed is 0:
		say "A twelve foot tall cow beast stands before you, 'Mmmmoooo' it says, 'Are you thirsty? I have all the milk you will ever want.' it exclaims, holding one of its four large breasts, milk slowly dribbling from its teat-like nipple.";
	otherwise:
		say "A twelve foot tall cow beast stands before you, 'Mmmmoooo' it says, 'Oh he found you then? Come here little one, I have all the milk you will ever want.' it exclaims, holding one of its four large breasts, milk slowly dribbling from its teat-like nipple.";
		
		
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bovine Cow"; [Name of your new Monster]
	now attack entry is "[mooattack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Deadcow]The large female cow suddenly bursts into tears mooing, 'All I wanted was for you to be happy. Don't you think you could be happy with me?' before you finish it off."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[bovine attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[cowdesc]";[ Description of the creature when you encounter it.]
	now face entry is "drawn forward into a very cow-like muzzle, ending at a large damp nose. Large ears flick back and forward above your head idly.";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "a cross between a bovine and a humans, large splayed hips lead down to hoofed feet.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[if looknow is 1]a thick mat of rough fur covering your body, patterned like a friesian cow over a thick[otherwise]cow patterned, furred[end if]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "A thin, almost useless cow tail extends down over your buttocks, its only use seems to be to scare flies away.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "heavy, bovine,";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it draws forward, flowing into a large blunt cows muzzle even as your ears migrate up your head and stretching out to have a very bovine appearance. Slow thoughts begin to slowly push away your present needs. You find yourself mooing softly under your breath."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "grows and stretches, bones growing hugely into the frame of an cow beast, forcing your muscles and posture to follow."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it thickens and sprouts a pattern of black and white hair, slowly merging together into a very cow-like appearance."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it stretches and splays around new bones, forming up the wide hips of a cow."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it fills with power but not need, you almost wonder what this particular infection has in store for you."; [ cock change text. format as "Your cock feels funny as (your text)" ]
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

[ IMPORTANT READ ME  - Thiss section is compleately optional. if you do NOT want to go through the trouble of adding a particular heat text of events to your creature, just delete between the two marker comments, for clarity i have included the German shepard entry. +++++]	
[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

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
	
to say bovineheat:	
	increase thirst of player by 8 minus Mooing;
	if Mooing is greater than 0:
		decrease Mooing by 1;		
	
[ +++++ ]	
[ Edit this to have the correct Name as wall]
Bovine Cow For FS ends here.