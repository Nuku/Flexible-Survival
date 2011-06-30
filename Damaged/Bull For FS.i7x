Version 7 of Bull For FS by Damaged begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Bovine Bull to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Mooing is a number that varies;
CowKiller is a number that varies;
Mooed is a number that varies;
to say infect:
	infect;
	
To say mooplus:
	if Mooing is less than 8:
		increase Mooing by 1;		
		
	
to say bull attack:
	if CowKiller is greater than 0:
		if cunts of player is greater than 0:
			say "The big bull grunts fiercely, breathing hard after its maddened fight. It prods you with its sharp horns until you huddle on all fours.[line break]Without any warning you feel the animals huge member thrust into you, feeling like it will split you in half.[infect] Your cries, when you hear them, sound almost the same as the Cow you remember killing as you try in vain to brace yourself against the crazed beasts rutting. It makes a bellowing cry as you feel its burning seed pour into you, filling you out, making you look if not a little than very pregnant.[line break]Finally done with you, and calming after its release, it wanders off to graze.";
			say "It seems the scent of your fucking has covered completely whatever smell that remained on you of the bovine cows death at your hands.";
			now CowKiller is 0;
			if Mooing is greater than 0:
				say "[impregchance]";
			now Mooed is 1;
		otherwise:
			say "The huge beast bellows one last time and flies at you, its head crashing hard into your side. Your cry then, reminds you of the Cow you remember killing.[line break][infect][line break]The bull seems to have calmed, it wanders off to graze.";
			say "your blood seems to have covered the scent of the female cow blood that was on your hands.";
			decrease CowKiller by 1;
	otherwise:	
		if Mooing is less than 1:
			say "The bull seems to lose interest in you and wanders off to find some grass to eat.";
		otherwise:
			if cunts of player is greater than 0:
				say "Lifting its nose to the air, the bull catches your scent and you know exactly what scent that is, cow in heat.[line break]Pacing over to you it sniffs at your rear and you feel yourself rising to all fours and presenting your rear to the beast.[line break]His weight is suddenly upon you, you struggle to hold him for a moment until you feel his huge member press at your entrance. Suddenly nothing seems to matter but having him within you.[line break]His bellowing thrusts are countered by your own as you rock your hips back against his motion, feeling him deep within.[line break]Suddenly his breeding tool seems to swell even bigger, somehow filling your cavernous depths and exploding, painting every inch of your insides white.[line break][impregchance][impregchance][impregchance][line break]Dismounting he makes a loud whuffing sound and you feel so happy and full of his seed you lay down and rest just a moment, even as you begin to feel thirsty again...";
				infect;
				say "[mooplus]";
				now Mooed is 1;
			otherwise:
				say "The bull licks at you a few times but loses interest and wanders off to find some grass to munch on.[infect]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
to say bullattack:
	if CowKiller is greater than 0:
		say "[one of]The bull lowers its horns, bellowing wildly and charges at you, raking your side painfully.[or]Screaming and bucking around you the huge animal lashes out with its back hooves, knocking you aside like a tin can.[or]Shaking its huge head as it bolts around wildly, it catches you with a horn, dragging you for a while before swinging its head up and throwing you into the air. As you hit the ground you feel real pain blossom into your legs.[at random]";
	otherwise:
		say "[one of]The big bull snorts softly, trying to eat grass and completely ignoring you.[or]Looks up from its grazing for a moment, making a mooing sound at you, before returning to its meal.[at random]";
		if monsterhp is less than 56:
			increase monsterhp by 25;
		say "You notice that the big animal is almost completely ignoring your attacks as they fail to pierce its tough hide.";
		
to say bulldesc:
	if CowKiller is 0:
		say "A huge bull stands before you, 'Mmmmoooo' is all it says.";
	otherwise:
		say "A monstrous bull stands in front of you grazing. As you watch it sniffs the air and you witness the creature figuratively transform from docile to murderous rage in moments.";
	if Mooing is greater than 0:
		say "You do notice a member of truly epic proportions slowly start to slide out from beneath the animals belly.";
	
	
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bovine"; [Name of your new Monster]
	now attack entry is "[bullattack]"; [Text used when the monster makes an Attack]
	now defeated entry is "The large bull collapses to the ground, causing a slight shake as its mass settles."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[bull attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[bulldesc]";[ Description of the creature when you encounter it.]
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
	now str entry is 28;
	now dex entry is 8;
	now sta entry is 18;					
	now per entry is 10;
	now int entry is 6;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 80;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	if CowKiller is 0:
		now wdam entry is 0;
	otherwise:
		now wdam entry is 28;			[check for if the player has killed a cow (female bovine), if they have, its time to roll out the punishment]
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

[ +++++ ]	
[ Edit this to have the correct Name as wall]
Bull For FS ends here.