Version 2 of Coyote by Darthan begins here.
[ Version 2 - Tweaked target gender shifting ]
"Adds a Coyote creature to Flexible Survival's Wandering Monsters table for impregchance and infect for Diego."


Section 1 - Monster Responses

[ Use 'to say xxxxx' for overlong text boxes or complex situations, using '[xxxxx]' (in square brackets) within a say statement to execute them.  Typically, these are needed if there are a lot of cock/species/cunt checks. ]

[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Template' with your creature's name entry.  Case sensitive.]


to say losetocoyote:
	say "You shouldn't be seeing this.";
	if cocks of player > 0:
		say "Really, how did you do this?";
	otherwise:
		say "Really, how did you do this?";

to say beatthecoyote:
	say "You shouldn't be seeing this.";
	if libido of player > 40:
		say "How did you get this?";
		if the player consents:
			say "Sorry, you shouldn't have gotten here.";
			if cunts of player > 0:
				say "Really, how did you get here?";
			otherwise:
				say "Really, how did you get here?";
		otherwise:
			say "Not sure how you got here.";


to say coyotedesc:
	say "There is really no need for a description.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Coyote";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The coyote [one of]attacks you in some abstract manner[or]leaves you with greater understanding, thereby lowering your resistance to it[or]batters you with examples[or]firmly makes its point[at random]!";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthecoyote]";
	now victory entry is "[losetocoyote]";
	now desc entry is "[coyotedesc]";
	now face entry is "a tan furred canine muzzle full of sharp teeth, your golden eyes survey your surroundings taking in everything around you, your coyote ears twitch as if listening for something. Your lips curl back in a wicked grin as you think about all the mischief you will cause";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "thin and lanky, with digitigrade legs that end in padded coyote paws, your hands a cross between a human's and a coyote's padded paws. Your bony body's appearance belies its actual strength and agility";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "tan, fur covered";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a [one of]bushy[or]scruffy[at random] tail that sways happily as you move.";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]canine[or]coyote[or]coyote-like[or]knotted[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "as your mouth stretches and pushes forward in a massive yawning motion, the muscles reforming as it pushes out into a sleek tan muzzle, while your eyes blur as they shift in both colour and position. New sounds and smells explode through your enhanced senses as your new coyote muzzle finishes forming and your ears finish shifting into proper canine ears, swiveling around on top of your head like a coyote's";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your shape changes and seems to become lanky, even looking a little bony and malnourished.  Your muscles become smaller and thinner, but you feel no loss of strength or agility from this.  When the changes start to affect your feet, they almost slip out from under you as your heels shift upwards and your weight shifts to balance on the balls of your changing feet.  You almost stumble before suddenly finding yourself able to balance easily on your new coyote-like paws.  As you take a few steps, you flex your coyote-like hands, a mix of paw and hand with pads and blunted claws";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "a soft tingling sensation spreads across your skin as soft, scraggly, tan coyote fur begins to push its way out of your body, swiftly covering your body in a sexy coat of thick tan fur that is always a little scruffy";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a strange tingling sensation seems to come from your rear as it tightens somewhat, then you can feel a strong pulling sensation as a tan, bushy canine tail pushes out from your rear, lengthening until it is down past your knees before your new appendage is finished growing";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your shaft thins and changes, its tip tapering to a point while its base seems to swell up slightly before being covered in a soft tan sheath of fur. Your balls tingle slightly as they swell with strongly fertile coyote seed";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 13;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15;			[ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 20;
	now cha entry is 15;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";	[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 4;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 1;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 0;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]wiry[or]lanky[or]bony[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "canine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

to coyotify: [Used for infection purposes.]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Coyote":
			now monster is y;
			break;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise if Diegochanged is 0: [Male Diego]
		now sex entry is "Female";
	otherwise if Diegochanged is 1: [Herm Diego]
		now sex entry is "Both";
	otherwise if Diegochanged is 2: [Female Diego]
		now sex entry is "Male";
	now non-infectious entry is false;
	infect;
	now non-infectious entry is true;
	if ( diegochanged is 0 and sex entry is not "Female" ) or ( diegochanged is 2 and sex entry is "Female" ):
		say "Diego gets a puzzled look on [if diegochanged is 0]his[otherwise]her[end if] face then suddenly breaks out into a fit of laughter. 'Guess the trick really was on me.' You can't help but wonder what [if diegochanged is 0]he[otherwise]she[end if] meant by that.";


[
when play ends:
	if bodyname of player is "Template":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Coyote ends here.
