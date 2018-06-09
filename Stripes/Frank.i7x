Version 4 of Frank by Stripes begins here.
[Version 4.2 - Special skunk form + Frank M/F fun]
"Adds a Skunk NPC named Frank to the Flexible Survival game"

Section 1 - Event and Comic Store

Mephitness is a situation. The level of Mephitness is 6.
The sarea of Mephitness is "High".
when play begins:
	add Mephitness to badspots of guy;
	add Mephitness to badspots of girl;
	add Mephitness to badspots of furry;

Instead of resolving a Mephitness:
	say "     As you travel the city streets, you hear some commotion up ahead and getting closer. Taking cover, you watch as a hefty fellow with a skunk head and tail wheezes as he runs past you with a trio of skunk girls in hot pursuit. He staggers and drops his pack as he scrambles to keep going[if Urban Forest is known]. Given your distance from that forested area, it's clear the chase has been going on for a while[end if]. The skunk girls move in, giggling at their panting, exhausted prey. They seem reinvigorated by their chase coming to a close and their prize ready for the taking.";
	say "     They all seem quite distracted and haven't spotted you. And that backpack is just sitting there. Given how much he's already changed, there may not be much point in trying to help him and it may be best to get the supplies. Do you take this opportunity to charge to the rescue or do you grab the backpack and make a run for it?";
	say "     [bold type]Charge to the rescue or grab the backpack and run?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Charge to the rescue.";
	say "     ([link]N[as]n[end link]) - Grab the backpack and run.";
	if player consents:
		if bodyname of player is "Skunkbeast Lord":
			say "     Yelling for their attention, you charge the skunks. Seeing their skunkbeast [if player is neuter]lady[else]lord[end if] approaching and demanding their attention, the girls quickly shove the poor fellow away. Running up to you, they start to lavish attention upon you, kissing and stroking you in welcome while telling you proudly how they caught a big meanie who tried to make fun of one of your skunkbeasts. To placate them, you tell the girls how pleased you are with them and that you'll enjoy dealing with him shortly, but first you want to reward them all for their fine service. They giggle happily at this, giving you more passionate kisses.";
			if cocks of player > 0:
				say "     Picking one of the girls, you get her to lie on her back. Lining up your cock, you drive it into her wet pussy and fuck her. Her cries of pleasure are lustful and loud as you pound into her with an animalist need[if skrp is 1]. The skunk head joined to you happily french-kisses the girl at you drive your leaking shaft into her muff[end if][if cunts of player > 0]. The other girls lavish attention upon your pussy and balls, licking your dripping folds and stroking your cum-filled orbs[else]. The other girls lavish attention upon your balls, rubbing your cum-filled orbs[end if].";
				say "     After blasting your hot load into her, another swaps into position, this time on all fours and stuff her full of a fresh load of skunk semen as well. As you're mounting the third, you notice the first two have returned to their original victim and are having some fun with him. One girl's riding his cock while the other has pressed his growing muzzle to her creamy muff, forcing him to eat your hot load from her overflowing pussy. You are too lost in your lustful, skunkbeast instincts to stop this and are even proud of them as you watch him continue to change, skunk fur spreading across his body and his cock turning a lustrous ebon.";
				say "     It's only once you finish with the third girl that you come to your senses enough to order the girls off of him and back to the woods. They seem a little disappointed, but you growl firmly, reminding them that you said you'd wanted him for yourself. They scurry off, still leaking skunkbeast cum from their pussies as they leave. Once they're out of sight, you turn your attention to their victim. He is a little wary at first, but smiles and thanks you for your help as he recognizes that you don't mean him any harm. He seems to still be at least partially in control of his faculties. He looks down at his discarded clothes and shrugs, deciding they're unneeded now. He tosses his pack over his shoulder and motions for you to follow him.";
			else:
				say "     Picking one of the girls, you get her to lick and stroke your dripping pussy, lavishing attention upon your needy sex. The other two latch onto nipples and start nursing, licking and suckling to get their fill of your milk. You moan in pleasure, telling your sexy girls again how pleased you are with them and their wonderful, talented paws and muzzles, riding through several orgasms as they nurse from you. Eventually you realize that there's a fourth muzzle, the girls having brought over their victim to nurse from you as well. You are too lost in your lustful, skunkbeast instincts to stop this and moan loudly as he continues to change, skunk fur spreading across his body and his cock turning a lustrous ebon.";
				say "     It's only once you have another crashing orgasm that you come to your senses enough to order the girls off of him pull his muzzle away from your dripping nipple. They seem a little disappointed, but you growl firmly, reminding them that you said you'd wanted him for yourself. They scurry off, disappointed by obedient. Once they're out of sight, you turn your attention to their victim. He is a little wary at first, but smiles and thanks you for your help as he recognizes that you didn't mean him any harm. He seems to still be at least partially in control of his faculties. He looks down at his discarded clothes and shrugs, deciding they're unneeded now. He tosses his pack over his shoulder and motions for you to follow him.";
			say "     'Thanks again for the help back there. They got a little upset when I threw a can of tomato juice onto one of those big beasts. Stupid coyote didn't know what he was talking about. Been chasing and throwing goo at me almost the whole way back to my store. Almost made it, too. Never would have been able to run that far before this whole crazy thing started.' He only stops talking when he pulls a big bottle of cola from his pack and starts downing it. He leads you over a few more streets and ushers you into a comic shop, chatting the whole time. The stairwell is a little difficult for your large body to navigate, but you manage to get inside.";
			wait for any key;
			now battleground is "void";
			move player to Comic Shop;
			now Comic Shop is known;
			increase score by 20;
		else:
			say "     Yelling for their attention, you charge the skunks. The one at the back turns to face you while the others tackle their fallen prey. He yells and screams, trying to push them back and get back up while they try to kiss and fondle him.";
			now skunkfight is 3;
			challenge "Skunk";
			if skunkfight is 1:
				now skunkfight is 3;
				say "     With the first of them finished, you move in on the other two. They notice you coming, and after some shoving between the pair, one gets up and heads to deal with you while the other keeps at their prey. He's become much more skunk-like now, with black and white fur starting to grow in over his body as the femme starts bobbing her muzzle over his stiff cock. His struggles have stopped and he's moaning in pleasure. You pull your eyes away from the erotic sight and focus on the one coming at you.";
				challenge "Skunk";
				if skunkfight is 1:
					now skunkfight is 3;
					say "     The last skunk girl releases the now ebon flesh of her prey's cock to face you. The large fellow moans softly in disappointment, trying to reach for her. She presses her foot down on his chest. 'Oh, I'll be back for you shortly, sweetie.' Grinning, she licks her gooey lips and turns to face you.";
					challenge "Skunk";
					if skunkfight is 1:
						say "     With the final skunk girl defeated, you turn to the large skunk fellow, weapon at the ready just in case. But he smiles and thanks you for your help, seeming still at least partially in control of his faculties. He looks down at his discarded clothes and shrugs, deciding they're unneeded now. He tosses his pack over his shoulder and motions for you to follow him.";
						say "     'Thanks again for the help back there. They got a little upset when I threw a can of tomato juice onto one of those big beasts. Stupid coyote didn't know what he was talking about. Been chasing and throwing goo at me almost the whole way back to my store. Almost made it, too. Never would have been able to run that far before this whole crazy thing started.' He only stops talking when he pulls a big bottle of cola from his pack and starts downing it. He leads you over a few more streets and ushers you into a comic shop, chatting the whole time.";
						wait for any key;
						now battleground is "void";
						move player to Comic Shop;
						now Comic Shop is known;
						increase score by 20;
			if skunkfight is 3:
				say "     Deciding you've had enough of this, not really being your fight in the first place, you break away from the skunk girl and make a run for it. As you are not their intended prize, the skunk doesn't pursue you and instead heads back to the rapidly-changing fellow who is well on his way to becoming and other skunk girl.";
			if skunkfight is 2:
				say "     Defeated, the skunk girl grinds her body against yours, dripping goo onto your crotch and fondling you. 'Mmm... I wish we had more time to play, but we need to get this fool back to receive his just punishment. He'll make a fine skunk girl for our sexy master to breed.' She kisses your cheek and runs a paw down your chest. 'You should come see him in the forest. I'd enjoy seeing you made into another slut for him to breed, too.' With that, she gets up and starts dragging off the sex-dazed skunk. He's already started to gain a shapely, feminine figure and will likely be another skunk slut soon enough.";
	else:
		say "     More enticed by the backpack and its potential contents than the certainty of a fight with the trio of skunk girls, you slip out and grab the backpack before making your escape. You can hear the excited moans of their prey getting louder and more feminine as they transform him into another sultry skunk girl like themselves. Once you have some safe distance between you and them, you open up the pack to find a collection of snack foods and drinks, through there is a tin of ravioli as well. A side pocket has a canister of pepperspray which may be useful.";
		say "     Food, chips, soda x2 and pepperspray obtained.";
		increase carried of pepperspray by 1;
		increase carried of food by 1;
		increase carried of chips by 1;
		increase carried of soda by 2;
		increase score by 15;
	now skunkfight is 0;
	Now Mephitness is resolved;


Comic Shop is a room. It is fasttravel. It is private.
The description of Comic Shop is "[comicshopdesc]".

the scent of Comic Shop is "The comic shop smells stale and musty, with an odor of skunk musk in the air as well.".

to say comicshopdesc:
	say "     The shadowy comic shop is on the second floor of a run down building at the edge of the neighborhood. It is wedged between other similarly decrepit looking establishments. Being behind a barred door and upstairs seems to have saved it from the lustful hordes of monsters. The shop itself is fairly large, but there is little space to move. There are shelves and displays everywhere for comics, manga and games, making it very difficult to navigate around inside.";


Section 2 - Frank the Skunk

Frank is a man. Frank is in Comic Shop.
The description of Frank is "[frankdesc]".
The conversation of Frank is { "NERD!" }.
The icon of Frank is Figure of Frank_icon.
franksex is a number that varies.
frankmalesex is a number that varies.

the scent of the Frank is "The large skunk fellow smells of musty comics, Cheetohs and male skunk.".

to say frankdesc:
	say "     Frank is a heavy-set skunk fellow. His encounter with the skunks seems to have slimmed him down a little, but he is still quite portly. His black and white fur is thick and soft. As he now has fur, he's forgone wearing clothes aside from a ballcap with the store logo on it.";

Instead of conversing the Frank:
	say "     [one of]'I never should have listened to that stupid coyote,' he grumbles angrily. 'He didn't know what he was talking about at all.'[or]'Do you prefer Batman or Superman?' he asks before going off into a long discussion about comics.[or]'It's too bad there aren't any cool skunk superheroes,' he muses.[or]'Which do you think is better? 4th edition or 3.5?' Having no idea what the chatty fellow is talking about, you just shrug.[or]'I could really go for some more soda,' he says, having just finished one off.[or]'I hope this all gets sorted out soon,' he says. 'My gaming night is on Fridays and we're just about to face the boss.'[or]'Reading comics help me remember who I was and how much I love them.'[or]'So, I was thinking you must be fourth or fifth level or something. I'm guessing I'm at about level ten by now,' he says, flexing a little.[or]'So did you see that new superhero movie that came out this summer?' he asks. Not even waiting for your response, he starts going on about his impressions of the film and its impact on the genre.[at random]";

the fuckscene of Frank is "[sexwithFrank]".

Section 3 - Sex Mechanics

to say sexwithFrank:
	follow the cock descr rule;
	if skunkbeaststatus is 1:
		setmonster "Skunkbeast Lord";
	else:
		setmonster "Skunk";
	if player is neuter:
		say "     Having no sexual organs of your own, there seems to be little point in trying to have sex with the skunk.";
	else if cunts of player is 0 and cocks of player > 0:
		say "[Frank_MM_sex00]";
	else if lastfuck of Frank - turns < 8:
		say "     The large skunk smiles and brushes his paws over his fluffy chair to straighten it out a little. 'Mmm... that sounds nice, but I could use a bit more of a break. Besides, I want to finish the last of these issues,' he adds, pointing to the large pile he's set out.";
	else:
		say "[Frank_MF_sex00]";

to say Frank_MM_sex00:
	let specskunkstate be 0;
	if bodyname of player is "Skunkbeast Lord" and the player is pure:
		now specskunkstate is 2; [Skunkbeast Lord]
		if skrp is 1:
			now specskunkstate is 3; [Skunkbeast Lord Taur]
	else if bodyname of player is "Skunk Taur" and tailname of player is "Skunk Taur":
		now specskunkstate is 1; [Skunk Taur]
	if lastfuck of Frank - turns < 8:
		say "     You don't want to rush things with him. Maybe you should wait a little longer before having another go with him.";
	else if frankmalesex < 3:
		say "[Frank_MM_seduction]";
	else if frankmalesex < 6 and libido of Frank is 1:
[		if remainder after dividing frankmalesex by 3 is 0:			[***skunk variations]
			if specskunkstate is 3:
				say "[Frank_MM_ftop_01_SS3]";
			else if specskunkstate is 2:
				say "[Frank_MM_ftop_01_SS2]";
			else if specskunkstate is 1:
				say "[Frank_MM_ftop_01_SS1]";
			else:
				say "[Frank_MM_ftop_01]";
		else if remainder after dividing frankmalesex by 3 is 1:
			if specskunkstate is 3:
				say "[Frank_MM_ftop_02_SS3]";
			else if specskunkstate is 2:
				say "[Frank_MM_ftop_02_SS2]";
			else if specskunkstate is 1:
				say "[Frank_MM_ftop_02_SS1]";
			else:
				say "[Frank_MM_ftop_02]";
		else:
			if specskunkstate is 3:
				say "[Frank_MM_ftop_03_SS3]";
			else if specskunkstate is 2:
				say "[Frank_MM_ftop_03_SS2]";
			else if specskunkstate is 1:
				say "[Frank_MM_ftop_03_SS1]";
			else:
				say "[Frank_MM_ftop_03]";]
		if remainder after dividing frankmalesex by 3 is 0:
			say "[Frank_MM_ftop_01]";
		else if remainder after dividing frankmalesex by 3 is 1:
			say "[Frank_MM_ftop_02]";
		else:
			say "[Frank_MM_ftop_03]";
		increase frankmalesex by 1;
		now lastfuck of Frank is turns;
		say "[maleskunkinfect]";
	else if frankmalesex < 6 and libido of Frank is 2:
[		if remainder after dividing frankmalesex by 3 is 0:			[***skunk variations]
			if specskunkstate is 3:
				say "[Frank_MM_fbottom_01_SS3]";
			else if specskunkstate is 2:
				say "[Frank_MM_fbottom_01_SS2]";
			else if specskunkstate is 1:
				say "[Frank_MM_fbottom_01_SS1]";
			else:
				say "[Frank_MM_fbottom_01]";
		else if remainder after dividing frankmalesex by 3 is 1:
			if specskunkstate is 3:
				say "[Frank_MM_fbottom_02_SS3]";
			else if specskunkstate is 2:
				say "[Frank_MM_fbottom_02_SS2]";
			else if specskunkstate is 1:
				say "[Frank_MM_fbottom_02_SS1]";
			else:
				say "[Frank_MM_fbottom_02]";
		else:
			if specskunkstate is 3:
				say "[Frank_MM_fbottom_03_SS3]";
			else if specskunkstate is 2:
				say "[Frank_MM_fbottom_03_SS2]";
			else if specskunkstate is 1:
				say "[Frank_MM_fbottom_03_SS1]";
			else:
				say "[Frank_MM_fbottom_03]";]
		if remainder after dividing frankmalesex by 3 is 0:
			say "[Frank_MM_fbottom_01]";
		else if remainder after dividing frankmalesex by 3 is 1:
			say "[Frank_MM_fbottom_02]";
		else:
			say "[Frank_MM_fbottom_03]";
		increase frankmalesex by 1;
		now lastfuck of Frank is turns;
		say "[maleskunkinfect]";
	else:
		say "     Before approaching Frank with your offer for more sex, you pause to consider what fun you might like to have with the big, fluffy skunk this time.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if libido of Frank is 1:
			choose a blank row in table of fucking options;
			now title entry is "Switch it up - Top him";
			now sortorder entry is 1;
			now description entry is "coax the skunk into being the bottom this time";
		if libido of Frank is 2:
			choose a blank row in table of fucking options;
			now title entry is "Switch it up - Be the bottom";
			now sortorder entry is 1;
			now description entry is "coax the skunk into topping you this time";
		if libido of Frank is 2 or libido of Frank is 3:		[Frank bottom content]
			choose a blank row in table of fucking options;
			now title entry is "Fuck him A";
			now sortorder entry is 2;
			now description entry is "fuck him bent over the table";
			choose a blank row in table of fucking options;
			now title entry is "Fuck him B";
			now sortorder entry is 3;
			now description entry is "fuck him on his back";
			choose a blank row in table of fucking options;
			now title entry is "Receive oral";
			now sortorder entry is 20;
			now description entry is "have the skunk suck you off";
		if libido of Frank is 1 or libido of Frank is 3:		[Frank top content]
			choose a blank row in table of fucking options;
			now title entry is "Get fucked A";
			now sortorder entry is 10;
			now description entry is "get lain across the table and fucked";
			choose a blank row in table of fucking options;
			now title entry is "Get fucked B";
			now sortorder entry is 11;
			now description entry is "get bent over the table and fucked";
			choose a blank row in table of fucking options;
			now title entry is "Give oral";
			now sortorder entry is 21;
			now description entry is "suck the skunk's ebon pole";
		if libido of Frank is 3:								[Frank switch content]
			choose a blank row in table of fucking options;
			now title entry is "69";
			now sortorder entry is 12;
			now description entry is "share in some mutual oral pleasure";
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "Shall you [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Switch it up - Top him":
						say "[Frank_MM_switch_fbottom]";
					else if nam is "Switch it up - Be the bottom":
						say "[Frank_MM_switch_ftop]";
					else if nam is "Fuck him A":
						say "[Frank_MM_fbottom_01]";
					else if nam is "Fuck him B":
						say "[Frank_MM_fbottom_03]";
					else if nam is "Receive oral":
						say "[Frank_MM_fbottom_02]";
					else if nam is "Get fucked A":
						say "[Frank_MM_ftop_01]";
					else if nam is "Get fucked B":
						say "[Frank_MM_ftop_03]";
					else if nam is "Give oral":
						say "[Frank_MM_ftop_02]";
					else if nam is "69":
						say "[Frank_MM_fswitch_01]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		increase frankmalesex by 1;
		now lastfuck of Frank is turns;
		say "[maleskunkinfect]";
		wait for any key;
		clear the screen and hyperlink list;


Section 4 - MF Sex Scenes

to say Frank_MF_sex00:
	increase franksex by 1;
	now lastfuck of Frank is turns;
	let specskunkstate be 0;
	if bodyname of player is "Skunkbeast Lord" and the player is pure:
		now specskunkstate is 2; [Skunkbeast Lord]
		if skrp is 1:
			now specskunkstate is 3; [Skunkbeast Lord Taur]
	else if bodyname of player is "Skunk Taur" and tailname of player is "Skunk Taur":
		now specskunkstate is 1; [Skunk Taur]
	if remainder after dividing franksex by 3 is 1:
		if specskunkstate is 3:		[Skunkbeast Lord Taur]
			say "     Frank smiles eagerly at your offer and moves around the counter to cuddle with your tauric skunk form. He runs his paws over you, chirring softly as he does. He nuzzles and kisses you repeatedly, stroking and petting your bestial head as he does. He even kneels down to share a few kisses with and give a quick scritch to the lusty skunk head at the base of your waist. She gives a giggling chirr, happy to get some personal attention as well. And while he's clearly drawn to your Skunkbeast Lord form, the pudgy skunk turns out to be an affectionate lover as well. He's attentive to your needs and seeks out sensitive spots to caress and please you.";
			say "     While the cramped store is a little low on free space, he pushes aside a few wire display racks to give you both a more open area. Moving around behind you, he wraps his arms around your big, fluffy tail, moaning lustfully as he takes in your scent and mounts you. The big guy leans partially over you as he buries his thick cock in your eager pussy. His black shaft throbs and slides against your wet folds before he slowly sinks his thick meat into you. He pumps into you steadily, causing you to rumble in delight as he fucks you. His paws stroke along your back, petting and scritching your furry hide and wide hips as he makes love to you. Your co-inhabitor moans and pants for more, encouraging the skunk to thrust harder and faster.";
			say "     As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you quiver around his cock and cum hard while both your heads cry out in delight. He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your womb. Finished, he withdraws slowly and kneels down, licking your wet pussy and thighs until you're clean of any juices and cum that leaked out. You remain there, resting on the floor cuddled up beside him, enjoying the wonderful afterglow.[impregchance]";
		else if specskunkstate is 2:			[Skunkbeast Lord]
			say "     Frank smiles eagerly at your offer and moves around the counter to cuddle with your mighty skunk form. He runs his paws over you, chirring softly as he does. He nuzzles and kisses you repeatedly, stroking and petting your bestial head as he does. And while he's clearly drawn to your Skunkbeast Lord form, the pudgy skunk turns out to be an affectionate lover as well. He's attentive to your needs and seeks out sensitive spots to caress and please you.";
			say "     While the cramped store is a little low on free space, he pushes aside a few wire display racks to give you both a more open area. Moving around behind you, he wraps his arms around your big, fluffy tail, moaning lustfully as he takes in your scent and mounts you. The big guy leans partially over you as he buries his thick cock in your eager pussy. His black shaft throbs and slides against your wet folds before he slowly sinks his thick meat into you. He pumps into you steadily, causing you to rumble in delight as he fucks you. His paws stroke along your back, petting and scritching your furry hide and wide hips as he makes love to you.";
			say "     As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you quiver around his cock and cum hard. He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your womb. Finished, he withdraws slowly and kneels down, licking your wet pussy and thighs until you're clean of any juices and cum that leaked out. You remain there, resting on the floor cuddled up beside him, enjoying the wonderful afterglow.[impregchance]";
		else if specskunkstate is 1:
			say "     Frank smiles eagerly at your offer and moves around the counter to cuddle with your tauric skunk form. He buries you in the soft, musky fur of his chest and wraps his fluffy tail around you. As his paws slide down your sides to stroke your hips while he kisses you, your lower skunk head gets in on the action. Finding the portly skunk's cock within reach, she starts licking and then sucking on it. Frank is not put off by your companion's presence nor by her eagerness to get involved and even kneels down to give her a few kisses and scritches in turn. She gives a giggling chirr, happy to get some personal attention as well. Despite his awkward conversation habits, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you.";
			say "     While the cramped store is a little low on free space, he pushes aside a few wire display racks to give you both a more open area. Moving around behind you, he wraps his arms around your big, fluffy tail, moaning lustfully as he takes in your scent and mounts you. The big guy leans partially over you as he buries his thick cock in your eager pussy. His black shaft throbs and slides against your wet folds before he slowly sinks his thick meat into you. He pumps into you steadily, causing you to rumble in delight as he fucks you. His paws stroke along your back, petting and scritching your furry hide and wide hips as he makes love to you. Your co-inhabitor moans and pants for more, encouraging the skunk to thrust harder and faster.";
			say "     As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you quiver around his cock and cum hard while both your heads cry out in delight. He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your womb. Finished, he withdraws slowly and kneels down, licking your wet pussy and thighs until you're clean of any juices and cum that leaked out. You remain there, resting on the floor cuddled up beside him, enjoying the wonderful afterglow.[impregchance]";
		else:
			say "     Frank grins at your offer and moves around the counter to wrap his arms around you. He buries you in the soft, musky fur of his chest and wraps his fluffy tail around you. His paws slide down to your sides and stroke your hips as he starts kissing you. Despite his awkward conversation habits, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you. His touches are soft and tender, building your arousal higher while your tongues play against one another.";
			say "     He guides you to another section of the store where the large gaming table sits. He lays you back on it, legs hanging over the side and gets his cock lined up with your eager pussy. His black shaft throbs and slides against your wet folds before he slowly sinks his thick meat into you. He pumps into you steadily, causing you to moan in delight as he fucks you. His paws drift up your chest to play with your breasts and tease your nipples.";
			say "     As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you quiver around his cock and cum hard. He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your womb. Finished, he withdraws slowly and kneels down, licking your wet pussy and thighs until you're clean of any juices and cum that leaked out. You remain there, resting on the hard table, enjoying the wonderful afterglow.[impregchance]";
	else if remainder after dividing franksex by 3 is 2:
		say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you. You kneel down in front of him and start licking at his ebon shaft. Precum dribbles from its tip to be quickly lapped up by you. As his excitement builds, his musky scent grows and your arousal increases until licking isn't enough and you stuff his thick rod into your mouth. You lick and suck at it hungrily, making the large fellow moan in pleasure[if specskunkstate is odd]. Hearing your mephit co-inhabitor eagerly enjoying the fun, you rise up and let her have a turn sucking the skunk's cock. After sharing some passionate kisses with Frank while your lustful companion sucks his dick, you get back down on your knees and return to blowing him[end if].";
		say "     He runs his paws over your head and rubs your ears while bundling his big, fluffy tail around you like a warm, furry hug. You lavish attention on his cock and balls until finally he growls and pumps his thick seed down your throat. It is surprisingly sweet and delicious, and you lick it all up before swallowing it down. The skunk, not wanting to leave you unsatisfied[if specskunkstate is odd], moves around behind you and buries two fingers into your pussy while nuzzling and licking at your rear. His soft muzzle brushes against your folds before finding your clit. Your pussy drips with juices as he pleasures you with paw and tongue. He licks and sucks on your hot button while pumping those fingers into you until you cum hard with twin lustful moans that make him smile. After wiping up the wet spot from the floor with his tail, he rises up and pats your ass[else], boosts you up onto one of the glass counters and buries two fingers into your pussy while nuzzling and licking at your breasts. His soft muzzle brushes over them before he starts licking and sucking your nipples. He keeps this up, pumping those fingers and teasing your nipples until you cum hard with a lustful moan that makes him smile. After helping you down, he pats your ass and wipes the wet glass with his fluffy tail[end if].";
	else if remainder after dividing franksex by 3 is 0:
		if specskunkstate is odd:		[Skunk Taur or Skunkbeast Lord Taur]
			say "     The hefty skunk smiles at your proposition and comes around the counter again. He wraps his arms around you and lets his fluffy tail slide across your body. Needing some added space, he moves a couple of standees to create a more open area in the else cramped store. He gives a happy chirr as he kisses you repeatedly before mounting you. Obviously aroused by your [if specskunkstate is 3]enhanced[else]unusual[end if] skunk form, he is quick to start fucking you, though he is no less attentive or sensual than earlier despite this zeal. Your skunk co-inhabitor is certainly happy with this, moaning for him to screw you both senseless.";
			say "     With your [if specskunkstate is 3]strong[else]quadrupedal[end if] body able to support the hefty skunk, he rests himself across your [if specskunkstate is 3]bestial[else]tauric[end if] back, hugging and caressing you even as he pounds into you. He nuzzles at the base of your back while whispering words of affecting and love for his rescuer. Your lower skunk head pauses in her sexual moans to give a cute 'Awwww!' at Frank's words before returning to her previous urgings for sex. Reaching around, Frank fuzzles her head before letting her suck on some of his fingers to keep her silent. With her muzzle occupied, he can better focus his remaining attention upon you. His black cock pumps into you steadily, causing both your heads to moan repeatedly as his free paw wanders over your body and caress your sensitive nipples. As always, he is an attentive lover, seeking to pleasure you as best he can by timing his thrusts and running those nimble fingers over your sensitive spots.";
			say "     As he mates with you, his musky scent grows thick in the air, a scent you're finding more and more arousing each time you take the big fellow into you. The wonderful fucking and his arousing scent eventually become too much for you and you cum hard, clamping your pussy down around his throbbing shaft. Your quivering, milking vagina pushes him over the edge and soon you're rewarded with heavy spurts of his hot, skunk cum for your womb.[impregchance]";
			say "     He remains atop you, pressing down on you with his body, which you find soft and comforting, as if its where you belong. You lower your tauric body to the floor with him still atop you. He nuzzles your back tenderly, telling you again how lovely you are, the lusty skunk head still occupied with playfully licking and sucking upon his digits. Long after his erection has gone down, he withdraws from you and gets off you. Helping you up, he snuggles and grooms you. He even uses his fluffy tail to wipe your wet, dripping pussy clean, making you shiver in delight at the soft touch of his fur. His paws drift to your belly and rub it gently over that warm spot deep inside you where your cum-filled womb is.";
		else if specskunkstate is 2:			[Skunkbeast Lord]
			say "     The hefty skunk smiles at your proposition and comes around the counter again. He wraps his arms around you and lets his fluffy tail slide across your body. Needing some added space, he moves a couple of standees to create a more open area in the else cramped store. He gives a happy chirr as he kisses you repeatedly before mounting you. Obviously aroused by your enhanced skunk form, he is quick to start fucking you, though he is no less attentive or sensual than earlier despite this zeal.";
			say "     With your strong body able to support the hefty skunk, he rests himself across your bestial back, hugging and caressing you even as he pounds into you. He nuzzles at the back of your skunkbeast head, nuzzling your ears and whispering words of affecting and love for his rescuer. His black cock pumps into you steadily, causing you to moan repeatedly as his paws wander over your body and caress your sensitive nipples. As always, he is an attentive lover, seeking to pleasure you as best he can by timing his thrusts and running those nimble fingers over your sensitive spots.";
			say "     As he mates with you, his musky scent grows thick in the air, a scent you're finding more and more arousing each time you take the big fellow into you. The wonderful fucking and his arousing scent eventually become too much for you and you cum hard, clamping your pussy down around his throbbing shaft. Your quivering, milking vagina pushes him over the edge and soon you're rewarded with heavy spurts of his hot, skunk cum for your womb.[impregchance]";
			say "     He remains atop you, pressing down on you with his body, which you find soft and comforting, as if its where you belong. You lower your animalistic body to the floor with him still atop you. He nuzzles you and nibbles your ear some more, telling you again how lovely you are, then kisses you again. Long after his erection has gone down, he withdraws from you and gets off you. Helping you up, he snuggles and grooms you. He even uses his fluffy tail to wipe your wet, dripping pussy clean, making you shiver in delight at the soft touch of his fur. His paws drift to your belly and rub it gently over that warm spot deep inside you where your cum-filled womb is.";
		else:
			say "     The hefty skunk smiles at your proposition and comes around the counter again. He wraps his arms around you and bundles you up in his fluffy tail, guiding you back to the game table as he kisses you repeatedly. This time he puts face down on the table and climbs atop you. He nuzzles and nips at your ears, chirring softly to you as he whispers words of affection and love for his rescuer. He lines up his throbbing shaft, then slowly sinks his thick meat into you, making you both moan in pleasure. His black cock pumps into you steadily, causing you to moan repeatedly as his paws wander over your body and caress your sensitive nipples.";
			say "     As always, he is an attentive lover, seeking to pleasure you as best he can by timing his thrusts and running those nimble fingers over your sensitive spots. As he mates with you, his musky scent grows thick in the air, a scent you're finding more and more arousing each time you take the big fellow into you. The wonderful fucking and his arousing scent eventually become too much for you and you cum hard, clamping your pussy down around his throbbing shaft. Your quivering, milking vagina pushes him over the edge and soon you're rewarded with heavy spurts of his hot, skunk cum for your womb.[impregchance]";
			say "     He remains atop you, pressing down on you with his body, which you find soft and comforting, as if its where you belong. He nuzzles you and nibbles your ear some more, telling you again how lovely you are, then kisses you again. Long after his erection has gone down, he withdraws from you and gets off you. Helping you up, he bundles you up in his arms and uses his fluffy tail to wipe your wet, dripping pussy clean, making you shiver in delight at the soft touch of his fur. His paws drift to your belly and rub it gently over that warm spot deep inside you where your cum-filled womb is.";
	if skunkbeaststatus is 1:
		sblinfect;
	else:
		infect "Skunk";


Section 5 - MM Seduction

to say Frank_MM_seduction:
	if frankmalesex is 0:
		say "     Frank seems a little flustered by your request. 'Oh... ahhh... That sounds nice and all, but... umm... ladies only, bro,' he says. 'Here, you can borrow a couple of my comics,' he adds, passing you some comics from under the counter with animal characters in adult situations. 'Just don't get them all sticky,' he cautions you. Looking over the issues of Genus Male he's passed you and the male on male content within them, perhaps there's still hope for a little fun with the skunk guy.";
		increase score by 1;
		increase frankmalesex by 1;
		now lastfuck of Frank is turns;
	else if frankmalesex is 1:
		say "     While the skunk is re-shelving in the back area by the gaming table, you bring up the subject of playing around again. The skunk seems a little flustered by your renewed request, but you quickly tell him you're just enjoying the comics he showed you. You add that you just want to have a little fun and were checking if he minded if you whipped it out, as it were. Trying to act nonchalant, the skunk mumbles that you can go ahead, turning back to his shelves. You slide up onto the sturdy gaming table and stretch out after putting aside your clothes and gear, making sure the skunk's got a good view as he peeks at you occasionally.";
		say "     Running your hands over your [bodytype of player] body, you caress your [skinname of player] flesh with a soft moan before letting a hand drift down between your legs. You run your fingers lightly over your cock at first, coaxing it from a semi-flaccid state to full erection slowly. After flipping one pages in the comic to maintain the illusion you're reading it, you take your [cock size desc of player] [cock of player] penis firmly in hand and start stroking, releasing another moan for the skunk's benefit. This gets him to taking a longer glance, before nervously turning away again, his paw drifting down to his groin to rub his sheath. Eyeing his ass and not the comic, you pump your meat faster.";
		say "     After flipping unseen pages again, you move your free hand to your backside and start fingering your tight pucker. Growing rather excited from your masturbation show, you leave dribbles of precum on the table. Frank's stroking himself as well, clearly aroused by your show and forgetting to hide it. You lick your lips slowly as you watch his paw pumping over his lovely cock, imagining it inside you as your tease your back entrance. The large skunk steps a little closer, coming within reach, and you slowly reach over to take a hold of his ebon cock. Too excited to pull away, he allows you to take his meat in hand. And moments later, into your mouth. You lick and suck on it firmly, getting the excited skunk to cum down your throat. It is surprisingly sweet and delicious. The excitement of your successful plan sets you off and you spray your hot load across the table. As the skunk's climax fades into the afterglow, he realizes what's happened and dashes back to the front of the store.";
		increase score by 5;
		increase frankmalesex by 1;
		now lastfuck of Frank is turns;
		say "[maleskunkinfect]";
	else if frankmalesex is 2:
		if "Dominant" is listed in feats of player:
			say "     Given how your earlier show drew his attention, you think he's ready to coaxed into some guy on guy action. The only question remains if you'd prefer to try [link]topping him (Y)[as]y[end link] or just seduce your way into [link]riding his cock (N)[as]n[end link].";
			if the player consents:
				say "[Frank_MM_fbottom_00]";
			else:
				say "[Frank_MM_ftop_00]";
		else:
			say "[Frank_MM_ftop_00]";


Section 6 - MM Scenes w/Frank as Top

to say Frank_MM_ftop_00:
	say "     Deciding to try again with the skunk, you lean across his counter and run a hand through his chest-fur. While the skunk is startled, you whisper that you really liked playing with him earlier and would like to have some more. As you say this, you slide your fingers down to his sheath and start rubbing it. He groans softly and squirms in his seat. 'But I'm not... I mean... guys don't do it for me...' he mumbles a little, trying to deny it even as his sheath starts to swell and grow.";
	say "     'Oh, I know,' you lie, 'but this is just foolin['] around. Just a couple of guys helping each other out.' Moving over the counter, you slide back his white sheath as he grows hard, then drop to your knees in front of him. You take his cock into your mouth, licking and sucking at it. You grin as he groans in pleasure and start slathering his dark rod with your spit, preparing him for what you're planning next. You fondle his balls and weigh those full orbs in your hand, eager for the cum they contain.";
	say "     Once he's well and truly worked up, you ease your mouth back, getting a groan of disappointment from him. Getting back up, you slide into his lap, moving over his erection. As he starts to voice an objection, you kiss him to silence the big skunk. 'We're just playing around. Besides, a hole's a hole, sweetie. And you're just the guy to fill mine,' you moan as you sink yourself down onto his cock, letting it spread open your back door. Frank groans again and grips your ass, helping to guide you down his shaft. You reward him with another kiss and squeeze of your anus around his penis. The skunk doesn't last long in fucking his first ass, but cums quite hard, pumping a nice, thick load into you. You cum hard as well, aroused by the act of getting this ostensibly straight skunk to fuck you. Quite pleased with yourself as you rise from his lap, you make sure to give the sexy skunk a nice view of his cum leaking from your stretched pucker before walking off.[impregchance]";
	increase score by 15;
	increase morale of player by 5;
	increase frankmalesex by 1;
	now libido of Frank is 1;
	now lastfuck of Frank is turns;
	say "[maleskunkinfect]";

to say Frank_MM_ftop_01:
	say "     Coming back to Frank for more, this time there are no objections and he leads you back to the gaming table where you first coaxed him into playing with you. His paws slide down to your sides and stroke your hips as he starts kissing you. Despite his awkward conversation habits and earlier protests, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you. He lays you back on the table, legs hanging over the side and gets his cock lined up with your [tailname of player] backside. His black shaft throbs and slides against your cheeks, dribbling precum against your tight hole in anticipation before he slowly sinks his thick meat into you. He pumps into you steadily, causing you to moan in delight as he fucks you.";
	say "     His paws take hold of your hips and squeeze your ass, gripping it firmly as he thrusts. As he mates you, his musky scent grows stronger in the air, but it grows increasingly arousing to you until finally you clench down firmly around his cock and cum hard. You blast your load across your chest and the skunk grins happily at the sight of this. He growls softly in the back of his throat and drives his cock deep inside you, pumping his hot skunk seed into your bowels. Finished, he withdraws slowly and kneels down, licking your spent shaft a few times, blushing as he does, to get those last few drops of cum leaking out. You remain there, resting on the hard table, enjoying the wonderful afterglow as he continues on, licking your semen from your chest.[impregchance]";

to say Frank_MM_ftop_02:
	say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you. You kneel down in front of him and start licking at his ebon shaft. Precum dribbles from its tip to be quickly lapped up by you. As his excitement builds, his musky scent grows and your arousal increases until licking isn't enough and you stuff his thick rod into your mouth. You lick and suck at it hungrily, making the large fellow moan in pleasure. He runs his paws over your head and rubs your ears while bundling his big, fluffy tail around you like a warm, furry hug. You lavish attention on his cock and balls until finally he growls and pumps his thick seed down your throat. It is surprisingly sweet and delicious, and you lick it all up before swallowing it down. The skunk, not wanting to leave you unsatisfied, boosts you up onto one of the glass counters and wraps his paw around your cock while nuzzling at your neck. His soft fur brushes against you while his small, pointed teeth nibble along your throat and shoulder. As you moan that you're getting close, he tilts his head to watch and moves his fluffy tail into position. As you cum, you spray your hot seed onto his fluffy, striped tail, adding more streaks of white to it. After helping you down, he pats your ass and brushes your cum into his fur, mixing your scent into his.";

to say Frank_MM_ftop_03:
	say "     The hefty skunk smiles at your proposition and comes around the counter again. He wraps his arms around you and bundles you up in his fluffy tail, guiding you back to the game table as he kisses you repeatedly. This time he puts you face down on the table and climbs atop you. He nuzzles and nips at your ears, chirring softly to you as he whispers words of affection and love for his rescuer. He lines up his throbbing shaft, then slowly sinks his thick meat into you, making you both moan in pleasure. His black cock pumps into you steadily, causing you to moan repeatedly as his paws wander over your body and caress your sides before moving around to take hold of your cock and balls. As always, he is an attentive lover, seeking to pleasure you as best he can by timing his thrusts and running those nimble fingers over your sensitive spots. As he mates with you, his musky scent grows thick in the air, a scent you're finding more and more arousing each time you take the big fellow into you. The wonderful fucking and his arousing scent eventually become too much for you and you cum hard, clamping your asshole down around his throbbing shaft and spraying your seed onto the floor. Your tight, clenched hole pushes him over the edge and soon you're rewarded with heavy spurts of his hot, skunk cum to fill your bowels.";
	say "     He remains atop you, pressing down on you with his body, which you find soft and comforting, as if its where you belong. He nuzzles you and nibbles your ear some more, telling you again how wonderful you are for showing him how enjoyable this could be, then kisses you again. Long after his erection has gone down, he withdraws from you and gets off you. Helping you up, he bundles you up in his arms and uses his fluffy tail to wipe your leaking hole clean, making you shiver in delight at the soft touch of his fur. His paws drift to your belly and rub it gently over your warm, cum-filled tummy.[impregchance]";


Section 7 - MM Scenes w/Frank as Bottom

to say Frank_MM_fbottom_00:
	say "     Deciding to see if you can turn the skunk guy around to the point of letting you top him, you know you're going to have to work up to that. Moving with confidence, you lean across his counter and run a hand through his chest-fur. While the skunk is startled, you whisper that you really liked playing with him earlier and would like to have some more. As you say this, you slide your fingers down to his sheath and start rubbing it. He groans softly and squirms in his seat. 'But I'm not... I mean... guys don't do it for me...' he mumbles a little, trying to deny it even as his sheath starts to swell and grow.";
	say "     'Oh, I know,' you lie, 'but this is just foolin['] around. Just a couple of guys helping each other out.' Moving over the counter, you slide back his white sheath as he grows hard, then drop to your knees in front of him. You take his cock into your mouth, licking and sucking at it. You grin as he groans in pleasure and start slathering his dark rod with your spit, using your tongue to get the big guy all worked up. You fondle his balls and rub the base of his shaft, getting him all the more turned on.";
	say "     Once he's well and truly worked up, you pull your mouth back, getting a groan of disappointment from him. Getting back up, you lean against the edge of the display counter with your own throbbing erection on display in front of his face. As he starts to voice an objection, you tussle his headfur. 'We're just playing around and fair's fair. Be a sport and return the favor, bud. Besides, I saw you looking it over before - there's no harm in wanting to give it a try,' you say with smooth confidence, letting your tip brush against his lips as you do. His tongue subconsciously flicks out lick away the dab of pre you've left and then out further to graze across your glans. Glancing up at you with a nervous blush, he hesitates to take a deep breath before opening his muzzle and stuffing your manhood into it. You smile confidently down at him and rub his head, letting him set the pace for the moment.";
	say "     He fumbles around a bit at first, his mouth and tongue not quite knowing what to do despite their eagerness to do it. After giving him a chance to explore his first ever cock, you slip a few tips and directions to improve his technique. With that help, he gets into it pretty quickly, moaning softly as he breathes in the musky scent of your crotch while sucking your dick. Glancing down, you can see he's still rock hard and drooling precum as his paw strokes his ebon rod.";
	say "     You let him go down on your [cock of player] cock for a while before firmly pushing him back. He starts to ask if it's his turn again, but you pull him up out of his seat and into a powerful kiss. With a hand on his meaty cock, you guide him to lean over the counter. He fidgets a bit and mutters that you might be taking things a little too far, though that big, fluffy tail of his does move out of the way readily. 'Don't worry, sweetie,' you rumble in his ear. 'I'll take it nice and easy. You're just such a big cutie, how could I not want to make you mine?' You slide your saliva-slick cock between his cheeks, gently rubbing it between that soft, full bottom of his.";
	say "     Blushing again and looking away, he stifles a needy moan. 'You... you really think I'm cute? Nobody's ever... I mean... not since I was a kid,' he mumbles. Glancing back over his shoulder and seeing your sincerity, as well as feeling your throbbing cock sincerely wanting to fuck him, he grinds his hips back and moans for you to take him. With a smile and another kiss, you start easing your stiff rod into his virgin hole. He's tight, but his transformed body yields easily enough and his initial discomfort turns rapidly to delight as he feels you press against his prostate. While his erection had flagged a little, that brings it right back to full hardness and you pump at it, adding to his pleasure.";
	say "     While you'd like to take your time with him, his less than virginal hole can only take so much on its first time and you're both already quite worked up from the earlier foreplay. You content yourself with giving him a steady fucking that has the chubby skunk moaning softly beneath you, blushing all the while. As with the oral warm-up, he soon responds with an uncertain eagerness, his hips pushing back and his hole squeezing down around you. And when he grabs the edge of the counter and cries out with orgasmic release, musky skunk cum painting the back of it, his anus clenches down around you very tightly with every moaning pulse. A few of these is enough to push you over the top and soon you're filling his bowels with your hot spunk. When your balls are drained, you ease out of him and pat that fluffy ass of his. Seeing a white streak of your cum leaking from his black ring makes you smile. You take a moment to tease it with your finger before walking off, leaving the skunk in a well-fucked daze.";
	increase score by 15;
	increase morale of player by 5;
	increase frankmalesex by 1;
	now libido of Frank is 2;
	now lastfuck of Frank is turns;
	say "[maleskunkinfect]";

to say Frank_MM_fbottom_01:
	say "     Coming back to Frank for more, this time there are no objections as you lead him back to the gaming table where you first coaxed him into playing with you. His paws slide down to your sides and stroke your hips as you start kissing him. Despite his awkward conversation habits and earlier protests, he turns out to be a good lover, attentive to your needs and seeking out sensitive spots to caress and please you before taking your cock in hand. He takes a few minutes to lick and suck at your shaft, slathering it with his tongue and coating it with his saliva in preparation. With you at full erection now, he lays himself face down across the table and pushes his fluffy tail aside. His paws grip the sides of the table when you bring your [cock of player] cock to rub against his dark tail-hole. Spreading that ebon pucker slowly at first, you can't help but smile at the big guy's blushing moan as you penetrate him again.";
	say "     As you thrust into him, you run your hands along his back and sides, stroking his soft black and white fur. His tail wraps around your back and gently tugs at you, as if urging you on for more. His musky scent grows stronger in the air as you fuck him, a scent that becomes increasingly arousing to you. Reaching around, you cup his hefty balls in one hand and pump his thick cock with the other. This makes your fluffy lover pant all the more. The steady thrusting and grind of your pulsing shaft against his prostate eventually becomes too much for the geeky skunk and he releases a growling cry of ecstasy as splatters of gooey skunk cum paint the floor. His back passage squeezes down around you with each spurt, milking your now pounding rod to orgasm as well. You fill the pudgy skunk's bottom with your sticky load, drawing a happy sigh from him. Finished, you withdraw slowly and are coaxed into some cuddles with the skunk by his tugging tail.";

to say Frank_MM_fbottom_02:
	say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you. With his paws going to your crotch, he's quickly on his knees and nuzzling at your throbbing cock[smn]. He teases you with some light licks here and there while taking in your scent[one of][if cockname of player is listed in infections of InternalList]. Next, he buries his nose at the base of your shaft, getting you moaning as he licks and nips at that sensitive spot[else]. Next, he spends quite some time licking and sucking on your balls, getting you moaning as they pulse with readiness[end if][or]. Next, he runs his tongue up and down the underside of your [cock of player] cock[smn] until you're throbbing with need[or]. Next, he twirls his tongue over your glans, slathering it with his saliva until it's drooling precum for him to sample[in random order]. Quite worked up by this point, you take his head a little more firmly in hand and guide your [cock size desc of player] shaft into his muzzle.";
	if frankmalesex is even:
		say "     [if cockname of player is listed in infections of InternalList]Keeping one paw on your hip[else]Keeping one paw on your balls[end if], the other moves down to his own ebon shaft and pumps at that thick member of his while he sucks you off. His muzzle and tongue work you over with growing skill, the inexperienced skunk listening to your instructions and suggestions on how to please you. Frank goes down on you with a hungry eagerness that makes you smile, having become quite the eager cocksucker once he's gotten a taste of it. You pet and caress his head, scritching his fuzzy ears while letting him play around for a little while before you take over and start thrusting. Setting the pace now, you hold his head in your hands and pump into his sucking muzzle. His paw works at his thick cock frantically, the fluffy skunk moaning and panting heavily. And when you blow your load, he swallows it down while blushing so cutely, his tongue sliding around to savor the taste of your semen. After draining your balls for all he can get, the skunk sags back against [one of]a pile of comic book boxes[or]a bookshelf full of gaming supplies[or]a display case of miniatures[or]a recycling bin full of empty soda bottles[at random] and strokes himself off, splattering streaks of white cum across his tummyfur. He then lazily wipes up those gobs with a fingertip and licks them up.";
	else:
		say "     [if cockname of player is listed in infections of InternalList]Keeping one paw on your hip[else]Keeping one paw on your balls[end if], the other moves down to his own ebon shaft and pumps at that thick member of his while he sucks you off. His muzzle and tongue work you over with growing skill, the inexperienced skunk listening to your instructions and suggestions on how to please you. He takes his time on your shaft, lavishing you with attention even as he pumps his own shaft wildly. Soon he's moaning and panting heavily around your throbbing rod as he cums hard. Catching a handful of it with his other other, he pauses briefly in his sucking to bring that sticky mess up to your crotch. Withdrawing you from his muzzle, he wraps that messy paw around it and slathers your meat with his own semen. The feel of that hot, sticky goo on your already throbbing cock makes you moan and spurt a wad of precum onto his cheek. Blushing brightly, he stuffs it back into his muzzle and goes to town on it. His tongue slides all over you, seeking every tasty drop of his seed until you're groaning and cumming, adding your fresh load to his flavorful treat. He licks and sucks greedily until you'll give no more before releasing you so he can lick his sticky paws clean.";

to say Frank_MM_fbottom_03:
	say "     The hefty skunk smiles at your proposition and comes around the counter again. He trundles ahead of you, tail up and swishing, his fluffy bottom on display for you as he hurries over to the gaming table. He runs his paws over your chest, helping to divest you of your gear while sharing several kisses with you. This time around he hops fully up onto the large table. It groans a bit at having his full weight on it, but it is quite sturdy and holds up. Laying on his back, he spreads his legs and blushes a bit as this gives you a clear view of his pudgy ass and already erect cock. His ebon spire is full and plump as it twitches against his rounded tummy, a clear indicator that the skunk's ready and eager to be filled again. Not wanting to keep your lover waiting, you grab those meaty cheeks of his and spread them, sliding your meat between those soft buns. His tail-hole spreads open easily for you as you slide your [cock of player] shaft[if cock length of player > 16] - well easily enough, given your considerable size[end if]. Certainly Frank enjoys it as well, releasing a long, satisfied chirr as your cock is pushed into him.";
	say "     As you fuck him, the skunk plays with his own cock, paw sliding up and down his ink black member. He moans words of affection and love for his rescuer, adding that you can fuck him any time that you want. You grip his meaty legs and increase your pace as the skunk's hole adjusts to having your manhood stuffed into it. His asshole squeezes and tugs at your shaft as you thrust into him, his body responding with an eager need that you're happy to fill.";
	say "     And from the way the skunk's cock is drooling precum, he's going to make quite the mess when he blows. Wanting to see the [if libido of Frank is 2]subby[else]switch[end if] skunk spray the biggest load he can, you settle in for a nice, long fuck, teasing his balls and prostate the whole while. By the end of it, the big guy's moaning and chirring with backed up need, almost begging you to let him finish. The sight of it makes you smile and you drill hard into him, grinding your cock against his prostate to send him over the edge. Large, thick blasts of skunk cum rocket from his shaft. The first few shoot the full length of the table, though most if it splatters onto the big skunk's face and chest. Large gooey splatters cover him, painting much of him with his semen. The sight of this (and the way his anus clenches around you with every powerful blast) has you groaning with your spewing member buried deep inside him, making sure the skunk's coated inside and out with sperm.";
	say "     Once you're both spent, Frank reaches up and pulls you down atop him to another groan from the table. Pressed to his messy chest, you are encircled by his big arms and fluffy tail, which you find soft and comforting, as if its where you belong. He nuzzles you and nibbles your ear some more, telling you again how wonderful you are for showing him how enjoyable this could be, then kisses you again. After a long cuddle, he rolls you over and nuzzles at your chest, licking the sticky mess of his semen from your [bodytype of player] body.";


Section 7 - MM Scenes w/Frank as Switch

to say Frank_MM_switch_ftop:			[Frank switches to top]
	say "     Deciding you'd like to give the skunk a shot at mounting you for a change, you start by approaching him as you usually do. Once you've gotten his attention with some playful fondling, you lead him over to the gaming table. But before he can lean himself over to offer his ass to you again, you instead do that for him, taking him by surprise.";
	say "     'Are you sure? I mean, I've been... you know...' he says with a mix of desire and nervousness in his voice. You smile back at him and give your rear a wiggle, telling him that fair's fair and that he's earned a turn on top. Grinding your backside against his ebon erection, you draw a moan from him that gets him too excited to resist your tempting offer any further. As he angles his cock and guides his cock to your relaxing pucker, you push yourself back and let his manhood spread open your back door. Frank groans again and grips your ass, helping to guide you down his shaft. You reward him with a wiggle and squeeze of your anus around his penis. The skunk doesn't last long in fucking his first ass, but cums quite hard, pumping a nice, thick load into you. You cum hard as well, aroused by the act of getting your subby skunk to fuck you. Quite pleased with yourself as you slide off his spent shaft, you make sure to give the sexy skunk a nice view of his cum leaking from your stretched pucker before walking off.[mimpregchance]";
	increase frankmalesex by 1;
	now lastfuck of Frank is turns;
	say "[maleskunkinfect]";
	now libido of Frank is 3;

to say Frank_MM_switch_fbottom:			[Frank switches to bottom]
	say "     Deciding it's high time the skunk took a turn on the bottom, you know you're going to have to work him up to that. You start by approaching him as you usually do and get his attention with some playful fondling. But rather than going over to the gaming table with him, you slip back his sheath to expose his ebon pole even as you're getting to your knees. You take his cock into your mouth, licking and sucking at it. You grin as he groans in pleasure and start slathering his dark rod with your spit, using your tongue to get the big guy all worked up. You fondle his balls and rub the base of his shaft, getting him all the more turned on.";
	say "     Once he's well and truly worked up, you pull your mouth back, getting a groan of disappointment from him. Standing back up, you lean against the edge of the display counter with your own throbbing erection on display in front of his face. You let your tip brush against his lips while telling him you'd like him to return the favor for a change. His tongue subconsciously flicks out lick away the dab of pre you've left and then out further to graze across your glans. He pauses only briefly before opening his muzzle and stuffing your manhood into it with a bit of a blush on his fuzzy cheeks and ears. You smile confidently down at him and rub his head, letting him set the pace for the moment.";
	say "     Being something he's normally only done to clean you up after having fucked you, he fumbles around a bit at first, his mouth and tongue not quite knowing what to do despite their eagerness to do it. After giving him a chance to explore your erection, you slip a few tips and directions to improve his technique. With that help, he gets into it pretty quickly, moaning softly as he breathes in the musky scent of your crotch while sucking your dick. Glancing down, you can see he's still rock hard and drooling precum as his paw strokes his ebon rod.";
	say "     You let him go down on your [cock of player] cock for a while before firmly pushing him back. He starts to ask if you're ready to fuck now, but you pull him up out of his seat and into a powerful kiss. With a hand on his meaty cock, you guide him to lean over the counter. He fidgets a bit and mutters that this wasn't quite what he meant, though that big, fluffy tail of his does move out of the way readily. 'I told you I wanted you to return the favor, sweetie,' you rumble in his ear. 'You've had plenty of turns being on top, my sexy lover. Isn't it about time I got a turn on top? Don't worry, I'll take it nice and easy. You're just such a big cutie, how could I not want to make you mine?' You slide your saliva-slick cock between his cheeks, gently rubbing it between that soft, full bottom of his.";
	say "     Blushing again and looking away, he stifles a needy moan. 'You... you really think I'm cute? Nobody's ever... I mean... not since I was a kid,' he mumbles. Glancing back over his shoulder and seeing your sincerity, as well as feeling your throbbing cock sincerely wanting to fuck him, he grinds his hips back and moans for you to take him. With a smile and another kiss, you start easing your stiff rod into his virgin hole. He's tight, but his transformed body yields easily enough and his initial discomfort turns rapidly to delight as he feels you press against his prostate. While his erection had flagged a little, that brings it right back to full hardness and you pump at it, adding to his pleasure.";
	say "     While you'd like to take your time with him, his less than virginal hole can only take so much on its first time and you're both already quite worked up from the earlier foreplay. You content yourself with giving him a steady fucking that has the chubby skunk moaning softly beneath you, blushing all the while. As with the oral warm-up, he soon responds with an uncertain eagerness, his hips pushing back and his hole squeezing down around you. And when he grabs the edge of the counter and cries out with orgasmic release, musky skunk cum painting the back of it, his anus clenches down around you very tightly with every moaning pulse. A few of these is enough to push you over the top and soon you're filling his bowels with your hot spunk. When your balls are drained, you ease out of him and pat that fluffy ass of his. Seeing a white streak of your cum leaking from his black ring makes you smile. You take a moment to tease it with your finger before walking off, leaving the skunk in a well-fucked daze.";
	increase frankmalesex by 1;
	now libido of Frank is 3;
	now lastfuck of Frank is turns;
	say "[maleskunkinfect]";

to say Frank_MM_fswitch_01:
	say "     The big skunk grins and strokes his stiffening member at the prospect of more fun with you. With his paws going to your crotch, he's quickly on his knees and nuzzling at your throbbing cock[smn] to get things started. He teases you with some light licks here and there while taking in your scent[one of][if cockname of player is listed in infections of InternalList]. Next, he buries his nose at the base of your shaft, getting you moaning as he licks and nips at that sensitive spot[else]. Next, he spends quite some time licking and sucking on your balls, getting you moaning as they pulse with readiness[end if][or]. Next, he runs his tongue up and down the underside of your [cock of player] cock[smn] until you're throbbing with need[or]. Next, he twirls his tongue over your glans, slathering it with his saliva until it's drooling precum for him to sample[in random order]. Quite worked up by this point, you caress his head and tell him to lay down so you can get at his cock as well.";
	say "     Moving atop of the big, fluffy guy, you bury your face in his crotch and nuzzle his ebon shaft. You rub your [bodydesc of player] body over his plump belly, enjoying the feel of his soft fur and soft tummy beneath you. As you start licking his manhood, precum runs down its dark flesh and his musky scent grows stronger. Soon licking isn't enough and you plunge your mouth down over his thick rod. Meanwhile Frank's been lightly stroking your shaft to keep you hard, but when you slide your warm lips over his shaft, he guides your [cock size desc of player] shaft down into his muzzle.";
	if anallevel is 3 and a random chance of 1 in 3 succeeds:
		say "     Rocking yourself gently overtop of your mephit lover, you work your mouth and tongue over his black cock. It dribbles with tasty precum for you to lap up even as you gently thrust into Frank's muzzle, treating him with the same for him to lick up. There is a brief pause in the blow job you're receiving as Frank takes a moment to lick [if scalevalue of player > 3]a trio[else]a pair[end if] of fingers which you soon feel prodding their way gently into your anus. This draws a moan of delight from you and you suck and lick with increased zeal to show the skunk how much you appreciate the added surprise. With the added stimulation, it isn't too much longer before you cum with another long, happy moan. Having your [cum load size of player] load pumped into his muzzle and down his throat sets the geeky skunk off, unloading his gooey seed across your tongue for you to swallow down. Once you're both drained of and fed on semen, you flop out side by side, the big skunk wrapping his arms around you and bundling you up in his fluffy tail in a tender and loving hug.";
	else:
		say "     Rocking yourself gently overtop of your mephit lover, you work your mouth and tongue over his black cock. It dribbles with tasty precum for you to lap up even as you gently thrust into Frank's muzzle, treating him with the same for him to lick up. Frank grabs your ass with his padded paws and kneads your rear, tugging your hips as you fuck his face. You quicken your pace, sucking and licking harder as you do, knowing the skunk must be getting close. With the added stimulation, it isn't too much longer before you cum with another long, happy moan. Having your [cum load size of player] load pumped into his muzzle and down his throat sets the geeky skunk off, unloading his gooey seed across your tongue for you to swallow down. Once you're both drained of and fed on semen, you flop out side by side, the big skunk wrapping his arms around you and bundling you up in his fluffy tail in a tender and loving hug.";



Section 8 - Male Skunk Infection Mechanics

to say maleskunkinfect:
	if skunkbeaststatus is 1:
		[puts Skunkbeast Lord as lead monster]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Skunkbeast Lord":
				now monster is y;
				break;
		now sex entry is "Male"; [Temporarily forced to 'Male'... will result in no gender change occurring if F-Pref]
		infect "Skunkbeast Lord";
		if "Female Preferred" is listed in feats of player:
			now sex entry is "Female";
		else if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
	else:
		[puts Skunk as lead monster for possible impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Skunk":
				now monster is y;
				break;
		now sex entry is "Male"; [temporarily make target gender male]
		now cocks entry is 1;
		now cock length entry is 9;
		now cock width entry is 5;
		infect;
		now sex entry is "Female"; [now back to female]
		now cocks entry is 0;
		now cock length entry is 0;
		now cock width entry is 0;


Section 9 - Endings

[NOTE: For all skunk-related endings, see the 'Skunkbeast Lord' file by Stripes.]

when play ends:
	if ( franksex > 2 or frankmalesex > 2 ) and bodyname of player is not "Skunk" and bodyname of player is not "Skunk Taur" and bodyname of player is not "Skunkbeast Lord":
		if humanity of player > 9:
			say "     When the soldiers come through the city to rescue you and the others, you tell them about Frank secure in his comic shop. But when they go to retrieve him, he opts not to leave, unable to part with his precious store and collection. You remain in contact with Frank through correspondence from time to time carried by those brave enough to enter the infected city. He has reopened the store, stocking his shelves with more books he scavenges from his one-time competitors' abandoned locations and private collections left among the fallen city. He only has a few customers, as most of the people living there now have little interest in such pursuits, but it makes him happy just to be open again. He does remember his time with you fondly. From his letters, he seems a little lonely, though he does have a few [']special customers['] who come to enjoy his company as well as his wares. You are happy that he has at least some companionship as well as his books.";

[ franksex = how often had sex w/Frank ]

[ frankmalesex = how often had MM sex w/Frank ]

[ specskunkstate = temporary variable for special skunk body states ]
[ 0 = normal/non-skunk ]
[ 1 = Skunk Taur ]
[ 2 = Skunkbeast Lord ]
[ 3 = Skunkbeast Lord Taur ]

[ libido of Frank   ]
[ 0 = no MM sex     ]
[ 1 = Frank top     ]
[ 2 = Frank bottom  ]
[ 3 = Frank switch  ]

Frank ends here.
