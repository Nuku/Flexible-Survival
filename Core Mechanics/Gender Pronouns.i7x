Version 3 of Gender Pronouns by Core Mechanics begins here.
[ Version 3 - New universal/standardized player pronoun setting and handling - Starshard ]

Section 1 - Blue Bishop's Variables and Routines

ghis is a text that varies. ghis is usually "their". [Gender text nodule, entails his/her/their]
ghe is a text that varies. ghe is usually "it". [Gender text nodule, entails he/she/it]
ghim is a text that varies. ghim is usually "it". [Gender text nodule, entails him/her/it]
ghishers is a text that varies. ghishers is usually "theirs". [Gender text nodule, entails his/hers/theirs]
gchis is a text that varies. ghis is usually "Their". [Capitalized Versions]
gche is a text that varies. gche is usually "It".
gchim is a text that varies. ghim is usually "It".
gchishers is a text that varies. gchishers is usually "Theirs".
gdragon is a text that varies. gdragon is usually "dragon".
gmasculine is a text that varies. gmasculine is usually "particular".

to malepronouns:
	now ghis is "his";
	now ghe is "he";
	now ghim is "him";
	now ghishers is "his";
	now gchis is "His";
	now gche is "He";
	now gchim is "Him";
	now gchishers is "His";
	now gdragon is "dragon";
	now gmasculine is "masculine";

to femalepronouns:
	now ghis is "her";
	now ghe is "she";
	now ghim is "her";
	now ghishers is "hers";
	now gchis is "Her";
	now gche is "She";
	now gchim is "Her";
	now gchishers is "Hers";
	now gdragon is "dragoness";
	now gmasculine is "feminine";

to neutpronouns:
	now ghis is "their";
	now ghe is "it";
	now ghim is "it";
	now ghishers is "theirs";
	now gchis is "Their";
	now gche is "It";
	now gchim is "It";
	now gchishers is "Theirs";
	now gdragon is "dragon";
	now gmasculine is "particular";

Section 2 Stripes's Definitions

to say subjpro_cap of (x - a person): [Subjective Pronoun: He/She]
	if Cunt Count of x is 0:
		say "He";
	else:
		say "She";

to say subjpro of (x - a person): [subjective pronoun: he/she]
	if Cunt Count of x is 0:
		say "he";
	else:
		say "she";

to say possadj_cap of (x - a person): [Possessive Adjective: His/Her <something>]
	if Cunt Count of x is 0:
		say "His";
	else:
		say "Her";

to say possadj of (x - a person): [possessive adjective: his/her <something>]
	if Cunt Count of x is 0:
		say "his";
	else:
		say "her";

to say objpro of (x - a person): [objective pronoun: <to> him/her]
	if Cunt Count of x is 0:
		say "him";
	else:
		say "her";

to say posspro of (x - a person): [possessive pronoun: <something> = his/hers]
	if Cunt Count of x is 0:
		say "his";
	else:
		say "hers";

Section 3 - Plurals

[short singular/plural statements - these add an s, es, y/ies as needed to a noun or a verb based on one or the other sexual characteristic]

to say smn: [stick an s on if multiple male - noun]
	if Cock Count of Player > 1:
		say "s";
	else:
		say "";

to say sfn: [stick an s on if multiple female - noun]
	if Cunt Count of Player > 1:
		say "s";
	else:
		say "";

to say esmn: [stick an es on if multiple male - noun]
	if Cock Count of Player > 1:
		say "es";
	else:
		say "";

to say esfn: [stick an es on if multiple female - noun]
	if Cunt Count of Player > 1:
		say "es";
	else:
		say "";

to say ymn: [sticks y/ies on if multiple male - noun]
	if Cock Count of Player > 1:
		say "ies";
	else:
		say "y";

to say yfn: [sticks y/ies on if multiple female - noun]
	if Cunt Count of Player > 1:
		say "ies";
	else:
		say "y";

to say smv: [stick an s on if single male - verb]
	if Cock Count of Player > 1:
		say "";
	else:
		say "s";

to say sfv: [stick an s on if single female - verb]
	if Cunt Count of Player > 1:
		say "";
	else:
		say "s";

to say esmv: [stick an es on if single male - verb]
	if Cock Count of Player > 1:
		say "";
	else:
		say "es";

to say esfv: [stick an es on if single female - verb]
	if Cunt Count of Player > 1:
		say "";
	else:
		say "es";

to say ymv: [sticks y/ies on if single male - verb]
	if Cock Count of Player > 1:
		say "y";
	else:
		say "ies";

to say yfv: [sticks y/ies on if single female - verb]
	if Cunt Count of Player > 1:
		say "y";
	else:
		say "ies";

to say ismv: [uses is/are based on cock pluralization - verb]
	if Cock Count of Player > 1:
		say "are";
	else:
		say "is";

to say isfv: [uses is/are based on cunt pluralization - verb]
	if Cunt Count of Player > 1:
		say "are";
	else:
		say "is";

[
Example:
say "Your cock[smn] smash[esmv] into the goblin's face. Your juicy puss[yfn] then grind[sfv] against his pointy nose.";
1 cock: Your cock smashes into the goblin's face...
2+ cocks: Your cocks slam into the goblin's face...
1 cunt: ...Your juicy pussy then grinds against his pointy nose.
2+ cunts: ...Your juicy pussies then grind against his pointy nose.
]

[short singular/plural pronoun statements - these pick between the two relevant pronouns based on plurality of either male of female sex organs]

to say ittheym: [subject pronoun male - picks 'it' or 'they' based on multiple male]
	if Cock Count of Player > 1:
		say "they";
	else:
		say "it";

to say ittheyf: [subject pronoun female - picks 'it' or 'they' based on multiple female]
	if Cunt Count of Player > 1:
		say "they";
	else:
		say "it";

to say itthemm: [object pronoun male - picks 'it' or 'them' based on multiple male]
	if Cock Count of Player > 1:
		say "them";
	else:
		say "it";

to say itthemf: [object pronoun female - picks 'it' or 'them' based on multiple female]
	if Cunt Count of Player > 1:
		say "them";
	else:
		say "it";

to say itstheirm: [possessive adjective male - picks 'its' or 'their' based on multiple male]
	if Cock Count of Player > 1:
		say "their";
	else:
		say "its";

to say itstheirf: [possessive adjective female - picks 'its' or 'their' based on multiple female]
	if Cunt Count of Player > 1:
		say "their";
	else:
		say "its";

to say itstheirsm: [possessive pronoun male - picks 'its' or 'theirs' based on multiple male]
	if Cock Count of Player > 1:
		say "theirs";
	else:
		say "its";

to say itstheirsf: [possessive pronoun female - picks 'its' or 'theirs' based on multiple female]
	if Cunt Count of Player > 1:
		say "theirs";
	else:
		say "its";

to say ItTheym: [subject pronoun male - picks 'it' or 'they' based on multiple male]
	if Cock Count of Player > 1:
		say "They";
	else:
		say "It";

to say ItTheyf: [subject pronoun female - picks 'it' or 'they' based on multiple female]
	if Cunt Count of Player > 1:
		say "They";
	else:
		say "It";

to say ItThemm: [object pronoun male - picks 'it' or 'them' based on multiple male]
	if Cock Count of Player > 1:
		say "Them";
	else:
		say "It";

to say ItThemf: [object pronoun female - picks 'it' or 'them' based on multiple female]
	if Cunt Count of Player > 1:
		say "Them";
	else:
		say "It";

to say ItsTheirm: [possessive adjective male - picks 'its' or 'their' based on multiple male]
	if Cock Count of Player > 1:
		say "Their";
	else:
		say "Its";

to say ItsTheirf: [possessive adjective female - picks 'its' or 'their' based on multiple female]
	if Cunt Count of Player > 1:
		say "Their";
	else:
		say "Its";

to say ItsTheirsm: [possessive pronoun male - picks 'its' or 'theirs' based on multiple male]
	if Cock Count of Player > 1:
		say "Theirs";
	else:
		say "Its";

to say ItsTheirsf: [possessive pronoun female - picks 'its' or 'theirs' based on multiple female]
	if Cunt Count of Player > 1:
		say "Theirs";
	else:
		say "Its";

Section 4 - Current Monster

Table of GameCharacterIDs (continued)
object	name
Currentmonster	"Currentmonster"

Currentmonster is a person.
Currentmonster has a number called mongender.
Currentmonster has a number called cocks.
Currentmonster has a number called cunts.

currentmonster can be cocked.
currentmonster can be cunted.
currentmonster can be malepro.
currentmonster can be femalepro.
currentmonster can be neuterpro.
currentmonster can be neuter.
currentmonster can be multiple.

currentmonster can be neuterX.  [0/10] [genderless/non-applicable]
currentmonster can be neuterM.  [1/11] [male-type neuter]
currentmonster can be neuterF.  [2/12] [female-type neuter]
currentmonster can be male.     [3/13]
currentmonster can be female.   [4/14]
currentmonster can be herm.     [5/15] [herm/futa/etc.]
currentmonster can be shemale.  [6/16] [shemale/dickgirl/etc.]
currentmonster can be mherm.    [7/17]
currentmonster can be cuntboy.  [8/18]
currentmonster can be variable. [9/19]

[  TABLE OF MONGENDER VALUES  ]
[  0 - Neuter X (genderless)  ][N]
[  1 - Neuter M (masculine)   ][M]
[  2 - Neuter F (feminine)    ][F]
[  3 - Male                   ][M]
[  4 - Female                 ][F]
[  5 - Herm                   ][F]
[  6 - Shemale                ][F]
[  7 - M-Herm                 ][M]
[  8 - Cuntboy                ][M]
[  9 - Variable               ][N]
[ 10-19 Multiple individuals  ]
[ 10 - Neuter X (genderless)  ][N]
[ 11 - Neuter M (masculine)   ][M]
[ 12 - Neuter F (feminine)    ][F]
[ 13 - Male                   ][M]
[ 14 - Female                 ][F]
[ 15 - Herm                   ][F]
[ 16 - Shemale                ][F]
[ 17 - M-Herm                 ][M]
[ 18 - Cuntboy                ][M]
[ 19 - Mixed/Variable         ][N]

to setmongender (x - a number):
	now mongender of currentmonster is x;
	if currentmonster is malepro:
		malepronouns;
	else if currentmonster is femalepro:
		femalepronouns;
	else:
		neutpronouns;

to say mongendernum (x - a number):
	now mongender of currentmonster is x;
	if currentmonster is malepro:
		malepronouns;
	else if currentmonster is femalepro:
		femalepronouns;
	else:
		neutpronouns;

Definition: currentmonster is malepro: [creature referred to as male]
	if mongender of currentmonster is 1, yes;
	if mongender of currentmonster is 3, yes;
	if mongender of currentmonster is 7, yes;
	if mongender of currentmonster is 8, yes;
	if mongender of currentmonster is 11, yes;
	if mongender of currentmonster is 13, yes;
	if mongender of currentmonster is 17, yes;
	if mongender of currentmonster is 18, yes;
	no;

Definition: currentmonster is femalepro: [creature referred to as female - can also be used to determine if breasts]
	if mongender of currentmonster is 2, yes;
	if mongender of currentmonster is 4, yes;
	if mongender of currentmonster is 5, yes;
	if mongender of currentmonster is 6, yes;
	if mongender of currentmonster is 12, yes;
	if mongender of currentmonster is 14, yes;
	if mongender of currentmonster is 15, yes;
	if mongender of currentmonster is 16, yes;
	no;

Definition: currentmonster is neuterpro: [creature referred to as neuter (it/they)]
	if mongender of currentmonster is 0, yes;
	if mongender of currentmonster is 9, yes;
	if mongender of currentmonster is 10, yes;
	if mongender of currentmonster is 19, yes;
	no;

Definition: currentmonster is neuter: [creature is genderless or has no genitals]
	if mongender of currentmonster is 0, yes;
	if mongender of currentmonster is 1, yes;
	if mongender of currentmonster is 2, yes;
	if mongender of currentmonster is 10, yes;
	if mongender of currentmonster is 11, yes;
	if mongender of currentmonster is 12, yes;
	no;

Definition: currentmonster is multiple:
	if mongender of currentmonster >= 10, yes;
	no;

Definition: currentmonster is neuterx:
	if mongender of currentmonster is 0 or mongender of currentmonster is 10, yes;
	no;

Definition: currentmonster is neuterm:
	if mongender of currentmonster is 1 or mongender of currentmonster is 11, yes;
	no;

Definition: currentmonster is neuterf:
	if mongender of currentmonster is 2 or mongender of currentmonster is 12, yes;
	no;

Definition: currentmonster is male:
	if mongender of currentmonster is 3 or mongender of currentmonster is 13, yes;
	no;

Definition: currentmonster is female:
	if mongender of currentmonster is 4 or mongender of currentmonster is 14, yes;
	no;

Definition: currentmonster is herm:
	if mongender of currentmonster is 5 or mongender of currentmonster is 15, yes;
	no;

Definition: currentmonster is shemale:
	if mongender of currentmonster is 6 or mongender of currentmonster is 16, yes;
	no;

Definition: currentmonster is mherm:
	if mongender of currentmonster is 7 or mongender of currentmonster is 17, yes;
	no;

Definition: currentmonster is cuntboy:
	if mongender of currentmonster is 8 or mongender of currentmonster is 18, yes;
	no;

Definition: currentmonster is variable:
	if mongender of currentmonster is 9 or mongender of currentmonster is 19, yes;
	no;

Definition: currentmonster is cocked: [Male, herm, shemale, m-herm]
	if mongender of currentmonster is 3, yes;
	if mongender of currentmonster is 5, yes;
	if mongender of currentmonster is 6, yes;
	if mongender of currentmonster is 7, yes;
	if mongender of currentmonster is 9, yes;
	if mongender of currentmonster is 13, yes;
	if mongender of currentmonster is 15, yes;
	if mongender of currentmonster is 16, yes;
	if mongender of currentmonster is 17, yes;
	if mongender of currentmonster is 19, yes;
	no;

Definition: currentmonster is cunted: [Female, herm, m-herm, cuntboy]
	if mongender of currentmonster is 4, yes;
	if mongender of currentmonster is 5, yes;
	if mongender of currentmonster is 7, yes;
	if mongender of currentmonster is 8, yes;
	if mongender of currentmonster is 9, yes;
	if mongender of currentmonster is 14, yes;
	if mongender of currentmonster is 15, yes;
	if mongender of currentmonster is 17, yes;
	if mongender of currentmonster is 18, yes;
	if mongender of currentmonster is 19, yes;
	no;

monnumtesting is an action applying to nothing.
understand "monnum" as monnumtesting;

carry out monnumtesting:
	say "Monster gender is [mongender of currentmonster] - [if currentmonster is neuterX]neuterX[else if currentmonster is neuterM]neuterM[else if currentmonster is neuterF]neuterF[else if currentmonster is male]male[else if currentmonster is female]female[else if currentmonster is herm]herm[else if currentmonster is shemale]shemale[else if currentmonster is mherm]mherm[else if currentmonster is cuntboy]cuntboy[else if currentmonster is variable]variable[end if].";
	say "Male pronouns? [if currentmonster is malepro]YES[else]NO[end if][line break]";
	say "Female pronouns? [if currentmonster is femalepro]YES[else]NO[end if][line break]";
	say "Neuter pronouns? [if currentmonster is neuterpro]YES[else]NO[end if][line break]";
	say "Got a cock? [if currentmonster is cocked]YES[else]NO[end if][line break]";
	say "Got a cunt? [if currentmonster is cunted]YES[else]NO[end if][line break]";
	say "Neuter/Genderless? [if currentmonster is neuter]YES[else]NO[end if][line break]";
	say "Multiple creatures? [if currentmonster is multiple]YES[else]NO[end if][line break]";

monnumsetting is an action applying to one number.
understand "monnum [a number]" as monnumsetting.

carry out monnumsetting:
	setmongender (the number understood);
	say "Monster gender is [mongender of currentmonster] - [if currentmonster is neuterX]neuterX[else if currentmonster is neuterM]neuterM[else if currentmonster is neuterF]neuterF[else if currentmonster is male]male[else if currentmonster is female]female[else if currentmonster is herm]herm[else if currentmonster is shemale]shemale[else if currentmonster is mherm]mherm[else if currentmonster is cuntboy]cuntboy[else if currentmonster is variable]variable[end if].";

Section 5 - Wahn's Definitions

to say heshe:
	if Player is female:
		say "she";
	else if Player is male:
		say "he";
	else:
		say "it";

to say HeShe:
	if Player is female:
		say "She";
	else if Player is male:
		say "He";
	else:
		say "It";

to say hisher:
	if Player is female:
		say "her";
	else if Player is male:
		say "his";
	else:
		say "its";

to say himher:
	if Player is female:
		say "her";
	else if Player is male:
		say "him";
	else:
		say "it";

Section 6 - Starshard's Rules and Definitions

A person has a text called SubjectPro. SubjectPro is usually "they". [Subject Pronoun, it/he/she]
A person has a text called ObjectPro. ObjectPro is usually "them". [Object Pronoun, it/him/her]
A person has a text called PosAdj. PosAdj is usually "their". [Possessive Adjective, its/his/her]
A person has a text called PosPro. PosPro is usually "theirs". [Possessive Pronoun, its/his/hers]
A person has a text called ReflexPro. ReflexPro is usually "themselves". [Reflexive Pronoun, itself/himself/herself]
A person has a text called SubjectProCap. SubjectProCap is usually "They".
A person has a text called ObjectProCap. ObjectProCap is usually "Them".
A person has a text called PosAdjCap. PosAdjCap is usually "Their".
A person has a text called PosProCap. PosProCap is usually "Theirs".
A person has a text called ReflexProCap. ReflexProCap is usually "Themselves".
The player has a text called PronounChoice. PronounChoice is usually "Auto". [Player chosen option on how the game handles pronouns]
A person has a text called PronounSet. PronounSet is usually "Neutral". [Current pronoun set in use for the player]

to SetMalePronouns for (x - a person):
	now SubjectPro of x is "he";
	now ObjectPro of x is "him";
	now PosAdj of x is "his";
	now PosPro of x is "his";
	now ReflexPro of x is "himself";
	now SubjectProCap of x is "He";
	now ObjectProCap of x is "Him";
	now PosAdjCap of x is "His";
	now PosProCap of x is "His";
	now ReflexProCap of x is "Himself";
	now PronounSet of x is "Male";

to SetFemalePronouns for (x - a person):
	now SubjectPro of x is "she";
	now ObjectPro of x is "her";
	now PosAdj of x is "her";
	now PosPro of x is "hers";
	now ReflexPro of x is "herself";
	now SubjectProCap of x is "She";
	now ObjectProCap of x is "Her";
	now PosAdjCap of x is "Her";
	now PosProCap of x is "Hers";
	now ReflexProCap of x is "Herself";
	now PronounSet of x is "Female";

to SetHermPronouns for (x - a person):
	now SubjectPro of x is "shi";
	now ObjectPro of x is "hir";
	now PosAdj of x is "hir";
	now PosPro of x is "hirs";
	now ReflexPro of x is "hirself";
	now SubjectProCap of x is "Shi";
	now ObjectProCap of x is "Hir";
	now PosAdjCap of x is "Hir";
	now PosProCap of x is "Hirs";
	now ReflexProCap of x is "Hirself";
	now PronounSet of x is "Herm";

To SetNeutralPronouns for (x - a person):
	now SubjectPro of x is "it";
	now ObjectPro of x is "it";
	now PosAdj of x is "its";
	now PosPro of x is "its";
	now ReflexPro of x is "itself";
	now SubjectProCap of x is "It";
	now ObjectProCap of x is "It";
	now PosAdjCap of x is "Its";
	now PosProCap of x is "Its";
	now ReflexProCap of x is "Itself";
	now PronounSet of x is "Neutral";

This is the SetPlayerPronouns rule:
	if PronounChoice of Player is:
		-- "Male":
			SetMalePronouns for player;
		-- "Female":
			SetFemalePronouns for player;
		-- "Herm":
			SetHermPronouns for player;
		-- "Neutral":
			SetNeutralPronouns for player;
		-- "Auto":
			if Player is herm:
				if Breast Size of Player > 0: [herm]
					SetHermPronouns for player;
				else: [male herm]
					SetMalePronouns for player;
			else:
				if Breast Size of Player > 0: [shemale, female, neuter fem]
					SetFemalePronouns for player;
				else: [male, cuntboy, neuter masc]
					SetMalePronouns for player;

[Menu]

pronounsetting is an action applying to nothing.

understand "set pronouns" as pronounsetting.
understand "pronoun menu" as pronounsetting.

carry out pronounsetting:
	say "     This menu allows you to set how the game will refer to you, the player, when referring to you in the third person. This is usually not used as the game mostly refers to the player in 2nd person, but this option will determine how it's handled in conversations between NPCs, for example. This menu can be called again in game with [bold type]pronoun menu[roman type][line break]";
	say "Current Pronoun Choice: [bold type][PronounChoice of Player][roman type][line break]";
	say "- [link](1) Auto[as]1[end link] - Game will decide pronouns based on current body configuration.";
	say "- [link](2) Male[as]2[end link] - Game will always use He/His/Him/Himself pronouns for the player.";
	say "- [link](3) Female[as]3[end link] - Game will always use She/Her/Her/Herself pronouns for the player.";
	say "- [link](4) Herm[as]4[end link] - Game will always use Shi/Hir/Hir/Hirself pronouns for the player.";
	say "- [link](5) Neutral[as]5[end link] - Game will always use They/Their/Them/Themselves pronouns for the player.";
	say "- [link](0) Exit[as]0[end link][line break]";
	now calcnumber is -1;
	while calcnumber < 0 or calcnumber > 5:
		say "Choice? (0-5)> [run paragraph on]";
		get a number;
		if calcnumber is:
			-- 1:
				now PronounChoice of Player is "Auto";
			-- 2:
				now PronounChoice of Player is "Male";
			-- 3:
				now PronounChoice of Player is "Female";
			-- 4:
				now PronounChoice of Player is "Herm";
			-- 5:
				now PronounChoice of Player is "Neutral";
			-- otherwise:
				say "Invalid choice. Pick from 0 to 5.";
	if PronounChoice of Player is not "Auto":
		say "You are now set to [PronounChoice of Player] pronouns.";
	else:
		say "You are now set to automatic pronoun handling.";
	follow the SetPlayerPronouns rule;

pronountesting is an action applying to nothing.

understand "testpronouns" as pronountesting.

carry out pronountesting:
	say "[master].";
	say "[Master].";
	say "[sir].";
	say "[Sir].";
	say "[PronounChoice of Player].";
	say "[PronounSet of Player].";
	say "[SubjectPro of Player]";
	say "[isare]";
	say "[waswere]";

to say master:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "master";
	else:
		say "mistress";

to say Master:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "Master";
	else:
		say "Mistress";

to say boygirl:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "boy";
	else:
		say "girl";

to say guygal:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "guy";
	else:
		say "gal";

to say parent:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "father";
	else:
		say "mother";

to say mister:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "mister";
	else:
		say "miss";

to say Mister:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "Mister";
	else:
		say "Miss";

to say Sir:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "Sir";
	else:
		say "Ma'am";

to say sir:
	if PronounSet of Player is "Male" or PronounSet of Player is "Neutral":
		say "sir";
	else:
		say "ma'am";

[Being verbs]

to say isare:
	say isare for player;

to say waswere:
	say waswere for player;

to say isare for (x - a person):
	if PronounSet of x is "Neutral":
		say "are";
	else:
		say "is";

to say waswere for (x - a person):
	if PronounSet of x is "Neutral":
		say "were";
	else:
		say "was";

To say SubjectPro: say "[SubjectPro of Player]";
To say ObjectPro: say "[ObjectPro of Player]";
To say PosAdj: say "[PosAdj of Player]";
To say PosPro: say "[PosPro of Player]";
To say ReflexPro: say "[ReflexPro of Player]";
To say SubjectProCap: say "[SubjectProCap of Player]";
To say ObjectProCap: say "[ObjectProCap of Player]";
To say PosAdjCap: say "[PosAdjCap of Player]";
To say PosProCap: say "[PosProCap of Player]";
To say ReflexProCap: say "[ReflexProCap of Player]";


Gender Pronouns ends here.
