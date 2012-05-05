Version 1 of Honey by Stripes begins here.

"Adds a bee girl pet named Honey."

Section 1 - Encounter

Smashed Hive is a situation.
The sarea of Smashed Hive is "Park";
when play begins:
	add Smashed Hive to badspots of girl;

Instead of resolving a Smashed Hive:
	say "     As you search through the park, you come across a giant, devastated bee hive.  The hive was built around the branches of a large tree and may have been over 15 feet tall when completed intact.  Now, broken fragments of it lay scattered around the area and only some of the upper chunks cling to the top branches to give you a scope of its size.  Scattered around the sticky rubble are the bodies of numerous bee girl drones, unmoving.  Cautiously, you step between the sticky chunks of honeycomb to take a closer look.";
	say "     As you follow the bear tracks all around the area, you can see that one or even several bears assaulted the hive for the sweet honey.  Much of the honeycomb center has been taken away, though you may be able to retrieve some for yourself.  As you look around to find a clean section to pick from, you hear a weak buzz from behind you.  Turning, you see one of the bee drone's still alive, struggling to get up despite her injuries.";
	if "medkit" is listed in invent of player:
		say "     Do you try to help the poor bee girl with your medkit or do you grab some honey while you can and make a run for it?";
		if the player consents:
			say "     Taking care not to appear threatening and trying to reassure her that you only want to help, you move slowly over to the bee girl.  She buzzes angrily at you, but stumbles and cannot remain upright.  Using your medkit, you try your best to patch her up, feeling sorry for this lone survivor";
			if ( "Expert Medic" is not listed in feats of player and a random chance of 1 in 10 succeeds ) or ( "Expert Medic" is listed in feats of player and a random chance of 8 in 100 succeeds ):
				say ".  This uses up the last of that medkit, so you hope it turns out to be worth it.";
				delete medkit;
			otherwise:
				say ".";
			say "[beegirlsaved]";
		otherwise:
			say "     Not wanting to risk getting too close to the enraged bee girl, you grab some chunks of honeycomb and make a run for it.";
			say "     Honeycomb x 5 obtained.";
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			increase score by 10;
	otherwise if "healing booster" is listed in feats of player:
		say "     Do you try to help the poor bee girl with a healing booster or do you grab some honey while you can and make a run for it?";
		if the player consents:
			say "     Taking care not to appear threatening and trying to reassure her that you only want to help, you move slowly over to the bee girl.  She buzzes angrily at you, but stumbles and cannot remain upright.  Moving to her side, you inject her with the healing booster, feeling sorry for this lone survivor and hoping it was worth using a booster to save her.";
			say "[beegirlsaved]";
		otherwise:
			say "     Not wanting to risk getting too close to the enraged bee girl, you grab some chunks of honeycomb and make a run for it.";
			say "     Honeycomb x 5 obtained.";
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			add "Honeycomb" to invent of player;
			increase score by 10;
	otherwise:
		say "     Feeling there is nothing that you can do for her, and not wanting to risk staying around an enraged bee girl, you grab some chunks of honeycomb and make a break for it.";
		say "     Honeycomb x 5 obtained.";
		add "Honeycomb" to invent of player;
		add "Honeycomb" to invent of player;
		add "Honeycomb" to invent of player;
		add "Honeycomb" to invent of player;
		add "Honeycomb" to invent of player;
		increase score by 10;
	Now Smashed Hive is resolved;


to say beegirlsaved:
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Thanks to your timely medical assistance, the bee girl is stabilized.  You take a moment to look her over while she's passed out.  She has a small body, roughly four feet tall and youthful looking.  Her arms are human, but ending in delicate hands with chitinous plates over them.  Growing from her sides, she has a smaller pair of insectile arms tucked to her sides.  Much of her skin is covered in chitin plating with soft, fluffy hairs like a bumblebee, though her main arms, shoulders and upper chest have human skin, making it seem as if she's wearing a yellow and black dress.  Her face is cute and youthful, with long, blond hair.  Poking from her hair are a pair of antennae and she has some plating on her chin and throat.  Her cute, little rear has a bee's abdomen attached to it, though her stinger's been broken off.  Clearly she went down fighting and this was the main injury you had to patch up, as bees normally die after stinging once.";
	say "     As you're patting her patched-up abdomen, she regains consciousness and starts upright.  She buzzes angrily at you before realizing that she's been healed.  She calms down and smiles at you.  'Uhh... thank you,' she buzzes softly.  Wringing her lower hands together nervously, she gets up and looks around at her ruined hive.  With tears in her eyes, she wraps her arms around you and clutches to you tightly.  It seems you've made a new friend.";
	say "     Stroking her soft hair and speaking reassuringly, you manage to calm her down and she smiles up at you.  'I'm Honey.  Oh!  The honey!' she exclaims, running around to gather up as much as she can of the hive's destroyed supply, putting it into a bag so she'll have something to live off of without her home and sisters.  'Here.  You can have a little too,' she says, giving you a couple of pieces as thanks.  When you head off, she follows along, having nowhere else to go but with her rescuer.";
	say "     Honeycomb x 2 obtained.";
	add "Honeycomb" to invent of player;
	add "Honeycomb" to invent of player;
	increase score by 20;
	now bee girl is tamed;
	say "     (The bee girl is now tamed! You can make it your active pet by typing [bold type][link]pet bee girl[as]pet bee girl[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";


Section 2 - Bee Girl Pet

bee girl is a pet.  bee girl is a part of the player;
The description of bee girl is "The bee drone has a youthful appearance despite her maturity.  Her face, shoulders, arms and upper chest appear to be mostly human, though her lower body and hands are covered in insectile plating, looking like a tight-fitting yellow and black dress.  She has a small pair of insect arms at her sides, which can be used to hold small things.  The bee abdomen attached to her tight bottom lacks its stinger.";
The weapon damage of bee girl is 3;
The level of bee girl is 1;
The Dexterity of bee girl is 16;
The summondesc of bee girl is "Buzzing cheerily at your call, the bumblebee drone flies over to join your side.";
The assault of bee girl is "[one of]The bee girl buzzes around, slapping and punching at your foe from behind![or]The bee girl dive bombs the enemy, jabbing with her stinger-less abdomen repeatedly and bashing her fists on their back, buzzing wildly![or]Buzzing angrily, the bumblebee scratches and claws at your foe with her hard, chitinous fingertips![or]The bee drone tosses globs of sticky honey onto your foe, slowing them down while they get unstuck![or]The buzzing drone drops an armload of small rocks and junk onto your enemy from above![at random]";

instead of sniffing the bee girl:
	say "Honey, unsurprisingly, smells of honey.";


Section 3 - Sexxxings

An everyturn rule:
	if companion of player is bee girl:
		increase libido of player by 5;
		let diceroll be a random number from 45 to 200;			[lust check vs 200, player libido 45 or less auto-wins]
		if diceroll < libido of player:
			let T be a random number between 1 and 5;
			if cocks of player > 0:
				if T is 1 or T is 2:
					say "[beesexmale1]";
				if T is 3 or T is 4:
					say "[beesexmale2]";
				if T is 5:
					say "[beesexhoneypot]";
			otherwise:
				if T is 1 or T is 2:
					say "[beesexfemale1]";
				if T is 3 or T is 4:
					say "[beesexfemale2]";
				if T is 5:
					say "[beesexhoneypot]";

to say beesexmale1:
	say "     Drawn to her by her sweet scent, you take Honey into your arms and run your hands over her body.  She buzzes happily and hugs you tightly.  Lifting her small body up into your arms, you slide your cock into her warm pussy.  Normally hidden under a puff of soft, golden hair, her honeypot is tight and wet around your cock.  Her wings buzz excitedly as she bounces in your arms, riding your cock until you finally pump your thick seed into her.";
	now libido of player is ( libido of player + 1 ) / 3;

to say beesexmale2:
	say "     Sensing your arousal, Honey snuggles up to you and nuzzles your crotch.  Her tongue, long and thin, wraps around your shaft and wriggles over it.  She takes you into her mouth and starts sucking hungrily while that strange tongue teases you incessantly.  Her upper arms run over your body, stroking and caressing you while her smaller ones cup your balls and knead them until you finally cum.  She drinks down your seed, clearly loving the taste and always happy to repay you for your kindness.";
	now libido of player is ( libido of player + 1 ) / 2;

to say beesexfemale1:
	say "     Sensing your arousal, Honey snuggles up to you and nuzzles you crotch.  Her tongue, long and thin, slides out to tease at your wet pussy.  Pressing her lips to your dripping folds, she slides that wriggling tongue down into you, making you moan in delight.  Her tongue, quite skillfully delves to your very depths to taste your nectar.  You cum several times and she happily drinks down your sweet waters until you're both satisfied.";
	now libido of player is ( libido of player + 1 ) / 2;

to say beesexfemale2:
	say "     The cute bee girl buzzes over to you and snuggles close.  As you run your hands through her soft hair and caress her sensitive antennae, she runs the small hand from one of her lower arms across your wet pussy, teasing your sensitive folds.  After a little stroking, she slips a finger into you, then another, then the whole of the little hand.  The chitin is firm, but flexes and feels very nice stuffed inside your needy cunt.  She drives it into you again and again until you orgasm loudly.  As you get back on the move, you catch her licking and sucking your juices from her little hand with a grin.";
	now libido of player is ( libido of player + 1 ) / 3;

to say beesexhoneypot:
	say "     The bee girl's antennae twitch, sensing you a moment before you pounce her into a hug.  Buzzing playfully, you roll her onto her back and bury your face between her legs.  You nuzzle at the soft, golden hair covering her pussy and start lapping at her honeypot.  And how appropriate that name is for it, for her juices are thick, sweet and rich like honey.  Loving her taste, you drive her to several orgasms before finally stopping.  She hugs you tightly and uses her long, slender tongue to lick away the sticky honey from your face.";
	now libido of player is ( ( libido of player + 1 ) * 2 ) / 3;
	Decrease hunger of player by 6;
	If hunger of player < 0, now hunger of player is 0;
	Increase thirst of player by 1;


Section 4 - Endings

when play ends:
	if bee girl is tamed:
		if humanity of player is less than 10 and bodyname of player is "black equinoid":
			now tempnum is 0;		[content in black equinoid]
		if humanity of player is less than 10 and bodyname of player is "Drone Wasp":
			now tempnum is 0;		[content in black equinoid]
		otherwise if humanity of player is less than 10:
			say "     When you succumb and end up giving in to your instincts, Honey ends up leaving you.  She buzzes off sadly into the city to find a new hive.";
		otherwise:
			say "     When the military comes to rescue you and the other survivors they can find, Honey is able to come with you.  Her small, girlish looks and her cute offer of honey from her precious bag wins over the gruff soldiers.  As you're heading off, she grins and winks playfully to you, acting like an innocent little girl in front of the soldiers.  A sample of the honey is tested just to be safe, but it is clean and non-infectious, as you already know.  Honey keeps up her little girl act, claiming to be orphaned (which is true enough), and is released into your custody.";
			say "     When you set up your new life, Honey takes over a disused shed near your home and starts turning it into a new hive.  With the royal jelly she hid at the bottom of her bag, she transforms herself into a new queen and gathers herself some new bee girl drones.  Honey, now voluptuous and womanly, is a frequent lover of yours.  You spent many a sunny day in her hidden hive with attention lavished on you both by her and her many lovely and lustful drones.";

Honey ends here.