Version 1 of Orc by Wahn begins here.
[Version 1 - new creature]

"Adds an Orc creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Orc Warrior" } to infections of guy;
	add { "Orc Breeder" } to infections of guy;

to say OrcVictorious:
	if inasituation is false:
		if hp of player > 0:    [player submits]
			if bodyname of player is "Orc Breeder" and facename of player is "Orc Breeder" and skinname of player is "Orc Breeder":
				say "     'Can't wait to be fucked, little breeder?', the orc warrior says in his gruff voice as you surrender, then he roughly pushes on your shoulders, forcing you to your knees. Looking down on you, he says 'I'll give you what you need!' ";
			otherwise if bodyname of player is "Orc Warrior" and facename of player is "Orc Warrior" and skinname of player is "Orc Warrior":
				say "     As you collapse to your knees, the orc warrior gives a snarl and says 'Weakling! You're no real orc, you overgrown breeder! I'll show you your place.' ";
			otherwise:
				say "     'Weakling', the orc warrior says in his gruff voice as you surrender, then he roughly pushes on your shoulders, forcing you to your knees. Looking down on you, he says 'Leave the fighting to real men, little piggy. I'll show you your place.' ";
		otherwise:  [player beaten]
			if bodyname of player is "Orc Breeder" and facename of player is "Orc Breeder" and skinname of player is "Orc Breeder":
				say "     As you collapse to your knees, the orc warrior gives a snarl and says 'Wanted to try out being a warrior, little breeder? You can forget about that! Come on, I'll give you what you really need.' ";
			otherwise if bodyname of player is "Orc Warrior" and facename of player is "Orc Warrior" and skinname of player is "Orc Warrior":
				say "     As you collapse to your knees, the orc warrior gives a snarl and says 'Weakling! You're no real orc, you overgrown breeder! I'll show you your place.' ";
			otherwise:
				say "     As you collapse to your knees, the orc warrior gives a gruff chuckle and says 'Leave the fighting to real men, little piggy.' I'll show you your place.' ";
		if "Submissive" is listed in feats of player:   [sub players]
			say "With that, he steps up to you and pulls his loincloth aside, revealing the thick green shaft of his manmeat. Jerking it a few times, he softly whacks it against your forehead, then grabs you tightly by the hair and pulls you right against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair.";
			say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'An eager little slut I see, my lucky day for catching you.' He lets you continue for quite a bit, then grunts and pulls you off his cock.";
			say "     [WaitLineBreak]";
			say "     Chuckling, he shakes his head and says 'Can't have you get me off like this. There's still your ass to fuck!' Then he manhandles you to a wrecked car standing not too far away and bends you over its hood. Trembling in anticipation of him just using you for his enjoyment, you reach back and spread your cheeks while trying to relax your sphincter. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
		otherwise:   [normal players]
			say "With that, he steps up to you and pulls his loincloth aside, revealing the thick green shaft of his manmeat. Jerking it a few times, he softly whacks it against your forehead, then grabs you tightly by the hair and pulls you right against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. Not wanting a repeat of the beating you got earlier, you swallow your pride and start lapping away at his nuts in earnest.";
			say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
			say "     [WaitLineBreak]";
			say "     Chuckling, he shakes his head and says 'Enough slobbering around. Time to fuck!' Then he manhandles you to a wrecked car standing not too far away and bends you over its hood. Trembling at the thought of taking his thick meat, you reach back and spread your cheeks, doing your best to relax your sphincter. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";		
		say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
		say "     [WaitLineBreak]";
		say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if cocks of player > 0]spraying your own cum against the side of the car under you[otherwise if cunts of player > 0]squirting femcum all over the car under you and the ground below[otherwise]gripping the metal of the car's hood tightly as an orgasm wracks your body[end if].";
		say "     Having your hole tremble and twitch around his orcish member while you come gives your partner the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.[mimpregchance]";
		say "     [WaitLineBreak]";
		infect "Orc Breeder";
		infect "Orc Breeder";
		if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
			say "     [line break]";
			say "     You feel something change deep inside you, as all the cum the orc filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The [']MPreg['] feat has been added to your list.";
			add "MPreg" to feats of player;
		if player is in Breeder Lockup A or player is in Dark Hallway 1 or player is in Dark Hallway 2 or player is in Orc Lair Side Entrance:
			say "     [line break]";
			say "     Satisfied at having gotten his rocks off, the orc drags you back to the cells and throws you into one. You can hear him murmur to himself as he walks off 'I'll have to offer the brothers one of my sluts to trade for this one. Damned fine ass...'";
			move player to Slave Cell 2;
		decrease humanity of player by 5;
		
to say OrcBeaten:
	if inasituation is false:
		say "     After your last hit, the orc warrior staggers a bit, his eyes unfocused - then he keels over with a groan and lands on his back with a loud thud. Seeing him lie on the ground, your eyes can't help but wander down to his crotch where the brute's loincloth has fallen aside, revealing the thick piece of man-meat between his legs.";
		say "     [line break]";
		say "     Would you like to... have some fun with the orc (Y), or do you just leave (N)?";
		if player consents:
			say "     [line break]";
			say "     [BeatenOrcSexMenu]";
		otherwise:
			say "     [line break]";
			say "     You walk away after checking him over for loot.";

to say BeatenOrcSexMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Milk him for some orc cum";
	now sortorder entry is 1;
	now description entry is "Collect a bottle of cum from him.";
	now toggle entry is BeatenOrcSex rule;
	choose a blank row in table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Blow him off";
	now sortorder entry is 2;
	now description entry is "Suck the orc warrior's cock.";
	now toggle entry is BeatenOrcSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 3;
	now description entry is "Impale yourself on the orc warrior's cock.";
	now toggle entry is BeatenOrcSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Nothing";
	now sortorder entry is 10;
	now description entry is "Change your mind and just walk away.";
	now toggle entry is BeatenOrcSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the BeatenOrcSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Milk him for some orc cum"):
			say "[BeatenOrcSex1]";
		if (nam is "Blow him off"):
			say "[BeatenOrcSex2]";
		if (nam is "Ride his cock"):
			say "[BeatenOrcSex3]";
		otherwise if (nam is "Nothing"):
			say "     You just walk away after checking him over for loot.";	
		wait for any key;
		
to say BeatenOrcSex1:
	say "    After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you kneel down besides the downed orc and take hold of his meaty shaft. Fingers around the thick member, you start jerking on it, causing the big brute to switch from pained groans to lust-filled moans in no time at all. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your helpless orc a bit, grinning as you push him closer and closer to orgasm. When he finally can't hold back any more, you quickly snatch up your prepared bottle and hold it to his cock, successfully catching one, two, three big spurts of his pale-green cum before the bottle is full. The rest of the muscled brute's load just arcs high into the air as you pull your container out of the way, to splatter messily all over the orc's broad chest. Putting the cap on your bottle and stashing it away, you give the orc's balls a last quick fondle, then walk away and leave the panting brute to pick himself up later.";
	increase carried of orc cum by 1;

to say BeatenOrcSex2:
	say "    Kneeling down besides the downed orc, you take hold of his meaty shaft. Fingers around the thick member, you start jerking on it, causing the big brute to switch from pained groans to lust-filled moans in no time at all. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority organ. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your helpless orc a bit, grinning as he gives aroused grunts at your touch. Leaning forward, you lick up the glistening bead of precum forming at the tip of his hard cock, and finding it amazingly tasty, you immediately slide your lips over his cockhead and start blowing him off.";
	say "    With both your hands on his thick pole while you bob your head up and down and tease him with your tongue, you push your orc to higher and higher arousal. Before that much longer, his grunts and moans betray a growing urgency as they rise in volume, and you can feel him getting pretty close. Eager to taste what he has to offer, you proceed to go down on him with even greater relish and just moments later, a shudder runs through the muscular brute's supine body and he orgasms. Accompanied by loud lust-filled grunts, blast after blast of his creamy orc cum fills your mouth, flooding your taste-buds with a delightfully good flavour and giving you a giddy rush and pleasant buzz as you swallow it all down. By the time you pull off his cock with a slurp, you even feel pretty full and even a bit drunk. Giving the orc an affectionate pat on the hip, you stand up and walk away, leaving the panting brute to pick himself up later.";
	decrease humanity of player by 10;
	increase morale of player by 5;
	if morale of player > 100:
		now morale of player is 100;
	infect "Orc Breeder";	

to say BeatenOrcSex3:
	say "    Kneeling down besides the downed orc, you take hold of his meaty shaft. Fingers around the thick member, you start jerking on it, causing the big brute to switch from pained groans to lust-filled moans in no time at all. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority organ. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your helpless orc a bit, grinning as he gives aroused grunts at your touch. Leaning forward, you lick up the glistening bead of precum forming at the tip of his hard cock, and finding it amazingly tasty, you immediately slide your lips over his cockhead and start blowing him off.";
	say "    Wow, the taste of orc cum or pre-cum on your lips really goes to one's head quickly. It takes several minutes of bobbing down on his erection till you even remember that you did want to do something else right now, and you almost have to force yourself to pull off his shaft. Well, at least his cock should be pretty slick now, you think as you move into position to kneel over the orc's hips and slide your his erection up and down between your asscheeks. Then you line up the tip of his cock with your pucker and slowly increase your downward pressure until the orcish dong pops into you.";
	say "     [WaitLineBreak]";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. Though not one to give up so easily, you sink yourself deeper onto his hard shaft, and before long, more pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - so you have to stop often and take a moment to get used to things as you impale yourself more and more on the orcish warrior's erection. As you do so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, you're finally all the way down on his prick, his hard shaft buried all the way in you and his two large cum-factories resting against your skin.";
	say "     After taking a deep breath, you start sliding up and down on the orc's manhood, fucking yourself first slowly, then faster and faster as your insides stretch and more and more of his precum makes your hole pretty slick and wet. As good as riding the orc's thick shaft makes you feel, it doesn't take all that long until your frantic movements drive your arousal over all limits, making you almost shout out a pleased moan as you orgasm [if cocks of player > 0] and spray your cum all over the orc's broad chest.[otherwise if cunts of player > 0] and femcum sprays from your pussy to splatter down on the orc's abs[otherwise]and a tingly feeling spreads through your whole body[end if]";
	say "     [WaitLineBreak]";
	say "     Having your hole tremble and twitch around his orcish member while you come gives your partner the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He bucks up against you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to drip down onto his own crotch and the ground below.[mimpregchance]";
	say "     Exhausted but happy, you pull off your toy orc's still pretty hard shaft, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on the chest, then stand up and walk away, leaving the panting brute to pick himself up later.";
	infect "Orc Breeder";	
	decrease humanity of player by 5;
	increase morale of player by 5;
	
to say OrcDesc:
	if player is in Breeder Lockup A or player is in Dark Hallway 1 or player is in Dark Hallway 2 or player is in Orc Lair Side Entrance:
		say "     A large and muscular orc comes along, grinning broadly as he sees you. 'You must be that new slave Mul and his brothers are boasting about - and out of your cell too.' The thick shaft between his legs twitches against the ragged loincloth that barely covers it as his eyes wander over your body. 'I'll put you back where you belong - after I fuck you, that is.' he ways in a deep voice and slams a large balled fist into the palm of his other hand. 'Wanna struggle or wimp out? You're mine either way.'";
	otherwise:	
		say "     A large, muscular creature crosses your path. It's an orc, no doubt about it - sporting the powerful build, green skin and brutish facial features that are described in any number of fantasy stories, this one is nevertheless quite real. As is the thick shaft between his legs, barely covered by a ragged loincloth, which grows and twitches a bit as the orc looks at you. He gives you a possessive grin around his protruding tusks, then adds 'Hello little piggy.' in a deep voice and slams a large balled fist into the palm of his other hand. 'Wanna struggle or wimp out? You're mine either way.'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Orc Warrior";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]orc[or]green-skinned brute[or]muscular orc[or]brutish orc[or]muscled brute[at random] [one of]slaps you around a bit[or]gives you a painful kick[or]pounds you with a big fist[or]grabs you by the throat and throws you to the ground[or]grabs you with one of his hands and headbutts you[or]grabs you by the throat, choking you a bit before you can free yourself[at random]!";
	now defeated entry is "[OrcBeaten]";
	now victory entry is "[OrcVictorious]";
	now desc entry is "[OrcDesc]";
	now face entry is "brutish in appearance, having gained an exaggerated brow, square jaw and yellow eyes. Two sharp tusks protrude from your lower mandible, giving all your expressions a terrifying undertone and distorting your speech somewhat. The short hair on top of your head is black and bristly, sticking up on its own";
	now body entry is "overall human-like, but grown to a good seven feet tall and heavily muscled. The proportions of your body are clearly a bit off the human norm, giving you a pretty bulky build, large hands and feet at the end of thick and powerful limbs, as well as a relatively short neck[if player is OrcCocked].  Around your waist, an improvised loincloth of ragged fabric loosely covers your crotch[end if]";
	now skin entry is "[one of]green[or]pale green[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]green[at random]";
	now face change entry is "a splitting headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two sharp tusks push up out of your mouth. Your nose flattens and becomes wider, then the rest of your features change into a pretty brutish visage with protruding brows above your eyes. As your face stabilizes in its new form, short bristles of black hair sprout on top of your head";
	now body change entry is "your body shifts and changes, becoming larger than normal. You gain bulging muscles on a broad and powerful frame. As the transformation works its way down your limbs, making them ticker and stronger, it leaves you with somewhat larger than normal hand and feet";
	now skin change entry is "a wash of green spreads across it, at first pretty dark, then lightening to an even, light green tone all over";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a light green in colour, with a bush of black, slightly bristly hair at its base. A moment later, a cloud of dust-like nanites whirls around your waist, fading away as a ragged loincloth forms to cover your new manhood";
	now str entry is 20;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 6;
	now sex entry is "Male";           [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 125;               [ The monster's starting hit points. ]
	now lev entry is 14;               [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 15;              [ Monster's average damage when attacking. ]
	now area entry is "Capitol";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;            [ Target libido the infection will rise towards. ]
	now loot entry is "orc brew";      [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 50;        [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]meaty[or]powerful[or]broad[or]bulky[at random]";
	now type entry is "[one of]orc[at random]";
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]
	

Table of Game Objects (continued)
name	desc	weight	object
"orc brew"	"A stone mug with a simple lid that keeps its contents from sloshing out. The yellow-green fluid inside does look kinda like beer. Though how the orcs might have produced it is a mystery - maybe for the better."	1	orc brew

instead of sniffing orc brew:
say "You open the lid for a moment and take a sniff. Spicy, and definitively alcoholic.";

orc brew is a grab object.
the usedesc of orc brew is "[orc brew use]";

to say orc brew use:
	say "Lifting the beer stein in one hand, you thumb the lid open and take a deep quaff of the liquid within. Hmm, tasty in a strange spicy way, and good against thirst. You can't help yourself and keep drinking until all of it is gone, leaving you wanting for more. The empty mug you throw away, it being too heavy to lug around as an empty container.";
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
	OrcInfect;

to OrcInfect:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Orc Warrior":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Orc Warrior";
	now non-infectious entry is true;

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Orc Breeder";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "Orc breeders should not fight. Please report how you saw this!";
	now defeated entry is "Orc breeders should not fight. Please report how you saw this!";
	now victory entry is "Orc breeders should not fight. Please report how you saw this!";
	now desc entry is "Orc breeders should not fight. Please report how you saw this!";
	now face entry is "that of a relatively handsome man, with somewhat pronounced brow, a square jaw and yellow eyes. Two small tusks protrude from your lower mandible, looking almost... cute, compared to a real orc's. Your face is framed by long, silky black hair hanging down to your shoulders";
	now body entry is "human-like, almost six feet tall and nicely muscled. The proportions of your body are slightly off the norm for a human male, giving you what might be called 'child-bearing' hips, as well as slightly larger hands and feet[if player is OrcCocked].  Around your waist, an improvised loincloth of ragged fabric loosely covers your crotch[end if]";
	now skin entry is "[one of]green[or]pale green[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]green[at random]";
	now face change entry is "a painful headache has you hold your skull with both hands. Then the changes overtake you, jaw broadening into a square shape as two small tusks push up out of your mouth. The rest of your face soon takes on a relatively handsome male form, albeit with somewhat pronounced brow and yellow eyes. Finally, silky black hair sprouts from your head, flowing down till it reaches your shoulders";
	now body change entry is "your body shifts and changes, becoming that of a relatively tall man. You gain nicely defined muscles, while at the same time your hips widen noticeably, into what one might call 'child-bearing' on a woman. As the transformation works its way down your limbs, it leaves you with slightly larger than normal hand and feet.";
	now skin change entry is "a wash of green spreads across it, at first pretty dark, then lightening to an even, light green tone all over";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a light green in colour, with a bush of black, silky hair at its base. A moment later, a cloud of dust-like nanites whirls around your waist, fading away as a ragged loincloth forms to cover your new manhood";
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male";           [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 25;                [ The monster's starting hit points. ]
	now lev entry is 4;                [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 4;               [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;        [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;            [ Target libido the infection will rise towards. ]
	now loot entry is "";              [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]well-built[at random]";
	now type entry is "[one of]orc[at random]";
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"orc cum"	"A plastic water bottle you've filled with orc cum. Its contents are light green, thick and creamy. If you didn't know where it's from, you'd almost think it might be some sort of flavoured buttermilk. You could drink it to quench your thirst, but who knows what else it might do to you..."	1	orc cum

instead of sniffing orc cum:
say "You open the lid for a moment and take a sniff. Smells rather tasty actually and you're tempted to take a pull from the bottle.";

orc cum is a grab object.
the usedesc of orc cum is "[orc cum use]";

to say orc cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy orc cum run over your tongue and down your throat. Mmmmh, this stuff has a really great taste that calls for more. You can't help yourself and keep drinking until all of it is gone, filling your mind with a giddy, pleasant buzz. Now where do you get more of this stuff? You're really tempted to find an orc and just suck it right out of his cock.";
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
	decrease humanity of player by 10;
	infect "Orc Breeder";
	
Section 3 - Definitions

Definition: a person is OrcCocked:
	if the cockname of the player is "Orc Warrior" or the cockname of the player is "Orc Breeder":
		yes;
	otherwise:
		no;

Section 4 - Events

[ Note: the three orcs are called Mul, Koghh and Yatur ]
[ OrcSlaverStatus                                      ]
[  0: not met                                          ]
[  1: player freshly caught                            ]
[  2: player escaped without sex                       ]
[  3: player escaped after sex                         ]
[ 50: player fought em off                             ]

OrcSlaverStatus is a number that varies. OrcSlaverStatus is usually 0.
OrcSlaverCaptureTime is a number that varies. 

Orcish Slave Raid is a situation.
The sarea of Orcish Slave Raid is "Warehouse";
when play begins:
	add Orcish Slave Raid to badspots of guy;       [male orcs]

Instead of resolving a Orcish Slave Raid:
	say "    Walking along a street between some warehouses, you suddenly hear claws scratching on asphalt and shouting voices from an alley just a few steps ahead. Just a few seconds later, a panicky looking [one of]anthro fox guy[or]anthro German shepherd[or]horseman[at random] comes dashing into view, head turned to look over his shoulder - which means he isn't looking where he's going and collides with you at full speed, spilling the two of you onto the ground. Directly behind him, a trio of very muscular men come out of the alley - tall and green as they are, dressed only in loincloths, there's no doubt that they're orcs. [if OrcSlaverStatus is 3]And orcs you know at that - Mul, Yatur and Koghh, the orc slavers that you had a run-in with before. [end if]One of them grabs the fallen would-be escapee by the neck and lifts him off the ground, then smiles around his sharp tusks and nods towards you. [if OrcSlaverStatus is 0]'Look, our little runner got us an extra treat' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [otherwise if OrcSlaverStatus is 2]'Look, it's the little bitch that escaped from the lair. What nice coincidence that our runner led us here' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [otherwise if OrcSlaverStatus is 3]'Look, it's our runaway breeder. Come on little bitch, we'll bring you back home and give you what you really need.' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [otherwise if OrcSlaverStatus is 50]'This time, you're going down. We'll make a breeder out of you yet.'  he grunts, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [end if]You barely have time to get up and take a combat stance before the other two orcs are upon you...";
	say "    [line break]";
	challenge "Orc Warrior";
	if fightoutcome is 22:
		say "[SubmitToOrcSlavers]";
	otherwise if fightoutcome >= 20 and fightoutcome <= 29:      [lost]
		say "[LoseToOrcSlavers]";
	otherwise if fightoutcome >= 30:     [fled]
		say "[RunFromOrcSlavers]";
	otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
		say "     After a last hit on the orc, his muscled form collapses at your feet. But there's not even a moment to catch your breath as the second brute snarls and attacks you right away.";
		say "     [line break]";
		challenge "Orc Warrior";
		if fightoutcome is 22:
			say "[SubmitToOrcSlavers]";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
			say "[LoseToOrcSlavers]";
		otherwise if fightoutcome >= 30:     [fled]
			say "[RunFromOrcSlavers]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			say "     Two down, one to go. The third orc stops tying up his captive and comes at you with balled fists.";
			say "     [line break]";
			challenge "Orc Warrior";
			if fightoutcome is 22:
				say "[SubmitToOrcSlavers]";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
				say "[LoseToOrcSlavers]";
			otherwise if fightoutcome >= 30:     [fled]
				say "[RunFromOrcSlavers]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Looking around, you see the guy who got you into this whole mess just wiggling out of the last coil of rope the orc put around him, then stare at you and the beaten orcs. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
				say "     [line break]";
				say "     Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them (Y), or do you just leave (N)?";
				if player consents:
					say "     [line break]";
					say "     [BeatenOrcSexMenu]";
				otherwise:
					say "     [line break]";
					say "     You walk away after checking them over for loot.";

to say RunFromOrcSlavers:
	say "     Sometimes escape is the best - or only - option. Running as fast as you can, you flee and manage to make em lose sight of you after a short while. As you stand around a corner and pant heavily to catch your breath, you can hear them talk in their gruff voices. 'Bah - forget it, we lost [if cocks of player is 0 and cunts of player > 0]her[otherwise]him[end if].' 'Fine, let's get back to the other one then - though he'll be pretty sore and stretched out by the time we're done taking turns!' Their voices get quieter as they they move away from you, making the last thing you hear 'Who cares? That's what breeders are for! He'll get used to it...'";

to say SubmitToOrcSlavers:
	if anallevel > 1:
		if "Dominant" is listed in feats of player:  
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
			say "     [line break]";
			say "     Note: Since you've selected [']Dominant['], you won't be dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.";			
		otherwise: 		
			say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' [otherwise if OrcSlaverStatus is 3]'Hm, did we already fuck all the will out of this one? Maybe it was too meek in the first place after all.' [otherwise]'Hm, this one looks a bit meek and weak. Doesn't even struggle to get away.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Bah, you worry too much, Yatur - orc seed is strong! [if cocks of player is 0 and cunts of player > 0]She'll[otherwise]He'll[end if] make a good enough breeder.' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
			say "    Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back for you.'";
			say "     [line break]";
			say "     With that, the orcs walk out of your cell, throwing the door closed as they walk off. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape. ";
			say "     [line break]";
			if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
				now OrcSlaverStatus is 1;
			move player to Slave Cell 2;
			now OrcSlaverCaptureTime is turns;
	otherwise:
		say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' His buddy steps up and gives your ass a rough squeeze. 'Maybe you're right, Yatur - let's leave this wretched thing and just enjoy the other one.' With that, they unceremoniously push you to the ground and leave, carrying their captive with them.";
		say "     [line break]";
		say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex.";
	
to say LoseToOrcSlavers:
	if anallevel > 1:	
		if "Dominant" is listed in feats of player:  
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
			say "     [line break]";
			say "     Note: Since you've selected [']Dominant['], you won't be dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.";			
		otherwise: 
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. [if OrcSlaverStatus is 3]Even after being broken in, you're still struggling - you'll bear strong sons.' [otherwise]Try to keep some of it when you become a breeder.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Nice - I bet there'll be fights who gets to fuck that after we've had our fun with you!' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
			say "    Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back.'";
			say "     [line break]";
			say "     With that, the orcs walk out of your cell, throwing the door closed as they move down the hallway. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
			say "     [line break]";
			if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
				now OrcSlaverStatus is 1;
			move player to Slave Cell 2;
			now OrcSlaverCaptureTime is turns;		
	otherwise:
		say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
		say "     [line break]";
		say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex.";
			
Section 5 - Orc Lair
			
Orc Lair Side Entrance is a room. It is a fasttravel. It is private.
The description of Orc Lair Side Entrance is "     You're standing outside a side door leading into the Capitol District police station. Maybe it'd be a good idea not to stay here too long, with this being the main orc lair in the city. Sooner or later, one of them is bound to come out or return here...";

West of Orc Lair Side Entrance is Dark Hallway 2.
The description of Dark Hallway 2 is "     You're in a long windowless hallway continuing to the west and ending at the side door of the building in the east. An unmarked door leads to the north. It's pretty dark in here with no windows or electricity for the lights on the ceiling.";

North of Dark Hallway 2 is Observation Room.
The description of Observation Room is "     This is a relatively small room with recording equipment and a one-way-mirror window in the west wall, allowing a view into the interrogation room to the west. Not much to see currently, though - it's pretty dark in there. Though from what you can make out of its contents... and the splash of what's clearly dried cum on the glass, you'd bet that room has seen quite a bit of use recently. Interestingly, the sound system is hooked up to a car battery standing on the single table in here - so you bet one could also hear everything going on next door clearly. Maybe it'd be worth your while to [bold type]wait[roman type] here and observe what might happen.";

before going North from Dark Hallway 2:
	say "     The door of the observation room is a bit warped or something, requiring you to wiggle and lift the doorknob a bit as you open it. That fact, together with the relatively small size of the room might actually make it a rare safe spot in the orc lair. If you do want to get some rest somewhere in here, this would be the place to do it...";

West of Dark Hallway 2 is Dark Hallway 1;
The description of Dark Hallway 1 is "     You're in a long windowless hallway continuing to the east and ending at the entrance of a large room in the west. From the sounds of many orcs talking, drinking and fucking that echo from in there, you're pretty sure you shouldn't go that way right now. Thankfully, with no electricity to run the lights, it's pretty dark in the hallway, so you're relatively safe in its shadowy length. A locked door bearing a plaque with 'Interrogation' on it leads to the north, while another with the sign 'Cells' lies to the south.";

after going west from Dark Hallway 2 while a random chance of 1 in 2 succeeds:
	say "    [OrcLairMainChamberWatching]";

after going north from Breeder Lockup A while a random chance of 1 in 2 succeeds:
	say "    [OrcLairMainChamberWatching]";
	
to say OrcLairMainChamberWatching:	
	try looking;
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:	
			say "     Hearing some especially loud moans and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - and currently in use, as the twenty to thirty orc warriors present gangbang a group of human soldiers. Seems like they're freshly caught, as they are only just starting to transform, despite being fucked in the ass and mouth, as well as having orcs jerking off to cover them with cum.";
			say "     There's just no way you could do anything to help those men, so after watching a moment longer, you move back, deeper into the shadows in the hallway. Getting caught up in between all the orcs in the main chamber of this police station turned orc lair is really something you should avoid.";
		-- 2:
			say "     Hearing some especially loud bellows and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - though no one uses them at the moment, as the twenty to thirty orc warriors present stand around and cheer at a pair of the green-skinned brutes arm-wrestling. You recognize one of the contestants as Mul, one of the orc slavers who brought you here, straining to push against the arm of another orc with a broken tusk.";
			say "     All the bellowing and excitement about the close competition between those two orcs totally holds your attention captive and you almost forget for a moment that you have to stay hidden. Only when Mul manages to get the upper hand and brings his opponent's arm crashing down on the desk with a loud thunk do you manage to shake your strange fascination with their exploits off and duck back into the dark shadows of the hallway. Good that all the orcs in there were totally focused on the arm wrestling too - getting caught up in the main chamber of this police station turned orc lair is really something you should avoid.";
		-- 3:
			say "     Hearing some especially loud bellows and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - many of them serve as resting places for drunk and dozing orcs, as there seems to be a drinking competition between the twenty to thirty orc warriors present. Accompanied by chants of 'Chug! Chug! Chug!', the orcish brutes down pitcher after pitcher of beer, uncaring how much they spill. Where are they getting all this stuff? They must have raided a brewery or something...";
			say "     After watching a moment longer, you move back, deeper into the shadows in the hallway. Getting caught up in between all the orcs in the main chamber of this police station turned orc lair is really something you should avoid.";
		-- 4:
			say "     Hearing some especially loud bellows and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. Having pushed all the desks, sofas and mattresses in what previously was the main working area of this police station to the side, there's something akin to a wrestling match going on - between an orc and a minotaur. They must have caught the big bull to have an adequate opponent for the muscle-packed brute battling him in the midst of a circle of about twenty to thirty orcs. From the cheering and shouts raised over that, there's quite a bit of betting going on.";
			say "     All the bellowing and excitement about the close competition between those two totally holds your attention captive and you almost forget for a moment that you have to stay hidden. Only when the orc finally manages to get the upper hand and brings is opponent crashing to the floor with a loud thunk do you manage to shake your strange fascination with their exploits off and duck back into the dark shadows of the hallway. A cross between a bovine bellow and a whimper a moment later tells you that the orc decided to savour the pleasures of his victory right away...";
		-- 5:
			say "     Hearing some especially loud laughing and grunting from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. Having pushed all the desks, sofas and mattresses in what previously was the main working area of this police station to the side, they've set up... an inflatable wading pool? About twenty to thirty naked orcs stand all around it, jerking off, and have already filled it with quite a bit of greenish-white orc cum. Then another orc comes out of a side room with a large metal barrel under his arm. You can't stop yourself from watching as he wrenches open its lid an then pours a slippery white humanoid into form the pool.";
			say "     As it splashes down, you realize that the creature consists of nothing but cum and has a feminine figure - though not for long, as the cum girl immediately starts to meld with the orc seed all around herself. She quivers and shifts, her face showing an expression of surprise as she looks down and sees green veins working their way through her body. When the rapid change of the cum creature finishes, it no longer looks female, but has the form of a burly and muscular, if a bit slimy-looking, orc. The newly transformed cum-orc gives a loud bellow and wades forward with sloshing movements to sink its mouth on the nearest orc's cock, hungry for more.";
			say "     Finally shaking off the strange fascination that made you watch the things going on in there, you duck back into the dark shadows of the hallway. Getting caught up in between all the orcs in the main chamber of this police station turned orc lair is really something you should avoid - especially as they just might throw you in with their new pet at the moment.";			

South of Dark Hallway 1 is Breeder Lockup A;
The description of Breeder Lockup A is "     You're in a room holding two large cells to the east and west - most likely originally the 'drunk tank' and another group holding cell. Now the orcs use them to lock up their newly caught slaves. A door to the north allows you to leave this place again. A bent nail to hold a key is driven into the south wall, well out of reach of anyone inside the cells.";

Cell Door 1 is a door.
Cell Door 1 is west of Breeder Lockup A;
Cell Door 1 is lockable and locked.
The description of Cell Door 1 is "    A metal cell door, consisting of a sturdy frame and several cell bars, plus three crossbars. Its lock has a mechanism that locks itself when the door swings shut, as well as a spring at the top preventing it from standing open without someone holding on to it. [if CellDoorStatus is 1 or CellDoorStatus is 3]Though looking closer, you realize the lock has been busted and won't engage at all now - which makes this a pretty easy to escape cell[end if]"; 
Cell Key unlocks Cell Door 2.

Slave Cell 1 is a room. 
Slave Cell 1 is west of Cell Door 1.
Slave Cell 1 is sleepsafe.
The description of Slave Cell 1 is "     This large cell holds a bed in the back, as well as a backless leather bench that's clearly meant to have sex on. It's seen quite a bit of use, judging from the cum-stains all over it and on the floor around. Shreds of fabric and quite a few ripped pieces of clothing lie strewn about on the floor. The only exit from this cell is a door in the east. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise if CellDoorStatus is 1 or CellDoorStatus is 3]Good that the lock is busted, otherwise you'd be stuck in here.[otherwise]You're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]".

Cell Door 2 is a door.
Cell Door 2 is east of Breeder Lockup A;
Cell Door 2 is lockable and locked.
The description of Cell Door 2 is "    A metal cell door, consisting of a sturdy frame and several cell bars, plus three crossbars. Its lock has a mechanism that locks itself when the door swings shut, as well as a spring at the top preventing it from standing open without someone holding on to it. [if CellDoorStatus is 2 or CellDoorStatus is 3]Though looking closer, you realize the lock has been busted and won't engage at all now - which makes this a pretty easy to escape cell[end if]"; 
Cell Key unlocks Cell Door 2.

Slave Cell 2 is a room. 
Slave Cell 2 is east of Cell Door 2.
Slave Cell 2 is sleepsafe.
The description of Slave Cell 2 is "     This large cell holds a bed in the back, as well as a backless leather bench that's clearly meant to have sex on. It's seen quite a bit of use, judging from the cum-stains all over it and on the floor around. Shreds of fabric and quite a few ripped pieces of clothing lie strewn about on the floor. The only exit from this cell is a door in the west. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise if CellDoorStatus is 2 or CellDoorStatus is 3]Good that the lock is busted, otherwise you'd be stuck in here.[otherwise]You're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]".

after going west from Breeder Lockup A:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 2:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a disconcerting click as it locks. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise]Now you're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]";
		now the Cell Door 1 is closed;
		now the Cell Door 1 is locked;
	otherwise:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't engage.";
		now the Cell Door 1 is closed;
		
after going east from Breeder Lockup A:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 1:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a disconcerting click as it locks. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise]Now you're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]";
		now the Cell Door 2 is closed;
		now the Cell Door 2 is locked;
	otherwise:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't engage.";
		now the Cell Door 2 is closed;

after going east from Slave Cell 1:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 2:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a click as it locks.";
		now the Cell Door 1 is closed;
		now the Cell Door 1 is locked;
	otherwise:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't snap locked.";
		now the Cell Door 1 is closed;

after going west from Slave Cell 2:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 1:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a click as it locks.";
		now the Cell Door 2 is closed;
		now the Cell Door 2 is locked;
	otherwise:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't snap locked.";
		now the Cell Door 2 is closed;

Cell Key is a grab object.
It is not temporary.

instead of using Cell Key:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2 and player is not in Breeder Lockup A:
		say "     A bit hard to use a key without being anywhere near the lock.";
	otherwise if player is in Breeder Lockup A:
		if CellDoorStatus is 0:  [standing between two intact doors]
			say "     You unlock both cells, leaving them open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 3:  [standing between two broken doors]
			say "     Both door locks are broken, you don't really need the key anymore.";
		otherwise if CellDoorStatus is 1:  [standing between a broken and unbroken door]
			say "     You unlock the one intact doorlock.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
	otherwise if player is in Slave Cell 1:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     The lock clicks, and the door opens a little.";
			now the Cell Door 1 is unlocked;
		otherwise if CellDoorStatus is 1 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";
	otherwise if player is in Slave Cell 2:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     The lock clicks, and the door opens a little.";
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 2 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";

instead of unlocking Cell Door 1 with Cell Key:
	try CellUnlocking;

instead of unlocking Cell Door 2 with Cell Key:
	try CellUnlocking;
	
understand "unlock Cell Door 2" as CellUnlocking.
understand "unlock Cell Door 1" as CellUnlocking.
understand "unlock Cell Door" as CellUnlocking.
understand "unlock Cell Door with key" as CellUnlocking.
understand "unlock Cell Door 2 with key" as CellUnlocking.
understand "unlock Cell Door 1 with key" as CellUnlocking.
understand "unlock Cell Door 2 with cell key" as CellUnlocking.
understand "unlock Cell Door 1 with cell key" as CellUnlocking.

CellUnlocking is an action applying to nothing.

check CellUnlocking:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2 and player is not in Breeder Lockup A, 	say "     Which cell do you want to unlock?" instead;
	if carried of Cell Key is 0, say "     You do not have a key that fits." instead;
	if Cell Door 2 is unlocked and player is in Slave Cell 2, say "     It's already unlocked." instead;
	if Cell Door 1 is unlocked and player is in Slave Cell 1, say "     It's already unlocked." instead;
	
carry out CellUnlocking:
	if player is in Breeder Lockup A:
		if CellDoorStatus is 0:  [standing between two intact doors]
			say "     You unlock both cells, leaving them open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 3:  [standing between two broken doors]
			say "     Both door locks are broken, you don't really need the key anymore.";
		otherwise if CellDoorStatus is 1:  [standing between a broken and unbroken door]
			say "     You unlock the one intact doorlock.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
	otherwise if player is in Slave Cell 1:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     You unlock the cell, leaving the door open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
		otherwise if CellDoorStatus is 1 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";
	otherwise if player is in Slave Cell 2:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     You unlock the cell, leaving the door open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 2 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";


Table of Game Objects(continued)
name	desc	weight	object
"Cell Key"	"A relatively unremarkable key that opens the cell doors of the Orc Lair. There's still a few dried cum stains on it."	0	Cell Key

the scent of Cell Key is "Smells like metal and a bit of cum.";

the invent of Breeder Lockup A is {"Cell Key"}.

before opening Cell Door 1:
	if Cell Key is owned and Cell Door 1 is locked:
		now Cell Door 1 is unlocked;
		say "You use your key to unlock the door.";

before opening Cell Door 2:
	if Cell Key is owned and Cell Door 2 is locked:
		now Cell Door 2 is unlocked;
		say "You use your key to unlock the door.";

CellDoorStatus is a number that varies;

[CellDoorStatus                                   ]
[ 0: both intact                                  ]
[ 1: Lock in Door 1 busted                        ]
[ 2: Lock in Door 2 busted                        ]
[ 3: Both Locks busted                            ]

CellEscape is an action applying to nothing.

understand "escape this cell" as CellEscape;
understand "escape the cell" as CellEscape;
understand "escape cell" as CellEscape;
understand "escape this slave cell" as CellEscape;
understand "escape the slave cell" as CellEscape;
understand "escape slave cell" as CellEscape;
understand "break out" as CellEscape;

check CellEscape:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2, say "You're not in a cell at the moment." instead;
	if player is in Slave Cell 1 and (CellDoorStatus is 1 or CellDoorStatus is 3), say "    The lock is busted, you can just walk out - no need for escape plans anymore." instead;
	if player is in Slave Cell 2 and (CellDoorStatus is 2 or CellDoorStatus is 3), say "    The lock is busted, you can just walk out - no need for escape plans anymore." instead;
	if player is in Slave Cell 1 and (CellDoorStatus is 2 or CellDoorStatus is 0) and Cell Key is owned, say "    You've got a key, just use it and walk out." instead;
	if player is in Slave Cell 2 and (CellDoorStatus is 1 or CellDoorStatus is 0) and Cell Key is owned, say "    You've got a key, just use it and walk out." instead;

Carry out CellEscape:
	say "     So, how do you want to get out of here?";
	wait for any key;
	say "     [EscapeMenu]";

to say EscapeMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Search the cell for anything of use";
	now sortorder entry is 1;
	now description entry is "Maybe one of the orcs lost a key or something...";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Pick the lock";
	now sortorder entry is 2;
	now description entry is "That hairpin there on the floor should suffice - if you've got the dexterity to use it right.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Break the lock";
	now sortorder entry is 3;
	now description entry is "Just smash it.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Sabotage the lock";
	now sortorder entry is 4;
	now description entry is "Make the orcs themselves break the lock. You'll get fucked, but can escape afterwards.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Wait to get fucked, then sneak out afterwards";
	now sortorder entry is 5;
	now description entry is "Tire them out and escape while they sleep.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Nothing";
	now sortorder entry is 10;
	now description entry is "Exit this menu.";
	now toggle entry is EscapeOption rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the EscapeOption rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Search the cell for anything of use"):
			say "[EscapeOption1]";
		if (nam is "Pick the lock"):
			say "[EscapeOption2]";
		if (nam is "Break the lock"):
			say "[EscapeOption3]";
		if (nam is "Sabotage the lock"):
			say "[EscapeOption4]";
		if (nam is "Wait to get fucked, then sneak out afterwards"):
			say "[EscapeOption5]";
		otherwise if (nam is "Nothing"):
			say "     ";
		wait for any key;
		
to say EscapeOption1:
	say "     You dig around among the shredded belongings of various people brought here as slaves, and...";
	let bonus be (( perception of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Perception Check)[line break]";
	if dice + bonus >= 19:
		say "     ...after some time searching and almost giving up hope multiple times, you do find a key. Judging from the dried cum on it, some orc must have dropped it while busy with entertaining himself. After cleaning it as good as you can with a piece of ripped fabric, you grab the key and let yourself out of the cell. When you close the door behind you, its lock automatically snaps closed again.";
		increase carried of Cell Key by 1;
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	otherwise:
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then opens the door and step inside.";
				say "     [line break]";
				say "[OrcGangbang1]";
			-- 2:		
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck1]";
			-- 3:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[YaturFuck1]";
			-- 4:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[MulFuck1]";				
						
to say EscapeOption2:
	say "     You snatch up the hairpin you spotted before and try to pick the lock.";
	let bonus be (( dexterity of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Dexterity Check)[line break]";
	if dice + bonus >= 19:
		say "     ...after some tricky fiddling around, you manage to unlock the cell door with a click and slip outside. When you close the door behind you, its lock automatically snaps closed again.";
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	otherwise:
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then opens the door and step inside.";
				say "     [line break]";
				say "[OrcGangbang1]";
			-- 2:		
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck1]";
			-- 3:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[YaturFuck1]";
			-- 4:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[MulFuck1]";				
			
to say EscapeOption3:
	say "     You take a few steps back and rush at the door, trying to batter it down by brute strength...";
	let bonus be (( strength of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 21 and score [dice plus bonus]: (Strength Check)[line break]";
	if dice + bonus >= 21:
		say "     ...and after some throwing yourself against it several times, you manage to break the lock. After that it's no problem at all to just walk outside.";
		if player is in Slave Cell 1:
			now Cell Door 1 is unlocked;
			if CellDoorStatus is 0 or CellDoorStatus is 2:
				increase CellDoorStatus by 1;
		otherwise if player is in Slave Cell 2:
			now Cell Door 2 is unlocked;
			if CellDoorStatus is 0 or CellDoorStatus is 1:
				increase CellDoorStatus by 2;
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	otherwise:
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:				
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then opens the door and step inside.";
				say "     [line break]";
				say "[OrcGangbang1]";
			-- 2:		
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck1]";
			-- 3:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[YaturFuck1]";
			-- 4:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[MulFuck1]";				
			
to say EscapeOption4:
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, finished with their meal and now fully focused on other matters - you being at the top of the list. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then find that the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' one of the orcs growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still three horny orcs to satisfy...";
			say "     [line break]";
			say "[OrcGangbang1]";
			say "     [line break]";
			say "     After the three of them are out and away, having throwing the cell door closed behind them, you stand up from the leather bench, wet and sticky with cum as you are. They must have forgotten that the lock isn't working anymore - or maybe they're just trusting the intoxicating effects of the orc cum to keep you docile. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
		-- 2:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then reaches to open the door and finds out the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' he growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still a horny orcs to satisfy...";
			say "     [line break]";
			say "[KoghhFuck1]";
			say "     [line break]";
			say "     After he's out and away, having throwing the cell door closed behind them, you stand up from the leather bench. Koghh must totally have forgotten that the lock isn't working anymore - or maybe he's just trusting you to be a docile little slave. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
		-- 3:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then reaches to open the door and finds out the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' he growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still a horny orcs to satisfy...";
			say "     [line break]";
			say "[KoghhFuck1]";
			say "     [line break]";
			say "     After he's out and away, having throwing the cell door closed behind them, you stand up from the leather bench. Yatur must totally have forgotten that the lock isn't working anymore - or maybe he's just trusting you to be a docile little slave. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
	if player is in Slave Cell 1:
		now Cell Door 1 is unlocked;
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			increase CellDoorStatus by 1;
	otherwise if player is in Slave Cell 2:
		now Cell Door 2 is unlocked;
		if CellDoorStatus is 0 or CellDoorStatus is 1:
			increase CellDoorStatus by 2;
	now OrcSlaverStatus is 3;
	move player to Breeder Lockup A;
	
to say EscapeOption5:
	say "     Bowing to the inevitable, you take off your gear and clothing, neatly stacking it all in the far corner of the cell where it has the best chance not to get dirty in what you know will happen soon. You await the orcs naked, sitting on the leather fuck-bench, determined to wear em out so you can escape afterwards. Soon, your captors return, finished with their meal and now fully focused on other matters - you being at the top of the list. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then unlock the door and step inside.";
	say "     [line break]";
	say "[OrcGangbang2]";
	now OrcSlaverStatus is 3;
	increase carried of Cell Key by 1;
	move player to Breeder Lockup A;
	move Mul to Slave Cell 2;
	
An everyturn rule:
	if (OrcSlaverStatus > 0 and OrcSlaverStatus < 50 and player is in Slave Cell 1 or player is in Slave Cell 2) and (Mul is not in Slave Cell 1 and Mul is not in Slave Cell 2) and (OrcSlaverCaptureTime - turns > 1) and a random chance of 1 in 3 succeeds:  
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:				
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually, looking to enjoy their slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[OrcGangbang1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 2:		
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[KoghhFuck1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 3:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[YaturFuck1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 4:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[MulFuck1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;					
	if player is in Breeder Lockup A or player is in Dark Hallway 1 or player is in Dark Hallway 2 or player is in Orc Lair Side Entrance and a random chance of 1 in 3 succeeds:
		challenge "Orc Warrior";
	if Mul is in Slave Cell 2 or Mul is in Slave Cell 1:
		if (player is in Slave Cell 2 and Mul is in Slave Cell 2) or (player is in Slave Cell 1 and Mul is in Slave Cell 1):
			say "     Mul's brothers return some time later, opening up the cell and waking him to accompany them on another raid. Rubbing sand from his eyes, the big orc grabs his loincloth, binds it around himself and leaves with them.";
		remove Mul from play;
	if player is in observation room and a random chance of 1 in 4 succeeds:
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:	
				say "     [OrcBrotherlyLove1]";		
			-- 2: 
				say "     [ZebraBreederTransformation]";
			-- 3: 
				say "     [ObservationRoomFuck]";
	
to say OrcGangbang1:
	if OrcSlaverStatus is 1:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Though just so you know who owns you, I'm Mul and these are my brothers Yatur and Koghh. We'll break you in good, little piggy.' ";
	otherwise: 
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Me and my brothers will fuck you good.' ";
	say "With that, they step up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're naked in between them. Their large orc hands grope you all over, roughly squeezing your ass and feeling you up. Seems like they like what they see, as all three of them quickly show bulges under their loincloths that soon harden to thick and erect orc cocks, pushing aside the ragged fabric as they do so.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'This is an eager little slut, brothers. Wait till you feel that mouth around your cocks!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're told to lie down on your stomach, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Eager to get more of the tasty orc precum and cum in your moth, you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your stomach, with your head hanging over the end. You quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Well, at least getting more of their tasty precum and cum should help a bit with the rough fucking you expect to get now, so you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out and make room for his brother Koghh - though him sinking another thick orc prick into your slick, cum filled hole brings you back to reality in a second, gasping at the sudden penetration. The third orc slaver, Mul, takes the opportunity to push his erection into your open mouth, taking hold of your head with both of his large hands to fuck your face.";
	say "     [WaitLineBreak]";
	say "     The two orcs enthusiastically spit-roast you, with Mul working you up to deep-throat his big orc prick and Koghh relishing in the feelings of having his brother's cum squish around his thrusting shaft as he fucks you. The effects of all the orc cum you already have in you, as well as Mul's tendency not to give you quite enough time to breathe and combined with the sensations of getting shafted hard and deep leaves your mind in a bit of a haze, and you kinda lose track of time after that. An unknown while of many lust-filled moments later, Mul reaches his own climax and rams his cock all the way down your throat, pulsing as it blasts this thick orc cum directly into your stomach. This new infusion of oh so tasty and stimulating orc cum pushes you over the edge right with him, making you [if cocks of player > 0]cream the bench under you with even more cum.[otherwise if cunts of player > 0]squirting even more femcum over the bench under your crotch.[otherwise]tremble and shake an orgasm wracks your body.[end if]";
	say "    Having your hole tremble and twitch around his orcish member while you come soon gives Koghh the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, adding his own spunk to his brother's cum already squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and pool on the leather bench.[mimpregchance]";
	say "     [WaitLineBreak]";
	say "     Pulling out of you in satisfaction, the orcs grin at each other and down at your cum-dripping form. 'I like this one. Let's keep [if cunts of player > 0]her [otherwise]him [end if]just for us to breed' Yatur tells his brothers, immediately getting affirmative grunts from the other two. Chuckling and telling each other what they'll do do you next time, they then exit the cell, leaving you just lying on the bench, naked and exhausted.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
		say "     [line break]";
		say "     You feel something change deep inside you, as all the cum the three orcs filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The ['][bold type]MPreg[roman type]['] feat has been added to your list.";
		add "MPreg" to feats of player;
	decrease humanity of player by 10;
	
to say OrcGangbang2:
	if OrcSlaverStatus is 1:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Though just so you know who owns you, I'm Mul and these are my brothers Yatur and Koghh. We'll break you in good, little piggy.' ";
	otherwise: 
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Me and my brothers will fuck you good.' ";
	say "With that, they step up to you, clearly pleased to have you waiting for them in your fully naked state. Their large orc hands grope you all over, roughly squeezing your ass and feeling you up. Seems like they like what they see, as all three of them quickly show bulges under their loincloths that soon harden to thick and erect orc cocks, pushing aside the ragged fabric as they do so.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'This is an eager little slut, brothers. Wait till you feel that mouth around your cocks!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, he then tells you lie down on your stomach and you quickly do so, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Eager to get more of the tasty orc precum and cum in your moth, you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then make yourself swallow your pride and start lapping away at his nuts in earnest. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Really hoping that this'll be worth it in the end, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, he then tells you to lie down on your stomach and you quickly do so, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Well, at least getting more of their tasty precum and cum should help a bit with the rough fucking you expect to get now, so you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready. The orc slaver whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out and make room for his brother Koghh - though him sinking another thick orc prick into your slick, cum filled hole brings you back to reality in a second, gasping at the sudden penetration. The third orc slaver, Mul, takes the opportunity to push his erection into your open mouth, taking hold of your head with both of his large hands to fuck your face.";
	say "     [WaitLineBreak]";
	say "     The two orcs enthusiastically spit-roast you, with Mul working you up to deep-throat his big orc prick and Koghh relishing in the feelings of having his brother's cum squish around his thrusting shaft as he fucks you. The effects of all the orc cum you already have in you, as well as Mul's tendency not to give you quite enough time to breathe and combined with the sensations of getting shafted hard and deep leaves your mind in a bit of a haze, and you kinda lose track of time after that. An unknown while of many lust-filled moments later, Mul reaches his own climax and rams his cock all the way down your throat, pulsing as it blasts this thick orc cum directly into your stomach. This new infusion of oh so tasty and stimulating orc cum pushes you over the edge right with him, making you [if cocks of player > 0]cream the bench under you with even more cum.[otherwise if cunts of player > 0]squirting even more femcum over the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body.[end if]";
	say "    Having your hole tremble and twitch around his orcish member while you come soon gives Koghh the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, adding his own spunk to his brother's cum already squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and pool on the leather bench.[mimpregchance]";	
	say "     [WaitLineBreak]";
	say "     Pulling out of you in satisfaction, the orcs grin at each other and down at your cum-dripping form. 'I like this one. Let's keep [if cunts of player > 0]her [otherwise]him [end if]just for us to breed' Yatur tells his brothers, immediately getting affirmative grunts from the other two. Chuckling and telling each other what they'll do do you next time, they then turn to leave - something you can't let happen if you want to get out of here. Standing up on trembling legs, you call out 'Wait!' much to the surprise of the three big brutes who turn and look at you. As you step up to Mul and reach under his loincloth to caress his weighty balls, the orcs laugh and Koghh says 'Seems our horny little slut doesn't want to let you go without feeling your shaft inside, brother.' 'Yeah, a typical breeder' Yatur adds, then says 'Have fun - [if cunts of player > 0]she[otherwise]he[end if] really has quite a nice ass.' With that, Koghh and Yatur step out of the cell, leaving just you and Mul.";
	say "     'Come here, my eager little piggy' Mul grunts and pulls off his loincloth, letting it fall down to the ground. You casually notice the sound of a key clinking against the ground as it drops, not letting that realization show on your face, then step up to the muscled orc. Mul eagerly picks you up and holds you tight against his chest, then rubs the tip of his hard shaft against your ass. Good for you that you're still literally dripping with slippery orc cum down there, as he just pushes you down on top of it, impaling your ass on his thick prick. He uses you like an oversized fleshlight for a while pumping you up and down on his erection, though after a while it starts to show that he already came not too long ago and is somewhat worn out from that. Stepping over to the fuckbench, he lies down on it lengthwise on his back, with you on top of him."; 
	say "     [WaitLineBreak]";
	say "     Taking the initiative, not wanting to let him catch his breath and rest too much, you start rocking back and forth, sliding the ring of your pucker up and down his green shaft, causing Mul to moan and pant in pleasure. Arousing him enough to forget his exhaustion, you animate the orc to grip your hips and buck up against you, driving his thick shaft deep into you with the unrestrained intensity of a real orcish warrior. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Mul fucks you for quite a while, then eventually starts grunting louder and louder as he gets close - and erupts with a massive load deep in your ass.[mimpregchance]";
	say "     The fresh batch of orc cum pumping into you gives you another mind-twisting high that has you just moaning and shivering on top of the brutish orc, orgasming right along with him and [if cocks of player > 0]spraying your own cum all over his chest. [otherwise if cunts of player > 0]leaking femcum to soak into his pubic hair. [otherwise]trembling as pleasant feelings flood your whole body. [end if]Panting, you sink down on his chest, resting your head against its broad muscled form. You even doze off for a little while, just as he does - but other than the orc, who sinks deeper and deeper into sleep, you pinch yourself awake again. Lying on Mul's chest, you wait a while until his satisfied snores are deep and regular, then slowly and carefully slip out from under the muscled arm holding you to his chest. Sweaty and cum-dripping as you are, you silently un-knot the cell key from its string on his loincloth, then go grab your gear and clothes and slip out of the cell.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
		say "     [line break]";
		say "     You feel something change deep inside you, as all the cum the three orcs filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The ['][bold type]MPreg[roman type]['] feat has been added to your list.";
		add "MPreg" to feats of player;
	decrease humanity of player by 10;
	
to say KoghhFuck1:
	say "     'My brothers Mul and Yatur are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' In one quick move, he pulls off his loincloth and throws it aside, revealing an already half hard thick and veiny cock. 'Let's see if you're ready to take the mighty shaft of Koghh!' he growls, jerking himself and then slapping his erect manhood into the palm of his other hand with a meaty thud. After a moment more of posturing and trying to intimidate you with the size of his cock, Koghh steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked. His large orc hands grope you all over, roughly squeezing your ass and feeling you up.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, the muscular orc chuckles as you immediately kneel down and eagerly slide your lips over the tip of his erect cock. Fulfilling the demands of your horny and strong master has you getting quite aroused, only helped along by the delicious and stimulating taste of his precum. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Get on the fuckbench, slut!' he growls in a domineering tone that has you shivering with lust inside.";
		say "     [WaitLineBreak]";
		say "     Quickly getting up and almost stumbling as you rush over to it, you're told to lie down on your back, with your head right at the end. The tall orc then moves to stand directly over you, his muscular legs left and right of your chest as his balls dangle in your face. Without having to be asked, you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. Putting your hands on his thighs and stroking their firm, yet soft length, you settle into a good rhythm of licking and stroking, doing your very best for him.";
		say "     Looking up past his balls and erect cock, you see Koghh moan and put a hand to his muscled chest, rubbing one of his nipples with a thick finger. While doing so, he gives the room outside the cell a wary glance, then stops and listens, seemingly relieved that no other orc is near. You can feel his leg muscles tense and later relax as he makes a decision. Turning his attention to you, the orc slaver then says in a silent growl 'I'll break your legs if you tell anyone about this' and grips you under the arms, pulling you a bit up on the bench so your head dangles over the edge. With a last look towards the closed door of the room outside, he then steps forward and bends his knees a little, bringing his butt right against your face and pulling its firm cheeks apart.";
		say "     [WaitLineBreak]";
		say "     Seems like your orcish master likes getting his ass eaten out, something that clearly isn't the norm about warrior orcs, and which you're of course willing to do as his obedient slave. Pressing your nose against the somewhat hairy skin between his legs, you take a deep sniff of his clean, masculine smell and start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
		say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' Happy and willing to serve, as always, you immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and even the ground outside.";
		say "     [WaitLineBreak]";
		say "     After waiting a moment to catch his breath, Koghh quickly pulls away from you and walks to the other end of the bench. He takes hold of your legs, raising and spreading them, then grasps his still pretty hard cock and rubs it against your ass, leaving your hole wet with the cum still clinging to its tip and what he can milk out of his manhood. Dropping your legs after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc quickly snatches up his loincloth and ties it around his hips, then leaves the cell and throws its door shut behind himself.";
	otherwise:   [normal players]
		say "     Holding his shaft out to you, Koghh grunts in impatience as you don't react at once, then puts a hand on your shoulder and pushes down, making you kneel. The grunted command of 'Get to work, slave' and him gripping your hair finally results in you reluctantly opening your mouth and sliding your lips over the tip of his erect cock. Suckling on the orc's cock gives you a surprisingly delicious and stimulating taste of his precum, and despite yourself you can't help but get aroused. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Get on the fuckbench, slut!' he growls in a domineering tone.";
		say "     [WaitLineBreak]";
		say "     Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your back, with your head right at the end of the bench. The tall orc then moves to stand directly over you, his muscular legs left and right of your chest as his balls dangle in your face. Hesitantly giving his hairy globes a lick or two, you wince as he gives your hair a jerk and growls 'Faster'.. As annoying Koghh wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest.";
		say "     Looking up past his balls and erect cock, you see Koghh moan and put a hand to his muscled chest, rubbing one of his nipples with a thick finger. While doing so, he gives the room outside the cell a wary glance, then stops and listens, seemingly relieved that no other orc is near. You can feel his leg muscles tense and later relax as he makes a decision. Turning his attention to you, the orc slaver then says in a silent growl 'I'll break your legs if you tell anyone about this' and grips you under the arms, pulling you a bit up on the bench so your head dangles over the edge. With a last look towards the closed door of the room outside, he then steps forward and bends his knees a little, bringing his butt right against your face and pulling its firm cheeks apart.";
		say "     [WaitLineBreak]";
		say "     Seems like your orcish 'owner' likes getting his ass eaten out, something that clearly isn't the norm about warrior orcs. As tense as he is right now, you don't even want to know how he'd react if you refused, so there isn't much choice but to comply. Sniffling with your nose so close to the hairy skin of his butt, you're relieved that at least he smells clean, only of the usual masculine orc scent and nothing else. With a sigh, you start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
		say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and even the ground outside.";
		say "     [WaitLineBreak]";
		say "     After waiting a moment to catch his breath, Koghh quickly pulls away from you and walks to the other end of the bench. He takes hold of your legs, raising and spreading them, then grasps his still pretty hard cock and rubs it against your ass, leaving your hole wet with the cum still clinging to its tip and what he can milk out of his manhood. Dropping your legs after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc quickly snatches up his loincloth and ties it around his hips, then leaves the cell and throws its door shut behind himself.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";

to say YaturFuck1:
	say "     'My brothers Mul and Koghh are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' He chuckles and grips the bulge in his loincloth, continuing with 'You won't forget the name Yatur after I'm done with you.' With that, he steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely before him. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	otherwise if player is impreg_now:	
		say "'Oh yes, you'll do nicely. I can't wait till you give birth and I can fill you up with my seed again. You're gonna be a proper little breeder and bear me lots of children...'";
	otherwise:
		say "'Oh yes, you'll do nicely. I can't wait to fill you with my seed and knock you up like a proper little breeder...'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Yatur shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair.";
		say "     [WaitLineBreak]";
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'Aah, nice - an eager little slut!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'You won't get out of being bred by swallowing my seed, if that's what you were planning. Tempting, but no - I'm gonna take your ass now. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Yatur tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";		
		say "     Your orcish master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     Pulling the ragged fabric of his loincloth aside, Yatur shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest.";
		say "     [WaitLineBreak]";
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'You won't get out of being bred by swallowing my seed, if that's what you were planning. Tempting, but no - I'm gonna take your ass now. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orc 'owner' whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out - though the sensations of him pushing a thick finger into your stretched, cum-filled hole brings you back to reality in a second, gasping at the sudden penetration. After pushing his probing finger in and out a few times and using it to rub your insides, Yatur walks around the bench and holds out his hand with the command 'Taste it'.";
	say "     [WaitLineBreak]";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Sucking some of the cum he just fucked into your ass from your master's fingers - of course you jump at this, moaning as you pull his hand closer eagerly. Then your lips are around his digit, eagerly sucking on it to get all of the nectar-like orc cum off. Yatur chuckles and says 'That's a good breeder. I'm gonna love knocking you up again and again.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";	
	otherwise:
		say "     Sucking some of the cum he just fucked into your ass from your 'owner's' fingers - the thought makes you grimace and flinch away. Though not far - as Yatur's other hand quickly gets a painful grip in your hair and holds you still. 'Struggling won't help you, slave' the orc barks and pulls your head back, sticking his cum-covered finger into your mouth as you yelp in pain. 'Now clean it, suck it all off and swallow' he commands, and you're forced to comply. Even worse, his seed actually tastes quite good, making you a bit light-headed as you swallow it. Yatur chuckles and says 'Don't worry little breeder, you're gonna calm down and get more docile with every child you bear for me.' After giving you some more moments to really clean up all of the cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";			
		
to say MulFuck1:
	say "     'My brothers Yatur and Koghh are busy [one of]training with each other[or]giving Orbul a good stuffing[or]outside, having gone for a hunt together[or]fucking some soldiers that are being passed around in the main hall[or]in a brawl[at random], so I guess I've got you all to myself right now.' He chuckles and grips the bulge in his loincloth, continuing with 'Time to please your master Mul, little piggy' With that, he steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely before him. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	otherwise if player is impreg_now:	
		say "'Oh yes, you'll do nicely. You look good with that swollen belly of yours. Just like a proper breeder is supposed to...'";
	otherwise:
		say "'Oh yes, you'll do nicely. I'll teach you all you need to know to please your master!'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. He even lets go of your hair and actually smiles down at you, then says 'Good, that's a proper little slave. Ready to please. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. Eager to please the mighty orc, you enthusiastically worship his weighty globes, stimulating him so much that he has to suddenly push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Only a single big drop of greenish-white orc cum runs out of the tip of his thick shaft, then down its underside, to be quickly licked up by yourself. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I still wanna fuck your ass.'";
		say "     He waits a moment more to allow himself to relax, then presents you with his hard shaft. 'Blow me - and use lots of spit. You're gonna need it when I stick it in you!' he grumbles, a lusty grin on his face. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. The trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc moans 'Can't get enough of my cock, can you? Sluts make the best slaves, really!' He lets you continue for quite a bit, then grunts and pulls you off suddenly, ordering 'Get on the fuckbench!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Mul tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";		
		say "     Your orcish master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest - which earns you a satisfied grunt from your orc 'owner'. He even loosens his grip on your hair a bit, then gives you a patronizing smile and says 'That's better. You'll learn in time, little slave. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. As it seems best to keep him in a good mood, you do your best in taking care of his weighty globes. Then an idea springs up in your mind - if you get him to shoot his load now, that might just save you getting fucked by the massive schlong just inches from your face. Deciding to try it, you really get into pleasuring Mul and eventually stimulate him so much that he has to push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Damn, that didn't work out - but it was worth a try. Your thoughts are interrupted when you spot a single big drop of greenish-white orc cum runs out of the tip of Mul's thick shaft, then down its underside. Something about it just binds your attention completely, and with each breath you take in, the pleasant and heady smell of orc cum gets to you more. Seconds later, you give in to the desire that wakes inside you and find yourself leaning forward, eagerly licking up the drop of cum from his shaft. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I still wanna fuck your ass.'";
		say "     He waits a moment more to allow himself to relax, then presents you with his hard shaft. 'Blow me - and use lots of spit. You're gonna need it when I stick it in you!' he grumbles, a lusty grin on his face. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. The trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock, ordering 'Get on the fuckbench!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Mul tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orc 'owner' whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Mul reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out - though the sensations of him pushing a thick finger into your stretched, cum-filled hole brings you back to reality in a second, gasping at the sudden penetration. After pushing his probing finger in and out a few times and using it to rub your insides, Mul walks around the bench and holds out his hand with the command 'Taste it'.";
	say "     [WaitLineBreak]";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Sucking some of the cum he just fucked into your ass from your master's fingers - of course you jump at this, moaning as you pull his hand closer eagerly. Then your lips are around his digit, eagerly sucking on it to get all of the nectar-like orc cum off. Mul chuckles and says 'You like that, don't you? Be a good little slave and you'll get lots of it from my brothers and me - and others, if we loan you out.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";	
	otherwise:
		say "     Sucking some of the cum he just fucked into your ass from your 'owner's' fingers - the thought makes you grimace and flinch away. Though not far - as Mul's other hand quickly gets a painful grip in your hair and holds you still. 'Struggling won't help you, slave' the orc barks and pulls your head back, sticking his cum-covered finger into your mouth as you yelp in pain. 'Now clean it, suck it all off and swallow' he commands, and you're forced to comply. Even worse, his seed actually tastes quite good, making you a bit light-headed as you swallow it. Mul chuckles and says 'You can't tell me that you don't like it, slave - I can see it on your face. Just give in and accept it.' After giving you some more moments to really clean up all of the cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";			
						
to say OrcBrotherlyLove1:
	if "Submissive" is listed in feats of player:   [sub players]	
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and three persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc masters Yatur and Koghh, followed by a smaller orc - a breeder, judging from the different stature and almost pretty features. Yatur turns his head to the door and bellows 'We'll fill this little breeder till he bursts', and his brother intones in the same volume 'Yeah, can't wait to fuck the needy slut!' Interestingly, Koghh also speaks more towards the open door than actually to Yatur. A moment later he throws the door shut with a slam, then locks it.";
	otherwise:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and three persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owners' Yatur and Koghh, followed by a smaller orc - a breeder, judging from the different stature and almost pretty features. Yatur turns his head to the door and bellows 'We'll fill this little breeder till he bursts', and his brother intones in the same volume 'Yeah, can't wait to fuck the needy slut!' Interestingly, Koghh also speaks more towards the open door than actually to Yatur. A moment later he throws the door shut with a slam, then locks it.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     Do you want to watch what happens next in the interrogation room?";
	if player consents: 
		say "     [line break]";		
		say "     While the smaller orc saunters to one of the couches and sits down on it, Yatur picks up an orc-cock-sized dildo and a sting of anal beads and drops em on the couch besides him. After that, he goes to pick up a bottle of lube, throwing it for the green-skinned man to catch, and then... Yatur is pushed back against the wall by his brother Koghh, who runs a hand over his muscled chest and then kisses him. What follows is an eager and enthusiastic bit of making out and groping each other, rather rough and wild, but still letting the underlying deep-seated affection between those two show through. Meanwhile, their slave on the sofa starts playing with himself, soon lubing up the dildo his master gave him and pushing it into his own ass. And judging from the lust-filled expression on his face and the easy way he takes the pretty big sex toy, he obviously has been trained very well. He'd have to be, if the two brothers trust him enough to be their cover for some alone-time in here."; 
		say "     Coming up for air after another kiss, Yatur puts his hands on Koghh's sides, gently stroking them as he looks into the other orc's eyes deeply. You can hear him moan 'I love you, little brother', which makes Koghh caress put a caressing hand on his chest and give him a happy smile. This peaceful and caring moment lasts for another few seconds, then Yatur grunts 'Let's fuck!' and puts both his arms around Koghh, gripping his firm buttcheeks tightly as he pulls him close and lifts the large orc. Carrying his bother, Yatur makes a few steps over towards the sturdy bench in the center of the room, then lowers Koghh to sit on it. After quickly untying his lover's loincloth and pulling it aside, the powerful orc warrior puts a hand on Koghh's balls and fondles them for a moment before softly pushing against his chest to make him lie back.";
		say "     [WaitLineBreak]";
		say "     Stretched out on the padded leather of the bench, his firm butt just at the end of it, Koghh lifts and spreads his legs. Hooking both hands under the hollows of his knees, he comfortably holds them up, baring his butthole to Yatur. Aroused at the invitation, the orc quickly kneels down and starts licking, first running his tongue along the crack between Koghh's firm buttcheeks, then starting to push it against his pucker. Moans fill the chamber as Yatur eats his brother out, causing the other orc to writhe in pleasure and drip precum from his hard cock. After several minutes of this, Koghh reaches down to pull his lover's head up, then gives the urgent grunt 'Fuck me. Now! I need you inside me.'";
		say "     Yatur is only too happy to comply, literally tearing his own loincloth off as he quickly takes a kneeling position between Koghh's legs. He lines up his thick orc cock with his brother's hole and thrusts deep, making both of them grunt loudly in lust. Holding on to Koghh's legs, Yatur then starts to really pound into him, creating a slapping noise each time his hips hit the other orc's ass. It's incredibly wild, rough and intense sex without any restraints - just like Koghh likes it, apparently - as he gasps and grunts for Yatur to take him even harder. At one point, when the older orc brother leans over his sibling to lick and play with his nipples, he even gives him a light bite on the right pec, leaving some shallow tooth and tusk impressions in Koghh's skin.";
		say "     [WaitLineBreak]";
		say "     Their coupling eventually culminates when Koghh's moans get louder and louder and build up to a lust-filled scream. Wrapping both his legs around Yatur's hips and pulling him close as he orgasms, Koghh starts blasting many thick spurts of orc cum high into the air to splatter all down all over his chest and face. His brother is only moments behind, as the trembling and flexing muscles in Koghh's ass push him over the edge in short notice, and he pumps quite a massive load deep into the other orc's insides. Still breathing heavily as their orgasms wind down, the two orc warriors give each other a long and loving kiss and just hold each other for a while.";
		say "     Eventually, Yatur raises his head and calls to their decoy slave 'Come her and clean us up, Orbul.' The naked orc breeder on the couch immediately replies 'Yes master'. After quickly popping the last (and biggest) ball of the string of anal beads he's currently playing with into his hole, he then hurries to get to the orc brothers, hungrily lapping up all the cum from Koghh's chest, then sucking clean Yatur's cock. Orbul laps up the crack between the lying orc warrior's buns next, but as he starts to eat Koghh's freshly bred hole, the orc slaver grunts 'No, leave it. I want to keep some of his essence inside me.' Obedient as ever, Orbul pulls back from tonguing his master's hole and gets back to just giving him a tongue-bath, licking up any last traces of cum.";
		say "     [WaitLineBreak]";
		say "     After Orbul finishes cleaning both his masters, the two brothers sit on on of the couches together. While they kiss and caress each other, the slave gets to work jerking himself off and blows his load not too long afterwards. He catches it all in a cupped hand, then reaches between his legs and smears the sticky goop on his crack and butt, providing ample evidence for the 'official' version of what happened in here. Some short while later, Koghh and Yatur give each other a last kiss, then get back into character, loudly praising Orbul's well-trained hole as they unlock the door and lead him from the room.";
	otherwise: 
		say "     [line break]";		
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";
		
to say ZebraBreederTransformation:
	if "Submissive" is listed in feats of player:   [sub players]	
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc masters Yatur and Mul, and that Mul is carrying a someone over his shoulder too - a male, thoroughly tied-up zebra. Mul grunts to his brother, 'This one will be fun to break in', then plops down his burden on a couch in the room and undoes the main knot of the captive's bindings. Meanwhile Yatur throws the door shut with a slam and locks it, then the two orcs hungrily watch the zebra wiggle out of the ropes around his body and stand up.";
	otherwise:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owners' Yatur and Mul, and that Mul is carrying a someone over his shoulder too - a male thoroughly tied-up zebra. Mul grunts to his brother, 'This one will be fun to break in', then plops down his burden on a couch in the room and undoes the main knot of his bindings. Meanwhile Yatur throws the door shut with a slam and locks it, then the two orcs hungrily watch the zebra wiggle out of the ropes around his body and hurriedly stand up.";		
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     Do you want to watch what happens next in the interrogation room?";
	if player consents: 
		say "     [line break]";
		say "     You weren't the only one looking around - the zebra guy obviously did the same, getting wide-eyed at seeing the furniture and items in there, plus the numerous cum-stains all around. Frantically looking for a way to escape and finding the only door blocked by his orc captors, he takes on a defensive position with his back to a wall and shouts 'Let me go, you brutish bastards! I'll fight!' Unconcerned with their equine captive's balled fists and shouts, the two orcs just stand at the door relaxedly and Yatur remarks to his brother 'Oh yeah, that one has some spunk. He'll make a great broodmare. Can't wait to knock him up.' As he hears that, the zebra's face shows bafflement, then the nonplussed expression changes to angry annoyance 'Wait - WHAT? Broodmare? Did you two dimblulbs drag me all the way here because you're too stupid to recognize the difference between a male and a female zebra? I - I can give you mares - one for each of you. Just let me back to my herd and they're yours!'";
		say "     The two orcs just chuckle and start walking towards the striped man's position with lust in their eyes. Getting more and more desperate, the zebra shouts 'Okay - two for each. Or three even!' He swings a punch at Yatur as the orc reaches out for him, but the green-skinned brute just catches his fist in one of his large hands with casual ease. Next, the orc draws the zebra into a bear-hug, pinning his arms against his sides with his muscular arms and lifting him off the ground. Looking directly into the zebra's eyes from just a short distance away, the muscled warrior says in an amused tone 'We don't need your weak-ass sluts. I'm gonna knock YOU up and you'll bear many strong orcs for me. You'll see, my little pony.' Giving the impotently struggling zebra guy's butt a lusty grope, Yatur carries him over to the bench in the middle of the room and sets him down on it, then holds him down with his back to the leather padding. Mul quickly fastens some restraints on the equine's arms and legs. All the while, the zebra still pleads, begs and curses to let him go, without getting much attention from the orcs.";
		say "     [WaitLineBreak]";
		say "     Quickly throwing aside their loincloths, the two orc brothers jerk their massive green manhoods and play a bit with their captive, softly slapping the meaty lengths of cock against his body and rubbing them over his short fur. Mul even reaches down to cup the equine slave's balls, gently squeezing them with his large fingers. At first, the zebra pulls on his restraints and tries to avoid their touch, though over time, he can't help but get aroused - as becomes obvious by his own long piece of horseflesh pushing out of his sheath to lie on his stomach. At some point, the pleading and whining from their captive stops completely, replaced by soft moans as his body is touched and stroked.";
		say "     After another minute or two, Mul gives a satisfied grunt and steps to the head-end of the bench, holding out his mighty pole directly over the zebra's face. 'Come on, lick me horsie.' he snaps at their captive in a commanding tone - and is obeyed. Accepting his role, the equine uses his long tongue to give a tentative lick at the orc's hairy balls, followed by another and another. Mul gives a pleased chuckle as the now submissive slave gets to work on him. 'Very nice, pet. Now why don't you...' he says, then starts to coach him on how to worship his full orbs and mighty manhood properly. Meanwhile, Yatur has moved to stand between the zebra's legs and is just smearing some of the copious amount of precum dripping from his cock on the zebra's asshole. He proceeds to massage around the the equine slave's back door with his fingers to get him nicely relaxed, then pushes his index-finger in against the zebra's pucker.";
		say "     [WaitLineBreak]";
		say "     The eagerness with which the formerly dominant and resisting zebra stallion licks and sucks Mul's cock and balls while his own ass is being fingered demonstrates the insidious power of the nanite infection once more, as it doesn't just rewrite bodies, but also affects people's minds. Gone is the proud stud with his herd of mares, replaced before your watching eyes with a submissive pony-boy leaking cum on his own chest as his masters use him for their pleasure. It's clear that he's now fully theirs, which prompts the orcs to undo his leather bindings. Freed from the restraints, the zebra puts his hands to good use in stroking Mul's cock and fondling him. At the same time, he raises his legs, spreading them invitingly for Yatur.";
		say "     'Say goodbye to your virginity, my little pony,' Yatur chuckles and lines his thick shaft up with the zebra's pucker. Gripping the striped equine's hips with two large hands, he then presses forward, giving a satisfied grunt as he pushes through his back door, stretching it tight around his invading member. The thick and meaty shaft probing his ass makes the zebra gasp loudly, though as the orc's manhood sinks deeper into his body, pleasant feelings prevail and make him pant in lust. Though even though he's getting many good sensations from being touched in sensitive spots deep inside him, it's still a quite lot to take. A fact that the orc knows too, causing him to move deeper only slowly and with surprising patience, sometimes even stopping for a moment so his fucktoy can get used to it. Some time later, Yatur finally bottoms out inside the zebra, hard shaft buried all the way and his two large cum-factories resting against the slave's skin.";
		say "     [WaitLineBreak]";
		say "     After giving the zebra a moment to get used to the stretching feeling of having a whole foot of hard cock inside his ass, Yatur pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his balls whack against the equine's ass. No wonder he went so slow before, or that'd have ripped the stallion in two! And the orc warrior just keeps on going like that, now taking out all the stops and really pounding into his slave like the big brute he is. The sensations of his thrusts make the zebra moan and howl in lust, loud even though muffled by Mul's cock in his mouth. Strongly aroused by being the first to break in this stallion's very tight hole, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in the zebra's ass as he pumps blast after blast of cum into him.";
		say "     Getting filled by Yatur's massive load of orc cum makes the striped slave go wild, shuddering as its special properties push his arousal right over the edge. Bucking his hips, the zebra orgasms, his cock proudly erect and pulsing with blast after blast of cum spraying all over his chest. Totally lost in the sensations going through him, he just lies on the bench and twitches with each pulse, no longer able to consciously suck Mul. Being eager to get his rocks off himself, the orc therefore pulls out of his mouth and quickly jerks himself, gushing his own cum all over his equine pet just moments later.";
		say "     [WaitLineBreak]";
		say "     Standing over their newly broken-in zebra slave, the two orc brothers give each other a grin and high-five. They watch with satisfaction as all the cum on (and in) their fucktoy has a transformative effect, first in a wave of green spreading over his fur to replace all the white parts of his striped pattern, then in four tusks pushing into view along his long muzzle. The two long and two shorter fangs show clearly that his zebra no longer is a herbivore, and as he gasps a moment later, you can see quite a few more sharp teeth in his long muzzle too. With that, the external changes come to a halt, though something just tells you that his internal conversion was far more complete and this stallion's belly will soon swell with Yatur's child.";
		say "     Inspecting and groping the zebra boymare's new form, Mul runs a finger through the cum puddles on his chest, then asks 'There, do you want to go back to your herd now, horsie?' The zebra quickly answers 'No, master. I want to be your slave, your pet. Please keep me - I want you - I need you!' While giving an accepting nod, Mul starts feeding the zebra cum wiped off his chest. As his brother does so, Yatur remarks 'Let's call him Prancer - I like how his ass looks when he moves on those hoofs, and as he seems to be staying that shape, it fits.' Accepting his new name without hesitation, Prancer is allowed to lick their cocks clean and milk out the last drops of cum. Then they lead him from the room, now docilely following after them.";
	otherwise: 
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";
		
to say ObservationRoomFuck:
	if "Submissive" is listed in feats of player:   [sub players]	
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc master Mul and a smaller, less brutish orc - a breeder slave. The mighty orc warrior throws the door shut and walks over to a couch, undoing his loincloth and then letting himself fall into it. He sits there with spread legs and grins as the other orc kneels before him and starts to worship his manhood, gently handling his thick cock and the weighty globes of his balls. Mul leans his head back, grunting and moaning loudly as his obedient slave goes down on him.";
	otherwise:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owner' Mul and a smaller, less brutish orc - a breeder slave. The mighty orc warrior throws the door shut and walks over to a couch, undoing his loincloth and then letting himself fall into it. He sits there with spread legs and grins as the other orc kneels before him and starts to worship his manhood, gently handling his thick cock and the weighty globes of his balls. Mul leans his head back, grunting and moaning loudly as his obedient slave goes down on him.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     Do you want to watch what happens next in the interrogation room?";
	if player consents: 
		say "     [line break]";
		say "     You watch the two men in the other room have oral sex and listen to their moans, until suddenly - a large hand pushes against your back, pinning you against the window, face pressed against the cool glass. As you struggle and try to turn around, your arms are quickly caught and twisted behind your back. From the corner of your eye, you see that it's a pretty big and muscled orc who holds your wrists tightly. He must have entered the observation room while you were busy watching Mul and his breeder. 'I knew I heard something from in here,' a deep voice says into your ear, then continues, 'Do you enjoy watching Orbul please his master? Maybe want to be in his place?' With that the orc grabs your head and makes you look at the two orcs in the other room again, where Orbul by now has the tip of Mul's cock in his mouth and is eagerly sucking on it. Your captor grunts 'They do give a nice show, definitively...'";
		if "Submissive" is listed in feats of player:   [sub players]		
			say "     A moment later, you start feeling something big press against your butt - the orc's cock, getting hard as he watches the action in the interrogation room. Lowering his hand from your head to squeeze your butt, the orc says 'Let's have some fun too then - you do want me to fuck you, don't you?' As this plays perfectly into your desires to be dominated and used by such a strong, virile male, you loudly moan yes and rub your ass against his erection. 'Such an eager little slut,' the orc chuckles, then lets go of your arms to allow you to push your pants down. Leaning forward, your shoulder against the one-way mirror, you reach back and spread your cheeks, waiting for the orc warrior to take you. ";		
			say "     [WaitLineBreak]";
			say "     You feel the big head of his meaty shaft push against your back door for a moment as your captor smears some of his copious pre-cum on you. Then he uses a finger to rub around your hole before pushing it in slowly, probing your insides with his thick digit. Panting against the window in lust as you're being fingered, you give yourself over to him fully, relaxing your muscles as he soon adds another finger to stretch your passage. Your orc master's touch really gets you going, and by the time he grunts 'Ready to take my cock now?', your [if cocks of player > 0]own erection is hard as rock[otherwise if cunts of player > 0]swollen pussy lips are wet and dripping[otherwise]knees are pretty weak from arousal and anticipation[end if] and you immediately yelp for him to fuck you. Chuckling at such eagerness, the mighty orc warrior lines up his tip with your hole. Then he grips your hips with two large hands and presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";			
			say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
			say "     [WaitLineBreak]";
			say "     As your master gives you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, you focus again on what's going on in the other room. Looks like Mul is already well into fucking Orbul's well-used hole, with the breeder on his lap and sliding up and down on Mul's thick pole. Any further observations are pushed right out of your mind as your own orc fucker pulls back and thrusts inside again - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought obliterated completely by the feelings of having that thick shaft deep inside you.";
			say "     Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if cocks of player > 0]spraying your own cum all over the wall under the observation window[otherwise if cunts of player > 0]squirting femcum all over the wall under the observation window[otherwise]trembling and panting against the observation window as you orgasm[end if]. Having your hole tremble and twitch around his orcish member while you come gives your captor the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.[mimpregchance]";
			say "     [WaitLineBreak]";		
			say "     When you come down from the rush of orgasm, though still buzzed with the pleasant feeling of orc cum in your ass, you see that Mul and Orbul finished too at some point. Leaned back on the couch, the orc warrior how just holds his freshly filled breeder, an arm around his chest as he softly strokes his back. Orbul is resting his head against Mul's broad chest peacefully and his ass is still impaled on his master's cock. Your captor's deep voice says from behind you 'Now that's a real breeder in there. I've tried trading some other guys for him, though the brothers just won't deal.' With a sigh, the orc pulls out of you, then pushes a finger in your slippery hole and makes you gasp by rubbing [if cocks of player > 0]against your prostate[otherwise]your inner walls[end if] 'You know what - I'm just gonna leave you to sneak around in here. Catching you was fun, and I want to do it again sometime... so come back soon, little peeper.' With that, the orc gives you a playfully light swat on the butt, then walks out of the room.";
		otherwise:
			say "     A moment later, you start feeling something big press against your butt - the orc's cock, getting hard as he watches the action in the interrogation room. Lowering his hand from your head to squeeze your butt, the orc says 'Let's have some fun too then - you do want me to fuck you, don't you?' As you refuse and try to pull yourself out of his iron grip on your wrists, the orc twists your arms a bit further, making you whimper in pain. 'Liar. Why else would you be hanging around here to play Peeping Tom. No matter - I'll give you what you need.' The orc grips you by the neck with his other hand for a moment, squeezing a bit to show his power, then growls 'And you'll obey like a good little breeder should if you don't want me to kick your ass. Now put your hands on the glass and bend over.' As the orc lets go a moment later, you rub your bruised wrists, then take position against the one-way mirror. Not much choice otherwise, as you're right in his grasp and this room isn't big enough to fight him properly.";				
			say "     [WaitLineBreak]";
			say "     You feel the big head of his meaty shaft push against your back door for a moment as your captor smears some of his copious pre-cum on you. Then he uses a finger to rub around your hole before pushing it in slowly, probing your insides with his thick digit. You wince a bit at the unwanted intrusion, though you can't help but start feeling a pleasant tingle too a moment later. That might have something to do with getting his precum in you. Before long, you're panting against the window in lust as you're being fingered, doing your best to relax your muscles when he adds another finger to stretch your passage. Your orc captor's touch really gets you going, and by the time he grunts 'Ready to take my cock now?', your [if cocks of player > 0]own erection is hard as rock [otherwise if cunts of player > 0]swollen pussy lips are wet and dripping [otherwise]knees are pretty weak from arousal [end if]and you hesitantly ask for him to fuck you. Chuckling at how quickly your reluctance faded, the mighty orc warrior lines up his tip with your hole. Then he grips your hips with two large hands and presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";		
			say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
			say "     [WaitLineBreak]";
			say "     As your captor gives you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, you focus again on what's going on in the other room. Looks like Mul is already well into fucking Orbul's well-used hole, with the breeder on his lap and sliding up and down on Mul's thick pole. Any further observations are pushed right out of your mind as your own orc fucker pulls back and thrusts inside again - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought obliterated completely by the feelings of having that thick shaft deep inside you.";
			say "     Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if cocks of player > 0]spraying your own cum all over the wall under the observation window[otherwise if cunts of player > 0]squirting femcum all over the wall under the observation window[otherwise]trembling and panting against the observation window as you orgasm[end if]. Having your hole tremble and twitch around his orcish member while you come gives your captor the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.[mimpregchance]";
			say "     [WaitLineBreak]";		
			say "     When you come down from the rush of orgasm, though still buzzed with the pleasant feeling of orc cum in your ass, you see that Mul and Orbul finished too at some point. Leaned back on the couch, the orc warrior how just holds his freshly filled breeder, an arm around his chest as he softly strokes his back. Orbul is resting his head against Mul's broad chest peacefully and his ass is still impaled on his master's cock. Your captor's deep voice says from behind you 'Now that's a real breeder in there. I've tried trading some other guys for him, though the brothers just won't deal.' With a sigh, the orc pulls out of you, then pushes a finger in your slippery hole and makes you gasp by rubbing [if cocks of player > 0]against your prostate[otherwise]your inner walls[end if] 'You know what - I'm just gonna leave you to sneak around in here. Catching you was fun, and I want to do it again sometime... so come back soon, little peeper.' With that, the orc gives you a playfully light swat on the butt, then walks out of the room.";			
	otherwise: 
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";			
			
Section 5 - NPCs

Mul is a man. 
The description of Mul is "[MulDesc]";
The conversation of Mul is { "Mew!" }.

to say MulDesc:
	say "     Mul is the prime example of an orcish warrior - tall and very muscular, with somewhat oversized hand and feet as compared to a human. Currently, his brutish features look calm and peaceful - as the big brute is right in the middle of a post-coital nap after fucking you to exhaustion.";

instead of sniffing Mul:
	say "He's got an attractive male scent, with slight undertones of cum and sweat that make him appear even more manly somehow.";
	
instead of conversing the Mul:
	say "     It'd be better for you if you didn't wake him now...";
	
instead of fucking Mul:
	say "     He's pretty worn out, let him sleep for now.";
		
Section 6 - Endings

when play ends:
	if bodyname of player is "Orc Breeder":
		if humanity of player is less than 10:
			say "     As you succumb to the infection, you feel an almost desperate hunger and need for... something awaken in you. No matter what you try, nothing really quenches that need, after a while all food just tastes a bit bland to you. Finally, after another sleepless night of fighting the cravings, your inner urges drive you to wander out onto the chaotic streets of the nanite-stricken city, making you wander towards the capitol district almost in a haze. As you go along, more than one creature you meet takes advantage of your entranced state, dragging you into alleys or fucking you right there in the middle of the street to satisfy their own desires.";
			say "     Though no matter how good you might feel with them for a time, there's always the inner push for you to go on and find what you really need. Then finally, a muscular green-skinned person steps into your way. Smiling around his sharp tusks, the orc warrior says 'Lucky day for me. A handsome little breeder just wandering down the street alone.' He inspects your naked body, giving a deep chuckle as he sees the various other creatures cum dripping out of your ass. With a murmur of 'Even already lubed.' he just bends you over the nearby wreck of a car and proceeds to fuck you until flooding your insides with a massive load of his cum. Then, as he has you lick his thick cock clean afterwards, you find that this is what you craved all along. The orc's cum tastes like ambrosia, giving you a very strong, pleasant - and addictive - buzz. Not wanting to ever be without this feeling, you eagerly follow your new orcish master, soon joining several other docile breeders in his lair...";
		otherwise:
			say "     When the military finally moves in, you're brought to a holding facility like so many others and have to spend quite a while waiting for the doctors to have a look at you. As day after day passes, you find yourself growing more and more dissatisfied with the food they serve the waiting evacuees, everything tasting very bland and barely edible. Then, when it's finally time and you're brought to see one of the doctors, he listens to your complaints and gives you a look up and down before murmuring 'Another one of those' and having a nurse bring you a dose of 'OCP3' to drink. The slightly green liquid smells amazing and tastes even better, flooding your whole being with a pleasant feeling. As you're told before your release soon after, your new body does have a... built in dependence on orc cum, with it acting as a highly addictive drug. Giving in to the need would quickly put you in a very docile state, as well as making you highly receptive for impregnation, so they tell you to return each week for a supply of a 'OCP3' (in reality nothing more than highly diluted orc cum and sugar water) to keep the cravings under control.";
			if "Weak Psyche" is listed in feats of player:
				say "     Weak-willed as you are, it barely takes a week until you're down on your knees in an alley, lips around an orc's thick shaft as he blasts his load into your mouth. With the very strong pleasant buzz that floods your mind after the first swallow pushing aside any dissenting thoughts, you obediently let yourself be taken to meet his buddies afterwards, becoming the breeding slut of their little gang of orc brutes.";
			otherwise if "Strong Psyche" is listed in feats of player:
				say "     As resilient as you are, you decline to just accept this as a fact of your new life, instead focusing all your will on overcoming the addiction the nanites left you with. It takes weeks, then months, during which you only use the diluted orc cum preparation when you're almost ready to climb up the walls of your bedroom, but eventually, the dependence lessens and finally disappears. Having accomplished what the doctors told you was almost impossible, you make it your task to help others in the same situation too, soon afterwards opening the first ever orc detox center...";

Orc ends here.