Version 1 of Bastet by Wahn begins here.

Bastet is a woman. 
The description of Bastet is "[BastetDesc]".
The conversation of Bastet is { "Mew!" }.

instead of sniffing Bastet:
	say "     Bastet has an interesting, spicy scent in her fur that speaks of ancient mysteries and the potential of great power.";

to say BastetDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Bastet] <- DEBUG[line break]";
	say "     The goddess Bastet's avatar on this world currently is a beautiful anthro lioness, young and lightly muscled. She stands tall on her digitigrade legs and slender paws, looking at her surroundings with regal composure. Currently, the attractive female is dressed in a kalasiris, a tube dress of ancient egyptian design, starting just below her armpits and hugging every curve of Bastet's body until it stops just a little below her knees. In addition to being quite spectacularly tight, the dress also is woven in a striped pattern out of very fine, in places almost transparent, fabric, giving enticing glimpses at her body below.";
	say "     Since having lost to you in a quite enjoyable sexual contest, the lioness is duty-bound to repay her debt to Nermine - and the cunning storekeeper seems to have decided that that means doing guard duty at the store. Now Bastet spends most of her days here, watching out for people to make trouble. With you in your position as Nermine's [Master], this offers interesting opportunities to get to know the cat goddess better - or just to make use of her.";

instead of conversing the Bastet:
	say "     <Wahn: work in progress, sorry about that. This is where her content ends for now>";

to say BastetTalkMenu:
	say "What do you want to talk with Bastet about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Herself";
		now sortorder entry is 1;
		now description entry is "Ask the lioness about himself";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 2;
		now description entry is "Ask the lioness about sex";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Herself":
					say "[BastetTalk1]";
				if nam is "Sex":
					say "[BastetTalk2]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the lioness, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say BastetTalk1:
	say "     A";

to say BastetTalk2:
	say "     B";

to say BastetTalk3:
	say "     C";

Instead of fucking the Bastet:
	say "     <Wahn: work in progress, sorry about that. This is where her content ends for now>";

to say BastetSexMenu:	
	if(lastfuck of Bastet - turns < 5):
		say "     Bastet puts a hand on your chest to hold you back and says, 'Have some patience please, I am not a slut that is always ready for your pleasure... like some bitches you might know.' Her last words are accompanied by a pointed stare at Nermine, who stands ready at the store counter, dressed in nothing but her fur. The sexy jackaless even gives you two a provocative smile as she notices the looks coming her way, then cups her shapely breasts and demonstratively strokes their nipples. The proud lioness next to you just gives a disapproving huff and looks away, her tail twitching in annoyance.";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get a blowjob from Bastet";
			now sortorder entry is 1;
			now description entry is "Let the lioness suck you off";
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Bastet's ass";
			now sortorder entry is 2;
			now description entry is "Pound your dick into the sexy lioness";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Nevermind[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Get a blowjob from Bastet":
						say "[BastetSex1]";
					if nam is "Fuck Bastet's ass":
						say "[BastetSex2]";
					wait for any key;
					now lastfuck of Bastet is turns;
			otherwise if calcnumber is 100:
				say "Break off?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the lioness, shaking your head slightly as she gives a questioning look.";
					wait for any key;
				otherwise:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			otherwise:
				say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say BastetSex1: [Bastet sucks the player]
	say "     A";

to say BastetSex2: [the player fucks Bastet]
	say "     B";

Bastet ends here.
