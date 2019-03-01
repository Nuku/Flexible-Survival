Version 3 of Coyote by Darthan begins here.
[ Version 2 - Tweaked target gender shifting ]
[ Version 3 - Prepped for use as a special event enemy ]

"Adds a Coyote creature to Flexible Survival's Wandering Monsters table for impregchance and infect for Diego."

Section 1 - Monster Responses

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


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Coyote";
	now enemy title entry is "Coyote Trickster";
	now enemy name entry is "Diego";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "The coyote [one of]makes a fist and punches you[or]bites your hand as you try to get him[or]delivers a painful kick to your leg[or]pushes you and makes you fall down[at random]!";
	now defeated entry is "[Coyote Loses]";
	now victory entry is "[Coyote Wins]";
	now desc entry is "[CoyoteDesc]";
	now face entry is "a tan-furred canine muzzle full of sharp teeth, your golden eyes survey your surroundings taking in everything around you, your coyote ears twitch as if listening for something. Your lips curl back in a wicked grin as you think about all the mischief you will cause"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "thin and lanky, with digitigrade legs that end in padded coyote paws, your hands a cross between a human's and a coyote's padded paws. Your bony body's appearance belies its actual strength and agility"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "tan, fur-covered"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "You have a [one of]bushy[or]scruffy[at random] tail that sways happily as you move."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]canine[or]coyote[or]coyote-like[or]knotted[at random]"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
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
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 4; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 1; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 0; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]wiry[or]lanky[or]bony[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to coyotify: [Used for infection purposes.]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Coyote":
			now monster is y;
			break;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else if Diegochanged is 0: [Male Diego]
		now sex entry is "Female";
	else if Diegochanged is 1: [Herm Diego]
		now sex entry is "Both";
	else if Diegochanged is 2: [Female Diego]
		now sex entry is "Male";
	now non-infectious entry is false;
	infect;
	now non-infectious entry is true;
	if ( diegochanged is 0 and sex entry is not "Female" ) or ( diegochanged is 2 and sex entry is "Female" ):
		say "Diego gets a puzzled look on [if diegochanged is 0]his[else]her[end if] face then suddenly breaks out into a fit of laughter. 'Guess the trick really was on me.' You can't help but wonder what [if diegochanged is 0]he[else]she[end if] meant by that.";


[
when play ends:
	if bodyname of player is "Template":
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

Coyote ends here.
