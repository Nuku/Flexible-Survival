Version 1 of Fruit Bat For FS by Stripes begins here.

"Adds a nocturnal Fruit Bat creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Fruit Bat" } to infections of guy;
	add { "Fruit Bat" } to infections of furry;

to say losetofruitbat:
	if hp of player > 0:
		say "     Choosing to not fight the horny bat, you stop resisting and let him push you to the ground.  'That's better, sweetie.  Let's have some fun,' he says with a giggle as he ";
	otherwise:
		say "     Unable to keep on fighting, you are knocked to the ground by the horny bat.  '[one of]Haha!  To the victor go the spoils.  Not that I like my fruit to be spoiled, but I guess lightly bruised is still okay[or]Such a troublesome little [if cocks of player > 0]plum[otherwise]peach[end if] you are[or]Don't be the bad apple in the bunch.  Let's see if a little fun will improve your sour attitude[or]There's no need for sour grapes because you lost.  I'm going to make this oh so sweet[at random],' he giggles playfully as he ";
	if cunts of player is 0 and a random chance of anallevel in 5 succeeds:
		say "rolls you over onto all fours and grinds his crotch against your backside.  Tugging down the front of his colourful speedo, he frees his turgid member and presses it to your crinkled hole.  After a few teasing pushes to lightly press against your tight pucker and coax out some precum to lube you up a little, he carries through on the motion and pops his glans into you.  You can't help but moan as you feel him enter you smoothly, clearly quite familiar with doing this.";
		say "     The bat's wings wrap around you as his vestigial hands[if cocks of player > 0] take hold of your cock and start stroking you off[otherwise if breast size of player > 2] take hold of your breasts and start teasing your nipples[otherwise] rub across your bare groin[end if] even as he fucks you.  His muzzle and rubs against the back of your neck before he starts licking along it, sending shivers that originate at the point of contact and run down your spine to the point of penetration in tingles of delight.  The bat's thrusts are practiced and steady, your ass certainly not the first this fruit-scented male had his way with.  He seems to know just which ways to move and reposition so he's always getting those sweet spots that make you moan[if hp of player > 0].  Deep in lustful pleasure, you're very glad you decided to relent and let him have his fun[otherwise].  Despite your earlier reluctance, you're reduced to a state of lustful pleasure as he has his way with you[end if].";
		say "     After a [one of]long and drawn out[or]hard and fast[or]hot and heavy[or]sensual[or]vigorous[at random] fuck session, your winged lover drives his cock deep inside you and releases a high-pitched cry of delight.  You can feel his hot semen shooting into your ass and tainting you with its delicious heat[if cocks of player > 0].  Feeling this, you can't help but cry out yourself and scatter your own seed across the ground[otherwise].  Despite your lack of focused release, you do feel a rush of near-orgasmic excitement run through you as your ass is filled[end if].  As he eases his spent shaft from your messy rear, he pulls you into a kiss, thrusting his tongue into your mouth.  You moan at the taste of it, reminiscent of fresh [one of]pineapple[or]peaches[or]plums[or]apricots[or]strawberries[or]mangos[or]cherries[at random].  This sweet taste lingers on your lips after he's sent you on your way in a post-orgasmic haze with a smack of your creamy bottom.[mimpregchance]";
	otherwise if cunts of player > 0 and a random chance of 1 in 3 succeeds:
		say "guides you over onto all fours brushes a fingertip across your wet folds.  He teases between your pussy and asshole a few times as he slips off his colourful speedo, as if considering which to take before opting to line up his turgid member with your hot cunny.  After grinding his glans against your waiting entrance a little, he carries through on the motion and pops his glans into you.  You can't help but moan as you feel him enter you, your body craving more[if hp of player <= 0] despite your earlier attempts to fight it[end if].";
		say "     The bat's wings wrap around you as his vestigial hands[if cocks of player > 0] take hold of your cock and start stroking you off[otherwise if breast size of player > 2] take hold of your breasts and start teasing your nipples[otherwise] rub along your sides before moving to your damp folds and teasing them[end if] even as he stuffs your needy cunt.  His muzzle and rubs against the back of your neck before he starts licking along it, sending shivers that originate at the point of contact and run down your spine to the point of penetration in tingles of delight.  It takes the bat a little while to set up a good rhythm and angle, but once he settles into it, he proves to be very good at hitting those sweet spots that make you moan[if hp of player > 0].  Deep in lustful pleasure, you're very glad you decided to relent and let him have his fun[otherwise].  Despite your earlier reluctance, you're reduced to a state of lustful pleasure as he has his way with you[end if].";
		say "     After a [one of]long and drawn out[or]hard and fast[or]hot and heavy[or]sensual[or]vigorous[at random] fuck session, your winged lover drives his cock deep inside you and releases a high-pitched cry of delight.  You can feel his hot semen shooting into your pussy, tainting your womb with its delicious heat[if cocks of player > 0].  Feeling this, you can't help but cry out yourself and scatter your own seed across the ground as your inner walls milk his shaft for all he'll give[otherwise].  Feeling this, you can't help but cry out in orgasm, your inner walls milking at his shaft for all he'll give[end if].  After he eases his spent shaft from your messy cunny, he quickly moves around to your face and presses his manhood to your lips.  Still in a lustful haze, you lick him clean without hesitation.  You moan at the wild blueberry taste of the semen still clinging to it along with your own juices.  This sweet taste lingers on your lips after he's sent you on your way in a post-orgasmic haze.[fimpregchance]";
	otherwise:
		say "     Pulls you to your knees and grinds his crotch bulge against your face.  With his covered manhood right there, the tantalizing fruity scent is stronger and makes your mouth water [if hp of player > 0]involuntarily a little[otherwise]all the more for it[end if].  Tugging down on the front of his speedo, he frees his turgid member and presses it to your lips.  Tasting a mix of predominantly [one of]pineapple[or]peach[or]plum[or]apricot[or]strawberry[or]mango[or]cherry[at random] and blueberry flavours on it, you respond by opening your mouth and plunging over his eight-inch member.";
		say "     The bat's vestigial hands rub over your head as he thrusts into your mouth.  Your tongue, loving his fruity taste, slathered all across it, lapping up his precum while you rub those plump balls of his.  '[one of]Mmm... that's it, sweetie.  Rub those big plums of mine[or]Oh yeah, keep it up and you'll get your tasty treat[or]Mmm... berries and cream on its way, you horny thing[at random],' he moans.  [if hp of player > 0]You[otherwise]Despite your earlier resistance, you[end if] can't help but respond, working all the harder for the delicious load he has for you as your lustful desires take control.";
		say "     When the blow job finally becomes too much for him, your winged lover drives his cock fully into your mouth and releases a high-pitched cry of delight.  Your mouth is flooded with his hot semen, splattering that blueberry goo across your palate and down your throat.  You eagerly gulp it down and keep sucking for more, only releasing him after he's given up the last drops of his delicious spunk[if cocks of player > 0 and a random chance of libido of player in 50 succeeds].  After he eases his spent shaft from your sticky mouth, his eyes are drawn to your own erection[smn] and he pushes you onto your back.  Putting his muzzle around your manhood, he licks and sucks at it until his talented tongue soon pushes you over the edge and you feed your [cum load size of player] load of [cockname of player] cum to him in return[otherwise].  After he eases his spent shaft from your sticky mouth, he pulls you into a kiss, thrusting his tongue into your mouth.  You moan at the taste of it, fresh [one of]pineapple[or]peaches[or]plums[or]apricots[or]strawberries[or]mangos[or]cherries[at random] mixing with the lingering taste of wild blueberries already on your tongue[end if].  His sweet taste lingers on your lips after he's sent you on your way in a sex-addled haze.";


to say beatthefruitbat:
	say "     Your continued resistance proves to be more than the bat wants to endure in his search for fun.  He moves away from you and flaps higher into the air.  '[one of]Oh, with an attitude like that, I'm sure you're sour[or]Hey, don't bruise the fruit[or]You are one bad apple[or]You're missing out on some really big, sweet plums[or]You must be rotten to the core to want to spoil my fun[at random],' he says in disgust before banking away and flying off.";


to say fruitbatdesc:
	say "     You are met by a slender bat creature that stands roughly six feet tall.  Covered in brown fur with a bluish tinge to it, the creature is part bat and part man in form.  His wings are part of his arms and hands, his arm bones and elongated fingers having webbing between them, though the thumb and an extra finger are free to provide some added dexterity.  All he's wearing is a snug [one of]pink[or]purple[or]aqua[or]green[or]rainbow[at random] speedo that leaves little to the imagination, his plump package making quite the bulge in it.";
	say "     His face has the flattened snout and upturned, triangular nose of a bat and he has very large, conical ears that are now focused on you.  The right ear is pierced with an [one of]gold[or]amethyst[or]spinel[or]silver[or]sapphire[or]heart-shaped[at random] stud and well as another piercing in his tongue[if daytimer is day].  He's also wearing a pair of shades to keep the sun out of his nocturnal eyes[end if].  The soft, fruity scent he's giving off as well the shape of his head and teeth lead you to guess that he's based more on a fruit bat than any other breed.";
	say "     '[one of]Hey there, honey.  Let's play[or]Come on, let's hang out[or][if cocks of player > 0]Lemme see that nice cock of yours[otherwise]Lemme see what you've got[end if][or]Come closer and I'll give you a peek in my package[or]Have a lick.  It tastes like blueberries[at random],' he says with a grin while rubbing his crotch bulge, causing it to stretch the taut fabric further.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Fruit Bat";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]bat[or]fruit bat[or]blue bat[as decreasingly likely outcomes] [one of]buffets you with his wings[or]claws at you with his taloned fingers[or]claws at you with his taloned feet[or]wraps his wings round you tightly and gropes your[if breast size of player > 0 and a random chance of 1 in 4 succeeds]tits[otherwise]groin[end if][at random].";
	now defeated entry is "[beatthefruitbat]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetofruitbat]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[fruitbatdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of a bat creature, with a flat, triangular nose at the end of your muzzle and enlarged ears.  You periodically send out ultrasonic cries that return echoes of your surroundings, but much of it is a jumble that [if perception of player < 16]you have trouble interpreting[otherwise if perception of player < 20]you can only partially interpret[otherwise]help you [']see['] your surroundings with sound to some degree[end if]";
	now body entry is "partially that of a bat, with wings built into your arms and your hands reduced to a vestigial thumb and an additional finger.  Your body is slender and light, probably to help you fly, though you've not quite gotten the knack of that yet";
	now skin entry is "soft brown fur with blue tints, not unlike highlights, across your";
	now tail entry is "You have a short, slender tail with skin flaps between it and your thighs, though these are stretchy enough to give free access to your rear";
	now cock entry is "[one of]fruity[or]blueberry-scented[or]blueberry-flavoured[or]blue[at random]";
	now face change entry is "the sounds around you grow stronger and stronger, making your head ache.  And the strongest sounds come from your changing head with the popping and grinding of shifting bones and flesh.  You give out a high-pitched shriek that returns a jumble of echoes that your mind can only partially interpret as your surroundings.  By the time it settles down and your transformation comes to an end, you've gained the head of a bat.  Given your cravings for fruit (and cum), clearly that of a fruit bat";
	now body change entry is "a rush of transformation washes over you, much of your body being changed by the nanites.  The most dramatic change is your arms, with your fingers elongating as flaps of skin grow to connect between them.  A new finger even grows in to give you an extra digit to work with your thumb as a rudimentary hand for your bat-wing arms.  Your feet gain strong talons meant to grip branches or stone, though you're a little reluctant to try perching upside-down with them quite yet";
	now skin change entry is "fur follicles spread across your body, sprouting brown fur with blue tips.  This makes for a cute sandy coat with blue highlights";
	now ass change entry is "you sprout a short, thin tail.  At first, it looks like you're gaining a mouse's tail, but it ends up shorter and instead grows flaps of skin connecting it loosely to your thighs";
	now cock change entry is "it throbs and pulses, spurting precum.  You can smell the faint scent of blueberries coming from it even before its colour turns to blue";
	now str entry is 11;			[ These are now the creature's stats... ]
	now dex entry is 17;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat.]
	now per entry is 20;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 46;			[ The monster's starting hit points. ]
	now lev entry is 6;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;			[ Monster's average damage when attacking. ]
	now area entry is "Beach";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 60;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]winged[at random]";
	now type entry is "[one of]batlike[or]chiropteran[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now nocturnal entry is true;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Fruit Bat":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Fruit Bat For FS ends here.