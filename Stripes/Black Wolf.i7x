Version 1 of Black Wolf by Stripes begins here.

"Adds a Black Wolf infection to Flexible Survival for use with Andrew"

Section 1 - Monster Responses

when play begins:
	add { "Black Wolf" } to infections of Caninelist; [list of canine infections]


to say losetoblackwolf:
	say "     You were beaten by the creature.";
	if player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say beattheblackwolf:
	say "     You were victorious over the creature.";
	if libido of player > 40:
		say "     Additional paragraph for a player with a libido greater than 40. Do they want sex?";
		if player consents:
			say "     The player agreed to sex. Fun times begin.";
			if player is female:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww! The player refused the sex. Party pooper.";


to say blackwolfdesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Black Wolf"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "Andrew";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "Andrew's a lover, not a fighter."; [ Successful attack message ]
	now defeated entry is "[beattheblackwolf]"; [ Text when monster loses. ]
	now victory entry is "[losetoblackwolf]"; [ Text when monster wins. ]
	now desc entry is "[blackwolfdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "rather lupine in form, with an elongated muzzle, pointed ears and a wolfish face. Your features are rather soft and friendly though, even somewhat sexy. You have rather pretty, violet eyes";
	now body entry is "altered to have paw-like hands and digitigrade feet to go along with its otherwise rather normal build. It does possess a rather attractive, even sexy quality to it that's hard to pin down to anything specific though";
	now skin entry is "black furred";
	now tail entry is "You have a bushy, lupine tail covered in dark fur with a purple streak along its underside.";
	now cock entry is "[one of]lupine[or]knotted[or]thick[or]purple[purely at random]";
	now face change entry is "vision blurs and a dark bulge pushes out below your nose. As your altered eyes come back into focus, you can see you've grown a lupine muzzle";
	now body change entry is "your hands and feet feel like soft clay. They shift, stretch and bulge, remolding themselves to become more paw-like. As this change is subsiding, you notice that your body's changed as well, though less dramatically. You now have a rather normal looking body with an average build";
	now skin change entry is "it feels like ripples are running over it. As these pass across you, short, dark hairs are pushed out that extend further each time the wave moves across them. In time, you are covered in a thick pelt of black fur, turning to purple at your groin";
	now ass change entry is "the end of your spine forms into a black, lupine time with a streak of purple along its underside";
	now cock change entry is "it twitches and throbs, spurting cum as wonderful sensations pulse through it. It takes on a more lupine shape, forming a sheath for itself and taking on a rich, purple color";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 27; [ The monster's starting HP. ]
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 8; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 6; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;
	now cunt width entry is 8;
	now libido entry is 67; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]average-sized[or]sexy[at random]";
	now type entry is "[one of]lupine[or]wolf[purely at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Black Wolf":
		if humanity of player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Black Wolf ends here.
