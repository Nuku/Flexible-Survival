Version 1 of Dolphin for FS by Hellerhound begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a dolphin to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]


when play begins:
	add {"hermaphrodite dolphin"} to infections of furry;
	add {"hermaphrodite dolphin"} to infections of hermaphrodite;
	

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
dolphindefeat is a number that varies.
dolphinconsent is a number that varies.
dolphinwantmate is a number that varies.
dolphintricked is a number that varies.


to say dolphin attack:
	say "'Weak little thing, how could you attempt to beat me? she whispers, rolling your weakened body over and spreading your legs. You struggle, but fail to free yourself from her grasp.";
	if dolphinwantmate is 0 or dolphinwantmate is -1:
		say "Though with a little changes, you could be my mate?";
		if the player consents:
			now dolphinwantmate is 1;
		otherwise:
			say "She seems put of by your denial, and screams 'you will be brought down'";
			decrease dolphinwantmate by 1;
	otherwise if dolphinwantmate is -2:
		say "She grabs you harshly, fingers biting into your skin, drawing blood. She then flips you over so hard that your head spins. She then reaches into her top slit, dragging her cock out with her hand, and strokes it hard against you back. she then bends back, and slams forward, ripping open your ass. You pass out from the pain.";
		say "When you are conscious again, it seems the nanites have repaired the damage to your body, but there is still piss floating out of your ass, along with clumps of blood. You aren't feeling well.";
		decrease hp of player by 40;
		say "You can't be her mate any longer, it looks like she is still too pissed to even think in that direction.";
	say "She strokes your entire body, beginning at your head, and moves slowly down your body. The changes begin in the wake of her flipper-like hands.";
	infect "hermaphrodite dolphin";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	now dolphinconsent is 0;
	say "[dolphin fuck]";

To say dolphin loss:
	say "You hit the blue dolphinoid human over the head with a final blow, and she floats in the water, unmoving. From here, however, you can see all, three? of her slits. It looks like she wants you to take her.";
	if the libido of the player is less than 80:
		say "You do not have the desire to mate with her, and leave her there.";
	otherwise if dolphintricked < 2:
		increase dolphintricked by 1;
		now dolphinconsent is 1;
		say "You uncover your tools and swim closer.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "Closer";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "[bold type] AND closer[roman type]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "She then whips her body up, and sprays you with a different bunch of clicks, totally stunning your body. 'Now it is my turn to play with you...' She mutters.";
		say "[dolphin fuck]";
	otherwise:
		say "You are tempted by the sight of the prone dolphin, but manage to hold yourself back, wise to their tricks.  Leaving it before before it can make it's final, sonic strike, you head off in search of another means to quell your raging hormones.";

to say dolphin fuck:
	if the cunts of the player is not 0: [prefer male action]
		say "The dolphin places her large, pink cock at your waiting entrance, and rubs it back and forth, without touching it. You are horrified and fascinated by it.";
		if the cunt width of the player is less than 6:
			say "She shoves her cock into you, more coming out of her top slit, but it is unable to go further than the tapered head. She looks at you with horror. You're cunt can't be that tight. Lets fix it.";
			say "She starts slamming her pointed cock into your small pussy, widening it by a bunch every smash, at the expense of your pleasure. Your mind is so full of pain you are having trouble staying conscious, and as she finally manages to slam inside you, you feel a twinge as the nanites 'fix' your cunt.";
			now the cunt width of the player is 6;
		otherwise if the cunt width of the player is less than 8:
			say "She shoves her cock head into you, but it is rough going, giving you much pleasure as she moans and groans, shoving and turning and wriggling the beginning of her large member inside of you.";
			increase the cunt width of the player by 1;
		otherwise:
			say "Her cock head slides into your lubricated tunnel with ease, and she prepares to pump the rest into you.";
		if the cunt length of the player is less than 10:[wont go in far, must extend you]
			say "She slams her cock into you with a cry of success, by it is cut off as she realizes she can't go halfway inside. She thinks for a moment, her member stimulating your pussy as it wriggles, and decides. She tells you 'I am going to have to lengthen you cunt, small one. It may hurt'";
			say "She begins to slam her cock into you, and grunts when it smashes open your cervix.";
			if the humanity of the player is less than 60:
				say "You wince and hope your infected body can repair the damage she, no it, is doing so you may have children.";
			otherwise:
				say "You wince and hope the damage can be fixed if you wish not to miscarry.";
			increase the cunt length of the player by 3;
		if cunt length of the player is less than 10:[god, still too small]
			say "She pulls out of you, looking saddened. You are too small still. You will have to come back again later.";
		otherwise if the cunt length of the player is less than 24:[wont go in far enough, will pry open womb for more space]
			say "She then slams her overly long member into the wall of your womb, stretching your womb and pussy as deep as they can go, and further. The pain mixes with the pleasure of her inside of you, bringing you to climax as she keeps fucking.";
			increase the cunt length of the player by 2;
			if the cunt length of the player is less than 14:
				say "She then pulls out of you, and you look at her, disappointed. you were halfway to another orgasm. ";
				say "She tells you 'You are still too small. I will have to 'fix' you later as well. Any more stretching and you will rip. Since I need to do more, you can't have my child.";
				say "She then blows here load all over your front, the thick cum spraying through the water as if in slow motion, and landing and sticking to you.";
			otherwise:
				say "She then moans, and slams extra hard, as she manages to fit the rest of her member inside by doubling back and forming a ring in your womb. Her gargantuan cock seems to be making a huge ring-shaped bulge in your belly, visible from the outside, as she begins to orgasm.";
				say "She lets out a chittering scream as she cums hard inside of you, stunning you and leaving you floating in the water. You can only watch, unreasoningly as your belly gets bigger and bigger until you look positively bloated. A little while and expansion later, she begins to remove her cock with much wriggling and squirming, to watch the cum inside of you get forced out into a cloud in the water once your entrance is clear.";
				say "[impregchance]";
		otherwise:[cunt is finally big enough]
			say "She shrieks with joy 'Your pussy is finally big enough for me. I bet that took a lot of doing.'";
			say "She then proceeds to push deeper, slowly wriggling and twisting her prehensile member into your wet cunt. She bottoms out before she can get to your cervix, and looks relieved. 'I am so big, none of the others in my pod can totally cover me, without assistance, but you...' she says, awed and relieved. She begins to wriggle her cock, pulling in and out and forming rings inside of you, causing immense pleasure. As you start humping back, she screams in climax, the sound carrying you to yours. After what seems like hours of her filling you, she begins to pull out, cum flowing around her now shrinking cock out of your cunt and into the water. [impregchance]";
	otherwise if "Male Preferred" is listed in feats of player:
		say "The dolphin gives a sudden clicking cry of dismay before she retreats, leaving you behind.";
	otherwise if the cocks of the player is not 0:[do female next]
		say "She looks at your male genitals, surprised. 'Why not a girl?' she mutters, and kisses the base of your cock. Maybe next time you will be ready for me. Make sure to be nice and large!";
		say "Your genitals feel odd as a cunt grows out of the base of your body, growing deeper and wider by the second.";
		increase the cunts of the player by 1;
		increase the cunt length of the player by 6;
		increase the cunt width of the player by 4;
	otherwise:
		say "'You genderless freak!' She screams. 'Make sure you have something for me to use later', she reprimands.";
		decrease the HP of the player by 10;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "hermaphrodite dolphin"; [Name of your new Monster]
	now attack entry is "She takes her fist and punches you with her immense strength."; [Text used when the monster makes an Attack]
	now defeated entry is "[dolphin loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[dolphin attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "As you [if the location of the player is not Public Beach] swim along[otherwise]walk on the beach[end if], you see a dark shadow following your progress. You move towards it, and a dolphin-like human shoots out of the gloom, saying 'Another for my pod! Yes!'";[ Description of the creature when you encounter it.]
	now face entry is "long dolphin snout";
	now body entry is "silvery with a blue back. A dorsal fin sits on top. Strong muscles contract underneath the surface";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]wet, glistening[or]smooth silver[or]thick blubbered[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a tail that fattens out horizontally at the end, much like a dolphins. However, it is only half as thick, and the ends are not rounded. It is covered in [skin of player] flesh and sways behind you with every step. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]tentacle-like[or]prehensile[or]pink[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is " blubber forms. It twists and reforms into the snout of a dolphin. Your hair retracts and disappears, leaving a hole in its place"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you swell with the appearance of muscles under your flesh, and a nice-looking dorsal fin sprouts out of your back"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh becomes tougher and thicker, yet somehow still supple and soft as blubber forms and it turns gray and silver"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your legs feel odd as they seem to change in shape. Your ass pinches with pain as it extends into what looks like the top half of a dolphin tail. The rest appears to be your legs. You could place all three of your appendages together to make what looks to be a dolphins tail"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it twists and writhes in a strange dance, growing longer and pinker as the top tapers off. Your balls grow as they are absorbed into your body, and a slit forms as your cock withdraws as well. Your anus also moves forward as your ass cheeks disappear, forming a second slit below the first"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 23;
	now dex entry is 26;
	now sta entry is 24;					
	now per entry is 22;
	now int entry is 20;
	now cha entry is 19;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking.][altered for dolphin so that it does different dmg for each attack]
	now area entry is "Beach";	[ Current options are 'Outside' and 'Mall', "High", "Beach", "Red", "Labs"  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 8;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 28;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 10;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 40;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Dolphin Milk";			[ Loot monster drops, ]
	now lootchance entry is 75;		[ Chance of loot dropping 0-100 ]
	now altcombat entry is "hdol";	[ Alternate critter combat row to follow, "default" or "" for standard ]


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)
"hdol"	retaliation rule	dolattack rule	--	--	--	--	--	--	--

this is the dolattack rule:		[possible sonic attack and sets upcoming strike]
	choose row monster from table of random critters;
	if a random chance of 1 in 6 succeeds:
		say "The dolphin lets off a really loud pulse of high pitched clicks, which weakens you ([ ( 6 + level of player ) / 2 ] dmg) and stuns you just long enough for her to attack again.";
		decrease hp of player by ( ( 6 + level of player ) / 2 );
	now tempnum is a random number between 1 and 5;		[picks one of the attacks]
	if tempnum is 1:
		now attack entry is "She bites your hand with her sharp little teeth. It hurts!";
		now wdam entry is 8;
	otherwise if tempnum is 2:
		now attack entry is "She puts her feet together into what resembles a dolphins tail, and whacks you over the head.";
		now wdam entry is 18;
	otherwise if tempnum is 3:
		now attack entry is "She headbutts you is the stomach, causing bubbles to rise from your mouth.";
		now wdam entry is 6;
	otherwise if tempnum is 4:
		now attack entry is "She takes her fist and punches you with her immense strength.";
		now wdam entry is 12;
	otherwise if tempnum is 5:
		now attack entry is "She takes her small breasts and shoves your face into them roughly. You struggle, and she slams you harder before you manage to escape.";
		now wdam entry is 14;
	otherwise if tempnum is 6:		[was closed in the original version, left closed]
		if the cocks of the player is greater than 0:
			now attack entry is "She darts down to your nethers and grabs your cock, and TWISTS IT OMG THAT HURT!";
			now wdam entry is 18;
		otherwise if the cunts of the player is greater than 0:
			now attack entry is "She darts down to you nethers and chomps on your clit. YOWCH.";
			now wdam entry is 10;
		otherwise:
			now attack entry is "She darts down to your nethers, and is shocked to see nothing there. She bites you anyway.";
			now wdam entry is 4;


when play ends:
	if bodyname of player is "hermaphrodite dolphin":
		if humanity of player is less than 10:
			say "Your mind snaps with the pressure of the idea of joining the pod. You go feral and join the pod of dolphinoids that lives near your city, occasionally venturing to the southern waters to mate with other pods.";
		otherwise:
			say "You find yourself visiting the beach more often over the days, swimming in the waves with your changed form.";
			if dolphinwantmate is -1:
				say "One day, the pod of dolphins surfaces around you, and, being uncleaned by the nanite masters in the human network, proceed to change you into one of them and maim you intensely.";
				dolphinify;
				dolphinify;
				dolphinify;
				dolphinify;
				say "You spend a long time in the hospital, but eventually you emerge, scarred, but alive.";
			otherwise:
				say "You spend some time at the end of each swim looking for the one that changed you, eager to bring her back as your mate. One day, you find her, and entice her to remain with you. She becomes your lifelong mate, and you bear each other many dolphinoid children.";
		

to dolphinify:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "hermaphrodite dolphin":
			now monster is y;
			break;
	infect;

Table of Game Objects(continued)
name	desc	weight	object
"Dolphin Milk"	"Thick and nutritious milk from a dolphinoid."	1	dolphin milk


dolphin milk is a grab object. It is a part of the player. Understand "milk" as dolphin milk. dolphin milk is infectious. The strain of dolphin milk is "hermaphrodite dolphin". The purified of dolphin milk is "distilled milk".

instead of sniffing Dolphin Milk:
	say "The dolphin milk smells like milk with an odd, fishy scent mixed in.";

[ Edit this to have the correct Name as wall]
Dolphin for FS ends here.