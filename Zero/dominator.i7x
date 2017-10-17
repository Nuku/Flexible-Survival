dominator by Zero begins here.

Section 1 - Monster Responses


slutmaster is a number that varies. slutmaster is usually 0.

to say domdesc:
	say "[randomdesc]";
	say "[masterofslutsdom]";
	say "Walking down the street, you are suddenly attacked by a male, furry, muscular[one of]black[or]brown[or]multi-coloured[or]white[or]red[or]orange[or]yellow[or]light blue[or]blue[at random][slutname] wearing only a metal chain around his neck.[line break]";
	say "[sluttybodycheck]";


to say sluttybodycheck:
	if bodyname of player is "Male Slut":
		say "A wave of desire fills your body at the sight of him, your slutty body instantly submitting to him, regardless of your will.[line break]";
		say "[sluttysubmit]";
		say "[combat abort]";
	else if bodyname of player is "Female Slut":
		say "A wave of desire fills your body at the sight of him, your slutty body instantly submitting to him, regardless of your will.[line break]";
		say "[sluttysubmit]";
		say "[combat abort]";
	else if facename of player is "Male Slut":
		say "At the sight of him, your collar heats up and lust explodes through you, your body instantly submitting to him, regardless of your will.[line break]";
		say "[sluttysubmit]";
		say "[combat abort]";
	else if facename of player is "Female Slut":
		say "At the sight of him, your collar heats up and lust explodes through you, your body instantly submitting to him, regardless of your will.[line break]";
		say "[sluttysubmit]";
		say "[combat abort]";

to say masterofslutsdom:
	if slutmaster is greater than 0:
		repeat with y running from 1 to number of filled rows in table of random critters:	[puts dominator as lead monster...]
			choose row y in table of random critters;
			if name entry is "Male Dominator":
				now monster is y;
				break;
		choose row monster from the table of random critters;
		follow the cock descr rule;
		follow the breast descr rule;
		say "[defeated entry]";

to say sluttysubmit:
	say "The [slutname] grins as he watches you remove any and all clothing you have, submitting yourself to him.[line break]He takes hold of you purring into your ear about how your 'such a good slut and how there master would be pleased' ";
	if cunts of player is greater than 0:
		if cunt length of player is less than 6:
			if cocks of player is greater than 0:
				if cock length of player is less than 6:[small cunt small cock]
					say "After looking you up and down, he pats you on the head. 'You're so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cuntinc][cockinc]";
				else: [small cunt normal cock]
					say "After looking you up and down, he pats you on the head. 'Your cunt's so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor, get ready'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cuntinc]";
			else: [small cunt]
				say "After looking you up and down, he pats you on the head. 'You're so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cuntinc]";
		else:
			if cocks of player is greater than 0:
				if cock length of player is less than 6: [cunt small cock]
					say "After looking you up and down, he pats you on the head. 'Your cock's so small, but at least your cunt's good enough.'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your pussy. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[impregchance][or]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]He forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cockinc]";
				else: [cunt and cock]
					say "After looking you up and down, he rubs his body against yours. 'Nice equipment. Time for some fun.'[line break]He suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. '[one of]Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your pussy. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[impregchance][or]You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]He forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.";
			else:	[cunt]
				say "After looking you up and down, he rubs his body against yours. 'Nice equipment. Time for some fun.'[line break]He suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your [one of]pussy. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[impregchance][or]tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]He forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.";
	else: [small cock]
		if cocks of player is greater than 0:
			if cock length of player is less than 6:
				say "After looking you up and down, he pats you on the head. 'Your cock's so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cockinc]";
			else: [cock]
				say "After looking you up and down, he rubs his body against yours. 'Nice equipment. Time for some fun.'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.";
		else: [none]
			say "After looking you up and down, he pats you on the head while giving you a pitying look 'I don't know what happened to you, but let's fix it, shall we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. ' get ready'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][one of][cuntinc][cuntinc][or][cockinc][cockinc][at random]";
	if bodyname of player is "Male Slut":
		infect "Male Slut";
	else if bodyname of player is "Female Slut":
		infect "Female Slut";
	else if facename of player is "Male Slut":
		infect "Male Slut";
	else if facename of player is "Male Slut":
		infect "Female Slut";
	else if cocks of player > 0 and cunts of player > 0 and a random chance of 1 in 2 succeeds:
		infect "Female Slut";
	else if cocks of player > 0:
		infect "Male Slut";
	else if cunts of player > 0:
		infect "Female Slut";
	else if a random chance of 1 in 2 succeeds:
		infect "Female Slut";
	else:
		infect "Male Slut";


to say domwins:
	say "[one of]The [slutname] hits you in the gut with his fist![or]The [slutname] rushes at you, knocking you off balance![at random]";


to say domvictory:
	if hp of player > 0:
		say "[sluttysubmit]";
	else:
		say "Exhausted from the waves of physical and sexual attacks, you collapse, surrendering yourself to the male [slutname] who quickly strips you of any and all clothing.";
		if cunts of player is greater than 0:
			if cunt length of player is less than 6:
				if cocks of player is greater than 0: [small cunt small cock]
					if cock length of player is less than 6:
						say "After looking you up and down, he pats you on the head. 'You're so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[cuntinc][cockinc]";
					else: [small cunt normal cock]
						say "After looking you up and down, he pats you on the head. 'Your cunt's so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cuntinc]";
				else: [small cunt]
					say "After looking you up and down, he pats you on the head. 'You're so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'You're too small for me, little one. We'll have to go by the backdoor. Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cuntinc]";
			else:
				if cocks of player is greater than 0:
					if cock length of player is less than 6: [cunt small cock]
						say "After looking you up and down, he pats you on the head. 'Your cock's so small, but at least your cunt's good enough.'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your pussy. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[impregchance][or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cockinc]";
					else: [cunt and cock]
						say "After looking you up and down, he rubs his body against yours. 'Nice equipment. Time for some fun.'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your pussy. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[impregchance][or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.";
				else:	[cunt]
					say "After looking you up and down, he rubs his body against yours. 'Nice equipment. Time for some fun.'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your pussy. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[impregchance][or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.";
		else: [small cock]
			if cocks of player is greater than 0:
				if cock length of player is less than 6:
					say "After looking you up and down, he pats you on the head. 'Your cock's so small. We'll have to fix that, now won't we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[line break][cockinc]";
				else: [cock]
					say "After looking you up and down, he rubs his body against yours. 'Nice equipment. Time for some fun.'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random] off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.";
			else: [none]
				say "After looking you up and down, he pats you on the head while giving you a pitying look. 'I don't know what happened to you, but let's fix it, shall we?'[line break]He [one of]suddenly picks you up and presses against a nearby wall, his head nuzzling against the side of yours. 'Get ready.'[line break]He then thrusts forward, hard, impaling his large shaft into your tight asshole. He comes inside you over and over again, each time more pleasurable than the last, your mind drifting[or]forces you onto your knees and rubs his cock against your mouth, letting out a low moan of pleasure as you start to lick and suck at it. Soon he's exploding inside you, his cum making your mind drift[at random]off from the pleasure of being such a good slut for the powerful male. By the time you come round the [slutname] is patting you on the head and departing, leaving with the promise of returning soon and your cum covered body to remember the [slutname] by.[one of][cuntinc][cuntinc][or][cockinc][cockinc][at random]";
		if cocks of player > 0 and cunts of player > 0 and a random chance of 1 in 2 succeeds:
			infect "Female Slut";
		else if cocks of player > 0:
			infect "Male Slut";
		else if cunts of player > 0:
			infect "Female Slut";
		else if a random chance of 1 in 2 succeeds:
			infect "Female Slut";
		else:
			infect "Male Slut";


to say domdef:
	if massdomfightwin is 1:
		say "Exhausted, the dominator falls to the ground, unconscious.";
	else if slutmaster is greater than 0:
		say "Feeling its masters presence, the [slutname] salutes to you before walking off to spread your influence further.";
	else:
		say "The [slutname] suddenly stops and pats you on the back, saying 'Good fight, my master will be watching you', before he walks off grinning.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


When Play begins:
	add "Male Dominator" to infections of guy;
	add "Male Dominator" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Male Dominator";
	now attack entry is "[domattack]";
	now defeated entry is "[domdef]";
	now victory entry is "[domvictory]";
	now desc entry is "[domdesc]";
	now face entry is "is that of a wolf's with a pair of pointed wolf ears covered in [skin of player], a metal chain is rapped around your neck ";[ Face description, format as the text "You have a (your text) face."]
	now body entry is "that of a muscular wolf's and covered in [skin of player]";
	now skin entry is "short,[one of]velvety[or]soft[or]shiny[at random]deep black fur";
	now tail entry is "You have a long wolf's tail.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "constantly hard canine";
	now face change entry is "it stretches out into a wolf's muzzle, two pointed wolf's ears sprouting from the top of your head a second later, a chain appearing from nowhere and rapping around your neck"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body's fat is converted into muscle, becoming that of a muscular wolf"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft and shiny black fur covers your body. ";
	now ass change entry is "a long wolf's tail grows and begins waggling happily.";
	now cock change entry is "it becomes canine, and incredibly hard."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 19;
	now dex entry is 12;
	now sta entry is 15;
	now per entry is 17;
	now int entry is 13;
	now cha entry is 18;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 70;
	now lev entry is 5; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking.]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 10; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 0; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 8; [ Width of female sex infection will try and give you ]
	now libido entry is 100; [ Amount player Libido will go up if defeated ]
	now loot entry is "dominator chain"; [ Loot monster drops, ]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]


[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

When Play begins:
Choose a blank row from Table of infection heat;
now infect name entry is "Male Dominator"; [ This should be exactly the same as your monster name in the main table]
now heat cycle entry is 1; [ This is the number of days a heat "cycle" lasts, usualy 7 ]
now heat duration entry is 1; [ This is how many days of the cycle you are actualy in heat. default is 1, set it to the same as cycle for permanently in heat.]
now trigger text entry is "your body becomes overcome with desire, to catch, to fuck, to dominate."; [ This is the text that is written to the screen when the player comes into heat]
now inheat entry is "[MaleDomheat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]


to say MaleDomheat:
	say "[Domheat]";


to say Domheat: []
	if libido of player is less than 96, increase libido of player by 5;
	if (libido of player is greater than 90) and (location of player is fasttravel ) and (slutfucked is greater than 8):
		say "the desire to dominate grows to strong to for you to control and you begine searching for anything that you fuck. you and immediately upon catching one by surprise begine to dominate them";
		now slutfucked is 0;
		let hmonlist be a list of numbers;
		repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear "outside" ]
			choose row X from the table of random critters;
			if there is no area entry, next;
			if area entry is "Outside":
				add X to hmonlist;
		sort hmonlist in random order;
		repeat with Z running through hmonlist:		[Pick one of the monsters at random]
			now monster is Z;
			break;
		choose row monster from the table of random critters;
		follow the cock descr rule;
		follow the breast descr rule;
		say "[defeated entry]";
		decrease the score by 5;
		decrease the morale of the player by 3;
	else if libido of player is greater than 90:
		increase slutfucked by 1;



dominator ends here.
