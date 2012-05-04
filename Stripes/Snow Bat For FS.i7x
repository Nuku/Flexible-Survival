Version 1 of Snow Bat For FS by Stripes begins here.
[Version 1]
"Adds a Snow Bat creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

nightcheck is a number that varies.
snowbatfight is a number that varies.
when play begins:
	add { "Snow Bat" } to infections of guy;
	add { "Snow Bat" } to infections of furry;


to say losetosnowbat:
	now snowbatfight is 2;				[lost]
	say "     Having bested you, the snow bat grabs you roughly and pulls you into his arms.  You squirm at his rough treatment, but he grips you all the tighter, folding his bat wings around you as well.  Surrounded by his scent and hearing him purring softly, you can't help but moan a little as he nuzzles at your neck.  He runs a long, slender and rough tongue along your throat before he sinks his teeth into it, making you moan again.";
	if cunts of player > 0:
		say "     As he licks and sucks at the wound, lapping up your blood, you can feel his stiffening cock against your pussy.  His paws move your weakening body into position and he drives his large, feline cock into you, making you whimper softly.  Supporting you with his strong arms, he bounces you over his cock, fucking you even as he feeds from you.  His barbed cock drives into you again and again, making you moan and squirm feebly, loving it inside you, but too weak to ride it hard.  His muzzle remains at your neck, purring and panting softly as he keeps drinking your life blood.  As you're passing out, you groan in pleasure as you feel him cumming inside you just as you're blacking out, smiling and happy that you got to feel his hot seed filling you.  When you awaken, weak and thirsty, your dark lover is gone and his seed is leaking from your pussy.";
		say "[impregchance]";
	otherwise:
		say "     As he licks and sucks at your wound, lapping up your blood, you can feel your strength waning.  You try again to pull away, but cannot do more than push lightly at his shoulders.  He keeps purring and caressing you as he feeds, making you feel more relaxed about your fate despite your peril.  His muzzle remains at your neck, purring and panting as he keeps drinking your life blood.  As you're passing out, you groan in pleasure then black out.  When you awaken, weak and thirsty, your dark assailant is gone.";
	increase thirst of player by 8;


to say beatthesnowbat:
	now snowbatfight is 1;		[victory]
	say "     With your final blow, your enemy takes to the air again and releases a screeching mrowl of frustration, flying off to find easier prey.";


to say daynightcheck:
	if ( remainder after dividing turns by 8 > 3 ) or ( remainder after dividing turns by 8 < 0 and remainder after dividing turns by 8 > -5 ):
		now nightcheck is 0;	[daylight hours]
	otherwise:
		now nightcheck is 4;	[nighttime hours]


to say snowbatdesc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	say "[daynightcheck]";
	let debit be 0;
	if hardmode is true and level of player > 9, let debit be level of player - 9;
	now dex entry is 20 + nightcheck + ( ( debit + 4 ) / 5 );		[equivalent to +4 dex at night]
	now wdam entry is 10 + ( ( 4 * debit / 11 ) );				[strong dmg growth rate for hard mode]
	now hp entry is 70 + ( debit * 5 );						[strong hp growth rate for hard mode]
	now monsterhp is hp entry;
	say "     Swooping from the sky is a hybrid snow bat, a cross between a snow leopard and a bat.  The bat wings which allow this snowmeow to fly are covered in an even grey fur, lacking the spots and markings of his feline body.  His feline face is distorted into the sharper and more pointed shape of a bat's, with an upturned nose, pointed muzzle, fangs and large ears.  His footpaws have been reshaped for perching as well as grasping its prey.  He's got a sizable sheath and large balls between his legs and may be hoping to use them on you[if nightcheck is 0].  With the bright daytime sun out, his sensitive eyes water as he tries to shield them from the light[otherwise].  In dark of the night, the bat-hybrid has a definite advantage with its echolocation[end if].";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Snow Bat";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The snow bat digs its claws into you painfully as it tries to sink its fangs into your neck![or]The snow bat releases a sharp, high-pitched mrowl that hurts your ears and makes you dizzy from the ultrasonic attack![or]The feline bat swoops at you and digs its talons into your shoulders![or]The hybrid bat-feline growls and slashes at you with its sharp claws![or]The snow bat bites you, sinking its teeth into your arm![at random]";
	now defeated entry is "[beatthesnowbat]";
	now victory entry is "[losetosnowbat]";
	now desc entry is "[snowbatdesc]";
	now face entry is "a mix of bat and feline, with a bat-like muzzle and large, sensitive ears, but a snow leopard appearance overall.  Bright light is somewhat painful for you and you have a dark thirst that you do your best to satisfy with other liquids";
	now body entry is "tall and slender, with a broad chest and strong shoulders.  Your shoulder muscles support the large bat wings at your back.  Your hands are paw-like and your fingers end in sharp claws.  Your feet end in talon-like toes for perching or grabbing prey";
	now skin entry is "soft fur that is snowy white and ash grey in colour with a leopard-like pattern across your";
	now tail entry is "You have the thickly furred, luxuriously beautiful tail of a snow leopard.";
	now cock entry is "[one of]grey feline[or]barbed[or]grey[or]feline[at random]";
	now face change entry is "your face pushes out to form a pointed muzzle with an upturned nose.  Large fangs grow in at the front of your muzzle to sink into your prey and... No!  You shake your head, pushing back those thoughts even as your changes continue and your ear grow very large and bat-like, able to hear minute sounds.  A pattern of spots forms on your face as it becomes a hybrid of a bat's and a snow leopard's";
	now body change entry is "your body is wracked with painful snaps.  Your body becomes slender, but with a strong chest and shoulders, where the pain is now centering.  Large growths at your back swell up under your shoulder as it feels like some pressure inside them building, fighting to get out.  As a pair of big bat wings burst from your back, you scream in a mix of pain and pleasure as they are freed.  Your hands warp and reform into feline paws with clawed digits while your feet become more bat-like with grasping toes";
	now skin change entry is "you gain a lovely coat of snow leopard fur, soft and light";
	now ass change entry is "a fluffy, feline tail forms.  It is covered in thick, soft fur and takes on the beautiful pattern of a snow leopard";
	now cock change entry is "takes on an even, grey hue and becomes feline with stimulating barbs to please even unwilling partners";
	now str entry is 14;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 20;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 12;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 70;			[ The monster's starting hit points. ]
	now lev entry is 9;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 10;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]


An everyturn rule:
	if facename of player is "Snow Bat" and a random chance of 1 in 2 succeeds:
		increase thirst of player by a random number between 0 and 1;
		if "Pure" is listed in feats of player and a random chance of 1 in 2 succeeds:
			decrease humanity of player by a random number between 0 and 1;
		otherwise if "Corrupt" is listed in feats of player:
			decrease humanity of player by a random number between 0 and 1;
			decrease humanity of player by a random number between 0 and 1;
		otherwise:
			decrease humanity of player by a random number between 0 and 1;


when play ends:
	if bodyname of player is "Snow Bat":
		if humanity of player is less than 10 and hp of Sven is 54 and cocks of player > 0:	[Special: Male/Herm Snow Bat + Svetlana]
			say "     As your will to resist the infection falters and fails, you succumb to your dark thirst and head off into the city to sate it.  After leaving behind a few random meals passed out after your feeding, you head off to your true goal.  Now having the strength to fly after feeding, you take to the night air.  While part of your memories are hazy, you do recall a female snow leopard waiting to see you again and make your way there one evening.  Standing in the shadows outside, you purr softly and wait for her to notice you.  Hearing you, she is drawn out and into your arms.  She mewls softly as you seduce her into a kiss before you bite her neck and drink her blood while mating her.  You only drink a little, wanting to draw out the pleasure of enjoying her, sending her back into the store to wait for the next evening.  She comes to you willingly every night, her dark lover, to let you feed and fuck her.  After a few days, she grows weaker and you lure her away from her mouse mistress to be yours.";
			say "     You fly off with her into the night, taking her to your hidden lair in a high-rise tower.  The floor you've chosen has been isolated from the others by rubble and contains several windowless rooms, perfect for your daytime sleeping.  Svetlana, unable to escape even if she wanted to, becomes your to mate and feed upon, filling her with your hybrid spawn.";
		otherwise if humanity of player is less than 10:
			say "     As your will to resist the infection falters and fails, you succumb to your dark thirst and head off into the city to sate it.  After leaving behind a few random meals passed out after your feeding, you find yourself with the strength to fly after feeding and take to the night air";
			if hp of Sven is 0 or hp of Sven > 49:
				if cunts of player > 0:
					say ".  You are drawn back to the first of the snow bats and become his mate, baring your throat to him.  As he mates you and feeds upon you, you feel only pleasure, submitting to the first of your kind.  When you grow heavy with his spawn, you remain in the hidden lair, enjoying the prey he brings for you to feed upon and play with while he is out hunting.  Most you feed on heavily over several days until they are drained and uselessly discarded, while a few of the strong ones you take your time with, turning them into more of your kind to darken the skies[if cocks of player > 0].  You make sure that any females you do this to are well bred by you before they are sent off into the night[end if].";
				otherwise:
					say ".  You fly out into the city in search of a new home, setting up a lair in a high-rise tower.  The floor you've chosen has been isolated from the others by rubble and contains several windowless rooms, perfect for your daytime sleeping.  You capture and bring back prey to enjoy there at your leisure.  Most you feed on heavily over several days until they are drained and uselessly discarded, while a few of the strong ones you take your time with, turning them into more of your kind to darken the skies.  You make sure that any females you do this to are well bred by you before they are sent off into the night.";
			if hp of Sven > 0 and hp of Sven < 10:
				say ".  You head off to your true goal.  While part of your memories are hazy, you do recall a male snow leopard waiting to see you again and make your way there one evening.  Standing in the shadows outside, you purr softly and wait for him to notice you.  Hearing you, he is drawn out and into your arms.  You guide him to the ground and slide atop him, stroking and caressing his body as you kiss and nip at his neck[if cunts of player > 0].  As you sink down onto his cock, you sink your fangs into his neck and start drinking as you ride his erection until he cums for you[otherwise].  As you give his ass a squeeze, you sink your fangs into his neck and start drinking[end if].  After he passes out, you kiss his neck and take him away in your arms.";
				say "     You fly off with him into the night, taking him to your hidden lair in a high-rise tower.  The floor you've chosen has been isolated from the others by rubble and contains several windowless rooms, perfect for your daytime sleeping.  Sven, unable to escape even if he wanted to, becomes[if cunts of player > 0] yours to mate and feed upon, filling you with hybrid spawn even as his transformation into a snow bat is completed[otherwise] a feline-bat hybrid like yourself and thirsting to feed upon others.  As partners, you snatch up those unfortunate enough to be spotted by you at night and brought back to your lair for feeding[end if].";
			if hp of Sven is 10:
				say ".  You head off to your true goal.  While part of your memories are hazy, you do recall a male snow leopard waiting to see you again and make your way there one evening.  Standing in the shadows outside, you purr softly and wait for him to notice you.  Hearing you, he is drawn out and into your arms.  You guide him to the ground and slide atop him, stroking and caressing his body as you kiss and nip at his neck[if cunts of player > 0].  As you sink down onto his cock, you sink your fangs into his neck and start drinking as you ride his erection until he cums for you[otherwise].  As you give his ass a squeeze, you sink your fangs into his neck and start drinking[end if].  After he passes out, you kiss his neck as Candy pokes his head out of the bunker to look for the snowmeow.";
				say "     Candy rushes over to see what has happened to his friend, little realizing that you are the cause.  As you help him lower Sven to the ground, the pink raccoon leans overtop the snow leopard, leaving himself vulnerable.  Moving softly at first, like a concerned friend, you move in behind him and put an arm around him.  Nuzzling at his neck, you bite him, sinking your fangs into him and making him moan[if coonsex > 0 and cocks of player > 0].  With a firm grip on him, you slide your cock under his skirt and start fucking him as you feed to keep him submissive[end if].  As he passes out as well, you are left to struggle with getting them both back to your new home.";
				say "     You fly off with them into the night, taking them to your hidden lair in a high-rise tower.  The floor you've chosen has been isolated from the others by rubble and contains several windowless rooms, perfect for your daytime sleeping.  Sven and Candy, unable to escape even if they wanted to, becomes your to play with and feed upon[if cunts of player > 0].  Sven fills you with hybrid spawn even as his transformation into a snow bat is completed[otherwise].  You fuck the sexy snowmeow even as his transformation into a snow bat is completed[end if].  While Candy doesn't change much physically, his pink colour becomes a little darker and he gains a taste for blood as well, lustfully fucking and feeding upon any male prey you and Sven bring back to the lair.";
		otherwise:
			say "     You manage to survive your time in the city and are rescued by the military's forces.  Once out of the city, you are better able to deal with your body's dark urges and manage to suppress them.  You hide the true nature from the scientists, fearful of their reaction and pass yourself off as having run into a bat creature somewhere.";
			if facename of player is "Snow Bat":
				say "     After your release, you take to working night jobs, as you find the daytime uncomfortably bright.  When you do have to go out during daylight hours, you wear dark sunglasses and rely on your echolocation to make up for it, slowly getting the hang of it.  Flying unfortunately eludes you, but you do manage a little gliding during your attempts.  Your exotic body attracts several other winged lovers and while you often lick and nibble along their necks, you are always careful never to bite as those lightly slumbering instincts would have you do to them.";
			otherwise:
				say "     After your release, you take to working night jobs, as you find the nighttime preferable.  Flying unfortunately eludes you, but you do manage a little gliding during your attempts.  Your exotic body attracts several other winged lovers and while you often lick and nibble along their necks, you are always careful never to bite as those lightly slumbering instincts would have you do.";
			if Sven is in the bunker:
				say "     Sven remains with you leaving the military holding facility and stays with you as your [if hp of Sven > 7]slutty pet[otherwise]lover[end if].  Strongly attracted to your body, he always snuggles up close to you, resting his head on your chest as he listens to you purr.  You often end up nuzzling at the kitty's neck and biting him, the only one you'll drink from to help you slake your thirsts.  He moans and mewls sensually as you feed, loving his bond with you[if cunts of player > 0].  Feeding always makes you both so horny that you'll ride his cock until he fills you with his seed before passing out[otherwise].  Feeding always makes you both so horny that you'll fuck his tight ass until you fill him with your seed before just as he's passing out[end if].";


[ Edit this to have the correct creature name as well]
Snow Bat For FS ends here.