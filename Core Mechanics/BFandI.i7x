Version 4 of BFandI by Core Mechanics begins here.
[version 4 - Flag and Marker listing added]
[- Originally Authored By: Stripes -]

"Creates the 'Brute Force and Ignorance' debugging commands to forcibly check on various data in the game. This document also contains various data on the new player variables created to go with these and what the use and possible applications of the new column entries can include.";

[ BFandI command list:
bfandi (or bfandi1) checks the various new column entries for critters on the Table of Random Critters.
bfandi2 lists all existing creatures in the monster table and displays whether they have an altcombat entry, showing that entry if it exists.
bfandi3 lists all situations in the current area, whether they're resolved or unresolved and it's level. It will also mention if it's a scavevent.
bfandi4 lists all situations sorted by area, level or name, as selected once run, then provides data similar to bfandi3.
bfandi5 lists all flags and markers, counting their individual totals and displaying their contents.
]

Section 13 - Brute Force Creature Testing (BFandI command) - Not for release

[For testing purposes - scans and examines the new table entries for a creature.]

[ NOTE: Until all creatures have these variables, it is important to use clauses which begin by checking if that entry exists. As well, the 'nocturnal entry' will most often be left blank and that is a valid result meaning both day and night.]

bfanditesting is an action applying to one topic.
understand "bfandi [text]" as bfanditesting.
understand "bfandi1 [text]" as bfanditesting.

carry out bfanditesting:
	say "You begin the test by looking over yourself.";
	say "Your scalevalue is set to [scalevalue of Player]. Your body size for this is [Body Size Adjective of Player].";
	say "Your bodydesc value is set to [bodydesc of Player], resulting in such fine prose as: 'The studly wolf climbs atop your [bodydesc] body and fucks you wildly.' Stirring.";
	say "Your bodytype value is set to [bodytype of Player], usable in scenes like: 'You press your [bodytype of Player] body against the slutty catgirl as you stuff her wet snatch.' Wonderous!";
	say "-----";
	LineBreak;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry matches the text topic understood, case insensitively:
			now MonsterID is y;
			say "[bold type][Name entry][roman type]: Testing the new table entries.";
			if there is a scale in row MonsterID of the Table of Random Critters:
				say "scale entry = [scale entry]     The creature is [bold type][if scale entry is 1]tiny[else if scale entry is 2]small[else if scale entry is 3]normal[else if scale entry is 4]large[else]huge[end if][roman type].";
			else:
				say "scale: [bold type]UNSET[roman type]     The [Name entry] is of indeterminant size.";
			if there is a body descriptor in row MonsterID of the Table of Random Critters:
				say "body descriptor: [body descriptor entry]     Example: The [Name entry] has a [body descriptor entry] build.";
			else:
				say "body descriptor: [bold type]UNSET[roman type]     The [Name entry] has no specified body build/attribute and will use [Name entry] instead, for good or ill.";
			if there is a type in row MonsterID of the Table of Random Critters:
				say "type: [type entry]     Ex: You look over the [Name entry], taking in its [type entry] nature.";
			else:
				say "type: [bold type]UNSET[roman type]     The [Name entry] has no specified species type and will use [Name entry], for good or ill.";
			if there is a magic in row MonsterID of the Table of Random Critters:
				say "magic: The [Name entry] is [if magic entry is false]not [end if]magical.";
			else:
				say "magic: [bold type]UNSET[roman type]     An unset creature will be treated as non-magical.";
			if there is no magic in row MonsterID of Table of Random Critters or magic entry is false:
				say "This line appears for all creatures known/treated as non-magical.";
			if there is a magic in row MonsterID of Table of Random Critters and magic entry is true:
				say "This line appears only for creatures known as magical.";
			if there is a resbypass in row MonsterID of the Table of Random Critters:
				say "resbypass: [if resbypass entry is true]TRUE[else]FALSE[end if]     Its infection [if resbypass entry is true]bypasses[else]does not bypass[end if] a researcher's protection.";
			else:
				say "resbypass: [bold type]UNSET[roman type]     An unset creature will be treated as blocked by researcher's protection.";
			if there is a resbypass in row MonsterID of the Table of Random Critters and resbypass entry is true:
				say "This line appears for a creature whose infection can bypass a researcher's protection. This should be [bold type]ultra-rare[roman type] and should have a good reason for occurring (such as non-nanite-based infection).";
			else:
				say "This line appears for all creatures who cannot bypass a researcher's protection. Almost all creatures should fall into this category.";
			if there is a non-infectious in row MonsterID of the Table of Random Critters:
				say "non-infectious: [if non-infectious entry is true]TRUE[else]FALSE[end if]     The [Name entry] is [if non-infectious entry is false]infectious[else]non-infectious[end if].";
			else:
				say "non-infectious: [bold type]UNSET[roman type]     An unset creature will be treated as infectious.";
			if there is no non-infectious in row MonsterID of Table of Random Critters or non-infectious entry is false:
				say "This line appears for all infectious creatures.";
			if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
				say "This line appears for all non-infectious creatures. Eventually used for non-infectious creatures such as soldier enemies, military robots, etc... and a few critters. The shifting ability should not be able to gain these infections, nor should any source of random infection.";
			if DayCycle entry is 0 or DayCycle entry is 2:
				say "It is possible to encounter the [Name entry] during the day.";
			if DayCycle entry is 0 or DayCycle entry is 1:
				say "It is possible to encounter the [Name entry] at night.";
			if there is a altcombat in row MonsterID of the Table of Random Critters:
				say "altcombat: [altcombat entry]     The [Name entry] follows the [altcombat entry] rules for alternate combat.";
			else:
				say "altcombat: [bold type]UNSET[roman type]     There is no indication that [Name entry] follows an alternate combat method, so it will use the default.";
			LineBreak;
			wait for any key;

[-----------------------------------------------------------------------]

[Description of new player attribute variables]

[ SCALEVALUE: records the 'scale entry' during infection.
This should be set whenever a player's body is changed. It gives a general scale to a person's height and can be used for:
- checking if a player can fit through small spaces.
- making size comparisons between the player and monsters/NPCs.
- making choices or for altering sex scenes based on character position.
- affecting NPC/monster reactions: may find small players cute, big players scary, may not respect small players, etc...
- could be given to an NPC who could be given different infections, allowing more customization of scenes.
- affects the 'Body Size Adjective of Player' variable statement, which can be used in descriptive scenes. 1 -> tiny, 2 -> small, 3 -> average, 4 -> large, 5 -> huge.
- For the moment, it should not be adjusted by external factors, locked and so forth, as many infection descriptions talk about the infected player's body size, height, etc... already and this would generate conflicts. Making this more adjustable could be a long term goal, but not at present. ]

[ BODYDESC: records the 'body descriptor entry' during infection.
This should be set whenever a player's body is changed. It gives an adjective to describe the player's body. Use 'if...' or 'one of...' to provide more variation, but it should always be a single word dealing with the player's body description. Ex: muscled, fat, plump, chubby, slender, bony, twisted, deformed, pot-bellied, etc... It can be used for more descriptive and reactive scenes with NPCs and monsters. Expect it to be used in sentences such as: Your lover runs its paws over your [bodydesc of Player] body as they moan in delight. ]

[ BODYTYPE: records the 'type entry' during infection.
This should be set whenever a player's body is changed. It is an adjective to describe the basic creature type the player's body represents. Ex: human, feline, canine, ursine, bovine, insectoid, mustelid, robot, mutant, cyborg, humanoid, demi-human, etc... Expect it to be used in sentences such as: The lusty creature runs his paws over your [bodytype of Player] body, looking over its prize. ]

[ DAYCYCLE: records the 'nocturnal' entry as a number: 0 for no entry, 1 for false and 2 for true. This may see future use to designate if a player has any hindrances during the day/night or to otherwise indicate how they feel about their activity level during those times of the day. As the infection/body change scenes will all be getting the update to store the other data, this one may as well be made in advance. ]

[-----------------------------------------------------------------------]

[Description of the new entries in the Table of Random Critters:]

[ SCALE: A number between 1 and 5 to designate the scale of someone with this infection (from 1=tiny to 5=huge). It should saved as the 'scalevalue of Player' during body infection. [scalevalue of Player] or [Body Size Adjective of Player] can be used to better personalize scenes with monsters/NPCs to a player's size. If other (variable infection) NPCs are given this attribute, it can be saved on them as well, allowing for more descriptive scenes.
If this entry is not set on a creature, the game will default to '3', which is 'average'.]

[ BODY DESCRIPTOR: A one-word adjective to describe the build or other qualities of the body bestowed by this infection. It should be saved as 'bodydesc of Player' during body infection. If other (variable infection) NPCs are given this attribute, it can be saved on them as well, allowing for more descriptive scenes. Examples include: fat, muscled, fit, burly, chubby, hump-backed, pot-bellied, slender, bony, twisted, deformed, etc... Again, this should be just one-word, adjective entries, but use of [one of]fat[or]chubby[or]plump[at random] is perfectly acceptable. If-conditions are trickier, as they'll work fine for the player, but won't if transferred onto an NPC.
These will be used to describe the player during scenes and should be a single adjective to best fit all scenarios. If the body descriptor entry is not set, the game will default to saving the Name entry in its place as a substitute. ]

[ TYPE: A one-word adjective to generally designate the type of creature this is and this infection bestows. It should be saved as 'bodytype of Player' during body infection. If other (variable infection) NPCs are given this attribute, it can be saved on them as well, allowing for more descriptive scenes. Examples include: human, human-like, feline, canine, vulpine, lupine, robotic, cyborg, human, humanoid, demi-human, dwarven, simian, etc... Again, this should be just one word, adjective entries, but use of [one of]equine[or]horse-like[at random] to create greater diversity is fine. If-conditions are trickier, as they'll work fine for the player, but won't if transferred onto an NPC.
These will be used to describe the player during scenes and should be a single adjective to best fit all scenarios. If the type entry is not set, the game will detault to saving the Name entry in its place as a substitute. ]

[ MAGIC: A truth state to designate whether this creature is a magical-type creature or not. No immediate plans for use, but may be use later. An unset creature is treated as non-magical. ]

[ RESBYPASS: A truth state to designate whether this creature's infection can bypass a researcher's resistance to infection. This should be ultra-rare and should have a good reason for occurring, such as a non-nanite based infection. An unset creature is treated as not bypassing the resistance. ]

[ NON-INFECTIOUS: A truth state to designate whether this creature cannot cause infection. It can eventually be used for non-infectious creatures such as soldier enemies, military robots, etc... and a few critters. The shifting ability should not be able to gain these infections, nor should any source of random infection. ]

[ DAYRHTHM: 0 = up at all times, 1 = nocturnal, 2 = diurnal ]

[ ALTCOMBAT: An entry to detect whether the creature has any special behavior during combat. See the 'Alt Combat' document for the updated combat system. An unset creature is treated as using the 'default' combat system. ]

[-----------------------------------------------------------]

bfanditesting2 is an action applying to one topic.
understand "bfandi2" as bfanditesting2.

carry out bfanditesting2:
	sort Table of Random Critters in lev order;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if there is no altcombat in row y of the Table of Random Critters:
			say "[Name entry]: [special-style-2]UNSET![roman type]";
		else:
			if altcombat entry is "default":
				say "[Name entry]: DEFAULT[line break]";
			else:
				say "[Name entry]: [special-style-1][altcombat entry][roman type][line break]";
		if the remainder after dividing y by 20 is 0:
			wait for any key;
			LineBreak;

[------------------------------------------------------------]

bfanditesting3 is an action applying to one topic.
understand "bfandi3" as bfanditesting3.

check bfanditesting3:
	if there is no dangerous door in the location of the player:
		say "I don't see any good hunting grounds around here." instead;
	else:
		let y be a random dangerous door in the location of the player;
		now battleground is the marea of y;

carry out bfanditesting3:
	let totalsit be 0;
	let zonesit be 0;
	let unressit be 0;
	let scavsitnum be 0;
	say "Current area: [battleground][line break]";
	repeat with z running through situations:
		increase totalsit by 1;
		if ( sarea of z matches the text battleground, case insensitively ) or ( battleground is "Outside" and ( the sarea of z is "Allzones" or the sarea of z is "allzones" ) ):
			increase zonesit by 1;
			say "[z] is [if z is resolved][special-style-2]Resolved[roman type][else][special-style-1]Unresolved[roman type][end if]. Lvl [level of z]";
			if z is a scavevent and ( the sarea of z is "Allzones" or the sarea of z is "allzones" ):
				say ". [bold type]Scavevent[roman type] (All-zones)";
				increase scavsitnum by 1;
			else if z is a scavevent:
				say ". [bold type]Scavevent[roman type]";
				increase scavsitnum by 1;
			say ".";
			if z is unresolved, increase unressit by 1;
	say "[bold type][zonesit][roman type] ([special-style-1][unressit][roman type]/[special-style-2][zonesit - unressit][roman type]) of [totalsit] total events. [bold type][scavsitnum][roman type] are scavevents.";

[------------------------------------------------------------]

bfanditesting4 is an action applying to one topic.
understand "bfandi4" as bfanditesting4.

carry out bfanditesting4:
	let choicemade be 0;
	let unressit be 0;
	let scavsitnum be 0;
	let tempsitlist be the list of situations;
	say "Listing all situations. Select sort parameter by number:[line break]";
	say "[link]1 - Hunting area[as]1[end link][line break]";
	say "[link]2 - Level[as]2[end link][line break]";
	say "[link]3 - Unsorted[as]3[end link][line break]";
	say "Option> [run paragraph on]";
	while choicemade is 0:
		get a number;
		if calcnumber < 1 or calcnumber > 3:
			say "Pick option 1 (Area), 2 (Level) or 3 (Unsorted) by number> [run paragraph on]";
		else:
			now choicemade is 1;
			if calcnumber is 1:
				sort tempsitlist in sarea order;
			if calcnumber is 2:
				sort tempsitlist in level order;
	repeat with z running through tempsitlist:
		say "[z] ([sarea of z]) is [if z is resolved][special-style-2]Resolved[roman type][else][special-style-1]Unresolved[roman type][end if]. Lvl [level of z]";
		if z is a scavevent and ( the sarea of z is "Allzones" or the sarea of z is "allzones" ):
			say ". [bold type]Scavevent[roman type] (All-zones)";
			increase scavsitnum by 1;
		else if z is a scavevent:
			say ". [bold type]Scavevent[roman type]";
			increase scavsitnum by 1;
		say ".";
		if z is unresolved, increase unressit by 1;
	say "Total: [bold type][number of entries in tempsitlist][roman type] ([special-style-1][unressit][roman type]/[special-style-2][number of entries in tempsitlist - unressit][roman type]). [bold type][scavsitnum][roman type] are scavevents.";


[------------------------------------------------------------]

[Listing flags and markers to show all critters. Does not yet display flagged events.]

bfanditesting5 is an action applying to one topic.
understand "bfandi5" as bfanditesting5.

carry out bfanditesting5:
	say "[special-style-2]FLAGS:[roman type][line break]";
	say "[bold type]Girl:[roman type] ([special-style-2][number of entries in infections of FemaleList][roman type]) [infections of FemaleList].";
	say "[bold type]Guy:[roman type] ([special-style-2][number of entries in infections of MaleList][roman type]) [infections of MaleList].";
	say "[bold type]Hermaphrodite:[roman type] ([special-style-2][number of entries in infections of HermList][roman type]) [infections of HermList].";
	say "[bold type]Feral:[roman type] ([special-style-2][number of entries in infections of FeralList][roman type]) [infections of FeralList].";
	say "[bold type]Furry:[roman type] ([special-style-2][number of entries in infections of FurryList][roman type]) [infections of FurryList].";
	say "[bold type]Hellspawn:[roman type] ([special-style-2][number of entries in infections of DemonList][roman type]) [infections of DemonList].";
	say "[bold type]Humorous:[roman type] ([special-style-2][number of entries in infections of HumorousList][roman type]) [infections of HumorousList].";
	LineBreak;
	say "[special-style-1]MARKERS:[roman type][line break]";
	say "[bold type]Tailweapon:[roman type] ([special-style-1][number of entries in infections of TailweaponList][roman type]) [infections of TailweaponList].";
	say "[bold type]Felinelist:[roman type] ([special-style-1][number of entries in infections of Felinelist][roman type]) [infections of Felinelist].";
	say "[bold type]Caninelist:[roman type] ([special-style-1][number of entries in infections of Caninelist][roman type]) [infections of Caninelist].";
	say "[bold type]Equinelist:[roman type] ([special-style-1][number of entries in infections of Equinelist][roman type]) [infections of Equinelist].";
	say "[bold type]Vulpinelist:[roman type] ([special-style-1][number of entries in infections of Vulpinelist][roman type]) [infections of Vulpinelist].";
	say "[bold type]Reptilelist:[roman type] ([special-style-1][number of entries in infections of Reptilelist][roman type]) [infections of Reptilelist].";
	say "[bold type]Insectlist:[roman type] ([special-style-1][number of entries in infections of Insectlist][roman type]) [infections of Insectlist].";
	say "[bold type]Plantlist:[roman type] ([special-style-1][number of entries in infections of Plantlist][roman type]) [infections of Plantlist].";
	say "[bold type]Avianlist:[roman type] ([special-style-1][number of entries in infections of Avianlist][roman type]) [infections of Avianlist].";
	say "[bold type]Avianpredlist:[roman type] ([special-style-1][number of entries in infections of Avianpredlist][roman type]) [infections of Avianpredlist].";
	say "[bold type]Taurlist:[roman type] ([special-style-1][number of entries in infections of Taurlist][roman type]) [infections of Taurlist].";
	say "[bold type]RodentList:[roman type] ([special-style-1][number of entries in infections of RodentList][roman type]) [infections of RodentList].";
	say "[bold type]KnottedCockList:[roman type] ([special-style-1][number of entries in infections of KnottedCockList][roman type]) [infections of KnottedCockList].";
	say "[bold type]Latexlist:[roman type] ([special-style-1][number of entries in infections of Latexlist][roman type]) [infections of Latexlist].";
	say "[bold type]InternalCockList:[roman type] ([special-style-1][number of entries in infections of InternalCockList][roman type]) [infections of InternalCockList].";
	say "[bold type]BarbedCocklist:[roman type] ([special-style-1][number of entries in infections of BarbedCocklist][roman type]) [infections of BarbedCocklist].";
	say "[bold type]Firebreathlist:[roman type] ([special-style-1][number of entries in infections of Firebreathlist][roman type]) [infections of Firebreathlist].";
	say "[bold type]BluntCockList:[roman type] ([special-style-1][number of entries in infections of BluntCockList][roman type]) [infections of BluntCockList].";

[------------------------------------------------------------]
[Listing items, and all critters who drop items as well as their drop chance. ]

bfanditesting6 is an action applying to one topic.
understand "bfandi6" as bfanditesting6.

carry out bfanditesting6:
	say "Listing all entries in table of game objects.";
	sort Table of Game Objects in object order;
	repeat with y running from 1 to number of filled rows in Table of Game Objects:
		choose row y in Table of Game Objects;
		say "[Name entry][line break]";
	WaitLineBreak;
	say "Listing all entries in Table of Random Critters with loot entries, their loot, and loot chance.";
	sort Table of Random Critters in lev order;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if loot entry is not " " and loot entry is not empty:
			say "[Name entry], [loot entry], [lootchance entry]%[line break]";

BFandI ends here.
