Version 3 of Coyote by Wahn begins here.
[Original by Darthan]
[ Version 2 - Tweaked target gender shifting ]
[ Version 3 - Prepped for use as a special event enemy ]
[ Version 3.1 - moved to Wahn]

"Adds a Coyote creature to Flexible Survival's Monsters table (just for impregnation and infec for Diego, no actual monster)."

Section 1 - Creature Responses

to say Coyote Wins:
	if inasituation is true: [to use a general coyote enemy in a scene]
		say ""; [dealt with at the event source]
	else: [empty, as this is not a roaming monster]
		say "Error: Please report how you saw this on the FS Discord or Forum.";

to say Coyote Loses:
	if inasituation is true: [to use a general coyote enemy in a scene]
		say ""; [dealt with at the event source]
	else: [empty, as this is not a roaming monster]
		say "Error: Please report how you saw this on the FS Discord or Forum.";

to say CoyoteDesc:
	if inasituation is true: [to use a general coyote enemy in a scene]
		say ""; [dealt with at the event source]
	else: [empty, as this is not a roaming monster]
		say "There is really no need for a description.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Coyote"; [name of the overall species of the infection, used for children, ...]
	add "Coyote" to infections of CanineList;
	add "Coyote" to infections of FurryList;
	add "Coyote" to infections of NatureList;
	add "Coyote" to infections of MaleList;
	add "Coyote" to infections of TaperedCockList;
	add "Coyote" to infections of KnottedCockList;
	add "Coyote" to infections of SheathedCockList;
	add "Coyote" to infections of BipedalList;
	add "Coyote" to infections of TailList;
	now Name entry is "Coyote";
	now enemy title entry is "Coyote Trickster";
	now enemy Name entry is "Diego";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The coyote [one of]makes a fist and punches you[or]bites your hand as you try to get him[or]delivers a painful kick to your leg[or]pushes you and makes you fall down[at random]!";
	now defeated entry is "[Coyote Loses]";
	now victory entry is "[Coyote Wins]";
	now desc entry is "[CoyoteDesc]";
	now face entry is "a tan-furred canine muzzle full of sharp teeth, your golden eyes survey your surroundings taking in everything around you, your coyote ears twitch as if listening for something. Your lips curl back in a wicked grin as you think about all the mischief you will cause"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "thin and lanky, with digitigrade legs that end in padded coyote paws, your hands a cross between a human's and a coyote's padded paws. Your bony body's appearance belies its actual strength and agility"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "tan, fur-covered"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a [one of]bushy[or]scruffy[at random] tail that sways happily as you move."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]canine[or]coyote[or]coyote-like[or]knotted[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "as your mouth stretches and pushes forward in a massive yawning motion, the muscles reforming as it pushes out into a sleek tan muzzle, while your eyes blur as they shift in both color and position. New sounds and smells explode through your enhanced senses as your new coyote muzzle finishes forming and your ears finish shifting into proper canine ears, swiveling around on top of your head like a coyote's"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your shape changes and seems to become lanky, even looking a little bony and malnourished. Your muscles become smaller and thinner, but you feel no loss of strength or agility from this. When the changes start to affect your feet, they almost slip out from under you as your heels shift upwards and your weight shifts to balance on the balls of your changing feet. You almost stumble before suddenly finding yourself able to balance easily on your new coyote-like paws. As you take a few steps, you flex your coyote-like hands, a mix of paw and hand with pads and blunted claws"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "a soft tingling sensation spreads across your skin as soft, scraggly, tan coyote fur begins to push its way out of your body, swiftly covering your body in a sexy coat of thick tan fur that is always a little scruffy"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a strange tingling sensation seems to come from your rear as it tightens somewhat, then you can feel a strong pulling sensation as a tan, bushy canine tail pushes out from your rear, lengthening until it is down past your knees before your new appendage is finished growing"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your shaft thins and changes, its tip tapering to a point while its base seems to swell up slightly before being covered in a soft tan sheath of fur. Your balls tingle slightly as they swell with strongly fertile coyote seed"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 14;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 8; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 1; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 65; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]wiry[or]lanky[or]bony[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




to Coyotify: [Used for infection purposes.]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Coyote":
			now MonsterID is y;
			break;
	if diego's heirloom collar is equipped:
		now sex entry is "Female";
	else if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else if Diegochanged is 0: [Male Diego]
		now sex entry is "Female";
	else if Diegochanged is 1: [Herm Diego]
		now sex entry is "Both";
	else if Diegochanged is 2: [Female Diego]
		now sex entry is "Male";
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect;
	now non-infectious entry is true;
	if Diego is visible and (( diegochanged is 0 and sex entry is not "Female" ) or ( diegochanged is 2 and sex entry is "Female" )):
		say "Diego gets a puzzled look on [if diegochanged is 0]his[else]her[end if] face then suddenly breaks out into a fit of laughter. 'Guess the trick really was on me.' You can't help but wonder what [if diegochanged is 0]he[else]she[end if] meant by that.";


[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Coyote Infection"	"Infection"	""	Coyote Infection rule	1000	false

This is the Coyote Infection rule:
	if Player has a body of "Coyote":
		trigger ending "Coyote Infection";
		if humanity of Player < 10:
			say "     You succumb to your coyote infection.";
		else:
			say "     You survive, but were infected by the coyote.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Coyote ends here.
