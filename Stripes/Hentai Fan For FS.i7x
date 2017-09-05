Version 1 of Hentai Fan For FS by Stripes begins here.

"Adds a Hentai Fan unique foe to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Hentai Fan" } to infections of guy;
	add { "Hentai Fan" } to infections of VoreExclusion;	[list of critters not to be vored]

to say hentaifandesc:
	setmongender 3;		[creature is male]
	say "     The young man before you has become a strange, mutated creature, possibly because of his exposure to the contents of the anime being shown. Like the girls, his proportions are a little cartoonishly skewed and his eyes are unusually large. Similarly, his skin unnaturally smooth and even in tone, though a paler shade of pink than the girls. Unlike them, this guy would have much difficulty passing himself off as human even at a glance thanks to the foursome of fleshy tentacles growing from his back. Phallic-tipped and dripping with precum as they undulate, they move towards you with obvious intent, an intent echoed by the horny fellow's stiff 9 inch cock.";
	if bodyname of player is "Anime Babe":
		say "     The sight of those squirming tendrils as well as the sights and sounds of tentacular sex on the television is very distracting to your anime girl body. You moan and squeal in barely suppressed pleasure as those tentacles draw nearer, your eyes drawn between them and the images on the screen. A growing part of you longs for what you're seeing in the animation to be re-enacted right now.";
		decrease plfleebonus by 4;
		decrease pldodgebonus by 4;
		decrease plmindbonus by 4;
		now hp of player is ( 3 * hp of player ) / 4;
		now libido of player is ( 100 + libido of player + libido of player  + libido of player ) / 4;

to say losetohentaifan:
	say "     Having beaten you, the tentacled creature grabs you and pulls you fully into the room and pushes you down in front of the television.";

to say beatthehentaifan:
	say "     Your final blow leaves the tentacled creature stunned, swirls in his eyes.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hentai Fan";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The tentacle creature[or]The tentacled young man[or]The tentacled student[or]The mutant fanboy[or]The grabby otaku[at random] [one of]strikes at you with his sticky tentacles[or]slides a tentacle across your loins[or]manages to pinch your ass while his tentacles are assaulting you[or]drones on incessantly about anime and manga, muddling your mind[or]fakes you out with his tentacles to instead punch you[at random].";
	now defeated entry is "[beatthehentaifan]";
	now victory entry is "[losetohentaifan]";
	now desc entry is "[hentaifandesc]";
	now face entry is "not applicable";
	now body entry is "not applicable";
	now skin entry is "not applicable";
	now tail entry is "not applicable";
	now cock entry is "not applicable";
	now face change entry is "not applicable";
	now body change entry is "not applicable";
	now skin change entry is "not applicable";
	now ass change entry is "not applicable";
	now cock change entry is "not applicable";
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11;			[ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 14;
	now cha entry is 9;
	now sex entry is "nochange";		[ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 80;			[ The monster's starting hit points. ]
	now lev entry is 12;			[ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "erudite";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "conceptual";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

[
when play ends:
	if bodyname of player is "Hentai Fan":
		if humanity of player is less than 10:
			say "     You succumb to your hentaifan infection.";
		else:
			say "     You survive, but were infected by the hentaifan.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Hentai Fan For FS ends here.
