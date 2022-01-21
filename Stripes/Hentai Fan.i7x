Version 1 of Hentai Fan by Stripes begins here.

"Adds a Hentai Fan unique foe to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say hentaifandesc:
	setmongender 3; [creature is male]
	say "     The young man before you has become a strange, mutated creature, possibly because of his exposure to the contents of the anime being shown. Like the girls, his proportions are a little cartoonishly skewed and his eyes are unusually large. Similarly, his skin unnaturally smooth and even in tone, though a paler shade of pink than the girls. Unlike them, this guy would have much difficulty passing himself off as human even at a glance thanks to the foursome of fleshy tentacles growing from his back. Phallic-tipped and dripping with precum as they undulate, they move towards you with obvious intent, an intent echoed by the horny fellow's stiff 9 inch cock.";
	if BodyName of Player is "Anime Babe":
		say "     The sight of those squirming tendrils as well as the sights and sounds of tentacular sex on the television is very distracting to your anime girl body. You moan and squeal in barely suppressed pleasure as those tentacles draw nearer, your eyes drawn between them and the images on the screen. A growing part of you longs for what you're seeing in the animation to be re-enacted right now.";
		decrease plfleebonus by 4;
		decrease pldodgebonus by 4;
		decrease plmindbonus by 4;
		now HP of Player is ( 3 * HP of Player ) / 4;
		now Libido of Player is ( 100 + Libido of Player + Libido of Player + Libido of Player ) / 4;

to say losetohentaifan:
	say "     Having beaten you, the tentacled creature grabs you and pulls you fully into the room and pushes you down in front of the television.";

to say beatthehentaifan:
	say "     Your final blow leaves the tentacled creature stunned, swirls in his eyes.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [name of the overall species of the infection, used for children, ...]
	add "Hentai Fan" to infections of MaleList;
	add "Hentai Fan" to infections of BipedalList;
	now Name entry is "Hentai Fan"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
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
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 14;
	now cha entry is 9;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 80; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 85; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "erudite"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "conceptual"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




[
Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Hentai Fan Infection"	"Infection"	""	Hentai Fan Infection rule	1000	false

This is the Hentai Fan Infection rule:
	if Player has a body of "Hentai Fan":
		trigger ending "Hentai Fan Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your hentaifan infection.";
		else:
			say "     You survive, but were infected by the hentaifan.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Hentai Fan ends here.
