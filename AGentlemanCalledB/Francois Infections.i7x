Version 1 of Francois Infections by AGentlemanCalledB begins here.
[Version 1 - Adds Cheesecake and Gingerbread infections for use with Francois.]

Section 1 - Creature Responses

Cheesecakemode is a number that varies. [1 = slim, 0 = rubenesque]

to say CheesecakeBodyDesc:
	if cheesecakemode is 1:
		say "slim and [if Player is female]feminine[else]girlish[end if], with a tight, attractive figure. A gentle prodding reveals your flesh is soft and malleable, like cheesecake[if Breast Size of Player > 0 and Nipple Count of Player > 0 and player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso, boosting your breasts up into full view while doing little to protect your decency[else if Player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso[end if]";
	else:
		say "hefty and rubenesque with a luscious [if Player is female]feminine[else]girlish[end if] figure. A gentle prodding reveals your flesh is soft and malleable, like cheesecake[if Breast Size of Player > 0 and Nipple Count of Player > 0 and player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso, boosting your breasts up into full view while doing little to protect your decency[else if Player is cheesecakeskinned]. You have a delicious corset made of flaky pastry crust formed tightly around your torso[end if]";

to say CheesecakeBodyTF:
	if cheesecakemode is 1:
		say "it becomes soft and malleable, just like cheesecake, shifting to a slender [if Player is female]feminine[else]girlish[end if] form[if Breast Size of Player > 0 and Nipple Count of Player > 0 and player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you, boosting your breasts up into full view[else if Player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you[end if]";
	else:
		say "it becomes soft and malleable, just like cheesecake. You can't help but moan slightly as your form shifts, becoming plump and curvaceous, leaving you hefty and rubenesque[if Breast Size of Player > 0 and Nipple Count of Player > 0 and player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you, boosting your breasts up into full view[else if Player is cheesecakeskinned]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you[end if]";

Definition: a person is Cheesecakeskinned:
	if Player has a skin of "Cheesecake", yes;
	no;

Definition: a person is Cheesecakebodied:
	if Player has a body of "Cheesecake", yes;
	no;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Cheesecake"; [name of the overall species of the infection, used for children, ...]
	add "Cheesecake" to infections of HumorousList;
	add "Cheesecake" to infections of FoodList;
	add "Cheesecake" to infections of FemaleList;
	add "Cheesecake" to infections of BipedalList;
	now Name entry is "Cheesecake"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]"; [ Successful attack message ]
	now defeated entry is "[NonCombatError]"; [ Text when monster loses. Change 'Cheesecake' as above. ]
	now victory entry is "[NonCombatError]"; [ Text when monster wins. Change 'Cheesecake' as above. ]
	now desc entry is "[NonCombatError]"; [ Description of the creature when you encounter it. ]
	now face entry is "soft and delicate, with plump strawberry red lips and whipped cream hair"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "[CheesecakeBodyDesc]"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "smooth, creamy, white and rosy red"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "[if cheesecakemode is 1]Your petite ass is tight and attractive, yet still soft and grabbable[else]You have a luscious, plump booty[end if]."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "strawberry red human"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it becomes soft and delicate. Your lips become plump and full as they shift to a deep red and thick billows of whipped cream form from the top of your head, framing your face nicely as it descends past your shoulders"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "[CheesecakeBodyTF]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "it becomes soft and blemish free, shifting to a creamy white with rosy red highlights[if Breast Size of Player > 0 and Nipple Count of Player > 0 and player is cheesecakebodied]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you, boosting your breasts up into full view[else if Player is cheesecakebodied]. You feel a sudden tightness forming around your body as a tight corset made of flaky pastry forms around you[end if]"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes [if cheesecakemode is 1]tight and firm[else]plump and luscious[end if]"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "shifts to a mostly human form, except for the strawberry red color"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 18; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if cheesecakemode is 1 and a random chance of 1 in 2 succeeds]slim[else if cheesecakemode is 1]delicate[else if a random chance of 1 in 2 succeeds]plump[else]luscious[end if]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "cheesecake"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Gingerbread"; [name of the overall species of the infection, used for children, ...]
	add "Gingerbread" to infections of HumorousList;
	add "Gingerbread" to infections of FoodList;
	add "Gingerbread" to infections of MaleList;
	add "Gingerbread" to infections of BipedalList;
	now Name entry is "Gingerbread"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]"; [ Successful attack message ]
	now defeated entry is "[NonCombatError]"; [ Text when monster loses. Change 'Gingerbread' as above. ]
	now victory entry is "[NonCombatError]"; [ Text when monster wins. Change 'Gingerbread' as above. ]
	now desc entry is "[NonCombatError]"; [ Description of the creature when you encounter it. ]
	now face entry is "devoid of any human features save for your nose and eyes, which seem to be fully functional despite appearing to be drawn on with [if Player is purefemale]pink[else]blue[end if] icing"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a gingerbread [if Player is male]man[else if Player is female]woman[else]person[end if]. Your entire form is strangely flat, with no discernible joints, though you are still able to move around normally, if a little stiffly"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "dry, crusty gingerbread"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "cookie"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it is pressed flat, all your features disappearing except for your eyes and mouth which shift uncomfortably as they are overtaken by an icing-like appearance"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your joints suddenly start to become stiff. A powerful pressure builds as your body is pressed into a flattened human-like form, leaving you in the flat, featureless shape of a gingerbread [if Player is male]man[else if Player is female]woman[else]person[end if]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "it becomes dry and crusty like gingerbread. While the cracking noises it makes are a little disconcerting at first, you still seem to be able to move without causing any damage"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now Ass Change entry is "as it becomes uncomfortably tight, losing all form and definition as your backside becomes completely flat"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "shifts to a mostly human form before becoming strange, gingerbread-like flesh. It feels rough and dry, despite being perfectly soft and flexible"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flat[or]confectionery[or]gingerbread[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]cookie[or]gingerbread[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Section 3 - Endings

[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Cheesecake Infection"	"Infection"	""	Cheesecake Infection rule	1000	false
"Gingerbread Infection"	"Infection"	""	Gingerbread Infection rule	1000	false

This is the Cheesecake Infection rule:
	if Player has a body of "Cheesecake":
		trigger ending "Cheesecake Infection";
		if humanity of Player < 10:
			say "     You succumb to your Cheesecake infection.";
		else:
			say "     You survive, but were infected by the Cheesecake.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";

This is the Gingerbread Infection rule:
	if Player has a body of "Gingerbread":
		trigger ending "Gingerbread Infection";
		if humanity of Player < 10:
			say "     You succumb to your Gingerbread infection.";
		else:
			say "     You survive, but were infected by the Gingerbread.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Francois Infections ends here.
