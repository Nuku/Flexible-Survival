Version 1 of Dryad for FS by Hellerhound begins here.
[ Version 1.2 - Minor revision to player victory.  Now offers player choice. ]
[renamed from Tree Nymph]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Dryad to Flexible Survival's Wandering Monsters table"

[Description text for this Extension.]


Section 1 - Cum Vial

Table of Game Objects (continued)
name	desc	weight	object
"dryad cum"	"A bottle of dryad cum? Man you will scavenge anything."	3	dryad cum

dryad cum is a grab object. It is a part of the player. dryad cum is infectious. The strain of dryad cum is "Dryad".  The purified of dryad cum is "water bottle". dryad cum is cum.

the scent of dryad cum is "The dryad cum smells like a mix of semen and tree sap.".

Section 2 - Monster Insertion

when play begins:
	add { "Dryad" } to infections of hermaphrodite;

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

To say dryad defeat:
	if libido of player > 25 and cocks of player is greater than 0:
		say "     The dryad stagger back and stumbles into a tree.  Trapped between you and it, she moans weakly.  With her nude form on display, you can't help but run yours eyes over her lovely bosom, slender body and down to her syrupy pussy.  You find her quite tantalizing to look at and you're tempted to do much more than look.  Shall you try to have your way with her?";
		if the player consents:
			say "     You move closer to the dryad and thrust your [cock of player] cock into her.  Entry is deceptively easy and you start as you feel vines creeping along her inner walls.  You try to pull out but they grab hold and draw you all the way in.  The dryad murmurs, 'Silly mortal, thinking you could rape me.  Well, let me teach you a thing or two.'";
			say "     She leans into you, the vines along her internal walls stroking and milking at your cock insistently.  You come to climax surprisingly quickly, spraying your load inside of her.  When you finish, she places the nipple of one of her large breasts at your mouth and, with a dulled mind, begin to suckle as she says, 'That's good, have a drink.'";
			say "     When you are finished, you roll over onto the ground and she walks away, the tree disguise forming once more.";
		otherwise:
			say "     Shaking your head to clear your mind, you grab the wood nymph by the shoulders and shove her roughly to the side.  She gives an angry hiss like cracking bark and slips away into the trees.";
	otherwise if libido of player < 25:
		Say "     The dryad stumbles back from the fight and, rather than give her a chance to recover, you throw a final blow.  This manages to break off [one of]an arm[or]a leg[or]a limb[purely at random] with a sharp snap.  Looking at the wound, it's snapped and broken off like a tree limb with ragged splinters of wood.  The skin around it goes rough and turns brown as it morphs into bark.  She shouts at you that she will return, her unbroken remains setting down roots into the ground as she transforms back into a tree, and a visibly damaged one at that.";
	otherwise:
		say "     The dryad screams in rage and her skin turns bark-like.  In an instant she has become a true tree, unmoving, covered in vines.";


To say dryad attack:
	if cunts of player > 0:
		Say "As you go limp from the beating, greenish vines wrap around your [bodydesc of player] body, spreading your legs and lifting you off the ground. The dryad steps forward and rubs her clit, grinning evilly.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "As you watch in horror, it turns a wooden brown, with a barklike texture and grows longer and thicker, becoming a small, six inch cock.";
		say "The vines bend, and your entire body tilts backward, placing your [cunt size desc of player] cunt right in front of her cock. 'Sweet carryings,' she smirks, as she pushes inside, causing you to scream in pain from the rough bark. The dryad pumps in and out, and by the time you realize her cock is absorbing the lubrication, the pain causes you to lose consciousness.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "You wake to find thick, steaming cum mixed with blood running from your cunt, and a feeling of weakness all over. It must be the blood loss, you realize, as the size of the puddle under you becomes apparent.[impregchance]";
		say "You manage to collect some of the cum, placing it in an empty water bottle.";
		increase carried of dryad cum by 1;
		infect "Dryad";
	if cocks of player is greater than 0 and cunts of player is 0:
		say "You collapse under the pain of your beating, and the dryad approaches. Suddenly, many green tendrils grow out of a hole above her clit that you had missed, twining around your cock and body and immobilizing you. ";
		say "You watch as she strokes her clit, and stare as it grows into a 6 inch long wooden cock that she begins to stroke. You watch with growing lust and horror as it spasms, and white, thick, reeking spunk sprays all over your [bodydesc of player] body and face. She breathes out in a long sigh, and the tendrils bring you closer as she waits for the changes.";
		repeat with n running from one to three:
			infect "Dryad";
		say "After you finish, she shoves one of her breasts into your face. 'still not had a drink, eh?', she quips as one of the green tendrils twining around her body squeezes the tit, milk spraying into your face and down your throat.";
		infect "Dryad";
		say "You collect the cum on you and place it into an empty water bottle. Maybe there is a use for it?";
		increase carried of dryad cum by 1;
	if cocks of player is 0 and cunts of player is 0:
		say "She looks at you with horror. 'Nothing? Nothing for me to play with?' She exclaims. Well, you will just have to fix that and come back later.";
		infect "Dryad";

		[ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]


When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Dryad"; [Name of your new Monster]
	now attack entry is "The Dryad [one of]punches your face solidly like bark[or]kicks your face, exposing her cute pussy[or]whips the tree's branches at you[or]causes tentacle-like vines to rise out of the ground and slap you[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[dryad defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[dryad attack]";
	now desc entry is "Walking through the urban forest, you pass along a road filled with trees.  You can see the signs of many having had sex nearby.  One tree seems normalish enough, despite the enormous amounts of cum around its base, but you note the twisted shape of its branches, and the pinkish tinge to its bark.  As you walk closer, the tree fades, and a dryad jumps in front of you.";	[ Description of the creature when you encounter it.]
	now face entry is "cute, with green hair and branches growing behind your ears";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "vine-wrapped and very feminine, milk leaking from shapely breasts";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "unblemished";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "wooden, cum-reeking";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it becomes cuter, more feminine. Your hair turns green, and branches begin to grow from behind your ears"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it becomes cuter. Green, tentacle-like vines grow from a new hole forming above your clit as they wrap around your body"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "blemishes disappear, and the vines fully wrap around your figure, forming a green cloak that opens at will"; [ skin change text. format as "Your skin feels funny as (your text)" ]
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
	now area entry is "Forest";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
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
	now loot entry is "dryad cum";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]feminine[or]sultry[or]slender[at random]";
	now type entry is "[one of]dryad[or]plant[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if the bodyname of the player is "Dryad":
		say "Life as a dryad is hard, your naked stature and vines, not to mention fear of clothes, keep you separate from the normal humans, and keep you in trouble with the law, who are still trying to cope with your kind's breach of public nudity";
		if the humanity of the player < 10:
			say ".  The revival of the city does you no good, and shortly you are behind bars for several acts of misconduct. You end up with a life sentence, and spend the rest of your time attempting to control the impulses the nanites wired into you.";
		otherwise if the humanity of the player < 50:
			say ".  A few days into the revival of the city, you decide to become another one of the tree's on the road where you found the original, growing bark and leaves, you form a new tree, and a new puzzle for the city council, who had not authorized the planting of new trees in their budget. You and your fellow trees take payments from those who wish your services, and return to your lot at night. Altogether, it isn't a boring life, with all the odd clients that come around, and the food they bring.";
		otherwise:
			say ".  You overcome your fear of clothing, and become relatively normal to those who don't see you without it, or your hat. you are able to resume life as normal, but have to get a different lover as your old one is unhappy with the changes.";



[ Edit this to have the correct name as well]
Dryad for FS ends here.
