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
			say "With that, he steps up to you and pulls his loincloth aside, revealing the thick green shaft of his manmeat. Jerking it a few times, he softly whacks it against your forehead, then grabs you tightly by the hair and pulls you right against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he pulls at your hair and growls 'Faster' Not wanting a repeat of the beating you got earlier, you swallow your pride and start lapping away at his nuts in earnest.";	
			say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";						
			say "     [WaitLineBreak]";
			say "     Chuckling, he shakes his head and says 'Enough slobbering around. Time to fuck!' Then he manhandles you to a wrecked car standing not too far away and bends you over its hood. Trembling at the thought of taking his thick meat, you reach back and spread your cheeks, doing your best to relax your sphincter. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";		
		say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. Then, as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know what very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
		say "     [WaitLineBreak]";
		say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if cocks of player > 0]spraying your own cum against the side of the car under you[otherwise if cunts of player > 0]squirting femcum all over the car under you and the ground below[otherwise]gripping the metal of the car's hood tightly as an orgasm wracks your body[end if].";
		say "     Having your hole tremble and twitch around his orcish member while you come gives your partner the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.[mimpregchance]";
		say "     [WaitLineBreak]";	
		infect "Orc Breeder";
		infect "Orc Breeder";
		
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
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. Though not one to give up so easily, you sink yourself deeper onto his hard shaft, and before long, more pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - so you have to stop often and take a moment to get used to things as you impale yourself more and more on the orcish warrior's erection. As you do so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, you're finally all the way down on his prick, his hard shaft buried all the way in you and his two large cum-factories resting against your skin.";
	say "     After taking a deep breath, you start sliding up and down on the orc's manhood, fucking yourself first slowly, then faster and faster as your insides stretch and more and more of his precum makes your hole pretty slick and wet. As good as riding the orc's thick shaft makes you feel, it doesn't take all that long until your frantic movements drive your arousal over all limits, making you almost shout out a pleased moan as you orgasm [if cocks of player > 0] and spray your cum all over the orc's broad chest.[otherwise if cunts of player > 0] and femcum sprays from your pussy to splatter down on the orc's abs[otherwise]and a tingly feeling spreads through your whole body[end if]";
	say "     [WaitLineBreak]";
	say "     Having your hole tremble and twitch around his orcish member while you come gives your partner the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He bucks up against you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to drip down onto his own crotch and the ground below.[mimpregchance]";
	say "     Exhausted but happy, you pull off your toy orc's still pretty hard shaft, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on the chest, then stand up and walk away, leaving the panting brute to pick himself up later.";
	infect "Orc Breeder";	
	

to say OrcDesc:
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

Orcish Slave Raid is a situation.
The sarea of Orcish Slave Raid is "Warehouse";
when play begins:
	add Orcish Slave Raid to badspots of guy;       [male orcs]

Instead of resolving a Orcish Slave Raid:
	say "    Walking along a street between some warehouses, you suddenly hear claws scratching on asphalt and shouting voices from an alley just a few steps ahead. Just a few seconds later, a panicky looking [one of]anthro fox guy[or]anthro German shepherd[or]horseman[at random] comes dashing into view, head turned to look over his shoulder - which means he isn't looking where he's going and collides with you at full speed, spilling the two of you onto the ground. Directly behind him, a trio of very muscular men come out of the alley - tall and green as they are, dressed only in loincloths, there's no doubt that they're orcs. One of them grabs the fallen would-be escapee by the neck and lifts him off the ground, then smiles around his sharp tusks and nods towards you. 'Look, our little runner got us an extra treat' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. You barely have time to get up and take a combat stance before the other two orcs are upon you...";
	now inasituation is true;
	say "    [line break]";
	challenge "Orc Warrior";
	if fightoutcome is 22:
		say "[SubmitToOrcSlavers]";
	otherwise if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
		say "[LoseToOrcSlavers]";
	otherwise if fightoutcome >= 30:			[fled]			
		say "[RunFromOrcSlavers]";
	otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]
		say "     After a last hit on the orc, his muscled form collapses at your feet. But there's not even a moment to catch your breath as the second brute snarls and attacks you right away.";
		say "     [line break]";
		challenge "Orc Warrior";
		if fightoutcome is 22:
			say "[SubmitToOrcSlavers]";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
			say "[LoseToOrcSlavers]";
		otherwise if fightoutcome >= 30:			[fled]			
			say "[RunFromOrcSlavers]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]		
			say "     Two down, one to go. The third orc stops tying up his captive and comes at you with balled fists.";
			say "     [line break]";
			challenge "Orc Warrior";
			if fightoutcome is 22:
				say "[SubmitToOrcSlavers]";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
				say "[LoseToOrcSlavers]";
			otherwise if fightoutcome >= 30:			[fled]			
				say "[RunFromOrcSlavers]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]		
				say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Looking around, you see the guy who got you into this whole mess just wiggling out of the last coil of rope the orc put around him, then stare at you and the beaten orcs. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
				say "     [line break]";
				say "     Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them (Y), or do you just leave (N)?";
				if player consents:
					say "     [line break]";
					say "     [BeatenOrcSexMenu]";
				otherwise:
					say "     [line break]";
					say "     You walk away after checking them over for loot.";					
	now inasituation is false;

to say RunFromOrcSlavers:
	say "     Sometimes escape is the best - or only - option. Running as fast as you can, you flee and manage to make em lose sight of you after a short while. As you stand around a corner and pant heavily to catch your breath, you can hear them talk in their gruff voices. 'Bah - forget it, we lost [if cocks of player is 0 and cunts of player > 0]her[otherwise]him[end if].' 'Fine, let's get back to the other one then - though he'll be pretty sore and stretched out by the time we're done taking turns!' Their voices get quieter as they they move away from you, making the last thing you hear 'Who cares? That's what breeders are for! He'll get used to it...'";

to say SubmitToOrcSlavers:
	say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. 'Hm, this one looks a bit meek and weak. Doesn't even struggle to get away.' His buddy steps up and gives your ass a rough squeeze. 'Bah, you worry too much - orc seed is strong! [if cocks of player is 0 and cunts of player > 0]She'll[otherwise]He'll[end if] make a good enough breeder.' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
	say "    Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some cow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back for you.'";
	say "     [line break]";
	say "     With that, the orcs walk out of your cell, throwing the door closed as they walk off. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
	move player to Slave Cell 2;
	
to say LoseToOrcSlavers:
	say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze. 'Nice - I bet there'll be fights who gets to fuck that after we've had our fun with you!' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
	say "    Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some cow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back.'";
	say "     [line break]";
	say "     With that, the orcs walk out of your cell, throwing the door closed as they move down the hallway. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
	move player to Slave Cell 2;

Orc Lair Side Entrance is a room. It is a fasttravel. It is private.
The description of Orc Lair Side Entrance is "     You're standing outside a side door leading into the Capitol District police station. Maybe it'd be a good idea not to stay here too long, with this being the main orc lair in the city. Sooner or later, one of them is bound to come out or return here...";

West of Orc Lair Side Entrance is Dark Hallway 2.
The description of Dark Hallway 2 is "     You're in a long windowless hallway continuing to the west and ending at the side door of the building in the east. An unmarked door leads to the north. It's pretty dark in here with no windows or electricity for the lights on the ceiling.";

North of Dark Hallway 2 is Observation Room.
The description of Observation Room is "     This is a relatively small room with recording equipment and a one-way-mirror window in the west wall, allowing a view into the interrogation room to the west. Not much to see currently, though - it's dark in there.";

West of Dark Hallway 2 is Dark Hallway 1;
The description of Dark Hallway 1 is "     You're in a long windowless hallway continuing to the east and ending at the entrance of a large room in the west. From the sounds of many orcs talking, drinking and fucking that echo from in there, you're pretty sure you shouldn't go that way right now. Thankfully, with no electricity to run the lights, it's pretty dark in the hallway, so you're relatively safe in its shadowy length. A door bearing a plaque with 'Interrogation' on it leads to the north, while another with the sign 'Cells' lies to the south.";

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
	otherwise:
		say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then unlock the door and step inside.";
		say "     [line break]";	
		say "     <3 orcs fuck the player, then leave him in the cell - scene to be added later>";
			
to say EscapeOption2:
	say "     You snatch up the hairpin you spotted before and try to pick the lock.";
	let bonus be (( dexterity of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Dexterity Check)[line break]";	
	if dice + bonus >= 19:
		say "     ...after some tricky fiddling around, you manage to unlock the cell door with a click and slip outside. When you close the door behind you, its lock automatically snaps closed again.";
		move player to Breeder Lockup A;
	otherwise:
		say "     ...without much success. And worse, your captors seem to have finished their meal while you were busy, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then unlock the door and step inside.";
		say "     [line break]";			
		say "     <3 orcs fuck the player, then leave him in the cell - scene to be added later>";	
	
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
	otherwise:
		say "     ...without much success. And worse, your captors seem to have finished their meal while you were busy, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then unlock the door and step inside.";
		say "     <3 orcs fuck the player, then leave him in the cell - scene to be added later>";	
	
to say EscapeOption4:
	say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, finished with their meal and now fully focused on other matters - you being at the top of the list. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then find that the key doesn't work.";
	say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' one of the orcs growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still three horny orcs to satisfy...";
	say "     [line break]";	
	say "     <3 orcs fuck the player, then leave him in the cell - scene to be added later>";	
	say "     [line break][line break]";
	say "     After the three of them leave, throwing the cell door closed behind them, you stand up from the leather bench, wet and sticky with cum as you are. They must have forgotten that the lock isn't working anymore - or maybe they're just trusting the intoxicating effects of the orc cum to keep you docile. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
	if player is in Slave Cell 1:
		now Cell Door 1 is unlocked;
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			increase CellDoorStatus by 1;
	otherwise if player is in Slave Cell 2:
		now Cell Door 2 is unlocked;
		if CellDoorStatus is 0 or CellDoorStatus is 1:
			increase CellDoorStatus by 2;			
	move player to Breeder Lockup A;
	
to say EscapeOption5:
	say "    Bowing to the inevitable, you take off your gear and clothing, neatly stacking it all in the far corner of the cell where it has the best chance not to get dirty in what you know will happen soon. You await the orcs naked, sitting on the leather fuck-bench, determined to wear em out so you can escape afterwards. Soon, your captors return, finished with their meal and now fully focused on other matters - you being at the top of the list. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then unlock the door and step inside.";
	say "     [line break]";	
	say "     <3 orcs fuck the player, multiple times as he animates them to continue, two leave and one falls asleep - scene to be added later>";
	say "     [line break][line break]";	
	say "     Lying on Mul's chest, you wait a while until his satisfied snores are deep and regular, then slowly and carefully slip out from under the muscled arm holding you to his chest. Sweaty and cum-dripping as you are, you silently un-knot the cell key from its string on his loincloth, then go grab your gear and clothes and slip out of the cell.";
	increase carried of Cell Key by 1;
	move player to Breeder Lockup A;
	move Mul to Slave Cell 2;
	
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