Nymph for FS by Hellerhound begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Tree Nymph to Flexible Survivals Wandering Monsters table"

[Description text for this Extension.]


Section 1 - Cum Vial

Table of Game Objects (continued)
name	desc	weight	object
"Nymph Cum"	"A bottle of nymph cum? Man you will scavenge anything."	3	nymph cum

nymph cum is a grab object. It is a part of the player. Understand "cum" and "seed" and "spunk" as nymph cum. nymph cum is infectious. The strain of nymph cum is "Tree Nymph". The purified of nymph cum is "water bottle".



Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

To say nymph defeat:
	if libido of player < 50:
		Say "You manage to break the nymph in half, much like a tree. As the crack forms, her skin goes rough, and turns brown, morphing into bark. She shouts at you that she will return.";
	if libido of player > 50 and cocks of player is greater than 0:
		Say "You move closer to the nymph, stroking your [cock of player] cock, the entry is deceptively easy, and you start as you feel vines creeping along her inner walls. You try to pull out, but they grab hold and pull you all the way in. 'Silly you, thinking you could rape me.', well, let me teach you a thing or two.";
		say "She leans into you, vines stroking your cock as it is massaged against her inner walls. You come to climax surprisingly quickly, spraying your load inside of her. When you finish, she places the nipple of one of her large breasts at your mouth, and with a dulled mind begin to suckle.";
		say "Thats good, have a drink, she says, as you roll over onto the ground, and she walks away, the tree disguise forming once more.";
	if libido of player > 50 and cocks of player is 0 and cunts of player is greater than 0:
		say "The nymph screams in rage, and her skin turns barklike. In an instant she has become a true tree, unmoving, covered in vines.";
		

To say nymph attack:
	if cunts of player > 0:
		Say "As you go limp from the beating, greenish vines wrap around your body, spreading your legs and lifting you off the ground. The nymph steps forward and rubs her clit, grinning evilly.";
		wait for any key;
		say "As you watch in horror, it turns a wooden brown, with a barklike texture and grows longer and thicker, becoming a small, six inch cock.";
		say "The vines bend, and your entire body tilts backward, placing your [cunt size desc of player] cunt right in front of her cock. 'Sweet carryings', she smirks, as she pushes inside, causing you to scream in pain from the rough bark. The nymph pumps in and out, and by the time you realize her cock is absorbing the lubrication, the pain causes you to lose consciousness.";
		wait for any key;
		say "You wake to find thick, steaming cum mixed with blood running from your cunt, and a feeling of weakness all over. It must be the blood loss, you realize, as the size of the puddle under you becomes apparent. [impregchance]";
		say "You manage to collect some of the cum, placing it in an empty water bottle.";
		add "Nymph Cum" to the invent of the player;
		infect "Tree Nymph";	
	if cocks of player is greater than 0 and cunts of player is 0:
		say "You collapse under the pain of your beating, and the nymph approaches. Suddenly, many green tendrils grow out of a hole above her clit that you had missed, twining around your cock and body and immobilizing you. ";
		say "You watch as she strokes her clit, and stare as it grows into a 6 inch long wooden cock that she begins to stroke. You watch with growing lust and horror as it spasms, and white, thick, reeking spunk sprays all over your body and face. She breathes out in a long sigh, and the tendrils bring you closer as she waits for the changes.";
		repeat with n running from one to three:
			infect "Tree Nymph";
		say "After you finish, she shoves one of her breasts into your face. 'still not had a drink, eh?', she quips as one of the green tendrils twining around her body squeezes the tit, milk spraying into your face and down your throat.";
		infect "Tree Nymph";
		say "You collect the cum on you and place it into an empty water bottle. Maybe there is a use for it?";
		add "Nymph Cum" to the invent of the player;
	if cocks of player is 0 and cunts of player is 0:
		say "She looks at you with horror. 'Nothing? Nothing for me to play with?' She exclaims. Well, you will just have to fix that and come back later.";
		infect "Tree Nymph";
		
		[ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Tree Nymph"; [Name of your new Monster]
	now attack entry is "The Nymph [one of]punches your face solidly like bark[or]kicks your face, exposing her cute pussy[or]whips the tree's branches at you[or]causes tentacle-like vines to rise out of the ground and slap you[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[nymph defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[nymph attack]";
	now desc entry is "Walking through the red light district, you come across a road filled with trees. Many have had sex nearby, as you note the twisted shape of their branches, and the pinkish bark. One tree seems normalish enough, despite the enormous amounts of cum around its base. As you walk closer, the tree fades, and a tree nymph jumps in front of you.";[ Description of the creature when you encounter it.]
	now face entry is "cute, with green hair and branches growing behind your ears";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "vine-wrapped and very feminine, milk leaking from shapely breasts";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "unblemished";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]  
	now cock entry is "wooden, cum-reeking";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is " it becomes cuter, more feminine. Your hair turns green, and branches begin to grow from behind your ears."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it becomes cuter. Green, tentacle-like vines grow from a new hole forming above your clit as they wrap around your body"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "blemishes dissapear, and the vines fully wrap around your figure, forming a green cloak that opens at will"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it becomes human again"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it shrinks and slides down into your clit. You appear female, but by concentrating, your clit can turn into full-sized, wooden-looking cock, with reeking cum leaking from it"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 22;
	now sta entry is 20;					
	now per entry is 15;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ] 
	now wdam entry is 13;			[Amount of Damage monster Does when attacking.]
	now area entry is "Red";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 6;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 60;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Nymph Cum";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]


when play ends:
	if the bodyname of the player is "Tree Nymph":
		say "Life as a nymph is hard, your naked stature and vines, not to mention fear of clothes, keep you seperate from the normal humans, and keep you in trouble with the law, who are still trying to cope with your kind's breach of public nudity.";
		if the humanity of the player < 10:
			say "The revival of the city des you no good, and shortly you are behind bars for several acts of misconduct. You end up with a life sentence, and spend the rest of your time attempting to control the impulses the nanites wired into you.";
		otherwise if the humanity of the player < 50:
			say "A few days into the revival of the city, you decide to become another one of the tree's on the road where you found the original, growing bark and leaves, you form a new tree, and a new puzzle for the city council, who had not authorized the planting of new trees in their budget. You and your fellow trees take payments from those who wish your services, and retrun to your lot at night. Altogehter, it isn't a bporing life, with all the odd clients that come around, and the food they bring.";
		otherwise:
			say "you overcome your fear of clothing, and become relatively normal to those who don't see you without it, or your hat. you are able to resume life as normal, but have to get a different lover as your old one is unhappy with the changes.";



[ Edit this to have the correct Name as wall]
Nymph for FS ends here.
