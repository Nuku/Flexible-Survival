Version 2 of Doberman For FS by Stripes begins here.
[Version 2.0 - 2nd wave of player victory sex and weapon confiscation activated.]
[This file is a co-product of Stripes and Kaleem.]

"Adds a Doberman infection and creature.  This file pulls double-duty, with the creature/combat portions written by Stripes to run the Doberwoman Cop.  The infection and ending portions of this file were written by Kaleem to deal with the Doberman NPC for the Firehouse content."


Section 1 - Monster Responses		[Note: Combat related portions deal with the Doberwoman Cop.]

dobieresist is a number that varies.
dobielibido is a number that varies.

when play begins:
	add { "Doberman" } to infections of furry;

to say losetoDoberman:
	choose row monster from the table of random critters;
	if dobieresist is 0:
		if dobieresist < 50:
			say "     You drop your fighting stance and put your arms up, surrendering to the strange cop woman.  For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she just looks you over briefly.  'It's good to see that you've still got some control in there.  Things are really crazy out there right now.  Do you still remember your name?  Where you lived and worked?'  She asks you some basic questions, not to get the information but to make sure you can still remember it.  'You need to keep it together until rescue can come,' she continues, tapping you firmly on the shoulder.  'I want you to return to your home, take cover and wait this thing out";
		otherwise:
			say "     You drop your fighting stance and put your arms up, surrendering to the canine policewoman.  From the way she looks at you and licks her muzzle, a part of you hopes she'll give into her lusts with you.  She walks up to you with a sexy sway to her hips, but knocks your legs out from under you, pinning your arms behind your back.  'Rrrr!  I'm tempted to really show you how much I appreciate your earlier stunt, but I'm trying to keep it together.  And you should be too.  Since you're obviously able to control yourself enough to not fight, there may still be hope for you.'  You feel one of her paws grope your ass before its pulled away quickly.  'Sh-  Look, we both need to keep it together until rescue can come,' she continues.  'I'm ordering you to take cover and wait this thing out'";
		if "dirty whip" is listed in invent of player or "infected sword" is listed in invent of player:
			say ".'";
			say "     The policewoman's canine nose twitches and [if dobieresist < 50]she quickly grabs you by the wrist,[otherwise]grinds a knee into your lower spine while still[end if] twisting your arm behind your back.  'That weapon you're carrying is infectious and therefore contraband.  I cannot allow you to keep it.  As you start to protest, she twists your arm harder and pushes you down with a growl";
			if "dirty whip" is listed in invent of player and "infected sword" is listed in invent of player:
				say ".  She takes your whip and sword away, making sure to grab them using an evidence bag.  'I appreciate your cooperation, but I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is dirty whip:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				if weapon object of player is infected sword:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete dirty whip;
				delete infected sword;
			otherwise if "dirty whip" is listed in invent of player:
				say ".  She takes your whip away, making sure to grab them using an evidence bag.  'I appreciate your cooperation, but I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is dirty whip:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete dirty whip;
			otherwise if "infected sword" is listed in invent of player:
				say ".  She takes your sword away, making sure to grab them using an evidence bag.  'I appreciate your cooperation, but I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is infected sword:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete infected sword;
		say ".'  And with that said, she turns and heads off, leaving you feeling a little more focused[if libido of player > 50] and maybe a little disappointed you didn't get any fun with the sexy cop[end if].";
		increase humanity of player by 12;
		if humanity of player > 100, now humanity of player is 100;
	otherwise if libido of player >= 110:
		say "***Not written yet, but may be needed in the future.  Player lost due to excess libido.";
		let fine be 8 + ( dobieresist * 2 ) + ( hp entry - monsterhp );
		let timepenalty be 3;
		if dobieresist > 4, increase timepenalty by 1;
		decrease freecred by fine;
		if freecred < 0, now freecred is 0;
		increase humanity of player by 10;
		extend game by ( 0 - timepenalty );
	otherwise if hp of player > 0:
		let fine be 4 + ( dobieresist * 2 ) + ( hp entry - monsterhp );
		let timepenalty be 2;
		if dobieresist > 4, increase timepenalty by 1;
		if dobielibido < 50:
			say "     Deciding it'd be best to stop and surrender, you drop your fighting stance and put up your arms.  She growls and keeps a close eye on you.  For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she looks you over sternly.  'I can see that you've at least still got a little control in there.  Still, you were resisting arrest.  You need to get a grip on yourself and hold on until rescue comes.'  She pulls out a pad and quickly writes something out.  'Since I can't really detain you right now, I'm giving you a ticket and ordering you back to your home.  You need to keep it together, take cover and wait this mess out until rescue comes";
		otherwise:
			say "     Deciding it'd be best to stop and surrender, you drop your fighting stance and put up your arms.  She growls and keeps a close eye on you, licking her muzzle with a grin of pleasure.  From the look she give you, a part of you hopes she'll give into her lusts with you.  She walks up to you with a sexy sway to her hips, but knocks your legs out from under you, pinning your arms behind your back.  'Rrrr!  I'm tempted to really show you how much I appreciate your earlier stunt, but I'm trying to keep it together.  And you should be too.  But you've been resisting arrest,' she growls in your ear, giving you ass a squeeze.  'Sh-  Look, we both need to keep it together until rescue can come,' she continues.  'Since I can't really detain you right now, I'm giving you a ticket and ordering you back to your home.  You need to keep it together, take cover and wait this mess out until rescue comes";
		if "dirty whip" is listed in invent of player or "infected sword" is listed in invent of player:
			say ".'";
			say "     The policewoman's canine nose twitches and [if dobieresist < 50]she quickly grabs you by the wrist,[otherwise]grinds a knee into your lower spine while still[end if] twisting your arm behind your back.  'That weapon you're carrying is infectious and therefore contraband.  I cannot allow you to keep it.  As you start to protest, she twists your arm harder and pushes you down with a growl";
			if "dirty whip" is listed in invent of player and "infected sword" is listed in invent of player:
				say ".  She takes your whip and sword away, making sure to grab them using an evidence bag.  'Just think about the damage you could have caused with these.  You're too much of a loose cannon to be trusted with them.  I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is dirty whip:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				if weapon object of player is infected sword:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete dirty whip;
				delete infected sword;
			otherwise if "dirty whip" is listed in invent of player:
				say ".  She takes your whip away, making sure to grab it using an evidence bag.  'Just think about the damage you could have caused with this.  You're too much of a loose cannon to be trusted with it.  I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is dirty whip:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete dirty whip;
			otherwise if "infected sword" is listed in invent of player:
				say ".  She takes your sword away, making sure to grab it using an evidence bag.  'Just think about the damage you could have caused with this.  You're too much of a loose cannon to be trusted with it.  I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is infected sword:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete infected sword;
		say ".'  She shoves the ticket into your hand, turns and heads off.  More than a little confused[if libido of player > 50] and slightly disappointed sexually[end if], but feeling a bit calmer, you look it over the ticket.  It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
		decrease freecred by fine;
		if freecred < 0, now freecred is 0;
		increase humanity of player by 10;
		extend game by ( 0 - timepenalty );
	otherwise:
		let fine be 8 + ( dobieresist * 3 ) + ( hp entry - monsterhp );
		let timepenalty be 3;
		if dobieresist > 4, increase timepenalty by 1;
		if dobielibido < 50:
			say "     After the Doberman cop strikes her final blow, she knocks you to the ground and presses her nightstick at the back of your neck to hold you down firmly.  She growls deeply and knees you in the kidneys for good measure.  For a moment, you think she's going to go all [']police brutality['] on you or pull some sexy [']bad cop['] routine, but instead she looks you over sternly.  'I'm not sure if you can understand me in there,' she growls as she holds you down, 'but you need to keep it together and hold out until rescue can come.  I know things are crazy out there, but you can't give into it.'  You are too sore from the fight to do more than groan in response as she gets off you and nudges you onto your back with her foot while pulling out a notepad.";
			say "     'Since I can't really detain you right now, I'm giving you a ticket and ordering you back to your home.  You need to get your head on straight or you'll end up a sex monster like the others out there.  The police band stated that the National Guard would be called in, so rescue is on the way.  You need to get a grip, take cover and wait this mess out until rescue comes";
		otherwise:
			say "     After the Doberman cop strikes her final blow, she knocks you to the ground and presses her nightstick at the back of your neck to hold you down firmly.  She growls deeply and knees you in the kidneys twice for good measure.  From the grin on her muzzle and the lustful licking of your muzzle, a part of you hopes she'll give into her lusts with you.  'Rrrr!  I'm not sure if you can understand me in there,' she growls as she holds you down, 'but I'm really tempted to show you how much I appreciate your earlier stunt.  But I'm trying to keep it together, and you should be too.   'I'm not sure if you can understand me in there,' she growls as she holds you down, 'but you need to keep it together and hold out until rescue can come.  I know things are crazy out there, but you can't give into it.'";
			say "     'As much as I'd like to detain you and keep you all to myself,' she says with a soft rumble in your ear while a paw slides over your ass before groping your groin, before being pulled away quickly.  'Sh- I know it's crazy out here, but you're not making my job any easier.'  She gives you a firm knee to the kidneys.  'So I'm giving you a ticket and ordering you back to your home.  You need to get your head on straight or you'll completely end up a sex monster like the others out there.  The police band stated that the National Guard would be called in, so rescue is on the way.  You need to get a grip, take cover and wait this mess out until rescue comes";
		if "dirty whip" is listed in invent of player or "infected sword" is listed in invent of player:
			say ".'";
			say "     The policewoman's canine nose twitches and [if dobieresist < 50]she quickly grabs you by the wrist,[otherwise]grinds a knee into your lower spine while still[end if] twisting your arm behind your back.  'That weapon you're carrying is infectious and therefore contraband.  I cannot allow you to keep it.  As you start to protest, she twists your arm harder and pushes you down with a growl";
			if "dirty whip" is listed in invent of player and "infected sword" is listed in invent of player:
				say ".  She takes your whip and sword away, making sure to grab them using an evidence bag.  'I can't let a half-crazed fool like you run around with something like this.  You cannot be trusted with something this dangerous and I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is dirty whip:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				if weapon object of player is infected sword:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete dirty whip;
				delete infected sword;
			otherwise if "dirty whip" is listed in invent of player:
				say ".  She takes your whip away, making sure to grab it using an evidence bag.  'I can't let a half-crazed fool like you run around with something like this.  You cannot be trusted with something this dangerous and I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is dirty whip:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete dirty whip;
			otherwise if "infected sword" is listed in invent of player:
				say ".  She takes your sword away, making sure to grab it using an evidence bag.  'I can't let a half-crazed fool like you run around with something like this.  You cannot be trusted with something this dangerous and I cannot allow such weapons to be used unchecked.  We should be trying to slow the infection, not spread it faster";
				if weapon object of player is infected sword:
					now weapon damage of player is 4;
					now weapon type of player is "Melee";
					now weapon object of player is journal;
				delete infected sword;
		say ".'  She tosses the ticket onto your prone body, turns and heads off.  More than a little confused[if libido of player > 50] and slightly disappointed sexually[end if], but feeling a bit calmer, you look it over the ticket.  It says something about a fine of [special-style-2][fine][roman type] freecred and a penalty of [special-style-2][timepenalty * 3][roman type] hours of community service.";
		decrease freecred by fine;
		if freecred < 0, now freecred is 0;
		increase humanity of player by 10;
		extend game by ( 0 - timepenalty );
	decrease dobielibido by 5;
	if dobielibido < 0, now dobielibido is 0;


to say beattheDoberman:
	say "     Your last attack knocks away the policewoman's nightstick, sending it skittering across the ground as she's knocked down.  She releases a canine whimper that she quickly stiffles as she fails to get back up";
	if dobielibido < 50:		[low-lust cop]
		if ( cocks of player > 0 or cunts of player > 0 ) and libido of player > 25:
			say ".  Looking her over, you can't help but find the canine woman's body more than a little sexy, especially in that cop uniform.  Shall you take advantage of his opportunity to have some fun with the hot policewoman?";
			if the player consents:
				say "     Grabbing her firmly, you pin her down with one arm while the other roams over her body, groping her ass and breasts before sliding under her skirt to pull her panties down.  She bites her lip, but soon starts to moan despite herself as her canine body starts to respond as you pump a pair of fingers into her increasingly wet pussy.  Soon she's panting lustfully and unable to resist your further advances.  Now that you've got her worked up, shall you [if cocks of player > 0]fuck her[otherwise]keep fingering her[end if] (Y) or get that muzzle and long tongue of hers to work pleasing you (N)?";
				if the player consents:
					if cocks of player > 0:
						say "     You grab the dog-woman's hip and pull her ass up as you move atop her.  A small part of her seems to still want to resist for a moment before giving in and she grinds her sexy bottom against your throbbing cock, her tail wagging excitedly.  She moans and yips as you thrust into her, pounding away at her doggy cunt.  Having been resisting her sexual instincts for so long, she can't help but respond powerfully once they're released.  You fuck the policewoman bitch, making her cum repeatedly before you blast your hot load deep inside her.  As her final, powerful orgasm washes through her, she collapse to the ground, passing out after her much needed release.";
						increase dobielibido by 20;
					otherwise:
						say "     You grab the dog-woman's hip and pump your fingers into her faster.  As a small part of her seems to want to resist for a moment before giving in and she presses her sexy bottom back against your stroking digits, her tail wagging excitedly.  She moans and yips as you alternate between pumping your fingers into her doggy cunt and teasing her clit.  Having been resisting her sexual instincts for so long, she can't help but respond powerfully once they're released.  You finger-fuck the policewoman bitch, making her cum repeatedly while working a few fingers into yourself with your free hand.  As her final, powerful orgasm washes through her, she collapse to the ground, passing out after her much needed release.";
						increase dobielibido by 12;
				otherwise:
					if cocks of player > 0:
						say "     You grab the dog-woman's head and press her muzzle between your legs, forcing her to take in the scent of your arousal.  As a small part of her seems to want to resist for a moment before giving in and she slides her mouth over your throbbing cock, her tail wags excitedly.  She moans wetly around your penis and slides a paw between her legs, plunging her own fingers into herself to replace yours.  You stroke her ears and tell her what a good bitch she is as you make her suck you off.  Having been resisting her sexual instincts for so long, she can't help but respond powerfully once they're released.  You face-fuck the policewoman bitch, making her cum repeatedly while her long muzzle and doggy tongue slide over your cock.  When you finally cum, you pull out and blast your load across her face and open muzzle.  As her final, powerful orgasm washes through her, she collapse to the ground, passing out after her much needed release.";
						increase dobielibido by 15;
					otherwise:
						say "     You grab the dog-woman's head and press her muzzle between your legs, forcing her to take in the scent of your arousal.  As a small part of her seems to want to resist for a moment before giving in and she slides her long tongue tentatively across your wet pussy before diving in, her tail wags excitedly.  She moans wetly and yips between licks, sliding a paw between her legs and plunging her own fingers into herself to replace yours.  You stroke her ears and tell her what a good bitch she is as you make her eat you out.  Having been resisting her sexual instincts for so long, she can't help but respond powerfully once they're released.  You grind your pussy against policewoman bitch's muzzle, making her cum repeatedly while her long, doggy tongue laps up your juices.  When you cum in pleasure, you soak her muzzle and spill your hot juices over her tongue, which she laps up lustfully.  As her final, powerful orgasm washes through her, she collapse to the ground, passing out after her much needed release.";
						increase dobielibido by 12;
			otherwise:
				say "     Resisting the temptation to have sex with the canine cop, you give her a final kick to make sure she won't bother you further for the moment before walking away.";
		otherwise:
			say ".  Satisfied that she won't bother you further for the moment, you give her a final kick before walking away.";
	otherwise:
		say ".  The female Doberman moans and sags to the ground, her increased lust taking hold.  She hikes up her skirt, revealing her lack of panties as she starts fingering herself.  She looks up at you with a mix of apprehension and longing.  Pleased with what you've done to the stuffy cop, you consider fooling around with her further.  Clearly she needs some more attention";
		if cocks of player > 0 or cunts of player > 0:
			say ".  Shall you [if cocks of player > 0]fuck[otherwise]finger[end if] that juicy cunt of hers [link](1)[as]1[end link], [if cocks of player > 0]give her a titty-fuck[otherwise]get the doggy tongue of hers to please you[end if] [link](2)[as]2[end link] or just leave her [link](3)[as]3[end link] to her own lusts?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to get some pussy, [link]2[end link] for [if cocks of player > 0]a titty-fuck[otherwise]oral[end if] and [link]3[end link] to leave.";
			if calcnumber is 1:
				if cocks of player > 0:
					say "     Stroking your stiff cock, you grab the Doberman and pull her up.  With her eyes locked hungrily on your hard penis, she obediently lets you push her over to a nearby wall.  You get her to spread herself against the wall like a criminal and are pleased as she does so and even offers her ass to you, tail raised and tongue lolling out of her mouth.  You take a few moments to tease her, fingering her hot, wet folds and even teasing her dark pucker with a slick finger.  She yips and wags her tail, grinding back against your touch.  Deciding she's had enough and that you'd rather get on to the main event, you line your cock up with her dripping slit and drive your throbbing cock into her.  The canine officer barks and moans as you fuck her, lost in her lust for sex.  You take perverse delight in seeing the once upstanding policewoman debase herself in her need for your cock.  And you don't disappoint, cumming hard into you, pumping a hot and heavy load into the increasingly slutty bitch.  When you're finished, you pull out, leaving her slumped against the wall in a pool of sexual fluids.";
					increase dobielibido by 24;
				otherwise:
					say "     Grabbing the Doberman female roughly, you pull her up and over to a nearby well, moaning in need as she lets you manhandle her.  You order her up against the wall, spreading her arms and legs and telling her it's time for her cavity search.  You are pleased as she lets you spread her like a criminal and even offers her ass to you, tail raised and tongue lolling out of her mouth.  You take a few moments to tease her, fingering her hot, wet folds and even teasing her dark pucker with a slick finger.  She yips and wags her tail, grinding back against your touch.  Deciding she's had enough teasing and that you'd rather get on to the main event, you slide your fingers back down across her taint then dive a pair of them into her dripping snatch.  The canine officer barks and moans as you finger-fuck her, lost in her lust for sex.  You take perverse delight in seeing the once upstanding policewoman debase herself in response to you, working to make her cum repeatedly while working a few fingers into yourself with your other hand.  After a powerful, final orgasm overwhelms her, she slides down to the ground and you leave her slumped against the wall in a pool of sexual fluids.";
					increase dobielibido by 20;
			otherwise if calcnumber is 2:
				if cocks of player > 0:
					say "     In the mood for something a little different, you pull out your cock and move overtop of the Doberman woman.  With her eyes locked hungrily on your cock, she does not resist as you grab her shirt and pull it down off her shoulders, uncovering her bosom and pinning her arms in place.  You put your legs to either side of her, making sure she can't get away, not that she looks at all like she wants to.  With what little movement you've allowed them, she's moved her paws to her crotch so she can continue to finger herself vigorously.  She pants and yips lustfully as you press your throbbing cock between her breasts and start sliding them between her lovely, softly furred mounds.  You may be mistaken, but they seem a little larger than when you first met her.  Between the warm flesh and soft fur, it makes for a very pleasant tittyfuck.  You take a twisted pleasure in having this once upstanding policewoman debase herself in response to you as you make her give into the lustful instincts she's been resisting for so long.  The Doberwoman's long tongue licks at your glans each time it slides with reach.  Eventually she receives the reward she's eagerly licking for when you climax, blasting your hot load across her face and muzzle, as well as that licking tongue of hers.  She drives her fingers hard into her pussy, frigging herself to a loud climax that leaves her almost passed out.  You grin and give her ears a scritch, telling her she looks much better with your cum marking her fur.";
					increase dobielibido by 18;
				otherwise:
					say "     Taking the dog-woman's head in both hands, you press her canine muzzle to your crotch and order her to get licking like a good bitch.  She yips happily and slathers her long, doggy tongue over your pussy before diving it into your cunt.  As she eats you out eagerly, her fingers continue to pump into her dripping snatch and her tail wags excitedly.  She works her tongue inside you with increasing skill, using its long length to added advantage to dive deep into your cunt to lap up your juices.  You scritch her ears, telling her all the while what a good, obedient doggy she is as does.  You take twisted pleasure in having this once upstanding policewoman debase herself in response to you as you bring out the lustful instincts she's been fighting.  You grind your pussy against the Doberwoman's muzzle and spill your hot female cum onto her tongue repeatedly.  As her final, powerful orgasm washes through her, she collapse to the ground, passing out after her much needed release.";
					increase dobielibido by 15;
			otherwise:
				say "     You smile down at the lust-crazed Doberman policewoman, deciding to leave her to her own lusts.  A dark corner of you is quite pleased with what's become of her.";
		otherwise:
			say ".  Having little interest in sex yourself, you watch the formerly strong policewoman moan and pant as she lustfully frigs herself, soaking her paws and groin with her juices.";


to say Dobermandesc:
	now dobieresist is 0;
	if dobielibido < 50:
		say "     A female Doberman in a cop's uniform charges at you, growling firmly for you to halt and be searched.  In the brief moment before she's upon you, you can see that she's got a pretty normal human build overall, but with some traces of canine features, showing especially on her paw-like hands and feet.  Her head is fully that of a Doberman Pinscher, with a long muzzle and her short fur has the two-tone black and tan markings of the breed.  She is wearing a light blue shirt, darker skirt and a policeman's hat.  She has an average sized rack on her under her shirt.";
		if the player is bodily human and the player is facially human and the player is skintone human and the tail of the player is "":
			say "     [one of]'Halt, citizen[or]'Freeze!  Police[or]'Stand down, citizen[at random]!' she calls out one last time, pulling out her nightstick.";
		otherwise:
			say "     [one of]'Halt, mutant[or]'Freeze!  Police[or]'Surrender, creature[or]'Come quietly[or]'I order you to stand down, mutant[at random]!' she calls out one last time, pulling out her nightstick.";
	otherwise:
		say "     The female Doberman cop has found you again and growls angrily, pulling out her nightstick.  She's looking more disheveled and wild-eyed than before, her lusts starting to take hold of her.  She still has her uniform on, but her shirt's half unbuttoned to show off her breasts better and you can see moist juices soaking her thighs.  Despite her attempts to restrain it, her tail wags excitedly at having found you again, regardless of her apparent anger at you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Doberman";
	now attack entry is "[if dobielibido < 50][one of]The Doberman cop fakes with her nightstick and clubs you in the jaw with her off hand![or]The canine cop jabs her nightstick into your gut, making you double over![or]The nightstick strikes your arm with a painful blow![or]The Doberwoman hooks her nightstick behind your knee and causes you to fall![or]The policewoman snaps at you with her vicious, canine muzzle![or]The police dog gives you a firm knock on the head with her nightstick![or]Knocking your arm aside with her nightstick, she steps in and rams her knee into your gut![at random][otherwise][one of]The Doberman cop fakes with her nightstick and clubs you in the jaw with her off hand![or]The canine cop jabs her nightstick into your gut, making you double over![or]The nightstick strikes your arm with a painful blow![or]The Doberwoman hooks her nightstick behind your knee and causes you to fall![or]The policewoman snaps at you with her vicious, canine muzzle![or]The police dog gives you a firm knock on the head with her nightstick![or]Knocking your arm aside with her nightstick, she steps in and rams her knee into your gut![or]The Doberman cop knocks your arm aside before groping you roughly![or]The sexually excited policewoman grinds her body against yours before realizing what she's doing and pushing you away![or]Getting behind you momentarily, the Doberwoman gives your ass a squeeze before jabbing her nightstick into your side![at random][end if]";
	now defeated entry is "[beattheDoberman]";				
	now victory entry is "[losetoDoberman]";
	now desc entry is "[Dobermandesc]";
	now face entry is "now possesses the striking features of a cunningly handsome looking Dobie";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "fit and toned without a trace of fat anywhere in sight. No to mention pecs that bulge out almost half an inch from your chest and torso with, count 'em, eight hard and cut abs you are definitely a stud of a dog";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]brown and black fur[or]a dense and dark pelt[or]a heavy cropping of water resistant fur[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail is long and thin, like a Dalmatian's, but pitch black in color, oh and curved upwards.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]knotted[or]tapered canine[or]dark crimson colored[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head shifts and then pops and then finally melts down into a point giving you a Doberman-like face while your ears push straight up onto your head and your eyes turn chocolate brown in color";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles suddenly balloon outwards while your bones and muscles pop and contort inside of your body starting from your neck going all the way down to your thighs, calves and feet. Back arching, spine tingling you have just enough time to appreciate the fact that the heels of your feet are pulling back to give you a digitigrade stance before you sigh as your body finishes its transmogrification";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "short, dark brown and black fur pushes out from the pores of your skin making you itch all over.";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your butt expands outwards and then suddenly pulls inwards as your spine lengths with the onset of you growing tail. The fact that your glutes now look like the stereotypical 'bubble butt' only works to heighten the cuteness of your new appendage.";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "the mass grows and then tapers off to a point while becoming crimson in color. The small bulb at the end of your rod is the only indication that you possess a canine's knot";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 14;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13;			[ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 60;			[ The monster's starting hit points. ]
	now lev entry is 7;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 50;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]unrepentantly strong[or]dashing[or]sexy[at random]";
	now type entry is "canine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "dobermancop";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat Rules

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"dobermancop"	dobermancop rule	--	dobercoppost rule	--	--	--	--	--	--	--


this is the dobermancop rule:		[combat rule]
	if inafight is 0:			[doberman cop does not attack on first strike]
		say "The Doberwoman police officer holds herself at the ready, nightstick raised but does not swing despite having the advantage.  'Last warning!  Stand down!' she growls.";
	otherwise:
		increase dobieresist by 1;	[turns the player did not surrender]
		retaliate;

this is the dobercoppost rule:		[postattack rule]
	if a random chance of 1 in 3 succeeds and hp of player > 0 and libido of player < 110:
		say "The [one of]Doberman cop[or]canine cop[or]Doberwoman[or]dog policewoman[or]canine officer[or]Doberman[at random] [one of]growls[or]barks[or]says[as decreasingly likely outcomes] [one of]'Stand down[or]'Police[or]'You're only making it harder on yourself[or]'Come peacefully[or]'There's more where that came from[at random]!' after striking you.";


Section 4 - Endings	[This portion deals with the Doberman infection for Kaleem's Firehouse content]

when play ends:
	if bodyname of player is "Doberman":
		if humanity of player is less than 10:
			if cunts of player > 0 and cocks of player < 0:
				say "Falling prey to your feral instincts you find yourself sniffing around town to find Tyr to thank him for the sexy body he helped to give you. Your mind may have succumb to the madness that is the feral need to fuck and breed, but the face of that sexy and charming Doberman stands out like the sun against lustful fog covering your thoughts. Locating the other back at his pad you throw yourself at the Doberman to lavish him in warm and tender licks across the face just as soon as he opens his door to let you in. Seeing you the way you are now Tyr doesn't waste time in trying to regret what's happened to you as the buff and commanding canine tosses you down onto his floor, strips himself out of his jeans, and then proceeds to work his fat piece of Doberman meat into the depths of your leaking snatch.";
				say " Rubbing your cleft up and down the growling and grunting Doberman you're happy to find that he accepts your submission to him as he spears you hard and then deep as he goes to work filling you up with pups. Somewhere in the back of your mind you hope that maybe later on, after the first of what you can only hope will be several long and forceful fucks, Tyr will let you help him out with his workload around the city. But that's for later on...";
			otherwise if cocks of player > 0 and cunts of player < 0:
				say "Sniffing out the Doberman that had given you your sexy new body you find your way to Tyr's house to properly [']thank['] the other male. When the larger Doberman finds you at his door you don't waste any time as you tackle him to the ground, strip the both of you out the clothes you have on, and then proceed to lube up your cock with your precum in order to use your rod on the buff Dobie's tender tailhole. Of course, your little surprise attack doesn't stun Tyr for long as the Doberman is quick to show you whose the alpha around here."; 
				say "Grappling at your heavy form the other Dobie wrestles you to the ground, grabs your long tail to painfully snatch it upwards and then buries his long rod inside of you in one single, painful thrust. No lube, no grace, no consideration is given for your audacity at trying to mount him as Try takes you hard and fast across the floor of his home. Bucking and snarling while shoving your ass back against him you growl in want for the dominant male to take you like his beta. Finding your wish granted as the larger Doberman hilts into you, you have just enough time to think on how perfect your submission to this greater canine is, right before Tyr pulls his hips back in order to pound inside of your now loosened tailhole with almost bruising force.";
				say "Somewhere in your dimming thoughts you hope that the other male will keep you around as you can happily see yourself becoming both his shadow and bodyguard, if need be, as the two of you go out into the world to do...whatever it is that Tyr actually does.";
		otherwise:
			say "Having survived the trails set forth by the out of control city you don't think to resist when the military comes in to try and clean up the place - taking you in for inspection and quarantine as they do. Scrubbed down, [italic type]bathed[roman type] and then given both a physical and mental examination the scientist at work find you to be in perfect health. Grateful to have one less burden to deal with the military types try and strike up a deal with you to get you to be a part of their team, something about needing strong and confident canines to work for the [']good guys[']";
			say "At first you have half the mind to tell them where to go, but when you see a familiar face smiling at you while within the quarantine bunker you hastily nod to the military in acceptance of their offer. It doesn't take long before you are trained, fitted and then sent out with a special team designed to handle out of control mutants. The work proves to be grueling and thankless most days, however, it's worth it at the end when you collect your paycheck. And yet, the real bonus comes during the weeks you are off duty when you settle down for the evening in the little house you bought. A knock at your door some nights has your lips lifting into a smile, especially since you know who will be on the other end."; 
			if cocks of player > 0:							[MALE/HERM]
				say "Tyr doesn't try to hide it as he knows what you want and how you want it. Being that he's overseen both your training and the unit you're working for you feel almost indebted to the other man during the times when he lays you down on top of your bed and then gently strips you out of your evening attire. Of course, the other always reminds you that you owe him nothing, but you still feel that you do, especially when he lifts up your legs, rubs his meaty hands across your cock and balls, and then buries his face in between your legs to give you the most mind blowing blowjob in the world.";
				say "The fact that he makes sure that you don't cum in his muzzle makes things all the more exciting as the bigger Doberman leaves you right on the edge before making his next move. Holding your hips up for him you watch and wait as Tyr prepares himself to take your tight tailhole, forever using his precum instead of lube, before wincing and hissing in slight pain as the Dobie takes you hard. Never like a bitch though, both you and he know that your [']relationship['] with each other is worth more than that. However, that does not stop him from hammering into your ass, driving across your prostate like mad, which then leaves you babbling and begging for more, as the bigger Dobie drives you to the edge of orgasm while knotting you good and tight.";
				say "He finishes fast on the first of your trysts, he always does, but during the second, third, fourth and fifth, Tyr makes sure to make long and passionate love with you as he fills you to the brim with his canine spunk. By the time he's through and his knot finally pops out of you your ass is leaking so much that the other [']generously['] offers to lick you clean in order not to make a mess on your bed. As of to date, you've never told him no before.";
			otherwise  if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "Having Tyr as your secret lover becomes less of a secret when your stomach swells with his brood. You never complain though when you mysteriously find yourself on desk duty instead of working out in the field. Your teammates, many of them mutants, some of them even females like yourself, are happy to congratulate you on your luck at finding companionship given these weird times. None of them ask who the father is. All of them know by both the scent that always travels along your fur when you return from your time off and by the fact that an unfamiliar Doberman is constantly seen hanging around the places where you are working who the lucky male is.";
				say "One day during your pregnancy you find yourself scared out of your wits when someone comes up from behind you while you are in the break room to force you down onto a nearby table with your rump pushed high up into the air. Growling and cursing that someone could be strong enough to hold you down against your will you find yourself all but melting when a familiar voice chuckles inside of your cropped ear. Freezing when a hole is torn into your cargo pants by wickedly sharp claws, you spread your legs wide and hunch upwards as a thick Dobie shaft is stuffed up into your cunt with gentle, but forceful thrusts.";
				say "Not knowing that your lover would be so kinky, as he never touched you in this manner before, at least, not while you're on the job surrounded by the others, you don't try to stop Tyr as he mounts you inside of the break room as though he owns you. Partially you realize that he does own you. Both body and heart. Grunting and growling as your pussy is forced wide on the other Doberman's dick neither you nor Tyr care when your coworkers come into the room to watch you get stuffed full. Many of them go about their business getting tea and coffee as though nothing weird is happening, but others, like Stu and Stacey, the hyena herm pair, let you know that you are doing a good thing as Stacey mounts Stu up against the wall to have at her husband.";
				say "Rocking into you with careful force Tyr snarls his pleasure out into the room when his knot locks him into place against you. It doesn't take long for you to fell a familiar fullness rushing inside of your already packed womb, and idly you wonder if your pups will be just as randy and horny as their father. You can only hope so as your cunt flutters around your Dobie's cock, dripping rich honey onto the pristine floor beneath you and Tyr.";
			otherwise:									[F-STERILE]
				say "Because you are infertile Tyr has no problem fucking you anyway, everyway, and everywhere he desires. Being the leader of your elite group, though sadly a shadow leader who is most often never seen or heard from, the Doberman commander makes a special play out of forcing your into slightly embarrassing scenarios while you are on the job. That one time in Moscow when you and your unit were looking to take down the Siberian tiger outfit you remember how Tyr grabbed you out of the blue and then forced you to suck his cock while kneeling down against the cold street of the city. Your unit still wonders if you really found a Siberian hooker to get your rocks off with or if something else was going on.";
				say "Then that there was that time in Egypt, when you were looking for that king Cobra mutant that was terrorizing the people of Cairo, that Tyr decided to be cute and sneak into your hotel room to bind you to the bed with silk ties only to then pound you into the mattress while you were half asleep. Your muffled screams had almost alerted Stu, the hyena herm that you had been sharing a room with, into waking up, but thankfully the other sleeps like a rock. Next it was back in the states with you pushing through a forest only to suddenly get kidnapped for an hour by Tyr to have hot and wild sex up along the branches of a tree. Then there was that time in South America where Tyr mounted you underneath that waterfall while you had been on the lookout for the twin headed jaguar creature."; 
				say "The there was the time in Japan when Tyr had wanted to see how drunk you could get before deciding that having sex with you in one of the local shrines while you were sloshed out of your mind would be kinky. The kitsunes that had found you both were amicable enough to let you leave without being cursed, or fined, after agreeing to be able to watch. Then there was that time...";


Doberman For FS ends here.
