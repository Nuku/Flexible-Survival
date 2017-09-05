Version 2 of Gender Pronouns by Core Mechanics begins here.
[ Version 2.1 - setmongender and mongendernum now pre-set the gender pronoun set and extended sets to include possessive pronouns. - Stripes ]

Section 1 - Blue Bishop's Variables and Routines

ghis is text that varies. ghis is usually "their". [Gender text nodule, entails his/her/their]
ghe is text that varies. ghe is usually "it".	[Gender text nodule, entails he/she/it]
ghim is text that varies. ghim is usually "it". [Gender text nodule, entails him/her/it]
ghishers is text that varies. ghishers is usually "theirs". [Gender text nodule, entails his/hers/theirs]
gchis is text that varies. ghis is usually "Their". [Capitalized Versions]
gche is text that varies. gche is usually "It".
gchim is text that varies. ghim is usually "It".
gchishers is text that varies. gchishers is usually "Theirs".
gdragon is text that varies. gdragon is usually "dragon".
gmasculine is text that varies. gmasculine is usually "particular".

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

to say subjpro_cap of (x - a person):	[Subjective Pronoun: He/She]
	if cunts of x is 0:
		say "He";
	otherwise:
		say "She";

to say subjpro of (x - a person):	[subjective pronoun: he/she]
	if cunts of x is 0:
		say "he";
	otherwise:
		say "she";

to say possadj_cap of (x - a person):	[Possessive Adjective: His/Her <something>]
	if cunts of x is 0:
		say "His";
	otherwise:
		say "Her";

to say possadj of (x - a person):	[possessive adjective: his/her <something>]
	if cunts of x is 0:
		say "his";
	otherwise:
		say "her";

to say objpro of (x - a person):	[objective pronoun: <to> him/her]
	if cunts of x is 0:
		say "him";
	otherwise:
		say "her";

to say posspro of (x - a person):	[possessive pronoun: <something> = his/hers]
	if cunts of x is 0:
		say "his";
	otherwise:
		say "hers";

Section 3 - Plurals

[short singular/plural statements - these add an s, es, y/ies as needed to a noun or a verb based on one or the other sexual characteristic]

to say smn:   [stick an s on if multiple male - noun]
	if cocks of player > 1:
		say "s";
	otherwise:
		say "";

to say sfn:    [stick an s on if multiple female - noun]
	if cunts of player > 1:
		say "s";
	otherwise:
		say "";

to say esmn:   [stick an es on if multiple male - noun]
	if cocks of player > 1:
		say "es";
	otherwise:
		say "";

to say esfn:    [stick an es on if multiple female - noun]
	if cunts of player > 1:
		say "es";
	otherwise:
		say "";

to say ymn:   [sticks y/ies on if multiple male - noun]
	if cocks of player > 1:
		say "ies";
	otherwise:
		say "y";

to say yfn:    [sticks y/ies on if multiple female - noun]
	if cunts of player > 1:
		say "ies";
	otherwise:
		say "y";

to say smv:    [stick an s on if single male - verb]
	if cocks of player > 1:
		say "";
	otherwise:
		say "s";

to say sfv:    [stick an s on if single female - verb]
	if cunts of player > 1:
		say "";
	otherwise:
		say "s";

to say esmv:    [stick an es on if single male - verb]
	if cocks of player > 1:
		say "";
	otherwise:
		say "es";

to say esfv:    [stick an es on if single female - verb]
	if cunts of player > 1:
		say "";
	otherwise:
		say "es";

to say ymv:    [stick an y/ies on if single male - verb]
	if cocks of player > 1:
		say "y";
	otherwise:
		say "ies";

to say yfv:    [sticks y/ies on if single female - verb]
	if cunts of player > 1:
		say "y";
	otherwise:
		say "ies";

[
Example:
say "Your cock[smn] smash[esmv] into the goblin's face.  Your juicy puss[yfn] then grind[sfv] against his pointy nose.";
1 cock: Your cock smashes into the goblin's face...
2+ cocks: Your cocks slam into the goblin's face...
1 cunt: ...Your juicy pussy then grinds against his pointy nose.
2+ cunts: ...Your juicy pussies then grind against his pointy nose.
]

[short singular/plural pronoun statements - these pick between the two relevant pronouns based on plurality of either male of female sex organs]

to say ittheym:   [subject pronoun male - picks 'it' or 'they' based on multiple male]
	if cocks of player > 1:
		say "they";
	otherwise:
		say "it";

to say ittheyf:   [subject pronoun female - picks 'it' or 'they' based on multiple female]
	if cunts of player > 1:
		say "they";
	otherwise:
		say "it";

to say itthemm:   [object pronoun male - picks 'it' or 'them' based on multiple male]
	if cocks of player > 1:
		say "them";
	otherwise:
		say "it";

to say itthemf:   [object pronoun female - picks 'it' or 'them' based on multiple female]
	if cunts of player > 1:
		say "them";
	otherwise:
		say "it";

to say itstheirm:   [possessive adjective male - picks 'its' or 'their' based on multiple male]
	if cocks of player > 1:
		say "their";
	otherwise:
		say "its";

to say itstheirf:   [possessive adjective female - picks 'its' or 'their' based on multiple female]
	if cunts of player > 1:
		say "their";
	otherwise:
		say "its";

to say itstheirsm:   [possessive pronoun male - picks 'its' or 'theirs' based on multiple male]
	if cocks of player > 1:
		say "theirs";
	otherwise:
		say "its";

to say itstheirsf:   [possessive pronoun female - picks 'its' or 'theirs' based on multiple female]
	if cunts of player > 1:
		say "theirs";
	otherwise:
		say "its";

to say ItTheym:   [subject pronoun male - picks 'it' or 'they' based on multiple male]
	if cocks of player > 1:
		say "They";
	otherwise:
		say "It";

to say ItTheyf:   [subject pronoun female - picks 'it' or 'they' based on multiple female]
	if cunts of player > 1:
		say "They";
	otherwise:
		say "It";

to say ItThemm:   [object pronoun male - picks 'it' or 'them' based on multiple male]
	if cocks of player > 1:
		say "Them";
	otherwise:
		say "It";

to say ItThemf:   [object pronoun female - picks 'it' or 'them' based on multiple female]
	if cunts of player > 1:
		say "Them";
	otherwise:
		say "It";

to say ItsTheirm:   [possessive adjective male - picks 'its' or 'their' based on multiple male]
	if cocks of player > 1:
		say "Their";
	otherwise:
		say "Its";

to say ItsTheirf:   [possessive adjective female - picks 'its' or 'their' based on multiple female]
	if cunts of player > 1:
		say "Their";
	otherwise:
		say "Its";

to say ItsTheirsm:   [possessive pronoun male - picks 'its' or 'theirs' based on multiple male]
	if cocks of player > 1:
		say "Theirs";
	otherwise:
		say "Its";

to say ItsTheirsf:   [possessive pronoun female - picks 'its' or 'theirs' based on multiple female]
	if cunts of player > 1:
		say "Theirs";
	otherwise:
		say "Its";

Section 4 - Current Monster

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

currentmonster can be neuterX.	[0/10]	[genderless/non-applicable]
currentmonster can be neuterM.	[1/11]	[male-type neuter]
currentmonster can be neuterF.	[2/12]	[female-type neuter]
currentmonster can be male.		[3/13]
currentmonster can be female.	[4/14]
currentmonster can be herm.		[5/15]
currentmonster can be shemale.	[6/16]	[shemale/futa/dickgirl/etc.]
currentmonster can be mherm.	[7/17]
currentmonster can be cuntboy.	[8/18]
currentmonster can be variable.	[9/19]

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
	otherwise if currentmonster is femalepro:
		femalepronouns;
	otherwise:
		neutpronouns;

to say mongendernum (x - a number):
	now mongender of currentmonster is x;
	if currentmonster is malepro:
		malepronouns;
	otherwise if currentmonster is femalepro:
		femalepronouns;
	otherwise:
		neutpronouns;

Definition: currentmonster is malepro:			[creature referred to as male]
	if mongender of currentmonster is 1, yes;
	if mongender of currentmonster is 3, yes;
	if mongender of currentmonster is 7, yes;
	if mongender of currentmonster is 8, yes;
	if mongender of currentmonster is 11, yes;
	if mongender of currentmonster is 13, yes;
	if mongender of currentmonster is 17, yes;
	if mongender of currentmonster is 18, yes;
	no;

Definition: currentmonster is femalepro:			[creature referred to as female - can also be used to determine if breasts]
	if mongender of currentmonster is 2, yes;
	if mongender of currentmonster is 4, yes;
	if mongender of currentmonster is 5, yes;
	if mongender of currentmonster is 6, yes;
	if mongender of currentmonster is 12, yes;
	if mongender of currentmonster is 14, yes;
	if mongender of currentmonster is 15, yes;
	if mongender of currentmonster is 16, yes;
	no;

Definition: currentmonster is neuterpro:			[creature referred to as neuter (it/they)]
	if mongender of currentmonster is 0, yes;
	if mongender of currentmonster is 9, yes;
	if mongender of currentmonster is 10, yes;
	if mongender of currentmonster is 19, yes;
	no;

Definition: currentmonster is neuter:			[creature is genderless or has no genitals]
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

Definition: currentmonster is cocked:			[Male, herm, shemale, m-herm]
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

Definition: currentmonster is cunted:			[Female, herm, m-herm, cuntboy]
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
	say "Monster gender is [mongender of currentmonster] - [if currentmonster is neuterX]neuterX[otherwise if currentmonster is neuterM]neuterM[otherwise if currentmonster is neuterF]neuterF[otherwise if currentmonster is male]male[otherwise if currentmonster is female]female[otherwise if currentmonster is herm]herm[otherwise if currentmonster is shemale]shemale[otherwise if currentmonster is mherm]mherm[otherwise if currentmonster is cuntboy]cuntboy[otherwise if currentmonster is variable]variable[end if].";
	say "Male pronouns? [if currentmonster is malepro]YES[otherwise]NO[end if][line break]";
	say "Female pronouns? [if currentmonster is femalepro]YES[otherwise]NO[end if][line break]";
	say "Neuter pronouns? [if currentmonster is neuterpro]YES[otherwise]NO[end if][line break]";
	say "Got a cock? [if currentmonster is cocked]YES[otherwise]NO[end if][line break]";
	say "Got a cunt? [if currentmonster is cunted]YES[otherwise]NO[end if][line break]";
	say "Neuter/Genderless? [if currentmonster is neuter]YES[otherwise]NO[end if][line break]";
	say "Multiple creatures? [if currentmonster is multiple]YES[otherwise]NO[end if][line break]";

monnumsetting is an action applying to one number.
understand "monnum [a number]" as monnumsetting.

carry out monnumsetting:
	setmongender (the number understood);
	say "Monster gender is [mongender of currentmonster] - [if currentmonster is neuterX]neuterX[otherwise if currentmonster is neuterM]neuterM[otherwise if currentmonster is neuterF]neuterF[otherwise if currentmonster is male]male[otherwise if currentmonster is female]female[otherwise if currentmonster is herm]herm[otherwise if currentmonster is shemale]shemale[otherwise if currentmonster is mherm]mherm[otherwise if currentmonster is cuntboy]cuntboy[otherwise if currentmonster is variable]variable[end if].";

Section 4 - Wahn's Definitions

to say heshe:
	if player is female:
		say "she";
	else if player is male:
		say "he";
	else:
		say "it";

to say HeShe:
	if player is female:
		say "She";
	else if player is male:
		say "He";
	else:
		say "It";

to say hisher:
	if player is female:
		say "her";
	else if player is male:
		say "his";
	else:
		say "its";

to say himher:
	if player is female:
		say "her";
	else if player is male:
		say "him";
	else:
		say "it";

Section 4 - Starshard's Definitions

to say master:
	if cocks of player > 0 and cunts of player > 0:
		if breasts of player > 0: [herm]
			say "mistress";
		else: [male herm]
			say "master";
	if cocks of player > 0:
		if breasts of player > 0: [shemale]
			say "mistress";
		else: [male]
			say "master";
	if cunts of player > 0:
		if breasts of player > 0: [female]
			say "mistress";
		else: [cuntboy]
			say "master";

to say Master:
	if cocks of player > 0 and cunts of player > 0:
		if breasts of player > 0: [herm]
			say "Mistress";
		else: [male herm]
			say "Master";
	if cocks of player > 0:
		if breasts of player > 0: [shemale]
			say "Mistress";
		else: [male]
			say "Master";
	if cunts of player > 0:
		if breasts of player > 0: [female]
			say "Mistress";
		else: [cuntboy]
			say "Master";

Gender Pronouns ends here.
