Version 2 of Black Wolf by Stripes begins here.

"Adds a Black Wolf infection to Flexible Survival for use with Andrew"

[Version 2 - Added Infection items - Gherod]

Section 1 - Creature Responses

to say losetoblackwolf:
	say "     You were beaten by the creature.";
	if Player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say beattheblackwolf:
	say "     You were victorious over the creature.";
	if Libido of Player > 40:
		say "     Additional paragraph for a player with a libido greater than 40. Do they want sex?";
		if Player consents:
			say "     The player agreed to sex. Fun times begin.";
			if Player is female:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww! The player refused the sex. Party pooper.";


to say blackwolfdesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wolf"; [name of the overall species of the infection, used for children, ...]
	add "Black Wolf" to infections of CanineList;
	add "Black Wolf" to infections of FurryList;
	add "Black Wolf" to infections of NatureList;
	add "Black Wolf" to infections of MaleList;
	add "Black Wolf" to infections of TaperedCockList;
	add "Black Wolf" to infections of KnottedCockList;
	add "Black Wolf" to infections of SheathedCockList;
	add "Black Wolf" to infections of BipedalList;
	add "Black Wolf" to infections of TailList;
	now Name entry is "Black Wolf"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Andrew";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
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
	now ass change entry is "the end of your spine forms into a black, lupine tail with a streak of purple along its underside";
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
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 8;
	now SeductionImmune entry is false;
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]average-sized[or]sexy[at random]";
	now type entry is "[one of]lupine[or]wolf[purely at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"black wolf fur"	"A tuft of black fur that looks like it has been pulled out of the coat of a wolf. It's nicely soft."	0	black wolf fur

black wolf fur is a grab object.
It is temporary.
black wolf fur is infectious.
Strain of black wolf fur is "Black Wolf".
Usedesc of black wolf fur is "[black wolf fur use]";

to say black wolf fur use:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";

instead of sniffing black wolf fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"black wolf cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Black Wolf' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	black wolf cum

black wolf cum is a grab object.
black wolf cum is cum.
black wolf cum is infectious.
Strain of black wolf cum is "Black Wolf".
Usedesc of black wolf cum is "[black wolf cum use]";

to say black wolf cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing black wolf cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"black wolf man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Black Wolf Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	black wolf man-milk

black wolf man-milk is a grab object.
black wolf man-milk is milky.
Purified of black wolf man-milk is "distilled milk".
black wolf man-milk is infectious.
Strain of black wolf man-milk is "Black Wolf".
Usedesc of black wolf man-milk is "[black wolf man-milk use]";

to say black wolf man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the canine man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing black wolf man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

[
Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Black Wolf Infection"	"Infection"	""	Black Wolf Infection rule	1000	false

This is the Black Wolf Infection rule:
	if Player has a body of "Black Wolf":
		trigger ending "Black Wolf Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Black Wolf ends here.
