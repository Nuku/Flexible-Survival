Version 1 of Francois Infections by AGentlemanCalledB begins here.
[Version 1 - Adds Cheesecake and Gingerbread infections for use with Francois.]

Section 1 - Monster Responses

when play begins:
	add { "Cheesecake" } to infections of girl;
	add { "Cheesecake" } to infections of humorous;
	add { "Gingerbread" } to infections of guy;
	add { "Gingerbread" } to infections of humorous;

Cheesecakemode is a number that varies. [1 = slim, 0 = rubenesque]

to say CheesecakeBodyDesc:
	if cheesecakemode is 1:
		say "slim and [if cunts of player > 0]feminine[else]girlish[end if], with a tight, attractive figure. A gentle prodding reveals your flesh is soft and malleable, like cheesecake[if breast size of player > 0 and breasts of player > 0 and player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso, boosting your breasts up into full view while doing little to protect your decency[else if player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso[end if]";
	else:
		say "hefty and rubenesque with a luscious [if cunts of player > 0]feminine[else]girlish[end if] figure. A gentle prodding reveals your flesh is soft and malleable, like cheesecake[if breast size of player > 0 and breasts of player > 0 and player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso, boosting your breasts up into full view while doing little to protect your decency[else if player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso[end if]";

to say CheesecakeBodyTF:
	if cheesecakemode is 1:
		say "it becomes soft and malleable, just like cheesecake, shifting to a slender [if cunts of player > 0]feminine[else]girlish[end if] form[if breast size of player > 0 and breasts of player > 0 and player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you, boosting your breasts up into full view[else if player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you[end if]";
	else:
		say "it becomes soft and malleable, just like cheesecake. You can't help but moan slightly as your form shifts, becoming plump and curvaceous, leaving you hefty and rubenesque[if breast size of player > 0 and breasts of player > 0 and player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you, boosting your breasts up into full view[else if player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you[end if]";

Definition: a person is Cheesecakeskinned:
if the skinname of the player is "Cheesecake", yes;
no;

Definition: a person is Cheesecakebodied:
if the skinname of the player is "Cheesecake", yes;
no;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Cheesecake";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";	[Text used when the monster succeeds on an attack]
	now defeated entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";				[ Text when monster loses.  Change 'Cheesecake' as above. ]
	now victory entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";					[ Text when monster wins.  Change 'Cheesecake' as above. ]
	now desc entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";						[ Description of the creature when you encounter it. ]
	now face entry is "soft and delicate, with plump strawberry red lips and whipped cream hair";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "[CheesecakeBodyDesc]";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "smooth, creamy, white and rosy red";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "[if cheesecakemode is 1]Your petite ass is tight and attractive, yet still soft and grabbable.[else]You have a luscious, plump booty.[end if]";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "strawberry red human";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it becomes soft and delicate. Your lips become plump and full as they shift to a deep red and thick billows of whipped cream form from the top of your head, framing your face nicely as it descends past your shoulders";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "[CheesecakeBodyTF]";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "it becomes soft and blemish free, shifting to a creamy white with rosy red highlights[if breast size of player > 0 and breasts of player > 0 and player is cheesecakebodied]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you, boosting your breasts up into full view[else if player is cheesecakebodied]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you[end if]";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes [if cheesecakemode is 1]tight and firm[else]plump and luscious[end if]";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "shifts to a mostly human form, except for the strawberry red colour";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 6;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 18;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 55;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if cheesecakemode is 1 and a random chance of 1 in 2 succeeds]slim[else if cheesecakemode is 1]delicate[else if a random chance of 1 in 2 succeeds]plump[else]luscious[end if]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "cheesecake";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Gingerbread";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";	[Text used when the monster succeeds on an attack]
	now defeated entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";				[ Text when monster loses.  Change 'Gingerbread' as above. ]
	now victory entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";					[ Text when monster wins.  Change 'Gingerbread' as above. ]
	now desc entry is "I am Error! - You should not be able to encounter this creature, please report how you did this.";						[ Description of the creature when you encounter it. ]
	now face entry is "devoid of any human features save for your nose and eyes, which seem to be fully functional despite appearing to be drawn on with [if cocks of player is 0 and cunts of player > 0]pink[else]blue[end if] icing";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a gingerbread [if cocks of player > 0]man[else if cunts of player > 0]woman[else]person[end if]. Your entire form is strangely flat, with no discernible joints, though you are still able to move around normally, if a little stiffly";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "dry, crusty gingerbread";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "cookie";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it is pressed flat, all your features disappearing except for your eyes and mouth which shift uncomfortably as they are overtaken by an icing-like appearance";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your joints suddenly start to become stiff. A powerful pressure builds as your body is pressed into a flattened human-like form, leaving you in the flat, featureless shape of a gingerbread [if cocks of player > 0]man[else if cunts of player > 0]woman[else]person[end if]";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "it becomes dry and crusty like gingerbread. While the cracking noises it makes are a little disconcerting at first, you still seem to be able to move without causing any damage";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "as it becomes uncomfortably tight, losing all form and definition as you backside becomes completely flat";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "shifts to a mostly human form before becoming strange, gingerbread-like flesh. It feels rough and dry, despite being perfectly soft and flexible";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 55;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flat[or]confectionary[or]gingerbread[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]cookie[or]gingerbread[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

[
when play ends:
	if bodyname of player is "Cheesecake":
		if humanity of player is less than 10:
			say "     You succumb to your Cheesecake infection.";
		else:
			say "     You survive, but were infected by the Cheesecake.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";

when play ends:
	if bodyname of player is "Gingerbread":
		if humanity of player is less than 10:
			say "     You succumb to your Gingerbread infection.";
		else:
			say "     You survive, but were infected by the Gingerbread.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Francois Infections ends here.
