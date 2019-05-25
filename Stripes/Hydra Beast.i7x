Version 2 of Hydra Beast by Stripes begins here.
[Version 2.0 - Player Victory + Endings]

"Adds a Hydra Beast creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Hydra Beast" } to infections of MaleList;
	add { "Hydra Beast" } to infections of TailweaponList; [usable for Tail Strike feat]
	add { "Hydra Beast" } to infections of ReptileList; [list of reptile infections]
	add { "Hydra Beast" } to infections of VoreExclusion; [list of critters not to be vored]

hydraheadcount is a number that varies. hydraheadcount is usually 6.
hydraheadcheck1 is a truth state that varies. hydraheadcheck1 is usually false.
hydraheadcheck2 is a truth state that varies. hydraheadcheck2 is usually false.
hydraheadcheck3 is a truth state that varies. hydraheadcheck3 is usually false.
hydraheadregrowth is a truth state that varies. hydraheadregrowth is usually true.
hydramaulcount is a number that varies.

to say hydrabeastdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	if hardmode is true and level of Player > 12, let debit be level of Player - 12;
	now lev entry is 12 + debit;
	now HP entry is 100 + ( debit * 5 );
	now monsterHP is 100 + ( debit * 5 );
	now wdam entry is 12 + ( ( 2 * debit ) / 5 );
	now per entry is 18;
	increase monhitbonus by 3;
	now hydraheadcount is 6;
	now hydraheadcheck1 is false;
	now hydraheadcheck2 is false;
	now hydraheadcheck3 is false;
	now hydraheadregrowth is true;
	now hydramaulcount is 0;
	let debit be 0;
	say "     Before you is a large, monstrous creature of scales and jaws. The multi-headed hydra has a half-dozen heads on long, serpentine necks. Each head is very reptilian, draconic even, with a thick muzzle filled with sharp fangs and a long, tapered tongue. Its predatory eyes watch the world through its many slitted pupils. It has a wide, stocky body and trundles forward on four legs. The many twining necks of its heads are attached to these widened shoulders and upper back, allowing it to fit them all. These necks are slender and flexible, allowing the hydra to bring them all into position as needed. Its heavy, armored hide is covered in thick, emerald scales to guard its body. There is also a heavy, musky scent of male arousal in the air around the creature as well, telling you that, despite its fearsome appearance, it seeks sex like most other creatures roaming about.";


to say hydraharming:
	now hydraheadregrowth is false;

to say losetohydrabeast:
	say "     [if HP of Player > 0]Forced to submit to[else]Unable to keep fighting against[end if] the monstrous creature and its numerous heads, you are knocked down by its many heads and pinned there. While its jaws tear away and toss aside your clothing and gear, you catch quick glimpses of the large, dripping cocks dangling at its underside, noting that it has as many cocks as it does heads, all fueled by a massive set of balls. While not nearly as flexible as its necks, they do seem somewhat prehensile, sometimes rubbing up against one another in anticipation of using its fallen prey.";
	if Player is female:
		if hydraheadcount < Cunt Count of Player:
			[more cunts than cocks = no anal / no excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies. They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing [hydraheadcount] of your [Cunt Count of Player] cunts with its reptilian cocks. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your [if (hydraheadcount + 1) is Cunt Count of Player]unstuffed cunt gets its turn as well, with slender, squirming tongues teasing your folds and delving into your hot depths[else]unstuffed cunts get their turn as well, with slender, squirming tongues teasing your folds and delving into your hot depths[end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the beasts many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsack, shoots into your many stuffed holes. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance][if hydraheadcount > 3][fovichance][end if][if hydraheadcount > 5][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial, multiple mating.";
		else if hydraheadcount is Cunt Count of Player:
			[matching cocks and cunts = no anal / no excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies. They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing each of your [Cunt Count of Player] cunts with one of its reptilian cocks. Its many heads trill happily, clearly pleased at having found a mate with the proper number of pussies for its many shafts. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsack, shoots into your many stuffed holes. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance][if Cunt Count of Player > 2][fovichance][end if][if Cunt Count of Player > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial, multiple mating.";
		else if ( hydraheadcount + 1 ) is Cunt Count of Player and anallevel > 1:
			[multiple cunts all fucked / anal / no excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies. They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing each of your [Cunt Count of Player] cunts with one of its reptilian cocks. Left with one final cock, that one finds its way to your crinkled pucker and, after releasing a gush of slick precum, forces your tight hole open to accept it. Its many heads trill happily, clearly pleased at having found a mate with the proper number of holes for its many shafts. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsack, shoots into your many stuffed holes. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed and your ass filled to the brim as well.[movichance][fovichance][if Cunt Count of Player > 2][fovichance][end if][if Cunt Count of Player > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial, multiple mating.";
		else if anallevel > 1:
			[cunt(s) all fucked / anal / excess]
			let tempcheck be false;
			if (hydraheadcount + 2) is Cunt Count of Player, now tempcheck is true; [one unused cock]
			say "     The hydra beast moves overtop of you, trapping you as it brings [if Cunt Count of Player is 1]one of its numerous cocks to bear on your pussy. It presses against your wet folds, pushing its[else]its numerous cocks to bear on your pussies. They press against your wet folds, pushing their [end if]way into you as the multi-cocked creature mounts you, stuffing [if Cunt Count of Player is 1]your cunt with one of its reptilian cocks[else]each of your [Cunt Count of Player] cunts with one of its reptilian cocks[end if]. Left with some unused, one finds its way to your crinkled pucker and, after releasing a gush of slick precum, forces your tight hole open to accept it[if tempcheck is true]. The unused shaft rubs and slaps against your bulging belly as its[else]. The unused shafts rub and slap against your bulging belly as their[end if] brethren fuck[sfn] you wildly. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed [if Cunt Count of Player is 1]vagina quivers and the hydra's pulsing manhood, also getting teasing licks across its clit[else]vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits[end if] from the hydra's many darting tongues. The hydra's heads even engulf its own unused [if tempcheck is true]penis[else]penises[end if], working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives its rod[sfn] deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its [if Cunt Count of Player is 1]cocks[else]many cocks[end if], pumped from its heavy ballsack, shoots into your stuffed holes and down the [if tempcheck is true]throat of its sucking head[else]throats of its sucking heads[end if]. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed and your ass filled to the brim as well.[movichance][fovichance][if Cunt Count of Player > 2][fovichance][end if][if Cunt Count of Player > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, [if Cunt Count of Player > 1]each emptied[else]your[end if] cunt releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial[if Cunt Count of Player > 1], multiple[end if] mating.";
		else if Cunt Count of Player is 1:
			[single cunt fucked / no anal / excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings one of its numerous cocks to bear on your pussy. It presses against your wet folds, pushing its way into you as the multi-cocked creature mounts you, stuffing your cunt with one of its reptilian cocks. The unused shafts rub and slap against your bulging belly as their brethren fucks you wildly. Its subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vagina quivers around the hydra's pulsing manhood, also getting teasing licks across its clit from the hydra's many darting tongues. The hydra's heads even engulf its own unused penises, working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives its rod deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its ridged cock, pumped from its heavy ballsack, shoots into your stuffed hole and down the throats of its sucking heads. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance]";
			say "     When its climax finally comes to an end, it pulls its cock from you, your emptied cunt releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial mating.";
		else:
			[multiple cunts all fucked / no anal / excess]
			let tempcheck be false;
			if (hydraheadcount + 1) is Cunt Count of Player, now tempcheck is true; [one unused cock]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies. They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing each of your [Cunt Count of Player] cunts with one of its reptilian cocks. The unused shafts rub and slap against your bulging belly as their brethren fuck you wildly. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues. The hydra's heads even engulf its own unused [if tempcheck is true]penis[else]penises[end if], working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its [if Cunt Count of Player is 2]cocks[else]many cocks[end if], pumped from its heavy ballsack, shoots into your stuffed holes and down the [if tempcheck is true]throat of its sucking head[else]throats of its sucking heads[end if]. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance][if Cunt Count of Player > 2][fovichance][end if][if Cunt Count of Player > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial, multiple mating.";
	else:		[no cunts = anal]
		say "     The hydra beast moves overtop of you, trapping you as one of its numerous cocks finds its way to your crinkled pucker. It grinds the tapered tip against your back door and, after releasing a gush of slick precum, forces your tight hole open to accept it. The unused shafts rub and slap against your belly as their brethren fucks you wildly. Its subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. The hydra's heads even engulf its own unused penises, working to suck itself off even as it fucks you.";
		say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide. Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum. The hydra drives its rod deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully. The hot rush of its tainted semen from its ridged cock, pumped from its heavy ballsack, shoots into your stuffed hole and down the throats of its sucking heads. You are left feeling full and bloated with the beasts torrential load, your ass filled to the brim with its virile seed.[movichance]";
		say "     When its climax finally comes to an end, it pulls its cock from you, your emptied asshole releasing a gush of excess semen that pools beneath you. You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you. You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off. Left it with its original count of six, the excess heads melt away into fleshy goop[else if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off. Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[else]barely notice it heading off[end if]. You end up passing out briefly, your worn body out from the bestial mating.";


to say beatthehydrabeast:
	if Player is not neuter:
		say "     You manage to fight your way to what you perceive to be the central head and grapple it, twisting it in a painful lock. The other heads hiss angrily at you, but do not attack for fear of you harming its true head. You force the weakened creature to submit to you, lowering its forequarters to the ground. Now that you've beaten it, you find yourself considering letting off a little steam with the [hydraheadcount]-headed beast after the fight. Will you:[line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Receive oral sex";
		now sortorder entry is 1;
		now description entry is "Demand oral pleasure from its many mouths";
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck it";
			now sortorder entry is 2;
			now description entry is "Fuck the beast in the ass";
		choose a blank row in table of fucking options;
		now title entry is "Get fucked";
		now sortorder entry is 3;
		now description entry is "Have it fuck your [if Player is female]holes[else]hole[end if].";
		choose a blank row in table of fucking options;
		now title entry is "Drive it off";
		now sortorder entry is 99;
		now description entry is "Make it leave";
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> ";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let numchoice be sortorder entry;
					now sextablerun is 1;
					if numchoice is 1:			[oral]
						say "[beathydrabeast1]";
					else if numchoice is 2:	[fuck it]
						say "[beathydrabeast2]";
					else if numchoice is 3:	[get fucked]
						say "[beathydrabeast3]";
					else if numchoice is 99:	[no sex - leave]
						say "[beathydrabeast99]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		wait for any key;
		clear the screen and hyperlink list;
	else:
		say "     You manage to fight your way to what you perceive to be the central head and grapple it, twisting it in a painful lock. The other heads hiss angrily at you, but do not attack for fear of you harming its true head. You force the weakened creature to submit and then drive it off. Many of its red, reptilian eyes glare at you as it trundles off[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";


to say beathydrabeast1:	[oral]
	say "     Pulling the beast's primary head up to yours, you give it a kiss. It makes a surprised rumble, but makes no attempt to resist, even sliding its slick tongue into your mouth. After you break the kiss, the creature seems more at ease and compliant. You guide its head down to your crotch, ordering it to start licking. ";
	if Cock Count of Player + Cunt Count of Player > 1:
		say "Faced with your multiple loins, it rumbles softly and licks across them before you [if Cock Count of Player > 1]sliding its muzzle over one of your cocks[else if Cock Count of Player is 1]sliding its muzzle over your cock[else]press its muzzle to one of your pussies[end if]. ";
	else if Cock Count of Player is 1:
		say "Faced with your throbbing manhood, it rumbles softly and licks across it before sliding its muzzle over it. ";
	else:
		say "Faced with your dripping snatch, it rumbles softly and licks across it before pressing its muzzle to it. ";
	say "It works its tongue adeptly, playing across your sensitive flesh and increasing your arousal quickly[if Player is male]. The creature shows considerable skill while sucking your cock, likely having lots of practice on itself and others[else]. The creature's wriggling tongue shows considerable skill while lapping into your hot, needy cunt[end if].";
	say "     As the creature works to orally pleasure you, you grab its other heads and pull them into the fun. You kiss them all in turn, sucking on their long, tapered tongues. After being released from your eager lips, you guide each head into position, letting them pleasure your [bodydesc of Player] body, moving them to new spots from time to time[if Breast Size of Player > 0]. They lick and suck on your nipples, sending shivers of delight through you[end if][if Cock Count of Player > 2]. You make sure your other cocks receive attention as well, swapping hydra heads onto them as well[else if Cock Count of Player is 2]. You make sure your other cock receives attention as well, swapping hydra heads onto it as well[end if][if Player is male and Cunt Count of Player > 1]. Those deft tongues are also put to use in your [cunt size desc of Player] cunts, licking and thrusting into them to fill their aching need[else if Player is male and Cunt Count of Player is 1]. Those deft tongues are also put to use in your [cunt size desc of Player] cunt, licking and thrusting into it to fill its aching need[else if Cunt Count of Player > 2]. Those deft tongues are also put to use in your remaining cunts, licking and thrusting into them to fill their aching need[else if Cunt Count of Player is 2]. Those deft tongues are also put to use in your remaining cunt, licking and thrusting into it to fill its aching need[end if][if anallevel is 3 and hydraheadcount > 4]. One of those heads even sneaks around to your ass when you're otherwise distracted by its numerous licking tongues and laps at your asshole. After a few teasing licks, it squirms the slick, meaty flesh past your relaxing muscles and into you, causing you to moan at the pleasant intrusion[end if]. This wide array of oral pleasure is kept up until you can hold back no longer and cum with a long, loud moan[if Cock Count of Player > 1], pumping your hot seed down the creature's throats[else if Cock Count of Player is 1], pumping your hot seed down the creature's throat[else if Cunt Count of Player > 1], soaking the creature's scaly muzzles with your juices[else]soaking the creature's scaly muzzle with your juices[end if]. After giving you such a fulfilling orgasm, you give the creature another kiss, this one having lingering traces of your [if Player is male]semen[else]honey[end if] to flavor it, before sending it on its away[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";

to say beathydrabeast2:	[fuck it]
	say "     Pulling the beast's primary head up to yours, you give it a kiss. It makes a surprised rumble, but makes no attempt to resist, even sliding its slick tongue into your mouth. After you break the kiss, the creature seems more at ease and compliant. You order it to keep that ass raised and move around behind it. It holds its position and raises its tail, willingly granting you access to its ass now that you've defeated it. You run your hands over its meaty backside, feeling the firm muscles under its scaly hide. And between those is the dark green ring that is your target.";
	if anallevel is 3 and a random chance of Libido of Player in 125 succeeds:
		say "     Leaning in close, you lick your lips before pressing your slick tongue to that dark ring. You slather your tongue across it a few times before starting to prod at the creature's hole. The great beast rumbles in pleasure as you knead its rear and work your slick, meaty flesh into his back passage, opening him up and getting him ready for what's to come. Though you certainly keep going at it longer than is necessary, having switched a hand to his huge, heavy ballsack. Each nut feels like a cluster of testicles clumped together to provide enough cum for the creature's many cocks. Only after you've had your fun playing with its balls and hearing it moan and rumble as you do are you ready to get to the main event.";
	else if anallevel is 3:
		say "     You suck down on a pair of your fingers, getting them wet before pressing them to that dark ring. You rub and tease across it a few times before starting to prod at the creature's hole. The great beast rumbles in pleasure as you knead its rear with your free hand while working your slick digits into his back passage, opening him up and getting him ready for what's to come. Though you certainly keep going at it longer than is necessary, having switched your hand to his huge, heavy ballsack. Each nut feels like a cluster of testicles clumped together to provide enough cum for the creature's many cocks. Only after you've had your fun playing with its balls and hearing it moan and rumble as you do are you ready to get to the main event.";
	say "     [if anallevel is 3]Having gotten its back entrance ready, you[else]You[end if] move into position, lining up your cock with its [if anallevel is 3]slick [end if]hole and push your [cock size desc of Player] shaft into the beast. It releases rumbling moans from its many heads and grinds itself back onto your cock. Putting an arm around its thick tail, you starts thrusting into it. As you fuck the monster, its primary head twists back around, coming in to kiss you. Its long tongue dives into your mouth and down your throat, and you suck on it happily, thrusting all the harder as you do. Its other heads twist around as well, some of them coming to [if Breast Size of Player > 0]suck on your nipples and [end if]lick across your [bodydesc of Player] body while others move underneath so the creature can suck itself off while getting pounded by you.";
	say "     After giving the monster a good, hard pounding, you bury your [cock size desc of Player] cock into it and moan in release. You shoot your [Cum Load Size of Player] load into its clenching asshole[if Player is male] and across its meaty backside[end if]. This causes the creature's many heads to growl lustfully as it climaxes, spraying gushers of cum from each of its [hydraheadcount] penises. Much of its load is sucked up by its additional heads, but plenty ends up leaving a sticky mess on the ground. When you're done and pull out, the hydra's many heads set themselves to licking you clean before you give it another long, tongue-filled kiss before sending it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";


to say beathydrabeast3:	[get fucked]
	say "     Pulling the beast's primary head up to yours, you give it a kiss. It makes a surprised rumble, but makes no attempt to resist, even sliding its slick tongue into your mouth. After you break the kiss, the creature seems more at ease and compliant. Despite being the victor, you do have to admit that what you want the most right now is for it to just fuck you. Glancing beneath it, you look over of the large, dripping cocks dangling at its underside, noting that it has as many cocks as it does heads, all fueled by a massive set of balls. While not nearly as flexible as its necks, they do seem somewhat prehensile, sometimes rubbing up against one another in their excitement. Having made your decision, you move onto all fours and wave your ass in the air, telling the creature that if it really wants to fuck you, for it to mount up.";
	say "     It rumbles softly and moves eagerly atop you, nuzzling you and licking across your face as it moves into position. It shows some restraint, at least for the moment, gently probing its many cocks against your rear before ";
	if Player is female:
		if hydraheadcount < Cunt Count of Player:
			[more cunts than cocks = no anal / no excess]
			say "lining each of them up to one of your numerous pussies. They press against your wet folds, their tapered tips spreading you open and pushing their way into you as the multi-cocked creature mounts you, stuffing [hydraheadcount] of your [Cunt Count of Player] cunts with its reptilian cocks. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
			say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your [if (hydraheadcount + 1) is Cunt Count of Player]unstuffed cunt gets its turn as well, with slender, squirming tongues teasing your folds and delving into your hot depths[else]unstuffed cunts get their turn as well, with slender, squirming tongues teasing your folds and delving into your hot depths[end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the beasts many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your cunts all quiver and clench down upon its many cocks, the hydra is driven over the edge and drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsack, shoots into your many stuffed holes. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance][if hydraheadcount > 2][fovichance][end if][if hydraheadcount > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
		else if hydraheadcount is Cunt Count of Player:
			[matching cocks and cunts = no anal / no excess]
			say "lining each of them up to each of your numerous pussies. They press against your wet folds, their tapered tips spreading you open and pushing their way into you as the multi-cocked creature mounts you, stuffing your [Cunt Count of Player] cunts with its reptilian cocks. Its many heads trill happily, clearly pleased at having found a mate with the proper number of pussies for its many shafts. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
			say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the beasts many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your cunts all quiver and clench down upon its many cocks, the hydra is driven over the edge and drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsack, shoots into your many stuffed holes. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance][if hydraheadcount > 2][fovichance][end if][if hydraheadcount > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
		else if ( hydraheadcount + 1 ) is Cunt Count of Player and anallevel > 1:
			[multiple cunts all fucked / anal / no excess]
			say "lining each of them up to one of your numerous pussies. They press against your wet folds, their tapered tips spreading you open and pushing their way into you as the multi-cocked creature mounts you, stuffing [hydraheadcount] of your [Cunt Count of Player] cunts with its reptilian cocks. Left with one final cock, that one finds its way to your crinkled pucker and, after releasing a gush of slick precum, eases your tight hole open to accept it. Its many heads trill happily, clearly pleased at having found a mate with the proper number of holes for its many shafts. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
			say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the beasts many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your cunts and asshole all quiver and clench down upon its many cocks, the hydra is driven over the edge and drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsack, shoots into your many stuffed holes. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed and your ass filled to the brim as well.[fovichance][if hydraheadcount > 2][fovichance][end if][if hydraheadcount > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
		else if anallevel > 1:
			[cunt(s) all fucked / anal / excess]
			let tempcheck be false;
			if (hydraheadcount + 2) is Cunt Count of Player, now tempcheck is true; [one unused cock]
			say "[if Cunt Count of Player is 1]lining one of them up with your wanton pussy. It presses against your wet folds, its tapered tip spreading you open and pushing its way into you as the horny creature mounts you with its reptilian cock[else]lining one of them up to each of your pussies. They press against your wet folds, their tapered tips spreading you open and pushing their way into you as the multi-cocked creature mounts you, stuffing your [Cunt Count of Player] cunts with its reptilian cocks[end if]. Left with some unused, one finds its way to your crinkled pucker and, after releasing a gush of slick precum, eases your tight hole open to accept it[if tempcheck is true]. The unused shaft rubs and slaps against your bulging belly as its[else]. The unused shafts rub and slap against your bulging belly as their[end if] brethren fuck[sfn] you. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
			say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed [if Cunt Count of Player is 1]vagina quivers and the hydra's pulsing manhood, also getting teasing licks across its clit[else]vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits[end if] from the hydra's many darting tongues. The hydra's heads even engulf its own unused [if tempcheck is true]penis[else]penises[end if], working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your cunt[sfn] and asshole quiver and clench down upon the ridged shafts filling them, the hydra is driven over the edge and drives its rods deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its [if Cunt Count of Player is 1]cocks[else]many cocks[end if], pumped from its heavy ballsack, shoots into your stuffed holes and down the [if tempcheck is true]throat of its sucking head[else]throats of its sucking heads[end if]. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed and your ass filled to the brim as well.[movichance][fovichance][if Cunt Count of Player > 3][fovichance][end if][if Cunt Count of Player > 5][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, [if Cunt Count of Player > 1]each emptied[else]your[end if] cunt releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
		else if Cunt Count of Player is 1:
			[single cunt fucked / no anal / excess]
			say "lining one of them up with your wanton pussy. It presses against your wet folds, its tapered tip spreading you open and pushing its way into you as the horny creature mounts you with its reptilian cock. The unused shafts rub and slap against your bulging belly as their brethren fucks you. Its subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
			say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vagina quivers around the hydra's pulsing manhood, also getting teasing licks across its clit from the hydra's many darting tongues. The hydra's heads even engulf its own unused penises, working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your cunt quivers and clenches down upon the ridged shaft filling it, the hydra is driven over the edge and drives its rod deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its cock, pumped from its heavy ballsack, shoots into your stuffed hole and down the throats of its sucking heads. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance]";
			say "     When its climax finally comes to an end, it pulls its cocks from you, your cunt releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
		else:
			[multiple cunts all fucked / no anal / excess]
			let tempcheck be false;
			if (hydraheadcount + 1) is Cunt Count of Player, now tempcheck is true; [one unused cock]
			say "lining one of them up to each of your pussies. They press against your wet folds, their tapered tips spreading you open and pushing their way into you as the multi-cocked creature mounts you, stuffing your [Cunt Count of Player] cunts with its reptilian cocks[if tempcheck is true]. The unused shaft rubs and slaps against your bulging belly as its[else]. The unused shafts rub and slap against your bulging belly as their[end if] brethren fuck you. Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
			say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues. The hydra's heads even engulf its own unused [if tempcheck is true]penis[else]penises[end if], working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your cunts quiver and clench down upon the ridged shafts filling them, the hydra is driven over the edge and drives its rods deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its [if Cunt Count of Player is 2]cocks[else]many cocks[end if], pumped from its heavy ballsack, shoots into your stuffed holes and down the [if tempcheck is true]throat of its sucking head[else]throats of its sucking heads[end if]. You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fovichance][if Cunt Count of Player > 2][fovichance][end if][if Cunt Count of Player > 4][fovichance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
	else:		[no cunts = anal]
		say "lining one of them up with your crinkled hole. It grinds the tapered tip against your back door and, after releasing a gush of slick precum, eases your tight hole open to accept it. The unused shafts rub and slap against your bulging belly as their brethren fucks you. Its subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again. Its pace at first is slow, but speeds up rapidly as its wild nature drives it to pound you like a beast, much to your increasing delight.";
		say "     While it fucks you, its main head continues to lick and kiss you, its long tongue diving into your mouth and down your throat. In your growing lust, you welcome it and suck on the meaty flesh eagerly. Its other heads roam across your body, ravishing your [bodydesc of Player] body in search of any sensitive, sexual spot to lick or tease[if Breast Size of Player > 0]. They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if Player is male]. Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if]. The hydra's heads even engulf its own unused penises, working to suck itself off even as it fucks you.";
		say "     As the beast fucks you thoroughly, its many heads move around often, almost as if each wants to partake in all of you. Subject to such constant, all-encompassing stimulation, you are pushed to great heights of pleasure as they work cooperatively to build you up slowly to one powerful, vision-blurring climax that makes you cry out in ecstasy. As your asshole quivers and clenches down upon the ridged shafts filling it, the hydra is driven over the edge and drives it rod deep into you, stuffing you so delightfully full of reptilian cock that your orgasmic delight surges again. The hot rush of its tainted semen from its cock, pumped from its heavy ballsack, shoots into your stuffed hole and down the throats of its sucking heads. You are left feeling full and bloated with the beasts torrential load, your ass filled to the brim with its virile seed.[movichance]";
		say "     When its climax finally comes to an end, it pulls its cocks from you slowly, your emptied asshole releasing a gush of excess semen that pools beneath you. Sticky with the creature's cum, it takes some effort to pull yourself to your feet after that, your knees weak and your body positively tingling with the afterglow of your climax. The creature seems similarly dazed and happy, giving you a deep, tongue-filled kiss before you send it on its way[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";


to say beathydrabeast99:	[no sex - leave]
	say "     Pushing aside your baser urges, you give the creature's head another painful twist before driving it off. Many of its red, reptilian eyes glare at you as it trundles off[if hydraheadcount > 6]. As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[else if hydraheadcount < 6]. As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";



Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Hydra Beast"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The hydra beast[or]The hydra[or]The scaled horror[or]The multi-headed monstrosity[or]It[at random] [one of]manages to bite down onto you firmly with one of its fearsome heads![or]bashes its thick, ridged tail into you when you try to outmaneuver its many snapping jaws![or]chomps down on you with on of its fang-filled mouths![or]bashes one of its heads into you, knocking you back![or]rears up with surprising ease for something of its size and tears into you with a clawed foot![or]latches one of its mouths around your waist, biting deeply before you force its jaws open and pull free![at random]";
	now defeated entry is "[beatthehydrabeast]";
	now victory entry is "[losetohydrabeast]";
	now desc entry is "[hydrabeastdesc]";
	now face entry is "very reptilian, draconic even, with a thick muzzle filled with sharp fangs and a long, tapered tongue. Your predatory eyes watch the world through slitted pupils";
	now body entry is "quite massive, having a stocky build despite your considerable size. While still able to move around on two legs, you do so with a considerable hunch, your shoulders weighed down by the addition of a pair of extra, reptilian heads. [if Player is hydrafaced]They look quite similar to your main, middle head, making it hard for others to distinguish which is which at times[else]They look quite different from your main, middle head, and are almost draconic in appearance[end if]. Each has a flexible neck that lets them move and look around independently of your own. As it is, you have practically no control over them, instead only picking up [if humanity of Player < 33]strong, instinctual urges such as hunger or lust[else if humanity of Player < 67]infrequent, animal impulses such as hunger or lust[else]vague sensation[end if] from them. Your arms and legs are thick and muscular, ending in four-digit hands and three-toed feet capped with thick, sharp claws";
	now skin entry is "[one of]vivid green[or]scaled[or]toughened[or]emerald[at random]";
	now tail entry is "Attached at the base of your spine, there grows out a thick, lizard-like tail. It's at a foot wide at its base, it is covered in short, hardened ridges and extends out seven or eight feet in length.";
	now cock entry is "[one of]tapered[or]reptilian[or]ridged[or]flexible[or]dark green[at random]";
	now face change entry is "you get a dizzying, almost nauseating feeling. Your senses go haywire as you realize your head must be changing. Your jawbone aches, as does your neck, feeling like they're stretching. As your neck becomes elongated and flexible, your changing mouth forms into a large muzzle filled with sharp teeth and oversized fangs. Your elongated tongue slides across your fangs and slathers across your almost draconic muzzle";
	now body change entry is "pressure grips your body and it becomes difficult to breathe. Your chest feels thick and full, growing very heavy even as your shoulders become broader and your chest expands. Your limbs also become thickly muscled and end in clawed digits, four on your hands and three on your feet. Just as you start to think it might be done, there's a sudden surge at your shoulders as large bulges of flesh swell up. You can feel something pressing outwards from beneath your skin, finally pushing its way through as first one and then the other release additional the reptilian heads you've grown. This added pair of hydra heads hiss as they come to life, scanning around predatorily";
	now skin change entry is "as your flesh ripples and turns a vivid green. It goes temporarily stretchy and soft before tightening and hardening into tough scales";
	now ass change entry is "there is a growing pain at the base of your spine. You've been infected, and something is happening. You can feel the pressure building... and building... and building... until finally it surges outwards in a rush of growth and transformation, leaving you with a thick, reptilian tail. It is quite large and has small, hard ridges running down the length of the top of it";
	now cock change entry is "your manhood[smn] turn[smv] a dark green in color, warning of the oncoming transformation. [if Cock Count of Player is 1]It pulses and throbs[else]They pulse and throb[end if], spraying out your old semen as your balls rush into overdrive to replace it with a fresh load. Each spurt brings further change to your cock, gaining subtle ridges with which to stimulate your loves and a tapered, pointed tip to penetrate more unwilling mates[if Cock Count of Player > 1]. Your balls change as well, each feeling like they're an agglomeration of several lumped together to fuel increased production[end if]. Eventually, your cock[smn] still[smv] and you're left with [itthemm] looking decidedly reptilian, but also somewhat prehensile even when fully erect";
	now str entry is 24; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 8;
	now cha entry is 6;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 3; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 5; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 70; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]muscled[or]strong[or]sturdy[or]altered[at random]";
	now type entry is "[one of]monstrous[or]reptilian[or]hydra[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hydrabeast"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Alt Attack

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hydrabeast"	hydrabeast rule	--	--	--	--	--	--	--	hydrahead rule	--

this is the hydrahead rule:
	choose row MonsterID from the Table of Random Critters;
	if ( monsterHP * 4 ) <= HP entry and hydraheadcheck3 is false:
		if hydraheadregrowth is true:
			increase hydraheadcount by 1;
			increase monsterHP by ( HP entry / 10 );
			increase monhitbonus by 2;
			increase wdam entry by ( wdam entry / 6 );
			increase per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random]. From the stump, two new necks grow, quickly forming a pair of heads to replace the fallen one which is already rotting and melting away. The hydra now possesses [special-style-2][hydraheadcount][roman type] heads and is all the more dangerous for it.";
		else:
			decrease hydraheadcount by 1;
			decrease monhitbonus by 1;
			decrease wdam entry by ( wdam entry / 10 );
			decrease per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random]. The fallen head quickly begins to rot and melt away while the wound hisses and bubbles with ichor after the harmful attack. The beast is left with one less head for you to contend with, dropping the number to [special-style-1][hydraheadcount][roman type] [one of]snapping maws[or]draconic jaws[or]vicious heads[at random].";
		now hydraheadcheck3 is true;
		now hydraheadcheck2 is true;
		now hydraheadcheck1 is true;
	else if ( monsterHP * 2 ) <= HP entry and hydraheadcheck2 is false:
		if hydraheadregrowth is true:
			increase hydraheadcount by 1;
			increase monsterHP by ( HP entry / 10 );
			increase monhitbonus by 2;
			increase wdam entry by ( wdam entry / 6 );
			increase per entry by 1;
			say "Its recent wounds are enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random]. From the stump, two new necks grow, quickly forming a pair of heads to replace the fallen one which is already rotting and melting away. The hydra now possesses [special-style-2][hydraheadcount][roman type] heads and is all the more dangerous for it.";
		else:
			decrease hydraheadcount by 1;
			decrease monhitbonus by 1;
			decrease wdam entry by ( wdam entry / 10 );
			decrease per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random]. The fallen head quickly begins to rot and melt away while the wound hisses and bubbles with ichor after the harmful attack. The beast is left with one less head for you to contend with, dropping the number to [special-style-1][hydraheadcount][roman type] [one of]snapping maws[or]draconic jaws[or]vicious heads[at random].";
		now hydraheadcheck2 is true;
		now hydraheadcheck1 is true;
	else if ( ( monsterHP * 4 ) / 3 ) <= HP entry and hydraheadcheck1 is false:
		if hydraheadregrowth is true:
			increase hydraheadcount by 1;
			increase monsterHP by ( HP entry / 10 );
			increase monhitbonus by 2;
			increase wdam entry by ( wdam entry / 6 );
			increase per entry by 1;
			say "Its recent wounds are enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random]. From the stump, two new necks grow, quickly forming a pair of heads to replace the fallen one which is already rotting and melting away. The hydra now possesses [special-style-2][hydraheadcount][roman type] heads and is all the more dangerous for it.";
		else:
			decrease hydraheadcount by 1;
			decrease monhitbonus by 1;
			decrease wdam entry by ( wdam entry / 10 );
			decrease per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random]. The fallen head quickly begins to rot and melt away while the wound hisses and bubbles with ichor after the harmful attack. The beast is left with one less head for you to contend with, dropping the number to [special-style-1][hydraheadcount][roman type] [one of]snapping maws[or]draconic jaws[or]vicious heads[at random].";
		now hydraheadcheck1 is true;
	now hydraheadregrowth is true;

this is the hydrabeast rule:
	choose row MonsterID from the Table of Random Critters;
	increase hydramaulcount by 1;
	if hydramaulcount is 4:				[tries special attack every fourth time]
		now hydramaulcount is 0;
		say "[one of]Issuing growls from its many heads[or]With sharp hisses from its multiple heads[or]With a cacophony of growling and hissing from its numerous maws[at random], the [one of]hydra[or]monster[or]creature[or]multi-headed monstrosity[at random] lunges its many heads forward, snapping and biting at you, trying to [one of]bite onto[or]snap at[or]tear into[purely at random] you with several quick strikes!";
		let hbdmg be 0;
		let hbdmgtotal be 0;
		repeat with x running from 1 to hydraheadcount:
			standardstrike;
			say "Head [x]: ";
			if monsterhit is true:
				choose row MonsterID from the Table of Random Critters;
				let rangenum be ( 80 - ( peppereyes * 4 ) );
				now hbdmg is 0;
				now hbdmg is ( ( wdam entry times a random number from rangenum to 120 ) / 166 ); [dmg/hit at 60%]
				if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
					now hbdmg is (hbdmg * 150) divided by 100;
					say "[special-style-2]Critical Hit![roman type] ";
				else:
					say "[bold type]Hit![roman type] ";
				say "The [one of]draconic[or]reptilian[or]fangorious[or]snapping[or]menacing[at random] [one of]head[or]maw[or]mouth[at random] [one of]snaps at[or]bites[or]chews on[or]latches onto[or]clamps onto[purely at random] you in a quick, painful strike, doing [special-style-2][hbdmg][roman type] damage!";
				increase hbdmgtotal by hbdmg;
			else:
				say "Miss!";
		if hbdmgtotal > 0:
			now damagein is hbdmgtotal;
			say "[normalabsorbancy]"; [normal armor protection]
			if absorb > hbdmgtotal:
				now absorb is hbdmgtotal;
			if absorb > 0:
				say "You prevent [special-style-1][absorb][roman type] damage!";
			decrease HP of the player by hbdmgtotal;
			increase HP of Player by absorb;
			follow the player injury rule;
			say "You are [descr].";
		now peppereyes is 0; [pepperspray wears off]
		if HP of the player > 0 and Libido of Player < 110:
			wait for any key;
		else:
			if HP of Player <= 0, now fightoutcome is 20;
			if Libido of Player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;
	else:
		standardretaliate;


Definition: a person is hydrafaced:
	if FaceName of Player is "Hydra Beast", yes;
	no;


Section 4 - Endings


when play ends:
	if BodyName of Player is "Hydra Beast":
		if humanity of Player < 10:
			say "     As your grip on your mind fades, the instinctual urges and impulses coming from your extra hydra heads become clearer and the edges blur in your mind. The thoughts grow louder and more insistent still as three additional heads form over the next few hours. Similar thoughts grow in your mind until you're left thinking like them, overcome with bestial impulses.";
			if FaceName of Player is "Hydra Beast":
				say "     Your original hydra head is the dominant one, but reduced to the mind of a beast. The other heads, their minds portions of your fractured id and reptilian instincts, are largely independent of you, but still work cooperatively to satisfy your united body's lusts. Like minded to them, you follow these hydra drives in search of lustful satisfaction";
			else if FaceName of Player is "Cerberus":
				say "     Your trio of canine heads gain elongated necks of their own, making you a fearsome combination of reptilian and canine heads. Your original head is the dominant one, but reduced to the mind of a beast. The other heads, their minds portions of your fractured id and reptilian or canine instincts, are largely independent of you, but still work cooperatively to satisfy your united body's lusts. The varied instincts from both types of heads cause for the occasional conflict in how to do that, but an equilibrium is loosely maintained by your main canine head balancing off the extra hydra heads.";
			else:
				say "     Your original [FaceName of Player] head is the dominant one, but largely reduced to the mind of a beast. The other heads, their minds portions of your fractured id and reptilian instincts, are largely independent of you, but still work cooperatively to satisfy your united body's lusts. At times, their desires are at odds with those of your main head and their superior numbers often win out.";
			say "     You establish some territory for yourself not far from the familiar library, hunting there for prey. Your powerful body and many heads make you a formidable foe and there are none who can drive you off. You have a particularly enjoyable time when the military enter the city, often taking down whole squads of them at once and [if Player is male]ravaging them with your cock[smn] while [end if]sucking them off simultaneously with your many heads. By the time you're done with them, they all show signs of infection in the form of additional heads, reptilian scales and sexy, ridged tails. A particular lustful and fetching one, once a young black man, you keep to turn into your dark-scaled hydra mate. Together you're able to expand your territory further and take down larger groups of soldiers for grander orgies of reptilian, hydra sex.";
		else:
			say "     Your fearsome body and additional heads make the rescue soldiers wary of you, but you're able to demonstrate that you're still sane and keep the hydra heads in check. You do get fleeting impulses from them as they eye the soldiers, but these are confined to them checking them out, as if understanding the need for restraint or simply biding their time. At the camp, several of the scientists there are quite eager to have a chance to examine you, putting you and your heads through a series of tests, both physiological as well as psychological. While they're not able to give much in the way of definitive answers, it seems that they have minds of their own that were formed from your psyche's id with additional instincts imposed on them by the nanite infection.";
			if FaceName of Player is "Hydra Beast":
				say "     Your central head has dominant control over your body. Sharing their lustful instincts, but having more self-control than they do, you can accept their desires and know what to usually expect from them. You learn to [']chastise['] the other two into compliance with the occasional nip or placate them with a tongue-throating kiss to keep them out of trouble most of the time.";
			else if FaceName of Player is "Cerberus":
				say "     Your central head has dominant control over your body and is the strongest of your mismatched heads. You are able to come to a greater understanding with your companion heads, increasing your cooperation. The cerberus heads, clearly possessed with separate minds of their own, even help you keep the more impulsive hydra heads in check (at times). While your additional hydra heads and the canine heads are at odds at times, it is largely an amicable pairing. Your draconic heads often enjoy Frenching their canine counterparts, an odd sensation of pleasure coming from feeling echoes of both halves of the kiss. All this leaves you better able to share your body with you them and you are able to get on with your life. There is only the occasional interruption of control when one of the canine heads is feeling particularly strongly about something, which is usually sex of some kind, often with the hydra heads joining in on the unrestrained fun.";
			else:
				say "     Your central head has dominant control over your body and you learn how to exert a little mental pressure to keep them settled down briefly at least some of the time.";
			say "     Your powerful body lands you a job working on reconstruction, carrying or dragging large loads of materials for the construction workers. You also particularly enjoy demolition, your hydra heads getting satisfaction from the raw, physical destruction as you tear through damaged buildings in advance of renovation. The physical labor comes easily enough for you and it feels good to put your powerful body to use, helping to make up for the mediocre pay. The others on the team are somewhat standoffish at first, your fearsome, additional heads putting them ill at ease initially. But over time they come to accept you, becoming friends and (in several cases) lovers, and everyone on the team expecting and accepting to get the occasional playful nip on their ass from one of your hydra heads as you walk by. Breaks often involve several of them snuggling up to you for sex with you while sharing kisses with your many heads.";

Hydra Beast ends here.
