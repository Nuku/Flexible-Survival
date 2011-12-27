Version 2 of Pit Bull For FS by Ilovecock begins here. 
[ Version 2 - Endings added by Stripes ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Pit Bull to Flexible Survivals Wandering Monsters table"

[Description text for this Extension.]

	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

To say pit bull defeat:
	if libido of player < 50:
		Say "Having taken one too many blows the monster signals her submission and begins to back away.";
	if libido of player > 50 and cocks of player is greater than 0 and cunts of player is 0:
		Say "As she falls you advance on her, pulling down your pants. She looks at your [cock of player] cock and says 'I will tear that fucking thing off and shove it down your throat if you come any closer.' You enjoy having it and decide to back down, and by back down you run away, pants around your ankles. You have a wank later.";
	if libido of player > 50 and cocks of player is greater than 0 and cunts of player is greater than 0:
		Say "As she falls you walk up to her and point to the growing bulge in your pants. She pulls them down for you and begins to rub on your [cock of player] cock. She begins to finger your pussy, and in your ecstasy you fall down and she leaps on your hard [cock size desc of player] [cock of player] cock and begins to enthusiastically bounce up and down on it. After a few minutes you cum, filling her pussy with your seed. You help her off and up and both of you go on your ways.";
	if libido of player > 50 and cocks of player is 0 and cunts of player is greater than 0:
		Say "As she falls you walk up to her squeezing your [breast size desc of player] breasts. She begins to drool at the sight of you and happily obliges you as you remove your pants. She laps heartily at your moist cunt. A few minutes of this and you gently push her over and start to rub your pussy against hers. The feeling is great and after 9 minutes of this you both cry out in orgasm. You help her to her feet and both of you head on your ways.";

To say pit bull attack:
	if cunts of player > 0 and cocks of player is 0:
		Say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes. Looking at your crotch she seems pleased with it and drops down and begins to lick. Her rough tongue feels great, for a moment you forget that she just kicked the shit out of you. After a while she stops and throws you onto your back and begins to remove her clothes. She then begins to grind her crotch into yours starting slowly building up to franticly mashing them together like she was trying to start a fire. After a few minutes of this both you and she climax. Leaving you in a puddle of sex while she looks through your clothes for anything of use.";	
	if cocks of player is greater than 0 and cunts of player is greater than 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes. Looking at your crotch she seems to behold it in curiosity. She lies down and begins to lick your [cock size desc of player] [cock of player] cock. Then deep-throats it and begins to bob her head up and down like a boat on stormy waters. After getting a taste for your cock, she pulls her head and pushes you on your back. She gets up on your [cock of player] cock and begins to grind on it. After a few minutes of this she suddenly sticks a few fingers into your pussy and begins to pump back and forth. You try and hold back as much as you can but, after only a short time, cum all over yourself. She gets up and starts to rifle through your clothes.";
	if cocks of player is greater than 0 and cunts of player is 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes. Looking at your crotch she seems disappointed. She gets you up on your knees and pushes you forward and grasps your [cock size desc of player] [cock of player] cock firmly. She begins to pump on it up and down slapping your balls with her palm all the while. Suddenly you feel a sharp sensation in your ass and look back. SHE IS FISTING YOU! It feels like she's using you as a hand puppet. Your eyes roll back in your head in pleasure as you cum. She pulls her hand out in a *POP* and begins to look through your stuff, finding nothing of value";
	if cocks of player is 0 and cunts of player is 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes. Looking at your crotch she beholds absolutely nothing. She looks surprised and thinks for a moment, and then walks off, seeing nothing she likes.";


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Pit bull"; [Name of your new Monster]
	now attack entry is "[one of]Punches at your head  and painfully connects [or] Delivers a solid knee to your midsection [or] Comes at you with a flurry of violent punches [or] Hits you square in the jaw with an incredibly solid haymaker.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[pit bull defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[pit bull attack]";
	now desc entry is "Standing tall in your path is a canine beast. Tall and muscled, looking mean as a junkyard dog is an anthropomorphic pit bull. She is wearing baggy cargo pants and a white T-shirt and looks ready to fight. What in this town doesn[apostrophe]t?";[ Description of the creature when you encounter it.]
	now face entry is "canine, though somewhat compacted, bears a striking resemblance to a pit bull";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "muscled to fighting form with digitigrade legs ending in paws";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "white fur over your body.  You have an the occasional black splotch, most notably one on your left eye.  It feels soft and pleasurable against your skin";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short and nubby tail.";[ Tail description, write a whole Sentence or leave blank. ]  
	now cock entry is "deep red, canine-knotted";[ Cock Description, format as you have a 'size' (your text) cock.] 
	now face change entry is "it becomes more canine your ears moving towards the top of your head. It flattens a slight bit and you can feel your teeth become sharper. You appear to have the head of a pit bull"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes adapted for fighting. Muscles grow and become lean. Your legs go digitigrade and claws pop out of your feet. Make that paws now. You feel ready to take on the world"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "short, white hairs pop out all over, with a few black patches, most notably a splotch on your eye"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes attractively muscled and you feel a sharp pop as a small nub of a tail pops out"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "Your cock feels funny as a knot forms on the base while a sheath forms towards the bottom, it shimmers in color before deciding on a deep burgundy color"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 14;					
	now per entry is 10;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 20;			[ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";			[ Loot monster drops, ]
	now lootchance entry is 20;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "Pit bull":
		if humanity of player < 10:
			if cunts of player > 0 and cocks of player is 0:	[Succumb - F]
				say "     Losing your mind to the infection, you wander off into the city and are drawn to a run-down neighbourhood.  There, you find the female pit bull you've seen around guarding a junkyard.  She approaches cautiously, but as you get on all fours and offer your wet pussy to her, she relaxes and moves in to welcome you properly.  Her tongue dives deep into your pussy until you cum before she gets you to return the favour.  You settle down with her.  When the military move through, you both take hide together among the junk, but do venture out at night to drag away a few more female soldiers to make into horny pit bulls to pleasure your alpha.";
			if cocks of player > 0 and cunts of player is 0:	[Succumb - M]
				say "     Losing your mind to the infection, you wander off into the city where you are found by a mostly-unchanged human.  She has four enlarged breasts and featureless golden eyes, but no other visible changes.  You approach her eagerly, but there is something about her stance and how she looks at you that cuts your charge short.  Clearly experienced at handling dogs, she soon has you obediently taking treats and is calling you by pet names.  She trains you well over the remaining time in the city; teaching you to be a good dog and rewarding you with treats or hand jobs.  Your mind slips further and further away during this time until you're nothing be an obedient pet for your mistress.";
				say "     When the military comes through, she is extracted along with you.  They briefly have some concern about taking you along, but she's quite persuasive and has you demonstrate what a good doggy you are.  Eventually released, she sets up a new life for herself with you as her loyal pet.  Having been treated to prevent infection, she now happily takes you into her bed, letting you rut your mistress, eventually filling her with pit bull puppies with lovely, alluring, golden eyes.";
			otherwise:								[Succumb - H]
				say "     Losing your mind to the infection, you wander off into the city.  You come across a small pack of other mixed canines and join their group, soon fighting your way to the top to be the leader.  You breed the females and let the deposed male leader fill your womb with his seed, taking him as your loyal beta and breeder.  Your pack, like many others in the city, struggles for territory and dominance, eventually growing larger and stronger over time under your leadership.";
		otherwise:		[Survive]
			say "     After leaving the military's quarantine, you eventually get work as a security guard, watching over construction sites or junkyards at night.  Your fierce appearance and loyal nature make you a good candidate for the work and you find it suits you fine.  You eventually settle down with a sexy Doberman, rutting with your canine lover often.";


[ Edit this to have the correct Name as wall]
Pit Bull For FS ends here.