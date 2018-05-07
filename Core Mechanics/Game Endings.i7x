Version 1 of Game Endings by Core Mechanics begins here.

vetcheat is an action applying to nothing.
understand "i am a pro" as vetcheat.

vetcheater is a number that varies.
carry out vetcheat:
	if vetcheater is not 0:
		say "You can only use this once.";
		stop the action;
	increase vetcheater by 1;
	increase XP of player by 200;
	if level of player < 5:
		if XP of player > ( level of player plus one ) times 10:
			level up;
		if XP of player > ( level of player plus one ) times 10:
			level up;
		if XP of player > ( level of player plus one ) times 10:
			level up;
		if XP of player > ( level of player plus one ) times 10:
			level up;
		if XP of player > ( level of player plus one ) times 10:
			level up;
		else if "Fast Learner" is listed in feats of player and XP of player > ( level of player plus one ) times 8:
			level up;
	decrease score by 400;

understand "fooledya" as supersponsor.

When play ends:
	clear the screen;
	say "[bold type]Game Over![roman type][line break]";
	ratetheplayer;
	say "----------";
	follow the self examine rule;
	LineBreak;

to ratetheplayer:
	if gsgl is 1 and score > 0:
		now tempnum is (score / 20);
		increase score by tempnum;
	if "Ultimatum" is listed in feats of player and score > 0:
		now tempnum2 is (score / 10);
	say "In Scenario: [bold type][scenario][roman type], you have achieved a score of [bold type][score][roman type].";
	if gsgl is 1 and score > 0, say "For choosing no gender lock, you received a bonus of [tempnum] points.";
	if "Ultimatum" is listed in feats of player and score > 0, say "Your Ultimatum perk grants you a bonus of [tempnum2] points.";
	say "You've achieve the rank of: [bold type]";
	if score < 0:
		say "A used, broken condom!";
	else if score < 120:
		say "A used condom!";
	else if the score < 240:
		say "Post-Apocalyptic Passaround!";
	else if the score < 500:
		say "Salacious Scavenger!";
	else if the score < 1000:
		say "Wanton Wastewanderer!";
	else if the score < 1500:
		say "Serpent Blisskin!";
	else if the score < 2000:
		say "Maester Baster!";
	else if the score < 2500:
		say "Baude Warrior!";
	else if score > 9000:
		say "Th -- What, 9000?!";
	else:
		say "The Lord Humungus!";
	say "[roman type]";
	if the score > 999:
		say "Your performance was so excellent, we'll give you a little... help, for your next run through. Type 'I am a pro' to gain 200 XP. It only works once per character";
		if bookfound is not 0:
			let tempnum be 0;
			sort table of library books in booknum order;
			repeat with y running from 1 to number of rows in table of library books:
				choose row y in table of library books;
				if booknum entry is bookfound:
					now tempnum is y;
					break;
			choose row tempnum from table of library books;
			if humanity of player < 10:
				say ".  Your confused, instinctual thoughts are sometimes broken by strange thoughts or images from a book you once read";
			else:
				say ".  With all the excitement you went through at the library, the book you found remains firmly in your mind";
			say ".  In the Abbey, type [bold type][']dewey [bookcode entry]['][roman type] to find it again in your next game";
		say ".";
	LineBreak;

when play ends:
	if thirst of player >= 100 or hunger of player >= 100:	[blocking regular endings]
		now bodyname of player is "starvation";
		now facename of player is "starvation";
		now skinname of player is "starvation";
		now tailname of player is "starvation";
		now cockname of player is "starvation";
		say "     You have perished from [if hunger of player >= 100 and thirst of player >= 100]starvation and thirst[else if hunger of player >= 100]starvation[else]thirst[end if] and are no more.  Your body becomes a meal for another of the more predatory creatures roaming the city.";
	else if bodyname of player is "DBrute Slave":
		say "     Your new reality in hell focuses on satisfying the relentless lusts of your demon brute masters, as well as being shared around for any other hellspawn he feels like allowing a ride...";
		stop the action;
	else if bodyname of player is "Demon Slave":
		say "     Your new reality in hell focuses on satisfying Skarnoth's every desire - of which there are many, mostly carnal ones. As the overlord of his own little demonic realm, your master has the power to play with your body shape too, transforming you as he wishes to better enjoy breaking you to his will...";
		stop the action;
	else if bodyname of player is "Lucifer's Mare":
		say "     Being used as Lucifer's mare is finally enough to push you over the edge. You can't help but lie on the grass, dripping his cum and feeling it dry on your skin, until the feral mustang eventually returns to fuck you again, and again. Eventually, your form shifts to that of a true feral mare and you join the harem of the powerful stallion, well-bred and well-protected from any challenger to Lucifer's might.";
		stop the action;
	else if bodyname of player is "dead":
		stop the action;
	else if humanity of the player < 10 and HP of the player > 0:
		if bodyname of player is "Dragoness" and HP of doctor matt <= 100:
			say "Following some unknown instinct, you seek out another of your own, and home in on Orthas, the dragon that was guarding the lab. She pets you gently along your neck and makes soothing sounds that has you almost purring. She proves to be a loving and kind mistress and you protect her fiercely for the remainder of your long life.";
	else:
		say "You emerge from your harrowing experience with your mind intact, with your [bodyname of player] form and [facename of player] face.";
		if bodyname is "Human":
			say "Despite the traumas set on you, you do your best to fit back in with humanity after the rescue arrives.";
		if cock length of player > 10 or cock width of player > 6 and cocks of player > 0:
			say "Your extreme masculine attributes prove to be more than a little awkward. As society puts itself back together, you do find a niche. Others, changed as you, require the services of such studs, and you never lack for something to do on the weekends.";
			if cocks of player > 1:
				say "Your multiple endowments become quite popular amongst some infected, whom come from some great distance to be serviced by you. Though it is illegal to charge for such services, many leave you a 'gift' regardless, even a marriage proposal or two.";
		if skinname of player matches the text "Human", case insensitively:
			increase score by 0;
		else:
			say "Your unnatural [skin of player] flesh makes you stand out in a crowd. You find it difficult to keep friends outside of other infected, even after you're declared safe for contact.";
		if "Fertile" is listed in feats of player and ( number of entries in childrenfaces + FeralBirths) > 5:
			if cunts of player > 0:
				say "You've been pregnant so many times and given birth to so many children that the nanites make a very strange change to your reproductive organs. Your body automatically stored a large amount of cum from the last creature that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of pregnancy. At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life.";
			else if player is mpreg_ok and mpregcount >= 6:
				if "Breeding True" is not listed in feats of player and "They Have Your Eyes" is not listed in feats of player:
					say "You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs.  Your body begins automatically storing some cum from anyone or anything that's screwed you.  Soon after you give birth, a small amount of the stored cum is automatically leaked out from a few of these storage chambers to be used to re-impregnate you if someone hasn't yet mated you.  This medley of semen is somehow mixed together to give you children from several sires.  You spend the rest of your life in a constant state of male pregnancy.  At first, you're alarmed by this, but soon you're seeking out diverse lovers to add their semen to your stores, loving the beautiful array of hybrid children you birth.  Your ever-growing brood cares for your every whim, allowing you to enjoy your new life as a male breeder.  Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
				else:
					say "You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs.  Your body begins automatically storing a large cum from the last creatures that screwed you.  Each time you give birth, a small amount of the cum is used to re-impregnate you automatically.  You spend the rest of your life in a constant state of male pregnancy.  At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life.  Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
			if "Wild Womb" is listed in feats of player:
				say "However, thanks to your unusual tendency to birth feral children, many of your young soon strike out on their own, often sneaking away in the night, as their instinct to breed and spread their infection takes control.";
		if bodyname of player is "Dragoness":
			say "Your dragon like body proves as much a curiosity as repulsion in those around you. You find gainful employment as a mascot for a theme park, where you are paid to wander the park and entertain the clients within. The job proves largely enjoyable, especially since the more annoying people are intimidated by your bulk and claws.";

Game Endings ends here.
