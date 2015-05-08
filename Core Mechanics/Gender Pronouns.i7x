Gender Pronouns by Core Mechanics begins here.

Section 1 - Blue Bishop's Variables and Routines

ghis is text that varies. ghis is usually "their". [Gender text nodule, entails his/her/their]
ghe is text that varies. ghe is usually "it".	[Gender text nodule, entails he/she/it]
ghim is text that varies. ghim is usually "it". [Gender text nodule, entails him/her/it]
gchis is text that varies. ghis is usually "Their". [Capitalized Versions]
gche is text that varies. gche is usually "It".
gchim is text that varies. ghim is usually "It".
gdragon is text that varies. gdragon is usually "dragon".
gmasculine is text that varies. gmasculine is usually "particular".

to malepronouns:
	now ghis is "his";
	now ghe is "he";
	now ghim is "him";
	now gchis is "His";
	now gche is "He";
	now gchim is "Him";
	now gdragon is "dragon";
	now gmasculine is "masculine";

to femalepronouns:
	now ghis is "her";
	now ghe is "she";
	now ghim is "her";
	now gchis is "Her";
	now gche is "She";
	now gchim is "Her";
	now gdragon is "dragoness";
	now gmasculine is "feminine";

to neutpronouns:
	now ghis is "their";
	now ghe is "it";
	now ghim is "it";
	now gchis is "Their";
	now gche is "It";
	now gchim is "It";
	now gdragon is "dragon";
	now gmasculine is "particular";

Section 2 Stripe's Definitions

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

Gender Pronouns ends here.
