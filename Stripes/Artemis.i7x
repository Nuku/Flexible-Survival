Version 3 of Artemis by Stripes begins here.
[Version 3.0 - Setup for mod]

"Adds a neuter rubber tigress pet named Artemis."

Section 1 - Encounter

Poor Kitty is a situation.
The sarea of Poor Kitty is "Midway";
when play begins:
	add Poor Kitty to badspots of girl;
	add Poor Kitty to badspots of furry;

Instead of resolving a Poor Kitty:
	if hp of rubber tigress is 0:
		say "     As you're cautiously poking into some of the abandoned booths around the fair, you end up startling one of those rubbery tigresses from her hiding spot.  She runs out of the cupboard on all fours with a squeaking mrowl of surprise, sending a pile of red plastic drinking cups spilling out around you.  As you watch her run towards the exit, you notice two strange things about her.  First, despite her feminine curves and rounded bottom, she seems to be stuck on all fours unlike the others of her kind.  The second, and even more surprising, is the lack of any gender or genitals to her.";
		say "     Intrigued, you look down at your feet and pick up one of the red cups at your feet.  Turning it around, you notice the cup in your hand has a large bite taken out of it, as if this feline's been slowly dining on them.  Cup still in hand, you head to the exit and look around.  You spot her hiding around the corner of a nearby booth.  She releases a soft, cautious mewl, eying the cup.  She pads out slowly towards you and mewls again.  Shall you [link]give her the cup (Y)[as]Y[end link] or [link]throw it away (N)[as]N[end link] to distract her?";
		if the player consents:
			say "     She looks up at you and slowly reaches out to take the cup into her muzzle.  Her smooth, rubbery mouth doesn't so much bite into it as absorb the portion her lips touch.  Her tongue slides the melting red and white plastic around in her mouth before swallowing it down[if skinname of player is listed in infections of Latexlist].  Seeing her do this is a little disconcerting, given your current nature, but she is careful to only take the cup into her mouth when she goes for the second bite[otherwise].  She takes rest of the cup into her mouth and it soon follows the first bite[end if].";
			say "     After swallowing the last of it down, she nuzzles against your leg and purrs softly, giving a cute, cat-like mew.  You reach down and cautiously pet her head, rubbing the rubber tigress's ears for a bit.  After petting her head for a while, you move to back off while she watches you go.";
			increase score by 5;
			now hp of rubber tigress is 1;
		otherwise:
			say "     You throw the several yards away and the tigress bounds over to it.  She gives it several playful bats with her paw, sending it skittering across the ground.  She hunkers down, hips and tail all atwitch as she creeps closer and then pounces.  She bites into the cup, her lips melting through the plastic.  As she's doing all this, you're backing away slowly and dash off around the corner.  You hear a soft, plaintive mewl in the distance, but that is all.";
			now hp of rubber tigress is 2;
			now Poor Kitty is resolved;
	otherwise if hp of rubber tigress is 1:
		say "     While walking the midway you get this odd feeling that you're being watched.  You catch a bit of orange out of the corner of your eye and close to the ground, but it is gone by the time you look.  Noticing that you've been in this area before, you suspect you know what's up.  You continue nonchalantly while knowing that strange, neuter tigress is following you.  You consider your options, you wonder if you should try offering her [link]another treat (Y)[as]y[end link] or just [link]drive her off (N)[as]n[end link].";
		if the player consents:
			say "     Continuing to walk along, you take some string you found and an empty water bottle out of your pack.  Keeping this out of sight, you tie the string around the neck of the bottle.  The next time you go around a corner, you hurry ahead and drop the bottle.  As your rubbery stalker comes around the corner, you tug at the string, making the bottle skitter a little.  She hunkers down and starts purring, her tail swishing as she shifts her weight before pouncing.  You tug the bottle a little further back, making her pursue it with soft swats of her padded paws.  Soon enough, you have her rolling on her back beside you, juggling the bottle on her paws as she purrs happily.  She plays with her toy for a while like this before biting down on it, eating the plastic in gooey bites.";
			say "     After swallowing the last of it down, she spits out the loop of string and nuzzles at your leg.  She purrs softly, giving a cute, cat-like mew.  You reach down and cautiously pet her head, rubbing the rubber tigress's ears.  She nuzzles against your touch, purring all the louder.";
			say "     'You're just a big kitty, aren't you?' you say to her, getting another mew from her.  'You're certainly a strange rubber tigress,' you muse.  'What can I call you?'  She can only reply with a mewl.  'Hmm... rubber tigress... RT... Artie?  No, Artemis.  How about Artemis, kitty?  Roman goddess of the hunt, wilderness and... uhhh... virginity.'  She seems pleased with this choice, giving a happy, squeaking mew and purring all the louder.  Having received a name from you, Artemis purrs and nuzzles at you happily.  It seems you've made a friend.  With her following, you go back to the concession stand where you first found her, gather up a stack of cups for her and put them in your pack.";
			increase carried of cup stack by 1;
			increase score by 20;
			now rubber tigress is tamed;
			now hp of rubber tigress is 3;
			now libido of rubber tigress is 30;
			say "     (The rubber tigress is now tamed! You can make her your active pet by typing [bold type][link]pet rubber tigress[end link][roman type].  You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command.  Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap.  Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
			now Poor Kitty is resolved;
		otherwise:
			say "     Continuing to walk along, you turn around the next corner and, once out of sight, run around the stand.  You move quietly as you sneak back onto the main thoroughfare, finding the strange tigress poking her head around the corner[if weapon object of player is not journal].  You pull out your weapon and charge at her[otherwise].  You raise your fists and charge at her[end if].  She gives a shrill shriek of surprise and scrambles away.  You don't expect that thing will be bothering you again.";
			now hp of rubber tigress is 2;
			now Poor Kitty is resolved;
	otherwise:
		say "ERROR-Artemis-[hp of rubber tigress]PK: HP outside of range for the event!";
		increase carried of cup stack by 1;
		now rubber tigress is tamed;
		now Poor Kitty is resolved;


Section 2 - Artemis

rubber tigress is a pet.  rubber tigress is a part of the player;
understand "Artemis" as rubber tigress.
The description of rubber tigress is "[artemisdesc]";
the scent of the rubber tigress is "The rubber tigress smells faintly of rubber in a pleasant way.";
The weapon damage of rubber tigress is 5;
The level of rubber tigress is 3;
The Dexterity of rubber tigress is 16;
The summondesc of rubber tigress is "The rubber tigress gives a soft mew and nuzzles at your thigh as you call her over.  She purrs happily when you scritch her ears.";
The assault of rubber tigress is "[one of]The rubber tigress swipes at your foe with her paws, hard, plastic claws unsheathed.[or]Sneaking around behind your foe, Artemis pounces on them with an angry mrowl![or]The rubber tigress bites at your enemy with hardened plastic teeth.[or]Artemis bashes herself against your foe, partially deflates and wraps her rubbery hide around them, squeezing down hard and slowing them long enough for you to get in an additional quick strike.[or]Winding her tail around your foe's [if a random chance of 1 in 4 succeeds]arm[otherwise if a random chance of 1 in 3 succeeds]leg[otherwise if a random chance of 1 in 2 succeeds]wrist[otherwise]ankle[end if], the rubber tigress holds them long enough to [if a random chance of 1 in 2 succeeds]get in some slashes with sharp claws[otherwise]bite them[end if].[at random]";
templust is a number that varies.
tempthirst is a number that varies.


to say artemisdesc:
	if hp of rubber tigress < 11:
		say "     Artemis, as you've called the rubber tigress currently at your side, is built like a feral tiger make of smooth rubber, but with faintly feminine curves.  Her skin is a glossy orange with black stripes and flexes and moves as she pads quietly.  Malformed or incomplete for some reason, the rubber tigress cannot stand upright and lacks any gender of her own, unlike the rest of her kind[if hp of rubber tigress >= 6].  As you've noticed, she is capable of borrowing your body to give herself one for a little while[end if].  Despite her female curves and strangely sexy booty, she has nothing under her striped tail save for the crinkled hole of her anus.  Noticing you looking at her, she [one of]purrs happily[or]rolls onto her back in search of tummy rubs[or]nuzzles your thigh[or]lightly mouths your hand with her padded muzzle[or]gives a cute, slightly squeaking mew[at random].";
	otherwise:
		if lust of rubber tigress is 1 and thirst of rubber tigress is 0:
			say "     Artemis, as you've called the rubber tigress currently at your side, is built like a feral tiger make of smooth rubber, but with faintly feminine curves.  Her skin is a glossy orange with black stripes and flexes and moves as she pads quietly.  Malformed or incomplete for some reason, the rubber tigress cannot stand upright and was even lacking any gender until you changed that.  Under her tail now rests a puffy, rubbery cunt that is eager to be filled.  Noticing you looking at her, she [one of]purrs happily[or]rolls onto her back in search of tummy rubs[or]nuzzles your thigh[or]lightly mouths your hand with her padded muzzle[or]gives a cute, slightly squeaking mew[or]makes a show of slowly licking her pussy while eying your reaction[at random].";
		otherwise:
			say "***";
	if hp of rubber tigress < 6:
		say "     While your companion, the loyal rubber tigress can keep an ear perked for trouble if you're sleeping outside, keeping you safe from unwanted interruption.";
	otherwise:
		say "     While your companion, the loyal rubber tigress borrows your body while you rest.  This will keep you safe from interruption and put you in a sleepwalking state full of kinky dreams while you rest and enjoy the pleasure of the fun she's having as she gets her much-needed relief.";
	if hp of rubber tigress >= 10 and ( lust of rubber tigress is 0 or thirst of rubber tigress is 0 ):
		say "[line break]";
		say "     Having obtained the set of rubber toys for Artemis, you can now use them to modify her.  You have [if lust of rubber tigress is 0 and thirst of rubber tigress is 0]both the feline cock dildo and the vagina toy[otherwise if lust of rubber tigress is 0]the feline cock dildo[otherwise]the vagina toy[end if] available.  Shall you use [if lust of rubber tigress + thirst of rubber tigress is 0]them[otherwise]it[end if] to alter your rubber tigress pet?";
		say "[bracket]     Please note, such modifications are permanent (until you restore).  Also, at present, some scenes will continue to show the old results for the moment[close bracket].";
		if the player consents:
			attempttoclearhyper;
			artemismodding;


Section 3 - Sexxxings and Playtime

Chapter 0 - Everyturn Mechanics

lastArtemisplay is a number that varies.  lastArtemisplay is normally 255.
artemisstatefairrt is a truth state that varies.  artemisstatefairrt is normally false.

An everyturn rule:
	if companion of player is rubber tigress and skipturnblocker is 0:
		increase libido of player by 3;
		increase libido of rubber tigress by 5;
		if lastfuck of rubber tigress - turns >= 4 and ( cocks of player > 0 or cunts of player > 0 ):
			let diceroll be a random number from 80 to 300;			[lust check vs 300, min total over 80 required for success]
			let atStateFairbonus be 0;
			if location of player is State Fair and hp of rubber tigress > 7, now atStateFairbonus is 20;
			if diceroll < ( libido of player + libido of rubber tigress + atStateFairbonus):
				let artemissex be a list of numbers;
				let glompchance be ( lastArtemisglomp - turns ) / 4;
				if glompchance > 6, now glompchance is 6;				[# of additional chances]
				if hp of rubber tigress <= 10:
					if cocks of player > 0:
						if "More Anal" is listed in feats of player, add 1 to artemissex;	[anal]
						add 2 to artemissex;										[M-oral 1]
						add 3 to artemissex;										[M-oral 2]
						add 4 to artemissex;										[M-oral 3]
					if cunts of player > 0:
						add 5 to artemissex;										[F-oral 1]
						add 6 to artemissex;										[F-oral 2]
						add 7 to artemissex;										[F-oral 3]
					if hp of rubber tigress > 5:									[Engulf+masturbate]
						add 8 to artemissex;
						repeat with y running from 1 to glompchance:
							add 8 to artemissex;
					if hp of rubber tigress > 7:									[Engulf+sex]
						if location of player is State Fair, add { 9, 9, 9 } to artemissex;
						add { 9, 9, 9 } to artemissex;
						repeat with y running from 1 to glompchance:
							add 9 to artemissex;
				otherwise:			[modded]
					if lust of rubber tigress is 1:
						if cocks of player > 0:
							add 10 to artemissex;						[vagina]
							add 10 to artemissex;						[vagina]
					otherwise:
						if cocks of player > 0 and "More Anal" is listed in feats of player:
							add 1 to artemissex;						[anal]
					if thirst of rubber tigress is 1:
						add 11 to artemissex;							[***]
						add 11 to artemissex;							[***]
					if lust of rubber tigress is 2:
						add 12 to artemissex;							[***]
					otherwise if thirst of rubber tigress is 2:
						add 13 to artemissex;							[***]
					otherwise if a random chance of 1 in 3 succeeds:		[lower odds of oral]
						if cocks of player > 0:
							add 2 to artemissex;						[M-oral 1]
							add 3 to artemissex;						[M-oral 2]
							add 4 to artemissex;						[M-oral 3]
						if cunts of player > 0:
							add 5 to artemissex;						[F-oral 1]
							add 6 to artemissex;						[F-oral 2]
							add 7 to artemissex;						[F-oral 3]
					if thirst of rubber tigress is 3:
						add 14 to artemissex;							[***]
					repeat with y running from 1 to glompchance:
						add 8 to artemissex;							[Engulf+masturbate]
					add { 9, 9, 9 } to artemissex;						[Engulf+sex]
					if location of player is State Fair, add { 9, 9, 9 } to artemissex;
					repeat with y running from 1 to glompchance:
						add 9 to artemissex;
				sort artemissex in random order;
				if entry 1 of artemissex is 1, say "[artemissex1]";
				if entry 1 of artemissex is 2, say "[artemissex2]";
				if entry 1 of artemissex is 3, say "[artemissex3]";
				if entry 1 of artemissex is 4, say "[artemissex4]";
				if entry 1 of artemissex is 5, say "[artemissex5]";
				if entry 1 of artemissex is 6, say "[artemissex6]";
				if entry 1 of artemissex is 7, say "[artemissex7]";
				if entry 1 of artemissex is 8, say "[artemissex8]";
				if entry 1 of artemissex is 9, say "[artemissex9]";
				if entry 1 of artemissex is 10, say "[artemissex10]";
				if entry 1 of artemissex is 11, say "[artemissex11]";
				if entry 1 of artemissex is 12, say "[artemissex12]";
				if entry 1 of artemissex is 13, say "[artemissex13]";
				if entry 1 of artemissex is 14, say "[artemissex14]";
				now lastfuck of rubber tigress is turns;
		if lastArtemisplay - turns >= 4 and lastfuck of rubber tigress is not turns:
			if a random chance of 1 in 4 succeeds:
				if cup stack is owned:
					say "[one of][artemisplay1][or][artemisplay2][or][artemisplay3][or][artemisplay4][or][artemisplay5][or][artemisplay6][in random order]";
				otherwise:
					say "[one of][artemisplay5][or][artemisplay6][cycling]";
				now lastArtemisplay is turns;
	otherwise if rubber tigress is tamed:
		increase libido of rubber tigress by 5;
		if libido of rubber tigress > 100, now libido of rubber tigress is 100;


Chapter 1 - Sexxxings Scenes

to say artemissex1:	[anal]
	say "     Your rubber tigress companion snuggles up beside you as you take a short break.  She nuzzles at your hand, getting you to scritch her.  As the scritching continues, Artemis slinks slowly forward, letting your hand rub down her back and eventually across her ass.  As you scritch her bottom, she gives a needy mewl and wiggles her rear, tail raised with her sexy bottom on display.  It takes you only a moment to realize what your kitty wants.  Lacking a pussy of her own, she still has another hole you can fill.";
	say "     Moving in behind her, you press your stiffening member to her anus and easily spread open that rubbery ring.  She mewls in pleasure, her soft, smooth flesh squeezing down around your [cock size desc of player] [cock of player] shaft, milking at it as you fuck her.  You pound away at the needy kitty, doing your best to satisfy her with a good, long fucking before finally cumming, depositing your sticky seed inside the kitty's rubber insides[if cock width of player > 40], rounding her tummy and making her slosh as she moves for quite a while[otherwise if cock width of player > 20], making her slosh a little as she moves around for a while[end if][if lastArtemisglomp >= 8 or hp of rubber tigress < 6].  She stretches slowly and gives a big yawn, giving you a good view of her smooth, rubber maw[end if].";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is libido of rubber tigress / 3;

to say artemissex2:	[M-oral 1]
	say "     The rubber tigress nuzzles at your groin and mewls softly.  You reach down and scritch her head, knowing what your needy kitty's after.  You give your [cock size desc of player] [cock of player] cock a few strokes before letting her slide her slick muzzle down over it.  The smooth, rubbery mouth and tongue squeeze and rub at your shaft, coaxing your precum to flow.  This only serves to make her mouth slicker and you grip her neck, curling some of her rubbery hide around your fingers so you can pound into her muzzle.  This rough treatment seems fine by the kitty, who's more than happy to get some sexual fun.  Soon she's gulping down your hot seed as you cum down the feline's throat.  When you pull out, she licks her licks and rolls onto her back, rubbing her paws over her [if cock width of player > 40]bloated, [otherwise if cock width of player > 20]stuffed, [end if]cream-filled tummy";
	if lastArtemisglomp >= 8 or hp of rubber tigress < 6:
		if cock width of player > 20:
			say ".  After having been so well fed, she gives a sleepy yawn";
		otherwise:
			say ".  She turns to you and seems to smile as she opens her muzzle to show that she's swallowed it all down, but this turns into a sleepy yawn from your lazy tigress";
		if hp of player < ( maxhp of player * 3 ):
			say ".  You end up yawning in response and, given how you're feeling, that might not be such a bad idea";
		otherwise:
			say ".  As always seems to happen when someone yawns, you can't help but yawn as well";
	say ".";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;

to say artemissex3:	[M-oral 2]
	say "     The rubber tigress nuzzles at your leg, sniffing softly along it as she makes her way to your crotch.  She noses at it, licking her lips and mewling softly.  With a grin, you rub her head and offer your [cock size desc of player] [cock of player] cock to her.  She plunges her muzzle forwards, stuffing it into her mouth[if cock length of player > 9] and down her throat[end if].  She works her muzzle and tongue over your shaft with a lustful eagerness.  You pet her head, telling her what a good kitty is the feline gives you a fine blow job.  When you finally blow, she eagerly laps up every spurt of your cum she can get[if cock width of player > 40], stuffing her belly with your seed[otherwise if cock width of player > 20], feeding her your ample load[end if]";
	if lastArtemisglomp >= 8 or hp of rubber tigress < 6:
		if cock width of player > 20:
			say ".  After having been so well fed, she gives a sleepy yawn";
		otherwise:
			say ".  She turns to you and seems to smile as she opens her muzzle to show that she's swallowed it all down, but this turns into a sleepy yawn from your lazy tigress";
		if hp of player < ( maxhp of player * 3 ):
			say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
		otherwise:
			say ".  As always seems to happen when someone yawns, you can't help but yawn as well";
	say ".";

to say artemissex4:	[M-oral 3]
	say "     Suddenly feeling quite turned on, you notice your kitty's sexy muzzle and decide to get a little relief[if hp of rubber tigress < 11].  With your poor kitty's lack of gender, she's more than eager to get some sexual fun now that she's got you to please[otherwise].  Having you to thank for her new, gendered state, she's clearly eager for an opportunity to thank you... with mouth[end if].  She runs her tongue along your [cock size desc of player] [cock of player] cock.  Her tongue has rough, rubbery texture that's very pleasing.  Soon enough she has you very excited and leaking precum.  She slurps over your balls before taking your shaft into her muzzle and suckling at it.  You moan in pleasure, rub her ears and release your hot seed down her throat[if cock width of player > 40], rounding her empty belly with your seed[otherwise if cock width of player > 20], filling her empty belly with your seed[end if]";
	if lastArtemisglomp >= 8 or hp of rubber tigress < 6:
		if cock width of player > 20:
			say ".  After having been so well fed, she gives a sleepy yawn";
		otherwise:
			say ".  She turns to you and seems to smile as she opens her muzzle to show that she's swallowed it all down, but this turns into a sleepy yawn from your lazy tigress";
		if hp of player < ( maxhp of player * 3 ):
			say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
		otherwise:
			say ".  As always seems to happen when someone yawns, you can't help but yawn as well";
	say ".";

to say artemissex5:	[F-oral 1]
	say "     The rubber tigress nuzzles at your groin and mewls softly, licking her lips.  Knowing what she's after, you find a spot to sit and spread your legs, giving her access to your juicy pussy.  As her rough, rubbery tongue licks across your wet folds of your [cunt size desc of player] snatch, you rub her head.  Reaching back a little, you grip her neck and curl some of her rubbery hide around your fingers so you can pull firmly to your pussy.  This rough treatment seems fine by the kitty, who's more than happy to get some sexual fun.  She dives her tongue into you, working it inside you to lap up your juices as you cum a few times before finally letting her go.";
	if lastArtemisglomp >= 8 or hp of rubber tigress < 6:
		say "     After having gotten her tasty treat, your lazy tigress gives a big yawn that stretches her rubbery muzzle wide";
		if hp of player < ( maxhp of player * 3 ):
			say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea.";
		otherwise:
			say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	otherwise:
		say "     After having gotten her tasty treat, your lovable tigress rolls onto her side and purrs as she grooms her face clean.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;

to say artemissex6:	[F-oral 2]
	say "     The rubber tigress nuzzles at your leg, sniffing softly along it as she makes her way to your crotch.  She noses at it, licking her lips and mewling softly.  With a grin, you rub her head and move onto all fours, waving your ass at her face.  With your juicy cunt on display, Artemis mrowls lustfully and dives in, licking over [if anallevel is 3]your pucker a few times before shifting down to [end if]your wet folds and lapping up your female cum as you get off several times to your eager pet's licking tongue.";
	if lastArtemisglomp >= 8 or hp of rubber tigress < 6:
		say "     After having gotten her tasty treat, your lazy tigress gives a long yawn as she stretches";
		if hp of player < ( maxhp of player * 3 ):
			say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
		otherwise:
			say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	otherwise:
		say "     After having gotten her tasty treat, your lovable tigress stretches out and purrs as she grooms her face clean.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;

to say artemissex7:	[F-oral 3]
	say "     Suddenly feeling quite hot and wet between your legs, you notice your kitty's sexy muzzle and decide to get a little relief.  Propping one leg up, you spread your pussy and call open your other pussy to deal with it.  She's more than eager to get some sexual fun and bounds over to you, pressing her muzzle to your snatch.  She runs her tongue along your dripping folds and teases your clit with the rough, rubbery texture of her tongue, exciting you greatly.  Soon enough she has you very cumming, your juices running over the kitty's muzzle.  She laps up as much as he can get and keeps it up, getting you off a few more times before you're feeling satisfied for the moment.";
	if lastArtemisglomp >= 8 or hp of rubber tigress < 6:
		say "     After having gotten her tasty treat, your lazy tigress gives a wide yawn that gives a good view of her rubbery maw and throat all slick with your juices";
		if hp of player < ( maxhp of player * 3 ):
			say ".  You end up yawning in response and, given how you're feeling, a nap might not be such a bad idea";
		otherwise:
			say ".  As always seems to happen when someone yawns, you can't help but yawn as well.";
	otherwise:
		say "     After having gotten her tasty treat, your lovable tigress stretches her muzzle wide to give you a good view of her rubbery maw and throat all slick with your juices before she sits down and sets to grooming her face clean of the rest.";
	now libido of player is ( 2 * libido of player ) / 3;
	now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;


to say artemissex8:	[Engulf and masturbate]
	if location of player is State Fair and hp of rubber tigress > 7 and ( artemisstatefairrt is false or a random chance of 2 in 3 succeeds ):
		say "[artemissex9]";	[Wants sex at State Fair most of the time]
	if a random chance of 1 in 3 succeeds:
		say "     Deciding to take a break, you put down your pack and move to take a seat.  But as you're sitting down, you find your seat higher and more padded than you expected.  Artemis, having jumped into your seat ahead of you lets her body soften and sag before starting to flow up over you.  You [if cocks of player > 0]chuckle[otherwise]giggle[end if] as the sneaky kitty's managed to catch you.  You try to struggle, but her rubbery coating continues to spread over you[if scalevalue of player > 3].  It takes some time and extra stretching on her part to be able to cover your [body size of player], [bodydesc of player] body, but she perseveres in her plan to hijack you for some fun[end if].  The feel of her flowing rubber [if cocks of player > 0 and cunts of player > 0]spreading over your dual genders is particularly pleasing, as always.  The squeezing around your maleness and the feel of it flowing past your folds and into you[otherwise if cocks of player > 1]spreading over your throbbing cocks is particularly pleasing, as always.  The squeezing around your manhood and rubbing you all over[otherwise if cocks of player is 1]spreading over your throbbing cock is particularly pleasing, as always.  The squeezing around your manhood and rubbing you all over[otherwise if cunts of player > 1]spreading across your wet folds is particularly pleasing, as always.  And the feel of her then pushing into you to flow into your cunts[otherwise if cunts of player is 1]spreading across your wet folds is particularly pleasing, as always.  And the feel of her then pushing into you to flow into your cunt[end if] is such a perverse delight[if anallevel > 1].  And more kinky pleasure comes when more flowing rubber presses at your tight pucker, spreading you open with ease so she can flow into your bowels and coat them as well[end if].";
		say "     Once she's at the point of finishing up with your head, you stop your pointless struggles and open your mouth wide, inviting her to finish sealing you inside her.  The feel of her flowing into your mouth and throat is a little disconcerting, but you've grown so close to your lovable tigress that you trust her doing it.  With you all sealed up and drifting off into the sleepwalking state, her head reforms and your body, as needed, shifts shape a little to let you both become a [if cocks of player > 0 and cunts of player is 0]girlish tiger[otherwise]sexy tigress[end if][if bodyname of player is listed in infections of taurlist] taur[end if] made of rubber.  And finding herself already in a nice seat, she decides to enjoy the position by having a little fun.";
	otherwise:
		say "     Catching sight of the glancing looks the tigress is giving you and feeling that it might be fun to snuggle up extra-close to your kitty again, you drop your gear and leap atop her, running your [if bodyname of player is listed in infections of Felinelist]paws[otherwise]hands[end if] across her body, pulling her close[if cocks of player > 1].  You grind your stiff cocks against her[otherwise if cocks of player is 1].  You grind your stiff cock against her[otherwise].  You rub your crotch against her, pressing your pussy against her[end if].  She squirms a little at first, but you soon feel her rubbery skin spreading over you.  With your loins pressed right against her, she starts with them.  Flowing latex spreads out from there over your hips and chest as you can feel the stuff [if cocks of player > 0 and cunts of player > 1]wrapping around your stiff manhood and sealing over your pussies before pushing further into you, coating and sealing your cunts in a protective layer of herself[otherwise if cocks of player > 0 and cunts of player is 1]wrapping around your stiff manhood and sealing over your pussy before pushing further into you, coating and sealing your cunt in a protective layer of herself[otherwise if cocks of player > 1]wrapping around your stiff cocks and coating them in a snug, squeezing layer of herself[otherwise if cocks of player is 1]wrapping around your stiff cock and coating it in a snug, squeezing layer of herself[otherwise if cunts of player > 1]encapsulating your juicy folds before pushing further into you, coating and sealing your cunts in a protective layer of herself[otherwise if cunts of player is 1]encapsulating your juicy folds before pushing further into you, coating and sealing your cunt in a protective layer of herself[end if][if anallevel > 1].  You can't help but moan as a pushing sensation at your anus leads it to opening and allowing more of her to flow into you and coat your back passage as well in herself[end if].  It is all so very arousing to be giving so much of yourself to your loyal tigress pet.";
		say "     As she's finishing up there, you realize that she's continued on and has most of you covered.  She's left your arms uncovered for the moment, leaving you free to [one of]spread around the flowing rubber over the rest of you, even pulling it up over your head[or]rub over your latex-coated body, feeling yourself (and thereby her) up as she continues to engulf you, spreading onwards to your head[or]push your arms into the flowing orange and black rubber and spreading it over them while she's covering your head[or]wait for her to completely cover your head and form her feline face, letting you stroke and caress it while she finishes covering you[cycling].  While there is an uncomfortable moment while she's flowing down your throat, you trust the rubber kitty and accept her taking you over fully like a good puppet body for her.  With you all sealed up and drifting off into the sleepwalking state, the last few shifts and changes happen, reforming your body as needed so you both can become a [if cocks of player > 0 and cunts of player is 0]girlish tiger[otherwise]sexy tigress[end if][if bodyname of player is listed in infections of taurlist] taur[end if] made of rubber.  Clearly pleased with herself and her new form, she quickly finds a comfy spot to settle down and enjoy it.";
	if a random chance of 1 in 1 succeeds:				[more variations to come]
		if cocks of player > 0 and cunts of player > 0:
			say "     Running her smooth hands over her newly acquired body, she lets them roam over herself.  While directionless at first, they soon start to drift down to her [cock size desc of player] [if cocks of player > 1]cocks, wrapping a paw around one of them[otherwise]cock, wrapping a paw around it[end if] so she can enjoy your borrowed manhood.  The [cock of player] phallus throbs in her paw, dribbling precum as she plays with herself.  Slipping her other paw around the base of it, she finds her [if cunts of player > 1]wet pussies and starts playing with them[otherwise]wet pussy and starts playing with it[end if], mewling in pleasure as she drills a few fingers into herself.  She goes at it for quite a while, relishing this quick opportunity to gain a gender and enjoy some much needed sexual release through you[one of].  Soon enough, she has you cumming hard, splattering your [cum load size of player] load across herself, and you drift off into a fuller slumber[or].  Leaning forward with the flexible ease of a feline creature made of rubber, she stuffs your [cock size desc of player] shaft into her muzzle, licking and sucking at it until you cum, shooting your [cum load size of player] load into her mouth and down into your belly.  You drift off into a fully slumber after this[at random], only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
		otherwise if cocks of player > 0:
			say "     Running her smooth hands over her newly acquired body, she lets them roam over herself.  While directionless at first, they soon start to drift down to her [cock size desc of player] [if cocks of player > 1]cocks, wrapping a paw around one of them[otherwise]cock, wrapping a paw around it[end if] so she can enjoy your borrowed manhood.  The [cock of player] phallus throbs in her paw, dribbling precum as she plays with herself[if anallevel > 1 and a random chance of anallevel in 5 succeeds].  She even slips a paw to her rear, rubbing at her back door before pushing a few digits into the smooth, easily stretchable hole.  Finding your prostate a particularly enjoyable spot, the pays particular attention to it while stroking her cock[end if].  She goes at it for quite a while, relishing this quick opportunity to gain a gender and enjoy some much needed sexual release through you[one of].  Soon enough, she has you cumming hard, splattering your [cum load size of player] load across herself, and you drift off into a fuller slumber[or].  Leaning forward with the flexible ease of a feline creature made of rubber, she stuffs your [cock size desc of player] shaft into her muzzle, licking and sucking at it until you cum, shooting your [cum load size of player] load into her mouth and down into your belly.  You drift off into a fully slumber after this[at random], only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
		otherwise if cunts of player > 0:
			say "     Running her smooth hands over her newly acquired body, she lets them roam over herself.  While directionless at first, they soon start to drift down to her [if cunts of player > 1]wet pussies and starts playing with them[otherwise]wet pussy and starts playing with it[end if], mewling in pleasure as she drills a few fingers into herself.  Tries a few different methods, unable to quite decide which is the best all while fueling your excitement within the dreamy haze you're in.  She goes at it for quite a while, relishing this quick opportunity to gain a gender and enjoy some much needed sexual release through you[one of].  Soon enough, she has you cumming hard, soaking her smooth skin with your juices as she pumps wildly into her wanton [if cunts of player > 1]holes[otherwise]hole[end if][or].  Leaning forward with the flexible ease of a feline creature made of rubber, she presses her muzzle to her [if cunts of player > 1]pussies[otherwise]pussy[end if] and starts lapping over and into those rubbery folds, soon sending you both over the edge to a wet and juicy climax[at random].  Stretching out, she purrs happily while you drift off fully into slumber, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
	now libido of rubber tigress is libido of rubber tigress / 3;
	now libido of player is ( libido of player * 3 ) / 4;
	now lastfuck of rubber tigress is turns;
	now lastArtemisglomp is turns;


to say artemissex9:	[Engulf and sex]
	let stfairdone be 0;
	if location of player is State Fair:
		let stfairdone be 1;
		if a random chance of 1 in 3 succeeds or artemisstatefairrt is false:
			say "     With the sights and sounds of the active midway going on, it's hard to find a moment to just stop and think about what you need to do next.  After ducking [one of]into a deserted booth[or]behind a closed attraction[or]between some stands[at random], you take a moment to get your bearings.  As you're doing this, Artemis nuzzles around your legs, purring loudly.  Familiar with her antics, you're pretty sure you know what she wants and reach down to give her a big hug and some scritches.  Even as she's starting to grow soft and her flowing rubber starts to spread over you, you spot another of the fair's rubber tigresses peeking around the corner at you both.";
			if artemisstatefairrt is false:
				say "     Your first reaction to spotting the nearby creature is to try to pull away from Artemis so you can prepare for what may be a fight, but the tigress doesn't release you and only purrs and continues to flow over you";
			otherwise:
				say "     While your first response is to get ready to fight, you relax and instead let Artemis continue to engulf you, even pressing your hands into the flowing rubber while smiling at the buxom tigress watching you both";
			say ".  The buxom rubber tigress seems quite [one of]startled but[or]intrigued and[or]amazed but[or]nervous but[at random] neither does move towards nor away from the strange events she's witnessing.  As Artemis is spreading spreading further over you, you can feel her flowing over your nethers, exposing their rubber-coated state to the feline voyeur.  Not even quite aware yet of what she's doing, the feline has begun to finger herself as she witnesses the ongoing transformation and merging of the four-footed tigress with you.  You can't help but moan, a little louder than usual for added show as you feel the flowing tigress [if cocks of player > 0 and cunts of player > 0]spreading over your dual genders and pushing into you to flow into your cunt[sfn][otherwise if cocks of player > 0]spreading over your throbbing cock[smn][otherwise if cunts of player > 0]spreading across your wet folds and then pushing into you to flow into your cunt[sfn][end if][if anallevel > 1].  And another groan of kinky pleasure comes when more flowing rubber presses at your back entrance, pushing it open with ease so she can coat your inner walls as well[end if].";
			say "    As your companion is sealing up over your head, she pulls herself upright in her new, anthropomorphic form and gives her tail a swish, making a come hither motion to the other tigress.  [one of]Intrigued[or]Nervous[or]Cautious[or]Excited[at random], she steps slowly closer, her eyes running over your combined body and the once neuter feline's new gender";
		otherwise:
			say "     Noticing Artemis's rather insistent nuzzling and purring for affection, you quickly relent with a smile and a scritch on her head.  She gives a squeaky mrowl and heads off with you to a secluded spot where you both can get quite a bit closer.  Putting your arms around your loving pet, you give her muzzle a kiss.  Soon, the kiss grows slick as her lips grow soft and start to flow over yours.  Her tongue presses into your mouth, sliding around inside it briefly before expanding to fill your mouth and flow down your throat.  Opening your eyes momentarily during this odd kiss, you can see her lovely eyes moving closer and closer as her face presses up against yours before flowing over it.";
			say "     Even as your head is being engulfed and covered in a mask of rubber, your hands pull at the increasingly flowing tigress, spreading smears of her over your body.  One particularly large glob you pull onto your loins and rub it firmly over yourself, [if cocks of player > 1 and cunts of player > 0]coating your dual genders, making sure your [cock size desc of player] cocks are thoroughly coated before stuffing more of her into your juicy cunt[sfn][otherwise if cocks of player is 1 and cunts of player > 0]coating your dual genders and making sure your [cock size desc of player] cock is thoroughly coated before stuffing more of her into your juicy cunt[sfn][otherwise if cocks of player > 1]making sure your [cock size desc of player] cocks are thoroughly coated[otherwise if cocks of player is 1]making sure your [cock size desc of player] cock is thoroughly coated[otherwise if cunts of player > 0]stuffing more of her into your juicy cunt[sfn][end if][if anallevel > 1].  After giving your gender over to her, you reach back between your legs and stuff a pair of fingers into your asshole, fingering yourself eagerly as you push more and more tigress goo into yourself[end if].  Eventually, your arms and hands become too coated themselves for you to maintain control of them, so the tigress takes over, playing with your combined body even as she spreads over the last of your exposed skin.";
			say "     With you nice and sealed up, she wastes no time quickly goes off in search of some companionship.  She struts around with confidence in her new [if player is herm]herm[otherwise if player is male]male[otherwise if player is female]female[end if] form, sleepwalking your body with considerable grace after all her practice.  And while she draws the attention of a few of the other critters around, she passes them by until she locates one of the feline tigresses.  There is only the briefest moment of hesitation before Artemis gives a lustful mrowl and strides towards the other feline";
		say "[artemissf_sex]";
		say "     With the felines quite satisfied by their encounter, they part ways, Artemis heading back to get your gear.  Tired after the encounter, she gives a very wide yawn of her rubbery maw and settles down for a cat nap.  Stretching out, she purrs happily while you drift off fully into slumber, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
		artemisinfect;
	otherwise if lastfuck of rubber tigress - turns > 24:
		say "     When you pause to get your bearings at a quiet point, Artemis pads up to you and sits down in front of you.  She gives a big yawn, to which you smile and pat her head.  She looks a little cross at the condescending patting and opens her muzzle even wider, rubbery maw stretching.  She points at her mouth with one hardened claw, but you just chuckle.  Reaching down to pat her head, you promise her to play with her later maybe.";
		say "     Not liking this answer, she pounces towards your outstretched arm, engulfing it in her slick mouth in one big gulp.  Caught by surprise, you stumble back, resulting the big kitty land atop you.  She quickly starts to deflate and begins to flow over you.  Surprised by the feline's aggressive demands for the use of your [bodydesc of player] body, it seems its been too long since you've allowed her some release and she's tired of waiting.  You consider trying struggle, but already having one arm fully trapped in her, it's futile.  You instead press at the back of her head, pushing her muzzle to your lips in a deep kiss that grows deeper still as her rubbery flesh flows over your head and down your throat.";
		say "     As you're left looking out through Artemis's orange tinted eyes, you can see her striped hide as it moves to stretch over your crotch.  You moan softly inside her as you feel her sliding over your loins.  The feel of her flowing rubber [if cocks of player > 0 and cunts of player > 0]spreading over your dual genders is particularly pleasing, as always.  The squeezing around your maleness and the feel of it flowing past your folds and into you[otherwise if cocks of player > 1]spreading over your throbbing cocks is particularly pleasing, as always.  The squeezing around your manhood and rubbing you all over[otherwise if cocks of player is 1]spreading over your throbbing cock is particularly pleasing, as always.  The squeezing around your manhood and rubbing you all over[otherwise if cunts of player > 1]spreading across your wet folds is particularly pleasing, as always.  And the feel of her then pushing into you to flow into your cunts[otherwise if cunts of player is 1]spreading across your wet folds is particularly pleasing, as always.  And the feel of her then pushing into you to flow into your cunt[end if] is such a perverse delight[if anallevel > 1].  And more kinky pleasure comes when more flowing rubber presses at your tight pucker, spreading you open with ease so she can flow into your bowels and coat them as well[end if].";
		say "     From that point on, it's simply a process of her finishing her way down your legs which, now that she's got the rest of you, she takes her time with.  Even as you feel the somnambulistic dreaminess overcoming you, she brings her arms between her legs and starts to play with herself, masturbating you both even as she's finishing up engulfing you to be her willing meat puppet for some much delayed fun.  Once the last few inches are covered, she wiggles and toes and grins, getting to her feet and heading out in search of someone to play with.";
	otherwise:
		say "     Noticing your loyal tigress's longing looks, you decide it might be fun to snuggle up extra-close to your kitty again so she can have some fun.  Putting your gear down, you kneal down and welcome her into your arms.  At first you only stroke and pet her, but soon you're pressing your [if bodyname of player is listed in infections of Felinelist]paws[otherwise]hands[end if] against her giving hide firmly even as her own paws grow soft and cling to your [skinname of player] skin[if cocks of player > 1].  You grind your stiff cocks against her[otherwise if cocks of player is 1].  You grind your stiff cock against her[otherwise].  You rub your crotch against her, pressing your pussy against her[end if].";
		say "     With you pressing so eagerly against her, you soon feel her rubbery skin spreading over you as her melting rubber clings to your loins.  Flowing latex spreads out from there over your hips and chest as you can feel the stuff [if cocks of player > 0 and cunts of player > 1]wrapping around your stiff manhood and sealing over your pussies before pushing further into you, coating and sealing your cunts in a protective layer of herself[otherwise if cocks of player > 0 and cunts of player is 1]wrapping around your stiff manhood and sealing over your pussy before pushing further into you, coating and sealing your cunt in a protective layer of herself[otherwise if cocks of player > 1]wrapping around your stiff cocks and coating them in a snug, squeezing layer of herself[otherwise if cocks of player is 1]wrapping around your stiff cock and coating it in a snug, squeezing layer of herself[otherwise if cunts of player > 1]encapsulating your juicy folds before pushing further into you, coating and sealing your cunts in a protective layer of herself[otherwise if cunts of player is 1]encapsulating your juicy folds before pushing further into you, coating and sealing your cunt in a protective layer of herself[end if][if anallevel > 1].  You can't help but moan as a pushing sensation at your anus leads it to opening and allowing more of her to flow into you and coat your back passage as well in herself[end if].  It is all so very arousing to be giving so much of yourself to your amazing tigress pet.";
		if a random chance of 1 in 3 succeeds:
			say "     After having covered the rest of your [body size of player], [bodydesc of player] body, all that remains is your head.  With her head still largely intact, but clearly softening in preparation of what's to come, she gives you a playful grin.  She then opens her maw very wide, which gives you a close-up view of it's gooey interior of flowing rubber moments before her head plunges over yours in one sticky bite.  Your vision is a blur of opaque orange while her liquid latex flows into your mouth and down your throat.  It is a few more seconds before she manages to flow her face back around to the front, settling into place, leaving you with orange-tinted vision as you drift off into the sleepwalking state as her new body.  After a quick stretch and a playful grope that you share sensation of, she stashes your gear and heads off in search of someone to play with.";
		otherwise:
			say "     After having covered the rest of your [body size of player], [bodydesc of player] body, all that remains is your head.  With her head still largely intact, but clearly softening in preparation of what's to come, she gives you a tender smile and presses his flowing muzzle to your lips in a kiss.  As you moan into your kiss, her gooey latex tongue presses into your mouth, playing with your tongue briefly before it continues to stretch out and flow down your throat, coating your insides.  As her features start to settle into place, you start to drift off into the orange-tinted dreamscape that leaves your body hers to control.  After a quick stretch and a playful grope that you share sensation of, she stashes your gear and heads off in search of someone to play with.";
	if a random chance of 1 in 1 succeeds and stfairdone is not 1:				[more variations to come]
		say "     Having settled you inside her and shifted herself into that sexy feline shape that will surely draw the attention of the lustful mutants around, she takes your borrowed body out into the city again.  Moving with a fair amount of grace now, the kitty struts around, putting her body on display in a search for a playmate.  Being such a sexy sight, the smooth tigress doesn't have to wait long before managing to attract a horny ";
		if "Less Anal" is not listed in feats of player and ( cocks of player > 0 and cunts of player is 0 ) and ( a random chance of anallevel in 12 succeeds or ( "MPreg" is listed in feats of player and a random chance of 1 in 12 succeeds ) or ( "Submissive" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and guy is not banned:
			say "[randombodypart]";		[yields male 'bodyselector']
			if bodyselector is "tiger":
				while bodyselector is "tiger":
					say "[randombodypart]";
			if a random chance of 3 in 5 succeeds or ( "Submissive" is listed in feats of player and a random chance of 1 in 5 succeeds ):		[M/M bottom]
				say "male [bodyselector] enticed by the currently male [']tiger['] and [']his['] sultry moves.  It seems Artemis would prefer to go for some gay sex with your borrowed body this time to broaden her enjoyment.  After [one of]some mutual stroking with his current partner[or]licking and sucking his cock to get him ready[or][if anallevel is 3]bending over and getting rimmed by his current partner[otherwise]kissing and making out for a while[end if][as decreasingly likely outcomes], he ends up [one of]on all fours[or]bent over a bench[or]spread across the hood of a car[or]pinned against a wall[at random] with the [bodyselector] forcing his cock into her yielding asshole (and thereby into you).";
				say "     He moans and mrowls at this treatment, squirming his hips into those thrusts and clenching his stuffed hole around the pulsing meat, your body responding to his lustful desires.  He pounds into the horny kitty, sending waves of pleasure through you both.  Artemis, having learned a few tricks, wiggles his rear and rocks back into the thrusts to get even more pleasure from his current playmate.  They go at it for a while, but soon enough the [bodyselector] is cumming hard into him, pumping his creamy load into the slutty feline where it is drawn into a bubble of rubber inside you.";
				say "     Sated, the male pulls out and [one of]gives the tiger a swat on the ass[or]has the tiger lick him clean[or]licks the tiger's leaking, creamy hole[at random] before they part.  The tiger stumbles back to your gear and finds a spot to stretch out for a quick nap.  You drift off fully into slumber as well, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
			otherwise:		[M/M top]
				say "male [bodyselector] enticed by the currently male [']tiger['] and [']his['] sultry moves.  It seems Artemis would prefer to go for some gay sex with your borrowed body this time to broaden her enjoyment.  After [one of]some mutual stroking with his current partner[or]getting his current partner to lick and suck your shared cock[or][if anallevel is 3]bending his current partner over and rimming his asshole[otherwise]kissing and making out for a while[end if][as decreasingly likely outcomes], the rubber kitty has the [bodyselector] [one of]on the ground beneath him[or]pressed to a wall[or]bent over some rubble[or]spread across the hood of a car[at random].";
				say "     Your [cock of player] shaft is driven into the other male and your body is made to fuck the tiger's current playmate.  Artemis, having learned a few tricks, changes thrusts on occasion to draw even more pleasure out of stuffing the tight ass he's drilling into with his throbbing meat.  They go at it for a while before the tiger reaches his limit and drives into the [bodyselector] hard, releasing your [cum load size of player] load into him with a mrowl.  As he's emptying his balls, the horny feline reaches around and strokes the other male's cock, getting him to blow his load as well.";
				say "     Satisfied for now, the two part with the tiger sleepwalking you back to your gear and finds a spot to stretch out for a quick nap.  You drift off fully into slumber as well, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
		otherwise if ( cocks of player > 0 and cunts of player is 0 ) or ( cocks of player > 0 and cunts of player > 0 and a random chance of 1 in 2 succeeds ):		[M/F bottom]
			say "[randomdesc2]";		[yields female 'slutname']
			if slutname is "tigress":
				while slutname is "tigress":
					say "[randomdesc2]";
			say "female [slutname] enticed by the sultry [if player is herm]herm[otherwise]male[end if].  After some lustful groping and fondling, they are both quite worked up and the rubber kitty has the [slutname] [one of]on the ground beneath her[or]pressed to a wall[or]bent over some rubble[or]spread across the hood of a car[at random].";
			say "     Your [cock of player] shaft is driven into the horny female and your body is made to fuck the tigress's current playmate.  Artemis, having learned a few tricks, changes thrusts on occasion to draw even more pleasure out of stuffing the juicy cunt around her throbbing meat.  They go at it for a while before the tigress reaches her limit and drives into the [slutname] hard, releasing your [cum load size of player] load into her with a mrowl.  Having emptied her balls, she gives her lover a slow lick and pulls out.  Satisfied for now, the two part with the tigress sleepwalking you back to your gear and finds a spot to stretch out for a quick nap.  You drift off fully into slumber as well, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
		otherwise if cunts of player > 0:		[M/F top]
			say "[randombodypart]";		[yields male 'bodyselector']
			say "male [bodyselector] enticed by the sultry [if player is herm]herm[otherwise]female[end if].  Both eager for the main event, the foreplay is brief and ends with the tigress [one of]on all fours[or]bent over a bench[or]spread across the hood of a car[or]pinned against a wall[at random] with the male driving his cock into her hot, needy cunt (and thereby into you).";
			say "     She moans and mrowls at this treatment, squirming her hips into his thrusts and clenching her needy cunt around his pulsing meat, your body responding to her lustful desires.  He pounds into the horny kitty, sending waves of pleasure through you both.  Artemis, having learned a few tricks, wiggles her rear and rocks back into the thrusts to get even more pleasure from her current playmate.  They go at it for a while, but soon enough the [bodyselector] is cumming hard into her, pumping his creamy load into the slutty feline where it is drawn into [if gestation of child > 0 or larvaegg is 2]a warm bubble of rubber inside you[otherwise]your rubber-coated womb[end if].  Sated, the male pulls out and the tigress stumbles back to your gear and finds a spot to stretch out for a quick nap.  You drift off fully into slumber as well, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
	now libido of rubber tigress is libido of rubber tigress / 3;
	now libido of player is ( libido of player * 2 ) / 3;
	now lastfuck of rubber tigress is turns;
	now lastArtemisglomp is turns;


to say artemissex10:	[vagina]
	if cocks of player > 0 and a random chance of 2 in 3 succeeds:
		say "     [one of]Feeling rather turned on by the rubbery scent of feline arousal, you find your attention drifting to Artemis's juicy cunt.  After eying those beautiful folds of hers for a while as she pads along ahead of you, you decide to give you both some relief.  Stepping closer, you grab her ass with one hand and run your fingertips across her pussy with the other.  This draws a delightful mewl of arousal from her.  She spreads her legs, raising her ass and offering her juicy hole to your [cock size desc of player] [cock of player] cock[or]The rubber tigress stretches her rubbery body, raising her tail and showing off new pussy while she's at it.  She then turns and nuzzles at your groin, mewling softly.  You reach down and scritch her head, knowing quite well what your needy kitty's after.  You give your [cock size desc of player] [cock of player] cock a few strokes before grabbing her ass and moving into position[or]Your rubber tigress companion snuggles up beside you as you take a short break.  She nuzzles at your hand, getting you to scritch her.  As the scritching continues, Artemis slinks slowly forward, letting your hand rub down her back and eventually across her ass.  As you scritch her bottom, she gives a needy mewl and wiggles her rear, tail raised with her sexy bottom on display.  It takes you only a moment to realize what your kitty wants and you are quite eager to give it to her.  Moving in, you rub your [cock size desc of player] [cock of player] cock across her striped rear before getting lined up with her juicy hole[at random].  With your throbbing manhood lined up, you slowly sink into your modified kitty.  This sends fresh dribbles of her lubricating juices running down her legs as your shaft fills her sopping, needy pussy.";
		say "     [one of]Putting your arms around the kitty's padded body, you hug her yielding form as you pound away at her.  Her designer pussy, with its stimulating inner walls and slick juices, is a delight to fuck.  The toy you used to modify her probably would have been quite enjoyable on its own, but as a living, squeezing cunt now that it is a part of Artemis, it is wonderful, providing sexual ecstasy to you both[or]Running your hands along the kitty's smooth body, you stroke and pet her.  She turns her head to look back at you, a happy, feline smile on her muzzle as you pound away at her.  Her pussy quivers and squeezes around your cock, adjusted in size to be a perfect fit for you and turning you on all the more for knowing you gave it to her[or]Gripping her ass firmly in your hands, you knead at her yielding, rubber backside as you pound away at her.  She stretches her flexible body forwards, mewling softly and kneading her paws in response, clearly enjoying the much-needed fucking you're giving her new, wanton pussy[at random].  With the rubbery scent of feline arousal strong in the air, you [one of]screw[or]fuck[or]bang away at[at random] your horny companion until you can take no more.  With a loud groan, you drive deep into her, stuffing yourself fully into her dripping snatch[if cock length of player > 48], bulging her stretchable form around your [cock size desc of player] man meat as you do,[end if] and let loose with your [cum load size of player] load.  She mrowls and cums as well, lube-like juices running down her thighs as her sex toy pussy milks away at your pulsing rod until you're both left sated.";
		now libido of player is ( 2 * libido of player ) / 3;
		now libido of rubber tigress is libido of rubber tigress / 4;
	otherwise:
		say "     [one of]Noticing the rubbery scent of feline arousal in the air, your eyes turn to to Artemis's juicy cunt.  Looking at those beautiful folds of hers, you decide to have some quick fun with her and give her some relief.  Stepping closer, you grab her ass with one hand and run your fingertips across her pussy with the other.  This draws a delightful mewl of arousal from her and you sink a pair of fingers into her.  She spreads her legs, raising her ass and offering her juicy hole to you as you kneal behind her and bring your tongue in to lick it[or]The rubber tigress stretches her rubbery body, raising her tail and showing off new pussy while she's at it.  She gives a soft mewl of need and you can see her wet juices running down her thighs.  Knowing she needs some attention at to her sex toy pussy, you stuff a pair of fingers into it and rub along her sensitive inner walls.  After a few more thrusts of your fingers to get her really worked up, you move in closer and run your tongue across her juicy hole[or]Your rubber tigress companion snuggles up beside you as you take a short break.  She nuzzles at your hand, getting you to scritch her.  As the scritching continues, Artemis slinks slowly forward, letting your hand rub down her back and eventually across her ass.  As you scritch her bottom, she gives a needy mewl and wiggles her rear, tail raised with her dripping pussy on display.  Licking your lips at the sight, you realize what your kitty wants and you are quite eager to give it to her.  Letting your fingers drift to her quivering pussy, you sink two into her cunt and give her a quick fingerfuck before bringing your mouth it to lick up those overflowing juices[at random].  Your tongue plays across her folds, licking up her lube-like fluids.  Despite the faintly rubbery taste, or perhaps even because of that quality, you find her taste quite arousing and you work your tongue and fingers hard to get more.  When you [one of]nibble softly on her pussy lips[or]rub firmly on her clit[or]push your tongue deep inside her wanton hole[at random], she mrowls and cums, soaking her crotch and your face as her cunt quivers and squeezes down around your fingers in orgasm.  You lick and finger her through her climax until she's left panting and mewling softly in a haze of pleasure on the ground.";
		now libido of player is ( 2 * libido of player ) / 3;
		now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;


to say artemissex11:	[cock]
	if (cunts of player > 0 and a random chance of 2 in 3 succeeds) or (cunts of player is 0 and a random chance of anallevel in 5 succeeds):
		say "     [one of]Feeling rather turned on by the glimpses you're getting of Artemis's cock poking from its rubbery sheath, you find your attention drifting back to it.  After eying those pleasure-inducing barbs for a while as she pads along with you, you decide to give you both some relief.  Finding an appropriate spot, you move ahead of her and drop onto all fours, raising your ass and waving it temptingly at her.  This draws a mrowl of interest from her and soon has her moving in to mount you[or]The rubber tigress mrowls and winds her way around you, rubbing against you like an affectionate feline.  You spot her latex cock sliding free of its rubbery sheath just before she rubs a paw across your ass.  You reach down and scritch her head, knowing quite well what your needy kitty's after.  You lower yourself onto all fours and offer up your rear to her, letting her move in and mount you[or]Your rubber tigress companion snuggles up beside you as you take a short break.  She nuzzles at your hand, getting you to scritch her.  As the scritching continues, Artemis rolls over, letting your hand rub across her tummy and eventually across her sheath.  As you rub her stiffening manhood, she gives a needy mewl and thrusts into your hand.  It takes you only a moment to realize what your kitty wants and you are quite eager to give it to her.  Moving onto all fours, you steady yourself as the feline eagerly moves atop you[at random].  After getting her dripping rod lined up, she slowly sinks herself into your [if cunts of player > 0]pussy[otherwise]ass[end if], stuffing your [if cunts of player > 0]cunt[otherwise]rectum[end if] with her sextoy cock.";
		say "     [one of]Bracing yourself, you push back onto the kitty's penis, encouraging her to thrust into you hard and fast.  She pounds that stimulating shaft of hers into your [if cunts of player > 0]juicy hole[otherwise]tight hole[end if], sending shivers of pleasure coursing through you.  The passage of those soft, flexible bumps on her latex cock has you moaning in delight with every hard thrust into you[or]Artemis locks her forelimbs around your [bodytype of player] body and nuzzles at your neck as she slowly slides her pleasure-inducing cock in and out of you.  Her designer cock, with its stimulating barbs and exotic shape, is a delight to ride.  The toy you used to modify her probably would have been quite enjoyable on its own, but as a living, pulsing penis now that it is a part of Artemis, it is wonderful, providing sexual ecstasy to you both[or]Squeezing and shifting your hips with every thrust she makes, you do your best to pleasure your playful pet in return for the erotic delight her sensual shaft is providing you.  The feel of that feline fucktoy stuffing your [if cunts of player > 0]pussy[otherwise]ass[end if] is wonderful, filling you with ecstasy[at random].  With the rubbery scent of feline arousal strong in the air, you are [one of]screwed[or]fucked[or]banged[at random] by your horny companion until you both can take no more.  With a lustful mrowl, she stuffs herself fully into your [if cunts of player > 0]dripping snatch[otherwise]spread anus[end if] and lets loose with her slick, sticky load[if cocks of player > 0].  You moan and cum as well, your hot seed spraying onto the ground beneath you[otherwise if cunts of player > 0].  You moan and cum as well, your hot juices running down your thighs[end if].  Once sated, the rubbery feline sags atop you as if deflating slightly with a soft sigh of pleasure.  She rests atop you, purring happily for a while before letting herself simply slide off.";
	otherwise:
		say "     [one of]Feeling rather turned on by the glimpses you're getting of Artemis's cock poking from its rubbery sheath, you find your attention drifting back to it.  After eying those pleasure-inducing barbs for a while as she pads along with you, you decide to have a little fun while giving her some relief.  Leading her to an appropriate spot, you lay down beside her, bringing your head into position to start licking at that sextoy cock of hers[or]The rubber tigress mrowls and winds her way around you, rubbing against you like an affectionate feline.  You spot her latex cock sliding free of its rubbery sheath just before she rubs a paw across your ass.  You reach down and scritch her head while giving yours a little shake, knowing quite well what your needy kitty's after, but not in the mood for full-on sex at the moment.  But rather than leave her frustrated, you let your hand run along her side, then slip under to her stiff rod.  After a few slow pumps at it, you lower yourself down and move in to start licking at her sextoy cock[or]Your rubber tigress companion snuggles up beside you as you take a short break.  She nuzzles at your hand, getting you to scritch her.  As the scritching continues, Artemis rolls over, letting your hand rub across her tummy and eventually across her sheath.  As you rub her stiffening manhood, she gives a needy mewl and thrusts into your hand.  The sight and feel of it in your hand has you lick your lips.  And after a few more strokes over her sextoy cock, you bring your mouth in and take a slow lick across it[at random].  The rubber tigress shifts onto her side, raising up one hind leg so her erect penis is readily accessible to your playful tongue and soft lips.";
		say "     After a few more [one of]slow[or]soft[or]sensual[or]quick[or]eager[at random] licks across her stimulating barbs, you slide your lips down over her cock, welcoming it into your mouth with a soft moan of pleasure.  You suck down on it firmly while the kitty rubs her paws encouragingly along your back and thrusts gently into your mouth.  The feel of her pleasure-enducing shaft sliding around in your mouth makes you want to try it somewhere more sensitive and intimate sometime soon.  Despite the faintly rubbery taste, or perhaps even because of that quality, you find the taste of her lubricating precum quite arousing and you work your tongue and palate eagerly to pleasure her.  After several minutes of very enjoyable work over her shaft, [one of]she mrowls and her cock pulses in your mouth, spraying her slick, sticky semen into your mouth.  You suck it down greedily, enjoying the warm feeling it gives you deep inside[or]you pull off and take her cock in hand, stroking it quickly while flicking your tongue across its tip.  The hard, fast pumping soon sends the feline over the edge and she blasts shot after shot of her slick, sticky semen into your open mouth and across your face.  When she's drained, you lean in and give her a sloppy, cum-filled kiss[if lust of rubber tigress is 2]***[end if][or]you pull off and take her cock in hand, stroking it quickly while cupping your free hand in front of her glans.  The hard, fast pumping soon sends the feline over the edge and you catch as much of her slick, sticky semen as you can into the palm of your hand.  When she's drained, you make a show of pouring her seed into your mouth and swallowing it down and then licking your hand clean[at random].  Your tasty break done, you and Artemis get back up and head on your way.";
		now libido of player is ( 2 * libido of player ) / 3;
		now libido of rubber tigress is ( 2 * libido of rubber tigress ) / 3;



to say artemissex12:	[***]
	say "***";

to say artemissex13:	[***]
	say "***";

to say artemissex14:	[***]
	say "***";



Chapter 2 - Playtime Scenes

to say artemisplay1:	[chase cup]
	say "     Artemis comes up to you and mewls softly.  She nuzzles at your pack and runs her tongue across her muzzle.  Figuring she wants another tasty cup, you pull one out, much to her delight.  She purrs happily and weaves around your legs, mewling and purring like a kitty eager to get a treat.  You scritch her ears and roll it across the ground.  She chases after it, batting it around with her paws before finally pouncing it and gobbling it down.";

to say artemisplay2:	[slurp cup]
	say "     Deciding your good kitty deserves a treat, you pull out one of the red plastic cups.  Hearing the crinkle of it, her ears perk up and she comes bounding over to you, mewling for her treat.  You scritch her ears and set it down for her.  She runs her tongue slowly along the rim, melting the edge of the cup.  She then leans in and seems to almost slurp up the cup, inhaling the flowing red and white plastic as the cup gradually melts down.  She smiles up at you, licking her muzzle as the last of the sticky goo slides down her throat.";

to say artemisplay3:	[juggle cup]
	say "     Artemis comes up to you and mewls softly.  She nuzzles at your pack and runs her tongue across her muzzle.  Figuring she wants another tasty cup, you pull one out, much to her delight.  She purrs happily and weaves around your legs, mewling and purring like a kitty eager to get a treat.  You scritch her ears and roll it across the ground.  She chases after it, batting it around with her paws before knocking it into the air so she can juggle and bat at it with her paws.  Finally getting a grip on it, she eats up the cup in three fast bites that consume the red plastic in gooey mouthfuls.";

to say artemisplay4:	[string cup]
	say "     Deciding to have some fun with your overgrown kitty, you pull out one of the plastic cups.  Hearing the sound of it coming out, her rubber ears perk up and she comes bounding over, mewling for her treat.  When you don't give it right away, she resorts to rolling onto her tummy to look extra cute.  It's not until you've tied and knotted some string through a hole you punch in the bottom of it that you put it down.  You start dragging the cup across the ground by the string, making a toy for her to bat and chase.  She has lots of fun swatting it around and pouncing at it, only eating the cup once you've both tired of the game[if lastArtemisglomp >= 8 or hp of rubber tigress < 6].  After finishing it off, she gives a very wide yawn and licks her paws clean.  You can't help but yawn as well, though you feel happier for having taken the time to play with her a little[otherwise].  After having finished it off, Artemis comes over to you, purring happily as she nuzzles against your thigh, clearly pleased to have gotten some playtime.  After getting some head scritches, she sits down and licks her paws clean.  You can't help but feel a little cheered up for having played with her a little[end if].";
	if morale of player < 0:
		increase morale of player by 5;
		if morale of player > 0, now morale of player is 0;
	otherwise:
		increase morale of player by 1;

to say artemisplay5:	[tummy rubs]
	say "     As the rubber tigress wanders close to you, you reach out and scritch her ears.  She purrs happily and nuzzles into your touch.  You continue scritching her as she leans into it more and more, eventually flopping over onto her side.  She rolls over and mewls softly.  Kneeling down, you rub the cute tigress's tummy, making her moan and purr happily[if lastArtemisglomp >= 8 or hp of rubber tigress < 6].  You keep this up until she's yawning and lays down to have a little rest.  Seeing her yawn has you do the same[otherwise].  You keep this up until she's completely flopped out[end if].";

to say artemisplay6:	[scritches]
	say "     Deciding to lavish some attention on your cute kitty, you wrap your arms around the tigress and start scritching her.  She purrs happily at his and nuzzles against you.  She particularly seems to like it when you rub under her chin.  You scritch and hug the big feline, cuddling her in your arms.";


Section 4 - Cup Stack

Table of Game Objects (continued)
name	desc	weight	object
"cup stack"	"A big stack of red, plastic cups you grabbed as treats for Artemis."	1	cup stack

cup stack is a grab object.
it is part of the player.
It is not temporary.
cuptrick is a truth state that varies.  cuptrick is normally false.

instead of using cup stack:
	if companion of player is rubber tigress:
		if hp of rubber tigress >= 7 and a random chance of 1 in 2 succeeds and cuptrick is false:	[cup training]
			say "     Deciding the cups might make a good means to train Artemis, given her fondness for them.  You take one out, which quickly draws the kitty's attention.  Almost immediately, she's at your side, purring and nuzzling around your legs.  You hold the cup up and tell her to sit.  She eyes the cup and mrowls needfully.  You keep it out of reach and tell her again to sit.";
			say "     When you ask her a third time, she lowers and down obediently.  Or so you think at first.  A moment later you notice her continue to sink down past her normal sitting position, her hindquarters being pressed down and deforming.  Just as you're taking this in, she springs upward, her reinflating hindquarters propelling her up so she may swat the cup out of your surprised hand.  As it skitters across the ground, she walks over to it slowly, tail and ass swishing.  She gulps it down in one extra wide, very deliberate bite.";
			say "     You decide it best not to try that again.";
		otherwise if hp of rubber tigress >= 7 and a random chance of 2 in 9 succeeds:			[offer cup]
			say "     Taking out one of the cups, you kneel down and offer it in hand to the rubber tigress.  She mewls happily and starts munching up the cup as you hold it out for her.  With the last of it melting and flowing down across your fingers, she licks at your hand, drawing it off your skin.  There's a slight shiver of pleasure that runs through you as she does this as it feels a bit like when she spreads herself over you.";
		otherwise if a random chance of 2 in 5 succeeds:								[cup toss]
			say "     Deciding to feed the tigress a treat, you pull out one of the cups.  Hearing it come out, her ears perk up and she comes rushing over.  As she's coming, you toss it just over her head, making her rear up and swat at it.  She bounds off in pursuit, swatting it around the ground before leaping onto it.  It cracks with the crinkling of hard plastic.  Holding it down by one of the flaps, she starts eating away at it, melting portions of the plastic as she wraps her mouth around them.  Soon enough she's lapping the last few dribbles of runny red and white plastic from the ground.";
		otherwise if a random chance of 2 in 3 succeeds:								[cup juggle]
			say "     You try to be discrete about pulling one of the red cups out of your pack for your tigress pet, but she notices right away and comes bounding over.  This leaves you rubbing her ears and pushing her head back with one hand while you struggle to pull out a cup with the other.  Once you get it out, she eyes it intently.  Tossing it at her, she bumps it around before ending up on her back and batting it around in the air.  After tiring of this fun, she smacks it with both paws and pulls it into her maw.  As it's guided in, it melts and flows down the strange tigress's throat.";
		otherwise if a random chance of 1 in 2 succeeds:								[slurp cup]
			say "[artemisplay2]";
		otherwise:															[string cup]
			say "[artemisplay4]";
	otherwise:
		say "You flip cup around in your hand for a moment, but have no real use for it without Artemis around.  You tuck it away again.";

instead of sniffing cup stack:
	say "Ordinary, everyday plastic cups.  They're made of red plastic on the outside and white on the inside[if facename of player is listed in infections of Latexlist and skinname of player is listed in infections of Latexlist].  They smell strangely... appetizing... to your altered nose[end if].";


Section 5 - Food/Drink

after using water bottle while companion of player is rubber tigress:
	say "     After finishing off your drink, you notice Artemis looking up at you... or, more appropriately, at your empty bottle.  You toss it to her and she [one of]chomps onto it, melting the plastic into clear goo and swallowing it down[or]pounces atop it, flattening it down before licking up one end and sliding it into her mouth whole to melt and slide down her throat[or]bats it around for a bit before eating it[at random].";

after using dirty water while companion of player is rubber tigress:
	say "     After finishing off your drink, you notice Artemis looking up at you... or, more appropriately, at your empty bottle.  You toss it to her and she [one of]chomps onto it, melting the plastic into clear goo and swallowing it down[or]pounces atop it, flattening it down before licking up one end and sliding it into her mouth whole to melt and slide down her throat[or]bats it around for a bit before eating it[at random].";

after using chips while companion of player is rubber tigress:
	say "     From the time you first started opening your snack, [one of]Artemis's eyes have been watching you intently[or]Artemis has been lying down and acting nonchalant, but you can see the corner of her eye watching, waiting[or]Artemis's ears have perked up and she's been purring around your legs, mewling excitedly[at random].  Finished with the snack, you roll the wrapper into a ball and toss it to her.  She bats it out of the air and chases it for a bit before licking it up with her tongue.  It melts in her mouth and flows down her throat with a soft gulp.";


Section 6 - Napping w/Artemis

lastArtemisglomp is a number that varies.  lastArtemisglomp is usually 255.  [time since last glomp]

to artemisnap:
	now libido of rubber tigress is libido of rubber tigress / 3;
	if hp of rubber tigress is 11:
		say "     [bracket]***Updated versions of these scenes to be added later.[close bracket]";
	if hp of rubber tigress < 5:
		say "     As you're getting ready to lie down and take a nap, the rubber tigress pads over to you.  She purrs softly, kneads around for a little bit and then curls up to nap with you.  Being mostly filled with air, she's fairly light, but still feels nice against your [one of]legs[or]thigh[or]side[at random] and her soft purring helps lull you to sleep.";
		increase hp of rubber tigress by 1;
	otherwise if hp of rubber tigress is 5:
		say "     As usual, when you're getting ready to lie down and take a catnap, the rubber tigress pads over to you.  She purrs softly, kneads around for a little bit and then curls up to name with you.  Being mostly filled with air, she's fairly light, but still feels nice against your [one of]legs[or]thigh[at random] and her soft purring helps lull you to sleep.";
		attempttowait;
		say "     You have strange dreams again, feeling yourself lying down with Artemis atop you, but she's not merely resting on you, but flowing down overtop of you.  The tigress's rubbery flesh melts over you, wrapping around your waist and legs.  With her flowing over your groin, you can feel the sensation building and your sleep-clouded mind starts to realize that this may be no dream at all.  You try to get up, but she's already engulfed most of your legs and hips, making it impossible to stand.  When you press your hands to her head and try to push her off, her rubbery flesh deforms before going soft, capturing them as well.  The rubber overtop your legs and waist presses in tighter, wrapping snugly over your body and loins[if cocks of player > 1].  Your cocks are fully erect, unchanged in form, but sealed in a layer of orange[otherwise if cocks of player is 1].  Your cock is fully erect, unchanged in form, but sealed in a layer of orange[end if][if cunts of player > 1].  You can feel more of her flowing skin pushing into your cunts, lining them with a thin layer of latex[otherwise if cunts of player is 1].  You can feel more of her flowing skin pushing into your cunt, lining it with a thin layer of latex[end if][if anallevel is not 1 or (cocks of player is 0 and cunts of player is 0)].  She even presses a bubble of the flowing stuff into your rear, coating your very depths with herself[end if].";
		say "     She stands you up even as she's solidifying around your arms and coating your head in flowing rubber, her feline head reforming over yours.  You gasp and try to take a breath, allowing her to slide into your mouth and down your throat.  Having you fully encapsulated now, she makes your body move, walking upright a little unsteadily for the first few steps.  Everything has a pale orange sheen and is ever so slightly out of focus, making you feel as if you are again in a dream.  You start to drift off, sleepwalking along as your pet walks you around.  She seems quite pleased with herself, able to [if bodyname of player is listed in infections of Taurlist]strut around as a taur[otherwise]stand upright as an anthro [end if]tiger.";
		if cocks of player > 0 and cunts of player > 0:		[herm]
			say "     But it's not like she does this for long, having something else she's wanted so much more to enjoy right between her legs.  Returning to where you were resting, she takes a seat and reaches down, running her smooth paws over your genitals, hers now as well, mewling softly in pleasure at the sensation.  Soon she's masturbating, stroking her [if cocks of player > 1]cocks[otherwise]cock[end if] and fingering her [if cunts of player > 1]pussies[otherwise]pussy[end if].  She plays with herself frantically and with little direction, simply overloading herself on the pleasures of having them.  She goes at it for hours, filling your walking dream with the sensation cumming again and again as your juices soak her thighs and your seed is released all across your hijacked body.  Eventually, she's finally sated for a time and you pass out fully into sleep.";
		otherwise if cocks of player > 0:				[male]
			say "     But it's not like she does this for long, having something else she's wanted so much more to enjoy right between her legs.  Returning to where you were resting, she takes a seat and reaches down, running her smooth paws over your maleness, hers now as well, mewling softly in pleasure at the sensation.  Soon she's masturbating, stroking her [cock size desc of player] [if cocks of player > 1]cocks[otherwise]cock[end if] and mrowling happily.  She plays with herself frantically and with little direction, simply overloading herself on the pleasures of having a gender.  She goes at it for hours, filling your walking dream with the sensation cumming again and again as your sticky seed is released all across your hijacked, rubber-coated body.  Eventually, she's finally sated for a time and you pass out fully into sleep.";
		otherwise if cunts of player > 0:				[female]
			say "     But it's not like she does this for long, having something else she's wanted so much more to enjoy right between her legs.  Returning to where you were resting, she takes a seat and reaches down, running her smooth paws over your genitals, hers now as well, mewling softly in pleasure at the sensation.  Soon she's masturbating,fingering her [cunt size desc of player] [if cunts of player > 1]pussies[otherwise]pussy[end if] and mrowling happily.  She plays with herself frantically and with little direction, simply overloading herself on the pleasures of having them.  She goes at it for hours, filling your walking dream with the sensation cumming again and again as she uses your hijacked body to frig you both over and over, letting your juices soak her thighs.  Eventually, she's finally sated for a time and you pass out fully into sleep.";
		otherwise:								[neuter]
			say "     She stumbles around for a bit, getting better and better and moving your [body size of player] body, enjoying her new, upright stature.  She rubs between your legs with a soft mewl of disappointment, still left without genitals.  She wiggles her fingers and seems to realize that she's still got something extra she was lacking before.  Stretching out where you were resting, she takes a seat and runs her paws over her body, rubbing, pinching, teasing and kneading any sensitive or interesting spot she can find.  She plays with herself frantically and with little direction, simply overloading herself on the pleasure of being able to grope and fondle herself[if anallevel is not 1].  Still wanting more, she slides a hand a little further down past your bare crotch to your crinkled anus.  She rubs at the rubber-coated hole and mewls at the sensation playing it provides.  Soon she's stuffing one, and then several fingers into your ass[otherwise].  In her search for stimulation at times, she gets a little rough, pinching too hard or pushing down too firmly, but it all brings a little pleasure for her with it as well[end if].  She goes at it for hours, filling your walking dream with these sensations as she plays with your hijacked body.  Eventually, she's finally tires of her new fun for now and you pass out fully into sleep.";
		wait for any key;
		increase hp of rubber tigress by 1;
	otherwise:
		say "     As you're getting ready to lie down and take a nap, the rubber tigress pads over to you, snuggling up at your feet[if hp of rubber tigress > 7 and location of player is State Fair and ( cocks of player > 0 or cunts of player > 0 ) and artemisstatefairrt is false] and seeming more eager than usual about naptime[end if].  Having a pretty good idea what she really has in mind, you pet her head and decide to just go with it.  You'll get your rest and even some kinky dreams while she gets her much needed release.  Once again, as you're drifting off into slumber, she starts to spread over you[if scalevalue of player > 3].  It takes some extra time and stretching to be able to cover your [body size of player], [bodydesc of player] body, but the prospect of being bigger as well makes it well worth the effort for her[end if].  This time you don't resist, instead letting her flow out and cover you.  The feel of her forming tightly around you, even reshaping you a little to make you into a [if cocks of player > 0 and cunts of player is 0]girlish tiger[otherwise]sexy tigress[end if][if bodyname of player is listed in infections of taurlist] taur[end if] made of rubber.";
		say "     Adding to this is the increasingly pleasurable sensation of her rubbery goo flowing [if cocks of player > 0 and cunts of player > 0]over and into you dual genitals[otherwise if cocks of player > 1]over your cocks[otherwise if cocks of player is 1]over your cock[otherwise if cunts of player > 1]into your cunts[otherwise if cunts of player is 1]into your cunt[otherwise]into your back passage[end if].  The final moments with her covering your head and going down your throat is still somewhat disconcerting, but as that's ending, you drift off into a more passive state, sleepwalking along as she uses your body as her own.";
		if hp of rubber tigress > 7 and location of player is State Fair and ( cocks of player > 0 or cunts of player > 0 ):
			say "     Once Artemis has reasserted control over your body, she wastes no time at all, quickly getting up and heading off in search of fun.  She strides around the midway with far more grace and confidence than she first had manipulating your body and she shows off her talents while on the prowl.  Now at the fairgrounds in her anthropomorphic body and with a gender of her own finally, there's clearly just one thing on the horny kitty's mind - to find another rubber tigress to be her playmate while she's running the show.  Despite drawing the attention of a few of the other critters around, she passes them by until she locates one of the feline tigresses.  There is only the briefest moment of hesitation before Artemis gives a lustful mrowl and strides towards the other feline";
			say "[artemissf_sex]";
			say "     With the felines quite satisfied by their encounter, they part ways, Artemis heading back to your resting spot so you both might finish your cat nap together.  Stretching out, she purrs happily while you drift off fully into slumber, only to be awoken by the fully-reformed tigress nuzzling at your cheek.  After some snuggling, you get up and head back on your way.";
			artemisinfect;
		otherwise if a random chance of 2 in 5 succeeds or hp of rubber tigress is 6:	[default masturbation]
			if cocks of player > 0 and cunts of player > 0:		[herm]
				say "     After a bit of time just spent enjoying walking upright and casually feeling up her new body, she settles down to the main event, playing with those wonderful genitals she now possesses.  Putting her hand around [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], she starts stroking its [cock of player] length with a soft purr.  When her other paw makes it down to your [cunt size desc of player] [if cunts of player > 1]pussies[otherwise]pussy[end if], she runs her paws over the wet, sensitive folds before pushing a few fingers into it and pumping away.  Much less frantic about her masturbation, but just as eager and overjoyed as ever, she plays with herself, and thereby with you, through several orgasms.";
				say "     All this dreamy pleasure has you moan softly, enjoying the feline's control of your body and the delight she takes in enjoying such pleasures you can take for granted at times.  She goes at it for quite some time, though time is a difficult concept to hold onto during the erotic dreams of this somnambulistic state.  As she's winding down, she delights in running her rubbery paws through the accumulated cum and juices sticking to herself and then licking them up.  Eventually, you drift off to a deeper sleep with her still encapsulating you.";
			otherwise if cocks of player > 0:				[male]
				say "     After a bit of time just spent enjoying walking upright and casually feeling up her new body, she settles down to the main event, playing with those wonderful male genitals she now possesses.  Your [if cocks of player > 1]cocks[otherwise]cock[end if] and balls jut from her feminine body, stiff and erect.  Putting her hand around [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], she starts stroking its [cock of player] length with a soft purr.  After caressing her body a little longer, her paw ends up drifting down to her balls, your balls, and rolls them around in her paw.  She rubs and kneads at them, delighting in the pleasures they bring.  Much less frantic about her masturbation, but just as eager and overjoyed as ever, she plays with herself, and thereby with you, through several orgasms.";
				say "     All this dreamy pleasure has you moan softly, enjoying the feline's control of your body and the delight she takes in enjoying such pleasures you can take for granted at times.  She goes at it for quite some time, though time is a difficult concept to hold onto during the erotic dreams of this somnambulistic state.  As she's winding down, she delights in running her rubbery paws through the accumulated cum sticking to herself and then licking it up.  Eventually, you drift off to a deeper sleep with her still encapsulating you.";
			otherwise if cunts of player > 0:				[female]
				say "     After a bit of time just spent enjoying walking upright and casually feeling up her new body, she settles down to the main event, playing with those wonderful genitals she now possesses.  Sliding a paw to [if cunts of player > 1]one of your [cunt size desc of player] cunts[otherwise]your [cunt size desc of player] cunt[end if], she starts running her paw over the wet, sensitive folds.  After a little teasing, she pushes a few fingers into the wet cunny and starts pumping away.  She finds many a sensitive spot, most delightfully your [if cunts of player > 1]clits[otherwise]clit[end if], and gives particular attention to them.  Much less frantic about her masturbation, but just as eager and overjoyed as ever, she plays with herself, and thereby with you, through several orgasms.";
				say "     All this dreamy pleasure has you moan softly, enjoying the feline's control of your body and the delight she takes in enjoying such pleasures you can take for granted at times.  She goes at it for quite some time, though time is a difficult concept to hold onto during the erotic dreams of this somnambulistic state.  As she's winding down, she delights in running her rubbery paws through the accumulated cum and juices sticking to herself and then licking them up.  Eventually, you drift off to a deeper sleep with her still encapsulating you.";
			otherwise:								[neuter]
				say "     After spending a while enjoying walking upright and casually feeling up her new body, she seems much more at ease with moving you around than when she started out.  She even tries a little [one of]climbing[or]jumping[or]dancing[or]stretching[or]swinging[at random] before getting bored of this and settling down for the main event, playing with this wonderfully sensitive body she both now possesses and has the means to enjoy.  She lets her paws run all over her rubbery hide, putting particular emphasis on all those sensitive spots she's found before and even finding a few new ones to try out.  She is much less frantic in her search for stimuation than before, but remains just as eager and overjoyed as ever at doing so
[if anallevel is not 1].  Completing this preamble and wanting more, she slides a paw across your ass and starts teasing as her crinkled hole.  The rubber-coated ring parts easily enough for her, letting her stimulate you both inside and out[otherwise].  Her search for stimulation can be a little rough at times, but she seems to have a fairly good idea now of how much is too much and only indulges in a harder pinch or prod from time to time[end if].  She plays with herself, and thereby with you, for quite some time before eventually wearing herself out and letting you drift fully into slumber with her still encapsulating you.";
			if hp of rubber tigress < 7, increase hp of rubber tigress by 1;
		otherwise:									[hp 7+ for sex]
			if hp of rubber tigress is 7:					[first attempt for sex]
				say "     Not content to simply stay put this time, Artemis sleepwalks you of your hiding spot and goes into the city.  Having practiced before, she's able to walk around pretty well with only the occasional odd motion to show something may be amiss.  But she's not just out for a walk, the rubber kitty's busily looking around as well.  She finds it in the form of a ";
				if cunts of player > 0:
					say "studly wolf, running over to him and bending over, offering herself up (and thereby you) to be fucked by the well-hung male.  He growls softly in his throat and laughs, pouncing onto top of her, quickly driving his shaft into her needy body.  Artemis releases a squeaking mrowl of lust while you moan softly in this erotic waking dream.";
					say "     Getting her first taste of true sex, Artemis is mrowling and mewling in delight, heedless that the wolf's wild, rambunctious fucking shows no skill or restraint.  He simply pounds away at what he sees to be another slutty female, eager to dump his load into her before moving on.  But to her, it is wonderful and she pushes back into his thrusts for more.  With her pushing her rubbery pussy onto him, she soon has his knot locked inside as she's rewarded with his hot, sticky cum.  If flows into her, into you, pooling inside [if gestation of child > 0 or larvaegg is 2]a bubble of rubber[otherwise]your rubber-coated womb[end if].  When the wolf's knot goes down, he's off, leaving the cream-filled tigress to stumble back happily to your resting spot where she passes out in a blissful haze and you sink further into sleep.";
					increase hp of rubber tigress by 1;
				otherwise if cocks of player > 0:
					say "sultry red panda, running over to her and running her paws over the wah's furry body.  Grinding her cock against the sexy girl's bottom, she's clearly offering to fuck (and thereby have you fuck) the fuzzy red female.  When the red panda moans and bends over, Artemis quickly moves you atop her, driving her cock into that hot, juicy pussy.  The rubber tiger releases a squeaking mrowl of lust while you moan softly in this erotic waking dream.";
					say "     Getting her first taste of true sex, Artemis is mrowling and mewling in delight as she heedlessly pounds into her cute playmate.  The red panda moans and squirms at his rough treatment at first, but soon is too overcome with lust to mind it.  Artemis licks and nibbles at the wah lightly as she fucks that hot, clenching hole until she can't take it any more and drives hard into it and cums with a loud, triumphant mrowl.  Your [cum load size of player] is released into the wah as you cum in your wet dream.  Once your balls are drained, she pulls out and leaves the leaking red panda behind.  Clearly worn out after her first time, the rubber tigress stumbles back to your resting spot where she passes out in a blissful haze and you sink further into sleep.";
					increase hp of rubber tigress by 1;
				otherwise:
					say "[randombodypart]";		[yields male 'bodyselector']
					say "well-hung [bodyselector], who she eagerly runs over to.  On her knees before him, she runs her paws along his legs and starts licking and kissing at his cock.  With such enticing, the [bodyselector] laughs and grows hard, the rubbery tigress soon taking his cock into her muzzle and throat (and thereby down your throat as well).  She licks and sucks at him eagerly, kneading her paws over his nuts as she does.  She releases wet, squeaking moans as she blows her chosen lover.  He cums soon enough, feeding a hefty load of hot, cream seed to the eager kitty.  This flows down into you, pooling in your rubber-coated stomach.  Having gotten her creamy treat, the tigress gets up, licks her muzzle and waddles off happily, rubbing her rounded belly.  Her fun over for now, she stumbles back to your resting spot where she passes out in a blissful haze and you sink further into sleep.";
			otherwise:
				say "     After settling you inside her, the rubber kitty controlling you takes your body out into the city again, clearly looking for more fun.  Moving with a fair amount of grace now, the kitty struts around, putting her body on display in a search for a playmate.  Being such a sexy sight, the smooth tigress doesn't have to wait long before managing to attract a horny ";
				if "Less Anal" is not listed in feats of player and ( cocks of player > 0 and cunts of player is 0 ) and ( a random chance of anallevel in 12 succeeds or ( "MPreg" is listed in feats of player and a random chance of 1 in 12 succeeds ) or ( "Submissive" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and guy is not banned:
					say "[randombodypart]";		[yields male 'bodyselector']
					if bodyselector is "tiger":
						while bodyselector is "tiger":
							say "[randombodypart]";
					if a random chance of 3 in 5 succeeds or ( "Submissive" is listed in feats of player and a random chance of 1 in 5 succeeds ):		[M/M bottom]
						say "male [bodyselector] willing to take up the currently male [']tiger['] up on [']his['] offer.  It seems Artemis is willing to try all kinds of kinky acts with your body in her search for release and sexual gratification.  After [one of]some mutual stroking with his current partner[or]licking and sucking his cock to get him ready[or][if anallevel is 3]bending over and getting rimmed by his current partner[otherwise]kissing and making out for a while[end if][as decreasingly likely outcomes], he ends up [one of]on all fours[or]bent over a bench[or]spread across the hood of a car[or]pinned against a wall[at random] with the male forcing his cock into the tiger's yielding asshole (and thereby into you).";
						say "     He moans and mrowls at this treatment, letting his eager stud have his way with him.  He pounds into the lustful kitty, sending waves of pleasure through you both.  Artemis, having learned a few tricks, wiggles his rear and rocks back into the thrusts to get even more pleasure from his current playmate.  They go at it for a while, but soon enough the [bodyselector] is cumming hard into the tiger, pumping his hot load into into the slutty feline where it is drawn into a bubble of rubber inside you.  Sated, the male pulls out and [one of]gives the tiger a swat on the ass[or]has the tiger lick him clean[or]licks the tiger's leaking, creamy hole[at random] before they part ways and you're taken back to your resting spot to finish napping.";
					otherwise:		[M/M top]
						say "male [bodyselector] willing to take up the currently male [']tiger['] up on [']his['] offer.  It seems Artemis is willing to try all kinds of kinky acts with your body in her search for release and sexual gratification.  After [one of]some mutual stroking with his current partner[or]getting his current partner to lick and suck your shared cock[or][if anallevel is 3]bending his current partner over and rimming his asshole[otherwise]kissing and making out for a while[end if][as decreasingly likely outcomes], the rubber kitty has the [bodyselector] [one of]on the ground beneath him[or]pressed to a wall[or]bent over some rubble[or]spread across the hood of a car[at random].";
						say "     Your [cock of player] shaft is pressed against the other male's pucker and pushed into his warm anus with a moan of pleasure from them both, your body made to fuck the tiger's current playmate.  Artemis, having learned a few tricks, changes thrusts on occasion to draw even more pleasure out of stuffing the tight ass he's drilling into with his throbbing meat.  They go at it for a while before the tiger reaches his limit and drives into the [bodyselector] hard, releasing your [cum load size of player] load into him with a mrowl.  As he's emptying his balls, the horny feline reaches around and strokes the other male's cock, getting him to blow his load as well.  Drained and satisfied for now, the tiger gives his lover a slow lick.  His fun over for now, he stumbles back to your resting spot where he passes out in a blissful haze and you sink further into sleep.";
				otherwise if ( cocks of player > 0 and cunts of player is 0 ) or ( cocks of player > 0 and cunts of player > 0 and a random chance of 1 in 2 succeeds ):		[M/F bottom]
					say "[randomdesc2]";		[yields female 'slutname']
					if slutname is "tigress":
						while slutname is "tigress":
							say "[randomdesc2]";
					say "female [slutname] willing to take her up on her offer.  After a little groping and fondling, they both know what they want and the rubber kitty has the [slutname] [one of]on the ground beneath her[or]pressed to a wall[or]bent over some rubble[or]spread across the hood of a car[at random].";
					say "     Your [cock of player] shaft is driven into the horny female and your body is made to fuck the tigress's current playmate.  Artemis, having learned a few tricks, changes thrusts on occasion to draw even more pleasure out of stuffing the juicy cunt around her throbbing meat.  They go at it for a while before the tigress reaches her limit and drives into the [slutname] hard, releasing your [cum load size of player] load into her with a mrowl.  Having emptied her balls, she gives her lover a slow lick and pulls out.  Satisfied for now, the two part with the tigress sleepwalking you back to your resting spot to finish napping.";
				otherwise if cunts of player > 0:		[M/F top]
					say "[randombodypart]";		[yields male 'bodyselector']
					say "male [bodyselector] willing to take her up on her offer.  The courtship is brief and ends with the tigress [one of]on all fours[or]bent over a bench[or]spread across the hood of a car[or]pinned against a wall[at random] with the male driving his cock into her hot, needy cunt (and thereby into you).";
					say "     She moans and mrowls at this treatment, letting her eager stud have his way with her.  He pounds into the lustful kitty, sending waves of pleasure through you both.  Artemis, having learned a few tricks, wiggles her rear and rocks back into the thrusts to get even more pleasure from her current playmate.  They go at it for a while, but soon enough the [bodyselector] is cumming hard into her, pumping his hot load into into the slutty feline where it is drawn into [if gestation of child > 0 or larvaegg is 2]a bubble of rubber inside you[otherwise]your rubber-coated womb[end if].  Sated, the male pulls out and the tigress stumbles back to your resting spot to finish napping.";
				otherwise:					[neuter]
					say "[randombodypart]";		[yields male 'bodyselector']
					say "male [slutname] willing to take her up on her offer.  After a little groping and fondling, the tigress is on her knees before the male, licking and kissing at his cock.  She gets him warmed up in little time and is soon working her stretchable muzzle down onto his erection. ";
					say "    His shaft throbs and pulses, dribbling precum into her smooth mouth to lubricate her muzzle.  Soon enough she's deep-throating him while kneading his balls.  The [slutname] rubs the eager kitty's head, mumbling a few words of praise for her at her technique and fine muzzle as he lets her suck him off.  After she's gotten him nice and worked up, the [bodyselector] cums with a loud moan, feeding a load of thick, gooey seed to the eager kitty.  This flows down into you, pooling in your rubber-coated stomach.  Once she's gotten her tasty treat, the tigress smiles up at him, licking her muzzle before strutting off like the cat that got the cream.  Her fun over for now, she stumbles back to your resting spot where she passes out in a blissful haze and you sink further into sleep.";
		wait for any key;
	now skipturnblocker is 1;


after resting while companion of player is rubber tigress:
	now skipturnblocker is 0;
	if hp of rubber tigress is 4:
		say "     You wake up from your nap feeling refreshed[if libido of player > 40] and even somewhat less wildly aroused[end if].  As you stretch, you rouse the tigress at your side, who yawns her rubbery mouth wide and comes up to nuzzle you[if cocks of player > 0 or cunts of player > 0], picking up the faint scent of sex from her[end if].  You feel a little closer to the pretty kitty and snug her in your arms as thanks for keeping watch while you slept.";
		now libido of player is ( libido of player * 2 ) / 3;
	otherwise if hp of rubber tigress is 5:
		say "     You wake up from your nap feeling refreshed[if libido of player > 40] and even somewhat less wildly aroused[end if] despite the odd, sexual dreams you had.  As you stretch, you rouse your kitty, who yawns her rubbery mouth wide and comes up to nuzzle you[if cocks of player > 0 or cunts of player > 0].  You notice she again smells faintly of sex.  Perhaps she snuck off for a bit and found some fun of her own while you rested[otherwise].  You notice she seems in a particularly good mood, making you wonder if she perhaps snuck off for a bit and found some fun of her own while your rested[end if].  Regardless, you snuggle her affectionately and as thanks for keeping watch while you slept.";
		now libido of player is ( libido of player * 2 ) / 3;
	otherwise if hp of rubber tigress is 6:
		say "     You awaken same as always after your nap, your body same as it was before as if it was indeed all a strange dream.  Roused by your movement, the rubber tigress stretches and yawns her smooth mouth open wide before coming up to nuzzle you.  She purrs and licks your cheek, leaving a long streak of orange rubber that clings briefly before being pulled back into her mouth.  You can still smell the scent of [if cocks of player > 0 or cunts of player > 0]arousal[otherwise]yourself[end if] upon her.";
		say "     Looking yourself and her both over carefully, it seems you're both unchanged from these somnolescent escapades.  Since everything seems fine and intact, you can't really get upset with the kitty for wanting in on the fun, given her circumstances.  To show you're not upset, you give her a big, tight hug that briefly distorts her rubbery body and makes her head bulge comically.  She releases a long, squeaking mew to rebalance the air inside her before nuzzling and licking you again, a less sticky one this time.";
		now libido of player is libido of player / 2;
	otherwise:
		say "     When you awaken from slumber, you find yourself well rested and a little less aroused (at least for the moment).  Artemis is just starting to wake up as you shift about.  After a yawn and a stretch, she's nuzzling you and purring happily, looking to get some [']morning['] scritches from you.  Having shared so much with the rubbery feline, you can't but feel closer to her.";
		now libido of player is ( libido of player * 3 ) / 4;
	now lastfuck of rubber tigress is turns;
	now lastArtemisglomp is turns;


Section 7 - Artemis @ State Fair

to say artemissf_sex:
	say ".  Putting their arms around one another, they purr and runs their paws over each other.  And what starts initially as stroking and petting soon turns to groping and grinding as the aroused felines kiss.";
	if cocks of player > 0:
		say "     Being a [if cunts of player > 0]partially [end if]male tiger, Artemis's cock immediately draws the horny feline's attention and soon she's on her knees licking and sucking at that throbbing rod.  This sends shivers of delight through your both [if artemisstatefairrt is false]as your bonded companion gives a long sigh of relief at being finally accepted by the others[otherwise]as your bonded companion releases a moan of pleasure[end if].  You are both treated to a wonderfully sensual blow job from the eager feline that only ends once she's gotten her tasty treat.";
		say "     With the pleasure of the afterglow still lingering in your dreamy mind, you feel Artemis shifting and squeezing around and inside you, quickly exciting you back to full erection so she can move onto the main event.  Taking hold of the other tigress, ";
		if a random chance of 1 in 4 succeeds and artemisstatefairrt is true:
			say "presses the horny feline to the ground and pounces atop her with a squeaking giggle.  Pressing their muzzles together, they share a kiss still creamy with your semen while lining up her [cock size desc of player] [cock of player] cock with her juicy, stretchable cunt.  Grabbing the bountiful tigress's breasts, Artemis mrowls lustfully and thrusts hard into her just as a second tigress arrives, drawn by the sounds of rubbery sex.";
			say "     Artemis smiles at the newcomer and mrowls even as she thrusts her shaft into the horny feline beneath her.  The third feline comes over, lavishing both of them with kisses while groping Artemis's throbbing ballsac, making you moan softly inside.  The new arrival moves to stand above the other, letting Artemis dive her tongue into her juicy cunt while female juices drip down onto the face of the tigress she's fucking.  Artemis puts the considerable talents she's learned while your companion to work, doing her best to satisfy the beautiful felines.  Lost in the dream-like haze of lust and pleasure, you're made to thrust into the slutty feline while lapping up the delicious tigress's juices until you groan and cum again.  After that, Artemis's lovers swap positions and they're back at it again, fucking several times before they're all thoroughly satisfied.  When Artemis pulls out the final time, she looks down to show you that she's left your glans uncovered while fucking the feline beauties, allowing their infected juices to enter your system.  As she shows you this, the naughty feline licks her muzzle slowly, giving you a fresh taste of the tainted juices on her lips, which she's also made no attempt to protect you from.";
		otherwise if a random chance of 2 in 3 succeeds:
			say "presses the horny feline to the ground and pounces atop her with a squeaking giggle.  Pressing their muzzles together, they share a kiss still creamy with your semen while lining up her [cock size desc of player] [cock of player] cock with her juicy, stretchable cunt.  Grabbing the bountiful tigress's breasts, Artemis mrowls lustfully and thrusts hard into her.";
			say "     They go at it like a lustful pair of cats in heat, the sounds of squeaking rubber and sticky sex fill the air as your body is used to pound away at the needy feline.  Artemis puts the considerable talents she's learned while your companion to work, doing her best to satisfy the beautiful feline.  Lost in the dream-like haze of lust and pleasure, you're made to thrust into the slutty feline, the pleasure building more and more.  Eventually, it gets to be too much for both of you and you orgasm again, the two felines moaning and mrowling in ecstasy.  This time the rubber tigress envelopping you doesn't let up until you're drained[if anallevel > 1], the rubber coating your bowels swelling into a bulge against your prostate and rubbing it firmly[otherwise], the rubber covering you squeazing and rubbing at a myriad of the sensitive, erogenous spots she's discovered on your body[end if].  She sits up and pulls out slowly, looking down to show you both the creamy mess you've left inside her lover and the fact that she's drawn back her rubber coating from your glans, letting the tigress's juices into your system.";
		otherwise:
			say "pulls the horny feline to sit in her lap, which she gets into with an eager, squeaking giggle.  Pressing their muzzles together, they share a kiss still creamy with your semen while the tigress lines herself up overtop of your [cock size desc of player] [cock of player] cock before sinking down onto it with her juicy, stretchable cunt.  Grabbing the bountiful tigress's breasts, Artemis mrowls lustfully and bounces the buxom kitty in her lap.";
			say "     They go at it like a lustful pair of cats in heat, the sounds of squeaking rubber and sticky sex fill the air as your body is used to pleasure the needy feline.  Artemis puts the considerable talents she's learned while your companion to work, doing her best to satisfy the beautiful feline.  Lost in the dream-like haze of lust and pleasure, you're made to thrust into the slutty feline, the pleasure building more and more.  Eventually, it gets to be too much for both of you and you orgasm again, the two felines moaning and mrowling in ecstasy.  This time the rubber tigress envelopping you doesn't let up until you're drained[if anallevel > 1], the rubber coating your bowels swelling into a bulge against your prostate and rubbing it firmly[otherwise], the rubber covering you squeazing and rubbing at a myriad of the sensitive, erogenous spots she's discovered on your body[end if].  As her lover climbs off your spent shaft, Artemis looks down to show you both the creamy mess you've left inside her lover and the fact that she's drawn back her rubber coating from your glans, letting the tigress's juices into your system.";
	otherwise if cunts of player > 0:
		say "     Being a rubber tigress much like her newfound playmate, they know where to rub and grope to get each other worked up.  You soon feel a pair of fingers sinking into your cunt while Artemis wraps her lips around one of those puffy nipples and suckles at it.  This sends shivers of delight through your both [if artemisstatefairrt is false]as your bonded companion gives a long sigh of relief at being finally accepted by the others[otherwise]as your bonded companion releases a moan of pleasure[end if].  You are both teased to a sticky climax that has hot juices running down your legs.";
		say "     With the pleasure of the afterglow still lingering in your dreamy mind, you feel Artemis shifting and squeezing around and inside you, eager for more.  Taking hold of the other tigress, ";
		if a random chance of 1 in 2 succeeds:
			say "she pulls her to the ground where they roll around together before finally settling side by side in a 69 position.  Artemis presses her muzzle between the tigress's legs even as the other's muzzle moves in to get at your [cunt size desc of player] cunt.";
			say "     They go at it like a lustful pair of thirsty kitties, lapping up the rich juices while fingering and teasing each other.  The sounds of squeaking rubber and sticky sex fill the air as your body is used to pleasure the needy feline.  Artemis puts the considerable talents she's learned while your companion to work, doing her best to satisfy the beautiful feline.  Lost in the dream-like haze of lust and pleasure, you're made to eat out that rubbery pussy while receiving the very same treatment in return.  Eventually, it gets to be too much for both of you and you orgasm again, the two felines moaning and mrowling in ecstasy.  This time the rubber tigress envelopping you doesn't let up until you've had several climaxes and she's given her tigress lover just as many in return.  As the two move apart, Artemis looks down to show you both the sopping wet mess that is your crotch and the fact that she's drawn back her rubber coating from your pussy somewhere along the line, letting the tigress's infected saliva into your system.  As she shows you this, the naughty feline licks her muzzle slowly, giving you a fresh taste of the tainted juices on her lips, which she's also made no attempt to protect you from.";
		otherwise if a random chance of 1 in 2 succeeds:
			say "she lowers herself onto her knees and buries her face between the buxom kitty's thighs.  Artemis presses her muzzle to the tigress's rubbery pussy and takes a nice, slow lick across those yielding folds.";
			say "     With the tigress's paws at Artemis's head, your companion dives into that juicy muff like a lustful, thirsty kitty.  She laps up the rich juices while her tongue plays across the rubbery folds.  She puts the considerable talents she's learned while your companion to work, doing her best to satisfy the beautiful feline while pumping several fingers into her own juicy hole.  Lost in the dream-like haze of lust and pleasure, you're made to eat out that rubbery pussy through several moaning, mewling orgasms.  As it is all finally winding down, Artemis pulls the kitty in for one final, long lick of those delicious juices.  Able to taste the rubber tigress's femmecum, you realize that somewhere along the line the naughty feline removed her coating from your mouth, allowing those tainted juices into your system.";
		otherwise:
			say "she gently coaxes the the buxom kitty onto her knees and spreads her pussy - your pussy - as an invitation for her to dive in.  Needing no more coaxing, she buries her muzzle between her lover's thighs and starts lapping at that juicy, [cunt size desc of player] cunt.  Artemis mrowls in pleasure and rubs her paws over the tigress's head, urging her on.";
			say "     The tigress works her rubber tongue along your sensitive folds and teases your clit, making you and Artemis moan in pleasure.  Having plenty of practice at this with the others of her kind, her tongue shows considerable skill and creativity, sending waves of pleasure through your somnambulistic body.  The sounds of squeaking rubber and sticky sex fill the air as your body is used to pleasure the needy feline.  Lost in the dream-like haze of lust and pleasure, you're body is used for the mutual pleasure your feline companion encapsulating you and for yourself, and a delectable treat for the tigress lapping at your dripping pussy.  Eventually, it gets to be too much for both of you and you orgasm again, the two felines moaning and mrowling in ecstasy.  This time the rubber tigress envelopping you doesn't let up until you've had several climaxes and she's finally satisfied.  As she gently pushes the tigress's head back, Artemis looks down to show you both the sopping wet mess that is your crotch and the fact that she's drawn back her rubber coating from your pussy somewhere along the line, letting the tigress's infected saliva into your system.";
	now artemisstatefairrt is true;

to artemisinfect:
	choose row monster from table of random critters;
	setmonster "Rubber tigress";
	let holdertext be "";
	now holdertext is sex entry;
	now sex entry is "nochange";
	infect;
	now sex entry is holdertext;

Section 8 - Kitty Toys

to artemismodding:
	now templust is lust of rubber tigress;
	now tempthirst is thirst of rubber tigress;
	say "     You have some options on how you may choose to modify Artemis with the toys you've obtained for her.  What did you have in mind.  Please note, these changes are permanent during this playthrough, but will be reset when you restore your saveword.";
	say "NOTE: Currently only one option, but more to come.";
	now sextablerun is 0;
	now calcnumber is -1;
	while sextablerun is 0:
		if lust of rubber tigress is 0 or thirst of rubber tigress is 0:
			say "[link]0 - examine toys[as]0[end link][line break]";
		if lust of rubber tigress is 0:
			say "[link]1 - pussy to crotch[as]1[end link][line break]";
[***]
		if thirst of rubber tigress is 0:
			say "[link]2 - dildo to crotch[as]2[end link][line break]";
[***]
		say "[link]9 - EXIT[as]9[end link][line break]";
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber >= 0 and calcnumber < 10:
			if calcnumber is 0:
				say "[artemistoydesc]";
			otherwise if calcnumber is 1 and lust of rubber tigress is 0:
				say "[artemismod1]";
			otherwise if calcnumber is 2 and thirst of rubber tigress is 0:
				say "[artemismod2]";
			otherwise if calcnumber > 2 and calcnumber < 9:
				say "-- Invalid option";
			otherwise if calcnumber is 9:
				now sextablerun is 1;
		otherwise:
			say "Invalid Option.  Pick an active option between 0 and 9.";
		wait for any key;
		say "[line break]";
	if templust is not lust of rubber tigress or tempthirst is not thirst of rubber tigress:
		say "[artemispostmod]";
		if hp of rubber tigress is 10, now hp of rubber tigress is 11;


to say artemistoydesc:
	if lust of rubber tigress is 0:
		say "     You look over the dildo you've obtained for Artemis.  The toy itself has a definite feline shape and is about 9 inches in length.  It is made of red-tinted latex, though darkens to nearly black at the base.  As stated on the packaging, it possesses what it describes as 'rubbery pleasure barbs', which are soft, barb-like stimulators a few millimeters in size.  Clearly another factor as part of its clearly feline design, you rub them with a fingertip and can't help but wonder how they'd feel.";
	if thirst of rubber tigress is 0:
		say "     Examining the vaginal sleeve you got from Lisa, you rub it gently in your hands.  The gel-like material is clear in colour and surprisingly stretchable.  While only the width of your palm when laid flat and about six inches in length, it seems to be able to stretch much further.  Given the ridged passage running along its interior, it's clear you're meant to slide it over your penis and stroke yourself off with it.  The soft, gel-like plastic its made from feels rather pleasant to the touch, making you wonder for a moment how such a thing would feel around [if cocks of player > 0]your[otherwise]a[end if]cock.";

to say artemismod1:
	say "     Deciding to install the vaginal toy on the rubber tigress, you start to open its packaging.  This gets the kitty excited, mrowling and presenting herself to you.  Clearly she's quite excited about this and you find yourself getting eager to give it a try as well.  It certainly feels like the gel-like material will be pleasant around [if cocks of player > 0]your[otherwise]a[end if]cock.  You smear some rubber cement on it so it can become fixed in place and hopefully become a part of her.";
	say "     You kneel behind her, carefully holding the prepped pseudo-pussy in one hand and caressing the tigress's rear in the other.  With her ass to you and tail raised, you notice a small problem as you're moving to place it.  The toy you've got will need to be put inside the tigress if you're going to be able to properly attach it.  Your eyes lock onto the only orifice available there and you let your fingers drift across her rubbery anus, probing it questioningly.  Certainly the tigress has no digestive system and thus no need for that hole as it is.  And given how Artemis is mrowling eagerly and pushes her hips back, it looks like she agrees with your plan.  Her hole stretches easily enough around your fingers, opening and relaxing as you probe its soft, rubbery walls.";
	say "     The plan agreed upon, you spread her hole open with the fingers of one hand and move the toy into place with the other.  With your digits inside the gel-like cunt, you start to push it into her.  At first, you have a bit of difficulty moving it into her anus, but once the first inch or so is in, it becomes easier to slide more and more in.  As it works its way deeper, the pussy toy starts to fuse with her with the tigress's colour seeping into it.  Coming to life, the changing hole ripples and squeezes around your finger as it becomes a part of her.  Once the toy's pulled fully into her, the kitty moans and mewls in pleasure, new cunt quivering as she orgasms.  As she does, the edges of what was once her anus change shape, forming wet folds and lips, turning into an invitingly wet pussy.";
	now lust of rubber tigress is 1;


to say artemismod2:
	say "     Deciding to install the dildo on the rubber tigress, you start to open its packaging.  This gets the kitty excited, mrowling and rolling over onto her back and spreading her hind limbs wide.  Clearly she's quite excited about this and you find yourself getting eager to give it a try as well.  You run your fingers across the feline toy, brushing across the soft, flexible [']barbs['].  It certainly feels like the latex cock will provide a lot of stimulation to any hole it's stuffed into.  You smear some rubber cement on the base of it so it can become fixed in place and hopefully become a part of her.";
	say "     You kneel down beside her, carefully moving the dildo into position while holding her thigh steady.  She does her best to stay still and you make sure you get it lined up and centered properly before pressing it into place.  You hold it there while the glue bonds, soon the black latex at the base of the toy and her orange rubber start to meld together, forming a sheath for what is quickly becoming her new cock.  Before being attached, the toy was fairly soft and a little floppy, having been made with a flexible latex material, but as it becomes a part of her, it grows firmer and starts to drip with slick precum lubricant.  She rocks her hips, moaning and mewling in pleasure as she thrusts into your hand until her new penis pulses and sprays a sticky load of latex semen across her body.";
	now thirst of rubber tigress is 1;

[***]

to say artemispostmod:
	say "     Artemis seems quite pleased with her new modification[if lust of rubber tigress is not templust and thirst of rubber tigress is not tempthirst]s[end if], strutting around proudly at her new sexual nature on display";
	if ( lust of rubber tigress is 1 and templust is not 1 ) and ( thirst of rubber tigress is 1 and tempthirst is not 1 ):	[gained both pussy and cock]
		say ".  She gives her new cock a long, slow lick before doing the same to her new pussy, rumbling in pleasure as her tongue plays across her freshly bonded genitals.  Obviously delighted by having her own set of them, she gives them several more licks before getting back on her paws.  She struts around with her tail raised, prowling around you.  She's clearly looking to share her good fortune with you, mrowling softly as she nuzzles at your side firmly when you don't immediately comply";
		if cocks of player > 0:
			say ".  Would you prefer to partake in her [link]pussy (Y)[as]y[end link] or her [link]cock (Y)[as]y[end link]?";
			if the player consents:
				say "[artemis_pm1]";
			otherwise:
				say "[artemis_pm2]";
		otherwise:
			say ".  Turned on by her sexual transformation, you are eager to get in on the fun.";
			say "[artemis_pm2]";
	otherwise if lust of rubber tigress is 1 and templust is not 1:		[gained pussy]
		say "[if thirst of rubber tigress is 0 or thirst of rubber tigress is 1].  She gives her new pussy a long, slow lick, rumbling in pleasure as her tongue plays across her wet, rubbery folds.  Obviously delighted by having a vagina of her own, she gives it a few more licks[otherwise]***[end if] before getting back on her paws and raising her tail, offering for you to partake in the dripping cunt you've given her.";
		if cocks of player > 0:
			say "[artemis_pm1]";
		otherwise:
			say "     With a grin on your face, you run your hands over the tigress's hips before letting your fingers slide to her wet folds.  She mewls with need and, not wanting to tease your needy pet now that she's finally got what she's desired, you move in closer.  After a slow lick, lapping up the faintly rubbery juices, you press your lips to that newly formed pussy and start licking at it in earnest.  Gripping her yielding, rubbery ass, you bury your face in her juicy snatch, working your lips and tongue at it, much to her delight.";
			if thirst of rubber tigress is 1:	[possesses a cock]
				say "     While working your tongue and lips at her new pussy, you let your hands drift to her aroused cock.  She rumbles in pleasure as your fingers slide over it, spreading her leaking lubricant across its textured surface.  The feel of those soft barbs rubbing against your palm makes you long to have them inside you.";
			otherwise if thirst of rubber tigress is 2:
				say "***";
			otherwise if thirst of rubber tigress is 3:
				say "***";
			say "     When you find the swollen button of her clit and suck down on it hard, she mrowls in delight and cums hard, fresh juices running down her thighs.  You swap between lapping at these and ravishing her sensitive button to keep her climax going for more[if thirst of rubber tigress is 1].  Her latex penis pulses and throbs in your hand, spraying its thick semen across the ground, pumping it even as you work over her new cunt[otherwise if thirst of rubber tigress is 2]***[otherwise if thirst of rubber tigress is 3]***[end if].  After moving your head back, you give her rubbery pussy a light fingering, feeling pleased at having been able to help your poor kitty pet.";
	otherwise if thirst of rubber tigress is 1 and tempthirst is not 1:		[gained cock]
		say ".  She gives her new cock a long, slow lick, rumbling in pleasure as her tongue plays across her throbbing prick, stirring it back to full erection.  Obviously delighted at having a penis of her own, she gives it a few more licks before getting back on her paws and prowling around you.  She's clearly looking to share her new appendage with you and mrowls softly and nuzzles your side firmly when you don't immediately comply.  Shall you [link]bend over (Y)[as]y[end link] and let her take you or shall you [link]suck (N)[as]n[end link] her new cock instead?";
		if the player consents:
			say "[artemis_pm2]";
		otherwise:
			say "     With a grin on your face, you run your hands over the tigress's hips before letting your fingers slide to her new manhood.  She mewls with need and, not wanting to tease your needy pet now that she's finally got a throbbing cock of her very own, you lower yourself to the ground beside her.  Leaning in closer, you give her feline shaft a slow lick, running your tongue over those soft, stimulating barbs, shivers of pleasure running through you as they brush across your tongue.  You lap up the faintly rubbery lubricant dripping from her cock's tip and find it has a pleasant taste.  You moan softly around her pulsing rod as she moves forward, thrusting her latex shaft into your mouth for you to suck on.  Gripping her yielding, rubbery ass, you bury your face in her crotch, accepting the full length of her nine inches into you as she starts humping your face with rumbles of delight.";
			if lust of rubber tigress is 1:	[possesses a pussy]
				say "     While working your tongue and lips over her new penis, you let a hand drift to her aroused pussy.  She rumbles in pleasure as your fingers slide into it, spreading those soft folds and pumping into that hot, squeezing hole.  The feel of that textured interior rubbing against your fingers makes you long to play with it more fully again sometime soon.";
			otherwise if lust of rubber tigress is 2:
				say "***";
			say "     The feel of those flexing barbs on her shaft are a delight across your palate.  Their touch is soft and stimulating and not at all rough - it makes you eager to try them in a more sensitive hole.  The thought is tempting, but you're too eager to get the kitty off at this point to switch positions and instead suck down harder on her newly gained cock.  Pushed to climax, the tigress thrusts her penis into your mouth with a mrowl of delight and cums hard.  Blast after blast of thick, latex lubricant shoots into your mouth and flows down into your belly, filling you with the warmth of her climax[if lust of rubber tigress is 1].  Fresh juices soak your hand and run down her thighs as her pussy quivers around your fingers[otherwise if lust of rubber tigress is 2]***[end if].  When she's finally drained, she steps back, popping that wonderful cock of hers from your mouth.  You give a slow, parting lick, feeling pleased at having been able to help your poor kitty pet.";


to say artemis_pm1:	[post-mod, fucking the new pussy]
	say "     With a grin on your face, you run your hands over the tigress's hips before letting your fingers slide to her wet folds.  She mewls with need and, not wanting to tease your needy pet now that she's finally got what she's desired, you move in to mount her.  Gripping her yielding, rubbery body, you sink your [cock size desc of player] [cock of player] rod into her.  Her cunt stretches and shifts size to accommodate your manhood while still feeling just a little snug.  That, coupled with the pleasure-enhancing surface of the toy now bonded to her, makes for a very enjoyable fuck.";
	if thirst of rubber tigress is 1:	[possesses a cock]
		say "     Not wanting to neglect your poor, aroused kitty's cock, you put your arms around her and take a hold of it.  She rumbles in pleasure as your fingers slide over it, spreading her leaking lubricant across its textured surface.  The feel of those soft barbs rubbing against your palm makes you long to have them inside you.";
	otherwise if thirst of rubber tigress is 2:
		say "***";
	otherwise if thirst of rubber tigress is 3:
		say "***";
	say "     You do your best to make it last for the needy kitty, but eventually you can't deny your own cascading arousal and cum hard, pumping your sticky, hot load into the mrowling feline as she soaks her thighs in juices from her stuffed cunt[if thirst of rubber tigress is 1].  Her latex penis pulses and throbs in your hand, spraying its thick semen across the ground, pumping it even as you pump your own load into her[otherwise if thirst of rubber tigress is 2]***[otherwise if thirst of rubber tigress is 3]***[end if].  After pulling you, you give her rubbery pussy a light fingering, feeling pleased at having been able to help your poor kitty pet.";
	now lastfuck of rubber tigress is turns;

to say artemis_pm2:	[post-mod, fucked by new cock]
	say "     With a grin on your face, you run your hands over the tigress's hips before letting your fingers slide to her new manhood.  She mewls with need and, not wanting to tease your needy pet now that she's finally got a throbbing cock of her very own, you lower yourself to the ground on all fours.  As soon as you raise your ass and present yourself to her, she's atop you, rumbling in pleasure and nuzzling at your neck as she tries to move into position.  You can feel the tip of her throbbing, dripping cock slide across your rear[if anallevel > 1], brushing across your anus[end if] before getting it into position.  Wasting no more time, she rolls her hips, pushing that latex toy cock into your [if cunts of player > 0]juicy pussy[otherwise]tight hole[end if].  The slick lubricant leaking from it eases its passage into you, allowing you to focus on the shivers of delight running through your body as those soft, stimulating barbs push their way into you and run along your inner walls.  You moan softly and have trouble keeping your knees steady at first, the pleasure almost overwhelming you by the time she's thrust fully into you.";
	if lust of rubber tigress is 1:	[possesses a pussy]
		say "     While enjoying the steady motion of the feline's new cock inside you, you reach back between your legs and up to her dripping pussy.  She rumbles in pleasure as your fingers slide into it, spreading those soft folds and pumping into that hot, squeezing hole.  The feel of that textured interior rubbing against your fingers makes you long to play with it more fully sometime soon.";
	otherwise if lust of rubber tigress is 2:
		say "***";
	say "     Artemis continues to fuck you with her new penis, fresh shivers of delight running through you as she accelerates her pace.  From the feel of her manhood pulsing inside you, you can tell she's close and brace yourself, pushing back harder onto her thrusting rod and squeezing your inner walls firmly around it.  This pushes your feline lover over the edge and she drives her barbed cock as deep as she can before cumming with a lustful mrowl.  Blast after blast of thick, latex lubricant shoots into your [if cunts of player > 0]pussy[otherwise]bowels[end if], filling your belly with the warmth of her climax[if lust of rubber tigress is 1].  Fresh juices soak your hand and run down her thighs as her pussy quivers around your fingers[otherwise if lust of rubber tigress is 2]***[end if].  When she's finally drained, she steps back, popping that wonderful cock of hers from your [if cunts of player > 0]snatch[otherwise]ass[end if].  You reach back and play with your creamy hole, feeling pleased at having been able to help your poor kitty pet.";


[ hp of rubber tigress ]
[ 0 = no encounter     ]
[ 1 = fed once         ]
[ 2 = refused          ]
[ 3 = tamed            ]
[ 4 = 1 nap            ]
[ 5 = 2 naps           ]
[ 6 = 3 naps - glomped ]
[ 7 = 4+ naps (willing)]
[ 8 = sleep-sex        ]
[ 9 = toy shopping     ]
[10 = toys obtained    ]
[11 = modded           ]

[ lust of rubber tigress - vagina  ]
[ 0 = not placed                   ]
[ 1 = pussy                        ]

[ thirst of rubber tigress - penis ]
[ 0 = not placed                   ]
[ 1 = cock                         ]

Section 9 - Endings

[
when play ends:
	if rubber tigress is tamed:
...
]

Artemis ends here.