Version 1 of Alt Vore by Stripes begins here.
[Version 0.1 - Rudimentary Vore System]

Section 0 - Variables

vorecount is a number that varies.

Section 1 - General Vore by Player

to vorebyplayer:
	choose row monster from the table of random critters;
	say "[vorebyplayer00]";		[Master vore scene]
	let vv be a random number between 1 and 6;
	let powerchance be 4;
	if "Beastial Power" is listed in feats of player, increase powerchance by 2;
	if a random chance of powerchance in 20 succeeds:
		if vv is 1:
			if strength of player < str entry and str entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your muscles swelling with [name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of player by 1;
				increase capacity of player by 5;
		if vv is 2:
			if Intelligence of player < int entry and int entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your mind swelling with [name entry] [one of]intelligence[or]wit[or]complexity[at random].";
				increase intelligence of player by 1;
		if vv is 3:
			if dexterity of player < dex entry and dex entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your hand-eye coordination swelling with [name entry] [one of]dexterity[or]physique[or]accuracy[at random].";
				increase dexterity of player by 1;
		if vv is 4:
			if stamina of player < sta entry and sta entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your body toughening with [name entry] [one of]stamina[or]physique[or]power[at random].";
				increase stamina of player by 1;
		if vv is 5:
			if perception of player < per entry and per entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your senses being heightened with [name entry] [one of]perception[or]aptitude[or]feral attention[at random].";
				increase perception of player by 1;
		if vv is 6:
			if charisma of player < cha entry and cha entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your social sense swelling with [name entry] [one of]charisma[or]natural charm[or]pheromones[at random].";
				increase charisma of player by 1;
	say "     Indulging in this monstrous act has further weakened your grip on your own humanity even as you feel the nanites from your prey flooding your system as your belly quickly seeks to consume them.  Your hunger, satisfied for now, is decreased dramatically.";
	decrease hunger of player by ( 4 * scale entry ) + a random number between 8 and 16;
	if hunger of player < 0, now hunger of player is 0;
	decrease humanity of player by 3;
	now researchbypass is 1;
	infect;
	now researchbypass is 0;
	increase vorecount by 1;


VoreExclusion is a marker.	[list of infections to not be vored]
when play begins:
	add { "Shemale Smooth Collie", "Raccoon", "Doberman", "Nightmare", "Sphinx", "Hyena Matriarch", "Blob", "Skunkbeast Lord", "Blue Chaffinch", "Mental Mouse", "Mushroom Men", "Sugar Ferret", "Rabbit Pack", "Peacock", "Dracovixentaur", "Dragontaur", "Vixentaur", "Yamato Dragon", "Yamato Dragoness", "Giant", "feral sea dragon", "feral sea dragoness", "Wyvern", "Awesome tree", "Hippo Strongman", "Mammoth", "Albino Mouse", "Xeno", "Tiger Cop", "Sea Lion and Orca Toys", "Siamese Cats", "Tentacle Horror", "Bear", "sewer gator", "Dragon", "sea otter", "Slut Rat", "Sprite", "cheetah", "Badger", "Opossum Sailor", "hermaphrodite latex vixen", "Wrestling Wolf", "Stag", "Wolfman", "Werewolf Costume" } to infections of VoreExclusion;


to say vorebyplayer00:	[master list to decide scenes]
	say "[vorebyplayer01]";

to say vorebyplayer01:
	choose row monster from the table of random critters;
	say "     Following the dark impulses coming from your roiling stomach, you jump upon your fallen foe and pin them down.  Too weak to put up much of a fight, you are able to restrain the [name entry].  At first, expecting sex, they don't fully resist when you manhandle them roughly[if scalevalue of player > (scale entry + 1)].  Being much smaller than you, it's easy enough to get a tight grip on them and pull them towards your lips[otherwise if scalevalue of player > scale entry].  Being a little smaller than you, it doesn't take you long to get a tight grip on them and pull them towards your lips[otherwise].  Being about as big as you, it takes a little while before you're satisfied that you've got a tight grip on them before pulling them towards your lips[end if].  Expecting a kiss at first, they prepare for this, only to have your mouth open very wide, unhinging or stretching as necessary as you stuff their head into your mouth.";
	say "    As you push the struggling [name entry] into your throat, you moan in delight, your perverse hunger taking pleasure in feeling their struggles.  They squirm delightfully as they're pulled inexorably down your throat as you push more and more of the [type entry] creature into your gaping maw.  Your tongue laps over them, tasting the treat you're stuffing yourself with, teasing and tantalizing them with your licks to give them a final thrill before they are gone.  Your belly [if scalevalue of player is scale entry]hugely[otherwise if scalevalue of player is (scale entry + 1)]considerably[otherwise]outwards[end if] with your rapidly consumed foe.  You need to take a moment, rubbing your tummy as you feel your opponent's struggles weaken before stopping entirely.  Soon afterwards, your belly starts to go down as you consume their body to satisfy your unnatural hunger.";


[
Notes:
feat first
post-vore
always eat toggle
review exclusions
non-inf vore feat
review balance
]

Alt Vore ends here.