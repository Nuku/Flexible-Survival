Version 1 of Capitol Events by Blue Bishop begins here.
[version 1 - Some new events for the Capitol Building area]

"Adds a series of random events to Flexible Survival located at or focusing on the Capitol Building area."


Section 1 - Pre-existing events by Sweraptor

dragatorspot is a situation.
The sarea of dragatorspot is "Capitol".

Instead of resolving dragatorspot:
	say "Down the street you spot a crocodile-like beast.  It is a dark, dark purple with six legs, one of the Ebonflame Dragators.  You watch it with sympathy as it knocks over trash cans and uses its huge jaws and teeth to rummage through the refuse.  Such a stupid, unclean creature is easily avoided.";
	increase score by 1;
	now dragatorspot is resolved;


whelpspot is a situation.
The sarea of whelpspot is "Capitol".
whelpspotnum is a number that varies.

Instead of resolving Whelpspot:
	say "A shadow darts overhead and instinctively you dive for cover. Hiding in an abandoned auto you watch worriedly while a flock of [one of]dark[or]Ebonflame[stopping] whelps swoop overhead. They do not linger long, heading off in the direction of the Capitol Building.";
	increase score by 1;
	increase whelpspotnum by 1;
	if whelpspotnum is 3, now Whelpspot is resolved;


[Section 2 - Ashen Nest

Ashen Nest is a situation.  The level of Ashen Nest is 7.
The sarea of Ashen Nest is "Capitol".

Instead of resolving Ashen Nest:
	say "     Upon your travels across this blasted parts of the city, you ";
	let bonus be ( perception of player - 10 ) / 2;
	let target be 12;
	if "Bad Luck" is listed in feats of player, increase target by 1;
	if hardmode is true, increase target by 2;
	let dice be a random number from 1 to 20;
	if bonus + dice is greater than target:
		say "suddenly stop, detecting some rather strangely sunken and cracked pavement.  You pick up a nearby rock and throw it at the patch of asphalt, slowly creaking until it collapses in on itself.  And to think, you nearly walked over that!";
		say "     Looking down, you can see the shadows of a handful of ashen whelps, now suddenly roused from their prior rest.  Further observation indicates that it's some manner of nest.  You also see a bit of food and water down there.";
		say "     You could hop down and challenge the whelps for those supplies, or you could just leave this matter entirely.  Descend upon the whelps?";
		if player consents:
			say "     Hopping down the hole, you ready yourself against the whelps, who are more than happy to contest your audacious disruption.";
			say "[ashengauntlet]";
		otherwise:
			say "     You decide that it's not worth the trouble, stepping back and departing before you're potentially forced to contend with these creatures or whatever might have birthed them.";
	otherwise:
		say "suddenly feel off-balance as the cracked asphalt below you begins to crumble";
		let bonus be ( dexterity of player - 10 ) / 2;
		let target be 15;
		if "Bad Luck" is listed in feats of player, increase target by 1;
		if hardmode is true, increase target by 2;
		let dice be a random number from 1 to 20;
		if bonus + dice is greater than target:
			say ".  Using your quick reflexes, you immediately roll away from the crumbling pavement, which collapses in on itself in your wake.  Dusting yourself off, you move to see what your poor luck might of had in store for you.";
			say "     Looking down, you can see the shadows of a handful of ashen whelps, now suddenly roused from their prior rest.  Further observation indicates that it's some manner of nest, you also see a bit of food and water.";
			say "     You could hop down and challenge the whelps for those supplies, or you could just leave this matter entirely.  Descend upon the whelps?";
			if player consents:
				say "     Hopping down the hole, you ready yourself against the whelps, who are more than happy to contest your audacious disruption.";
				say "[ashengauntlet]";
			otherwise:
				say "     You decide that it's not worth the trouble, stepping back and departing before you're potentially forced to contend with these creatures or whatever might have birthed them.";
		otherwise:
			say ".  Too slow to react, the pavement gives way, you following in its wake as you descend into a shallow cave, landing on the broken earth with an audible thud";
			let dam be a random number between 1 and 8;
			if hardmode is true, increase dam by a random number between 0 and 4;
			if "Toughened" is listed in feats of player, decrease dam by 2;
			if "Bad Luck" is listed in feats of player, increase dam by 2;
			if dam < 1, now dam is 1;
			decrease hp of player by dam;
			If hp of player > 0:
				say ".";
				say "     Rubbing your bumped head ([special-style-2][dam][roman type] dmg), you observe the situation.  It's suddenly made abundantly clear that you've stumbled upon some ashen nest, a number of eggs strewn across the once-basement.  Thankfully, the eggs['] owners are elsewhere right now, but a handful of their kin are none-too-happy to be roused from their slumber after your clumsy entrance, already moving to attack you.";
				say "[ashengauntlet]";
			Otherwise:
				now hp of player is 1;
				say ".  The impact is strong enough to render you unconscious, the chittering sound of ashen whelps the only thing you can recall before you black out.";
				say "     Your consciousness is roused once again by strained squeals and yipping of your apparent assailants.  The writhing, heated flesh of a few whelps on you, more strewn about, rather exhausted themselves.  As you shift, it immediately becomes clear that you're partially doused with the creatures' glowing seed, [if scalevalue of player > 3]an impressive feat for someone as large as you.  These whelps have been very busy, that or you've been out for quite some time[otherwise]the whelps clearly having been fairly busy with you, that or you've been out for a couple hours[end if].";
				say "     Though you still feel a couple heaving against your [if scalevalue of player > 3]large[end if] behind, it's clear they're all too spent to fight you.  Embarrassed as you are, you easily shove them off, weakly pulling yourself back up the hole.  As you crawl back from whence you came, it's clear by the twisted aftertaste in your mouth, the small creatures made the most of what they could against your helpless form.[impregchance][mimpregchance]";
				infect "Ash Whelp";
				infect "Ash Whelp";
				infect "Ash Whelp";
	now Ashen Nest is resolved;

to say ashengauntlet:
	let maxwhelps be 4;
	if "Bad Luck" is listed in feats of player or hardmode is true, increase maxwhelps by 1;
	let whelpnumbers be maxwhelps;
	repeat with N running from one to whelpnumbers:
		challenge "Ash Whelp";
		if fightoutcome >= 10 and fightoutcome <= 19:
			if whelpnumbers > 0:
				say "     [one of]Defeating the whelp, another moves to take its place[or]Whelp stricken down, you are assailed by yet another[or]Finishing off one of the whelps, it is replaced by a new one[at random].";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:
			if whelpnumbers is maxwhelps:
				say "     [If hp of player > 0]Immediately submitting to the many whelps, they chitter happily, quick to forget your disruption now that they have a new toy[otherwise]Falling to merely the first whelp, it squawks loudly to brag of its physical prowess before the whole lot of them descend upon you[end if].  Engulfed in numerous masses of twisted, ashen scales, the chirping, chittering noises they emit are almost unbearable[if player is submissive].  You are too overwhelmed by your submissive inclinations to resist their wanton, fiery desire[otherwise if hp of player > 0].  Their wanton, fiery desire is too overwhelming for you to resist[otherwise].  Your impotent attempts at pushing them away are too inadequate to dissuade their wanton, fiery desire[end if].";
			otherwise:
				say "     Unable to handle this many whelps, [if hp of player > 0]you concede to submitting to the beasts[otherwise]you eventually fall to one of them, whom squawks loudly to brag is prowess over its kin[end if], those felled prior slowly rising up to recover from your attack before the whole lot of them descend upon you.  Engulfed in numerous masses of twisted, ashen scales, the chirping, chittering noises they emit are almost unbearable[if player is submissive].  You are too overwhelmed by your submissive inclinations to resist their wanton, fiery desire[otherwise if hp of player > 0].  Their wanton, fiery desires is too overwhelming for you to resist[otherwise].  Your impotent attempts at pushing them away too inadequate to dissuade their wanton, fiery desire[end if].";
			say "     You're briefly forced to cry out, though they will not abide your involvement in their lust-laden song, your mouth immediately plugged by the [if scalevalue of player > 3]cocks of two of the whelps[otherwise]cock of one of these whelps[end if].  [if hp of player < 1]Weakened[otherwise]Twisted[end if] moans muffled by [if scalevalue of player > 3]these inadequate tools[otherwise]this inadequate tool[end if], [if cunts of player > 2]they seek to plug your other holes, two more thrusting into two of your cunts, whilst the remainder assail your frame with their own irreverent, heaving assault[otherwise if cunts of player is 2]they seek to plug your other holes, two more thrusting into both of your cunts, whilst the remainder assail your frame with their own irreverent, heaving assault[otherwise if cunts of player is 1]they seek to plug your other hole, two of them managing to fit themselves into your cunt, an affair the cramped pair seem to fight over between thrusts, whilst the remainder assail your frame with their own irreverent, heaving assault[otherwise if anallevel > 1 and scalevalue of player > 3]they seek to plug your other hole, two of them managing to fit themselves past your anal ring, exploiting your large size to both thrust into your inviting portal, whilst the remainder assail your frame with their own irreverent, heaving assault[otherwise if anallevel > 1]they seek to plug your other hole, two of them managing to fit themselves past your anal ring, an affair the cramped pair seem to fight over between thrusts, whilst the remainder assail your frame with their own irreverent, heaving assault[otherwise]the remainder assailing your frame with their own irreverent, heaving thrusts[end if].  A handful of heated, sweat-laden minutes pass before feel one cry out in blissful release, its kin soon following suit.";
			say "     You are quick to assume that they are finished with their fun, but it's clear that, since you came down on -their- home, they have nowhere else to be, and they thusly continue to use you, new ones falling in place when one becomes too exhausted, until what seems like an eternity before they're all too exhausted and [if hp of player > 0 or player is submissive]they have nothing left to offer you[otherwise]you've recovered enough to push them off[end if].  Exhausted, mostly covered in sexual fluids, and quite embarrassed with yourself, you pull yourself out of the hole and back from whence you came before their parents might return.[mimpregchance][impregchance]";
			infect "Ash Whelp";
			infect "Ash Whelp";
			infect "Ash Whelp";
			break;
		otherwise if fightoutcome >= 30:
			say "     Deciding you'll have none of this, you turn tail and quickly scramble back up the hole.  Managing to outrun the whelps with relative ease.  Thankfully, your escape isn't all that difficult, and you can return to the matters you had at hand.";
			break;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Finishing yet another off, what couple stragglers remain scatter and flee from you.  Eyeing some food and water left in their wake, you grab them before departing, returning to back to the wrecked city.";
		increase carried of food by 1;
		increase carried of water bottle by 1;]


Section 3 - Strange Meeting

Strange Meeting is a situation.
The sarea of Strange Meeting is "Capitol".

Instead of resolving Strange Meeting:
	say "     Travelling through the ruined area, you happen upon what appears to be a set of Ebonflame Dragonkin in the distance.  Thankfully not being spotted, you duck behind some rubble, watching what they do.";
	say "     They appear to just be standing there, one Draken flanked by a pair of Dragators, their intent soon made somewhat clear when a new party -- a set of Dark Elves -- calmly advance upon them.  You imagine this would be rather odd for the two to meet in this manner, and it's clear that they share this sentiment as they look none too fond of this arrangement.";
	say "     Too far to hear what they actually say, they seem to be arguing over something, tossing accusations left and right and not really coming to any agreement.  It would appear that tension is running high enough that they might turn on each other before they're interrupted when a sound from the open area, opposite to you, draws their attention.";
	say "     You're not exactly sure what has them so ill at ease, both parties conceding into retreating.  Chances are, you don't want to stay and find out, and thusly you move to depart yourself.";
	now Strange Meeting is resolved;


Section 4 - Failed Escape

Failed Escape is a situation.
The sarea of Failed Escape is "Capitol".

Instead of resolving Failed Escape:
	say "     You encounter what appears to be a crashed military helicopter.  Its equipment is completely roasted and its once-occupants are nowhere to be found.  Upon closer inspection, there appears to be the stains of some sexual fluids, long since dried and caked on the charred surfaces, perhaps inferring the fate of those who tried to escape on this.";
	now Failed Escape is resolved;


Section 5 - Charred Pickets

Charred Pickets is a situation.
The sarea of Charred Pickets is "Capitol".

Instead of resolving Charred Pickets:
	say "     You manage to find some peculiar picket signs strewn about a small area, too burnt up to make out what they might have been for.  You imagine that the people carrying these signs were rudely interrupted in the middle of their protest.";
	now charred pickets is resolved;


Capitol Events ends here.
