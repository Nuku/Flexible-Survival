Version 1 of BFandI by Stripes begins here.

"Creates the 'Brute Force and Ignorance' debugging command to forcibly check the various new column entries for critters on the table of random critters.  This document also contains various data on the new player variables created to go with these and what the use and possible applications of the new column entries can include.";


Section 13 - Brute Force Creature Testing (BFandI command) - Not for release

[For testing purposes - scans and examines the new table entries for a creature.]

[ NOTE: Until all creatures have these variables, it is important to use clauses which begin by checking if that entry exists.  As well, the 'nocturnal entry' will most often be left blank and that is a valid result meaning both day and night.]

bfanditesting is an action applying to one topic.
understand "bfandi [text]" as bfanditesting.

carry out bfanditesting:
	say "You begin the test by looking over yourself.";
	say "Your scalevalue is set to [scalevalue].  Your body size for this is [body size of player].";
	say "Your bodydesc value is set to [bodydesc], resulting in such fine prose as: 'The studly wolf climbs atop your [bodydesc] body and fucks you wildly.'  Stirring.";
	say "Your bodytype value is set to [bodytype], usable in scenes like: 'You press your [bodytype] body against the slutty catgirl as you stuff her wet snatch.'  Wonderous!";
	say "-----";
	say "[line break]";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry matches the text topic understood, case insensitively:
			now monster is y;
			say "[bold type][name entry][roman type]: Testing the new table entries.";
			if there is a scale in row monster of the table of random critters:
				say "scale entry = [scale entry]     The creature is [bold type][if scale entry is 1]tiny[otherwise if scale entry is 2]small[otherwise if scale entry is 3]normal[otherwise if scale entry is 4]large[otherwise]huge[end if][roman type].";
			otherwise:
				say "scale: [bold type]UNSET[roman type]     The [name entry] is of indeterminant size.";
			if there is a body descriptor in row monster of the table of random critters:
				say "body descriptor: [body descriptor entry]     Example: The [name entry] has a [body descriptor entry] build.";
			otherwise:
				say "body descriptor: [bold type]UNSET[roman type]     The [name entry] has no specified body build/attribute and will use [name entry] instead, for good or ill.";
			if there is a type in row monster of the table of random critters:
				say "type: [type entry]     Ex: You look over the [name entry], taking in its [type entry] nature.";
			otherwise:
				say "type: [bold type]UNSET[roman type]     The [name entry] has no specified species type and will use [name entry], for good or ill.";
			if there is a magic in row monster of the table of random critters:
				say "magic: The [name entry] is [if magic entry is false]not [end if]magical.";
			otherwise:
				say "magic: [bold type]UNSET[roman type]     An unset creature will be treated as non-magical.";
			if there is no magic in row monster of table of random critters or magic entry is false:
				say "This line appears for all creatures known/treated as non-magical.";
			if there is a magic in row monster of table of random critters and magic entry is true:
				say "This line appears only for creatures known as magical.";
			if there is a resbypass in row monster of the table of random critters:
				say "resbypass: [if resbypass entry is true]TRUE[otherwise]FALSE[end if]     Its infection [if resbypass entry is true]bypasses[otherwise]does not bypass[end if] a researcher's protection.";
			otherwise:
				say "resbypass: [bold type]UNSET[roman type]     An unset creature will be treated as blocked by researcher's protection.";
			if there is a resbypass in row monster of the table of random critters and resbypass entry is true:
				say "This line appears for a creature whose infection can bypass a researcher's protection.  This should be [bold type]ultra-rare[roman type] and should have a good reason for occurring (such as non-nanite-based infection).";
			otherwise:
				say "This line appears for all creatures who cannot bypass a researcher's protection.  Almost all creatures should fall into this category.";
			if there is a non-infectious in row monster of the table of random critters:
				say "non-infectious: [if non-infectious entry is true]TRUE[otherwise]FALSE[end if]     The [name entry] is [if non-infectious entry is false]infectious[otherwise]non-infectious[end if].";
			otherwise:
				say "non-infectious: [bold type]UNSET[roman type]     An unset creature will be treated as infectious.";
			if there is no non-infectious in row monster of table of random critters or non-infectious entry is false:
				say "This line appears for all infectious creatures.";
			if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
				say "This line appears for all non-infectious creatures.  Eventually used for non-infectious creatures such as soldier enemies, military robots, etc... and a few critters.  The shifting ability should not be able to gain these infections, nor should any source of random infection.";
			if there is a nocturnal in row monster of the table of random critters:
				say "nocturnal: [if nocturnal entry is true]TRUE[otherwise]FALSE[end if]     The [name entry] is [bold type][if nocturnal entry is true]nocturnal[otherwise]diurnal[end if][roman type].  They will only appear in random fights [bold type][if nocturnal entry is true]at night[otherwise]during the day[end if][roman type].";
			otherwise:
				say "nocturnal: [bold type]UNSET[roman type]     This is the [bold type]standard setting[roman type] for this variable, meaning the creature can be encountered both day and night.";
			if there is no nocturnal in row monster of the table of random critters or nocturnal entry is false:
				say "It is possible to encounter the [name entry] during the day.";
			if there is no nocturnal in row monster of the table of random critters or nocturnal entry is true:
				say "It is possible to encounter the [name entry] at night.";
			if there is a altcombat in row monster of the table of random critters:
				say "altcombat: [altcombat entry]     The [name entry] follows the [altcombat entry] rules for alternate combat.";
			otherwise:
				say "altcombat: [bold type]UNSET[roman type]     There is no indication that [name entry] follows an alternate combat method, so it will use the default.";
			say "[line break]";
			wait for any key;

[-----------------------------------------------------------------------]

[Description of new player attribute variables]

[ SCALEVALUE: records the 'scale entry' during infection.
This should be set whenever a player's body is changed.  It gives a general scale to a person's height and can be used for:
- checking if a player can fit through small spaces.
- making size comparisons between the player and monsters/NPCs.
- making choses or for altering sex scenes based on character position.
- affecting NPC/monster reactions: may find small players cute, big players scary, may not respect small players, etc...
- could be given to an NPC who could be given different infections, allowing more customization of scenes.
- affects the 'body size of player' variable statement, which can be used in descriptive scenes.  1 -> tiny, 2 -> small, 3 -> average, 4 -> large, 5 -> huge.
- For the moment, it should not be adjusted by external factors, locked and so forth, as many infection descriptions talk about the infected player's body size, height, etc... already and this would generate conflicts.  Making this more adjustable could be a long term goal, but not at present. ]

[ BODYDESC: records the 'body descriptor entry' during infection.
This should be set whenever a player's body is changed.  It gives an adjective to describe the player's body.  Use 'if...' or 'one of...' to provide more variation, but it should always be a single word dealing with the player's body description.  Ex: muscled, fat, plump, chubby, slender, bony, twisted, deformed, pot-bellied, etc...  It can be used for more descriptive and reactive scenes with NPCs and monsters.  Expect it to be used in sentences such as: Your lover runs its paws over your [bodydesc of player] body as they moan in delight. ]

[ BODYTYPE: records the 'type entry' during infection.
This should be set whenever a player's body is changed.  It is an adjective to describe the basic creature type the player's body represents.  Ex: human, feline, canine, ursine, bovine, insectoid, mustelid, robot, mutant, cyborg, humanoid, demi-human, etc... Expect it to be used in sentences such as: The lusty creature runs his paws over your [bodytype of player] body, looking over its prize. ]

[ DAYCYCLE: records the 'nocturnal' entry as a number: 0 for no entry, 1 for false and 2 for true.  This may see future use to designate if a player has any hinderances during the day/night or to otherwise indicate how they feel about their activity level during those times of the day.  As the infection/body change scenes will all be getting the update to store the other data, this one may as well be made in advance. ]

[-----------------------------------------------------------------------]

[Description of the new entries in the table of random critters:]

[ SCALE: A number between 1 and 5 to designate the scale of someone with this infection (from 1=tiny to 5=huge).  It should saved as the 'scalevalue of player' during body infection.  [scalevalue of player] or [body size of player] can be used to better personalize scenes with monsters/NPCs to a player's size.  If other (variable infection) NPCs are given this attribute, it can be saved on them as well, allowing for more descriptive scenes.
If this entry is not set on a creature, the game will default to '3', which is 'average'.]

[ BODY DESCRIPTOR: A one-word adjective to describe the build or other qualities of the body bestowed by this infection.  It should be saved as 'bodydesc of player' during body infection.  If other (variable infection) NPCs are given this attribute, it can be saved on them as well, allowing for more descriptive scenes.  Examples include: fat, muscled, fit, burly, chubby, hump-backed, pot-bellied, slender, bony, twisted, deformed, etc...  Again, this should be just one-word, adjective entries, but use of [one of]fat[or]chubby[or]plump[at random] is perfectly acceptable.  If-conditions are trickier, as they'll work fine for the player, but won't if transfered onto an NPC.
These will be used to describe the player during scenes and should be a single adjective to best fit all scenarios.  If the body descriptor entry is not set, the game will default to saving the name entry in its place as a substitute. ]

[ TYPE: A one-word adjective to generally designate the type of creature this is and this infection bestows.  It should be saved as 'bodytype of player' during body infection.  If other (variable infection) NPCs are given this attribute, it can be saved on them as well, allowing for more descriptive scenes.  Examples include: human, human-like, feline, canine, vulpine, lupine, robotic, cyborg, human, humanoid, demi-human, dwarven, simian, etc...  Again, this should be just one word, adjective entries, but use of [one of]equine[or]horse-like[at random] to create greater diversity is fine.  If-conditions are trickier, as they'll work fine for the player, but won't if transfered onto an NPC. 
These will be used to describe the player during scenes and should be a single adjective to best fit all scenarios.  If the type entry is not set, the game will detault to saving the name entry in its place as a substitute. ]

[ MAGIC: A truth state to designate whether this creature is a magical-type creature or not.  No immediate plans for use, but may be use later.  An unset creature is treated as non-magical. ]

[ RESBYPASS: A truth state to designate whether this creature's infection can bypass a researcher's resistance to infection.  This should be ultra-rare and should have a good reason for occurring, such as a non-nanite based infection.  An unset creature is treated as not bypassing the resistance. ]

[ NON-INFECTIOUS: A truth state to designate whether this creature cannot cause infection.  It can eventually be used for non-infectious creatures such as soldier enemies, military robots, etc... and a few critters.  The shifting ability should not be able to gain these infections, nor should any source of random infection. ]

[ NOCTURNAL: A truth state to designate whether this creature is nocturnal (true) or diurnal (false).  Nocturnal creatures will only be available for encounters during the night.  Diurnal creatures will only be available for encounters during the night.  An unset creature is treated as the normal case, able to be found both during the day and the night.  As such, this variable will most often remain blank. ]

[ ALTCOMBAT: An entry to detect whether the creature has any special behaviour during combat.  See the 'Alt Combat' document for the updated combat system.  An unset creature is treated as using the 'default' combat system. ]


BFandI ends here.