Version 1 of Hydra Beast For FS by Stripes begins here.

"Adds a Hydra Beast creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Hydra Beast" } to infections of guy;
	add { "Hydra Beast" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Hydra Beast" } to infections of Reptilelist;	[list of reptile infections]
	add { "Hydra Beast" } to infections of VoreExclusion;	[list of critters not to be vored]

hydraheadcount is a number that varies.  hydraheadcount is normally 6.
hydraheadcheck1 is a truth state that varies.  hydraheadcheck1 is normally false.
hydraheadcheck2 is a truth state that varies.  hydraheadcheck2 is normally false.
hydraheadcheck3 is a truth state that varies.  hydraheadcheck3 is normally false.
hydraheadregrowth is a truth state that varies.  hydraheadregrowth is normally true.
hydramaulcount is a number that varies.

to say losetohydrabeast:
	say "     [if hp of player > 0]Forced to submit to[otherwise]Unable to keep fighting against[end if] the monstrous creature and its numerous heads, you are knocked down by its many heads and pinned there.  While its jaws tear away and toss aside your clothing and gear, you catch quick glimpses of the large, dripping cocks dangling at its underside, noting that it has as many cocks as it does heads, all fueled by a massive set of balls.  While not nearly as flexible as its necks, they do seem somewhat prehensile, sometimes rubbing up against one another in anticipation of using its fallen prey.";
	if cunts of player > 0:
		if hydraheadcount < cunts of player:
			[more cunts than cocks = no anal / no excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies.  They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing [hydraheadcount] of your [cunts of player] cunts with its reptilian cocks.  Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  Your [if (hydraheadcount + 1) is cunts of player]unstuffed cunt gets its turn as well, with slender, squirming tongues teasing your folds and delving into your hot depths[otherwise]unstuffed cunts get their turn as well, with slender, squirming tongues teasing your folds and delving into your hot depths[end if].  Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the beasts many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsac, shoots into your many stuffed holes.  You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fimpregchance][if hydraheadcount > 3][fimpregchance][end if][if hydraheadcount > 5][fimpregchance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial, multiple mating.";
		otherwise if hydraheadcount is cunts of player:
			[matching cocks and cunts = no anal / no excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies.  They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing each of your [cunts of player] cunts with one of its reptilian cocks.  Its many heads trill happily, clearly pleased at having found a mate with the proper number of pussies for its many shafts.  Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsac, shoots into your many stuffed holes.  You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fimpregchance][if cunts of player > 3][fimpregchance][end if][if cunts of player > 5][fimpregchance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial, multiple mating.";
		otherwise if ( hydraheadcount + 1 ) is cunts of player and anallevel is not 1:
			[multiple cunts all fucked / anal / no excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies.  They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing each of your [cunts of player] cunts with one of its reptilian cocks.  Left with one final cock, that one finds its way to your crinkled pucker and, after releasing a gush of slick precum, forces your tight hole open to accept it.  Its many heads trill happily, clearly pleased at having found a mate with the proper number of holes for its many shafts.  Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives all its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsac, shoots into your many stuffed holes.  You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed and your ass filled to the brim as well.[mimpregchance][fimpregchance][if cunts of player > 3][fimpregchance][end if][if cunts of player > 5][fimpregchance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial, multiple mating.";
		otherwise if anallevel is not 1:
			[cunt(s) all fucked / anal / excess]
			let tempcheck be false;
			if (hydraheadcount + 2) is cunts of player, now tempcheck is true;	[one unused cock]
			say "     The hydra beast moves overtop of you, trapping you as it brings [if cunts of player is 1]one of its numerous cocks to bear on your pussy.  It presses against your wet folds, pushing its[otherwise]its numerous cocks to bear on your pussies.  They press against your wet folds, pushing their [end if]way into you as the multi-cocked creature mounts you, stuffing [if cunts of player is 1]your cunt with one of its reptilian cocks[otherwise]each of your [cunts of player] cunts with one of its reptilian cocks[end if].  Left with some unused, one finds its way to your crinkled pucker and, after releasing a gush of slick precum, forces your tight hole open to accept it[if tempcheck is true].  The unused shaft rubs and slaps against your bulging belly as its[otherwise].  The unused shafts rub and slap against your bulging belly as their[end if] brethren fuck[sfn] you wildly.  Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  Your cock-stuffed [if cunts of player is 1]vagina quivers and the hydra's pulsing manhood, also getting teasing licks across its clit[otherwise]vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits[end if] from the hydra's many darting tongues.  The hydra's heads even engulf its own unused [if tempcheck is true]penis[otherwise]penises[end if], working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives its rod[sfn] deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its [if cunts of player is 1]cocks[otherwise]many cocks[end if], pumped from its heavy ballsac, shoots into your stuffed holes and down the [if tempcheck is true]throat of its sucking head[otherwise]throats of its sucking heads[end if].  You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed and your ass filled to the brim as well.[mimpregchance][fimpregchance][if cunts of player > 3][fimpregchance][end if][if cunts of player > 5][fimpregchance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, [if cunts of player > 1]each emptied[otherwise]your[end if] cunt releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial[if cunts of player > 1], multiple[end if] mating.";
		otherwise if cunts of player is 1:
			[single cunt fucked / no anal / excess]
			say "     The hydra beast moves overtop of you, trapping you as it brings one of its numerous cocks to bear on your pussy.  It presses against your wet folds, pushing its way into you as the multi-cocked creature mounts you, stuffing your cunt with one of its reptilian cocks.  The unused shafts rub and slap against your bulging belly as their brethren fucks you wildly.  Its subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  Your cock-stuffed vagina quivers around the hydra's pulsing manhood, also getting teasing licks across its clit from the hydra's many darting tongues.  The hydra's heads even engulf its own unused penises, working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives its rod deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its ridged cock, pumped from its heavy ballsac, shoots into your stuffed hole and down the throats of its sucking heads.  You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fimpregchance]";
			say "     When its climax finally comes to an end, it pulls its cock from you, your emptied cunt releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial mating.";
		otherwise:
			[multiple cunts all fucked / no anal / excess]
			let tempcheck be false;
			if (hydraheadcount + 1) is cunts of player, now tempcheck is true;	[one unused cock]
			say "     The hydra beast moves overtop of you, trapping you as it brings its numerous cocks to bear on your pussies.  They press against your wet folds, pushing their way into you as the multi-cocked creature mounts you, stuffing each of your [cunts of player] cunts with one of its reptilian cocks.  The unused shafts rub and slap against your bulging belly as their brethren fuck you wildly.  Their subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  Your cock-stuffed vaginae quiver around the hydra's pulsing manhoods, also getting teasing licks across their clits from the hydra's many darting tongues.  The hydra's heads even engulf its own unused [if tempcheck is true]penis[otherwise]penises[end if], working to suck itself off even as it fucks you.";
			say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives its rods deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its many cocks, pumped from its heavy ballsac, shoots into your stuffed holes and down the [if tempcheck is true]throat of its sucking head[otherwise]throats of its sucking heads[end if].  You are left feeling full and bloated with the beasts torrential load, your womb positively crammed full of its virile seed.[fimpregchance][if cunts of player > 3][fimpregchance][end if][if cunts of player > 5][fimpregchance][end if]";
			say "     When its climax finally comes to an end, it pulls its cocks from you one at a time, each emptied cunt releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial, multiple mating.";
	otherwise:		[no cunts = anal]
		say "     The hydra beast moves overtop of you, trapping you as one of its numerous cocks finds its way to your crinkled pucker.  It grinds the tapered tip against your back door and, after releasing a gush of slick precum, forces your tight hole open to accept it.  The unused shafts rub and slap against your belly as their brethren fucks you wildly.  Its subtle ridges and tapered glans send shivers of pleasure through your body as the powerful creature thrusts into you again and again.  While it fucks you, its many heads roam across your body in search of any sensitive, sexual spot to lick or tease[if breast size of player > 0].  They start by focusing on your nipples, licking and sucking on them, causing you to moan in delight[end if][if cocks of player > 0].  Those toothy maws are surprisingly pleasurable as they take turns giving blow jobs to your cock[smn][end if].  The hydra's heads even engulf its own unused penises, working to suck itself off even as it fucks you.";
		say "     As the beast fucks you thoroughly, its many heads swap positions often, taking turns enjoying the many pleasures your body can provide.  Subject to such constant, all-encompassing stimulation, you are pushed to climax several times until you're left weak and moaning by the time it's ready to cum.  The hydra drives its rod deep into you, stuffing you so delightfully full of reptilian cock that you cry out loudly and lustfully.  The hot rush of its tainted semen from its ridged cock, pumped from its heavy ballsac, shoots into your stuffed hole and down the throats of its sucking heads.  You are left feeling full and bloated with the beasts torrential load, your ass filled to the brim with its virile seed.[mimpregchance]";
		say "     When its climax finally comes to an end, it pulls its cock from you, your emptied asshole releasing a gush of excess semen that pools beneath you.  You are left sticky and soaking in a large puddle of the creature's cum as it moves off of you.  You are too weak and tired from such a thorough fucking that you [if hydraheadcount > 6]can barely make out its extra heads falling off as it trundles off.  Left it with its original count of six, the excess heads melt away into fleshy goop[otherwise if hydraheadcount < 6]can barely make out the bulges of new heads starting to form as it trundles off.  Regrowing heads at the severed stumps, the creature will be back up to a half-dozen soon enough[otherwise]barely notice it heading off[end if].  You end up passing out briefly, your worn body out from the beastial mating.";


to say beatthehydrabeast:
	say "     You manage to fight your way to what you perceive to be the central head and grapple it, twisting it in a painful lock.  The other heads hiss angrily at you, but do not attack for fear of you harming its true head.  You force the weakened creature to submit and then drive it off.  Many of its red, reptilian eyes glare at you as it trundles off[if hydraheadcount > 6].  As it departs, you can see its extra heads already decaying away, dropping off and melting into fleshy goop until it's down to its original half-dozen[otherwise if hydraheadcount < 6].  As it departs, you can see the bulges of new heads starting to form at the severed stumps, the creature soon to be back up to a half-dozen[end if].";
[	say "***";	]

to say hydrabeastdesc:
	choose row monster from the table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 12, let debit be level of player - 12;
	now lev entry is 12 + debit;
	now hp entry is 100 + ( debit * 5 );
	now monsterhp is 100 + ( debit * 5 );
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
	say "     Before you is a large, monstrous creature of scales and jaws.  The multi-headed hydra has a half-dozen heads on long, serpentine necks.  Each head is very reptilian, draconic even, with a thick muzzle filled with sharp fangs and a long, tapered tongue.  Its predatory eyes watch the world through its many slitted pupils.  It has a wide, stocky body and trundles forward on four legs.  The many twining necks of its heads are attached to these widened shoulders and upper back, allowing it to fit them all.  These necks are slender and flexible, allowing the hydra to bring them all into position as needed.  Its heavy, armoured hide is covered in thick, emerald scales to guard its body.  There is also a heavy, musky scent of male arousal in the air around the creature as well, telling you that, despite its fearsome appearance, it seeks sex like most other creatures roaming about.";


to say hydraharming:
	now hydraheadregrowth is false;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hydra Beast";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The hydra beast[or]The hydra[or]The scaled horror[or]The multi-headed monstrocity[or]It[at random] [one of]manages to bite down onto you firmly with one of its fearsome heads![or]bashes its thick, ridged tail into you when you try to outmaneuver its many snapping jaws![or]chomps down on you with on of its fang-filled mouths![or]bashes one of its heads into you, knocking you back![or]rears up with surprising ease for something of its size and tears into you with a clawed foot![or]latches one of its mouths around your waist, biting deeply before you force its jaws open and pull free![at random]";
	now defeated entry is "[beatthehydrabeast]";
	now victory entry is "[losetohydrabeast]";
	now desc entry is "[hydrabeastdesc]";
	now face entry is "very reptilian, draconic even, with a thick muzzle filled with sharp fangs and a long, tapered tongue.  Your predatory eyes watch the world through slitted pupils";
	now body entry is "quite massive, having a stocky build despite your considerable size.  While still able to move around on two legs, you do so with a considerable hunch, your shoulders weighed down by the addition of a pair of extra, reptilian heads.  [if player is hydrafaced]They look quite similar to your main, middle head, making it hard for others to distinguish which is which at times[otherwise]They look quite different from your main, middle head, and are almost draconic in appearance[end if].  Each has a flexible neck that lets them move and look around independently of your own.  As it is, you have practically no control over them, instead only picking up [if humanity of player < 33]strong, instinctual urges such as hunger or lust[otherwise if humanity of player < 67]infrequent, animal impulses such as hunger or lust[otherwise]vague sensation[end if] from them.  Your arms and legs are thick and muscular, ending in four-digit hands and three-toed feet capped with thick, sharp claws";
	now skin entry is "[one of]vivid green[or]scaled[or]toughened[or]emerald[at random]";
	now tail entry is "Attached at the base of your spine, there grows out a thick, lizard-like tail.  It's at a foot wide at its base, it is covered in short, hardened ridges and extends out seven or eight feet in length.";
	now cock entry is "[one of]tapered[or]reptilian[or]ridged[or]flexible[or]dark green[at random]";
	now face change entry is "you get a dizzying, almost nauseating feeling.  Your senses go haywire as you realize your head must be changing.  Your jawbone aches, as does your neck, feeling like they're stretching.  As your neck becomes elongated and flexible, your changing mouth forms into a large muzzle filled with sharp teeth and oversized fangs.  Your elongated tongue slides across your fangs and slathers across your almost draconic muzzle";
	now body change entry is "pressure grips your body and it becomes difficult to breathe.  Your chest feels thick and full, growing very heavy even as your shoulders become broader and your chest expands.  Your limbs also become thickly muscled and end in clawed digits, four on your hands and three on your feet.  Just as you start to think it might be done, there's a sudden surge at your shoulders as large bulges of flesh swell up.  You can feel something pressing outwards from beneath your skin, finally pushing its way through as first one and then the other release additional the reptilian heads you've grown.  This added pair of hydra heads hiss as they come to life, scanning around predatorily";
	now skin change entry is "as your flesh ripples and turns a vivid green.  It goes temporarily stretchy and soft before tightening and hardening into tough scales";
	now ass change entry is "there is a growing pain at the base of your spine.  You've been infected, and something is happening.  You can feel the pressure building... and building... and building... until finally it surges outwards in a rush of growth and transformation, leaving you with a thick, reptilian tail.  It is quite large and has small, hard ridges running down the length of the top of it";
	now cock change entry is "your manhood[smn] turn[smv] a dark green in colour, warning of the oncoming transformation[if cocks of player is 1].  It pulses and throbs[otherwise].  They pulse and throb[end if], spraying out your old semen as your balls rush into overdrive to replace it with a fresh load.  Each spurt brings further change to your cock, gaining subtle ridges with which to stimulate your loves and a tapered, pointed tip to penetrate more unwilling mates[if cocks of player > 1].  Your balls change as well, each feeling like they're an agglomeration of several lumped together to fuel increased production[end if].  Eventually, your cock[smn] still[smv] and you're left with [if cocks of player is 1]it[otherwise]them[end if] looking decidedly reptilian, but also somewhat prehensile even when fully erect";
	now str entry is 24;			[ These are now the creature's stats... ]
	now dex entry is 16;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 18;
	now int entry is 8;
	now cha entry is 6;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 100;			[ The monster's starting hit points. ]
	now lev entry is 12;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 12;			[ Monster's average damage when attacking. ]
	now area entry is "Junkyard";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 3;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 24;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 5;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]muscled[or]strong[or]sturdy[or]altered[at random]";
	now type entry is "[one of]monstrous[or]reptilian[or]hydra[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hydrabeast";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Attack

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hydrabeast"	hydrabeast rule	--	--	--	--	--	--	--	hydrahead rule	--

this is the hydrahead rule:
	choose row monster from the table of random critters;
	if ( monsterhp * 4 ) <= hp entry and hydraheadcheck3 is false:
		if hydraheadregrowth is true:
			increase hydraheadcount by 1;
			increase monsterhp by ( hp entry / 10 );
			increase monhitbonus by 2;
			increase wdam entry by ( wdam entry / 6 );
			increase per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random].  From the stump, two new necks grow, quickly forming a pair of heads to replace the fallen one which is already rotting and melting away.  The hydra now possesses [special-style-2][hydraheadcount][roman type] heads and is all the more dangerous for it.";
		otherwise:
			decrease hydraheadcount by 1;
			decrease monhitbonus by 1;
			decrease wdam entry by ( wdam entry / 10 );
			decrease per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random].  The fallen head quickly begins to rot and melt away while the wound hisses and bubbles with ichor after the harmful attack.  The beast is left with one less head for you to contend with, dropping the number to [special-style-1][hydraheadcount][roman type] [one of]snapping maws[or]draconic jaws[or]vicious heads[at random].";
		now hydraheadcheck3 is true;
		now hydraheadcheck2 is true;
		now hydraheadcheck1 is true;
	otherwise if ( monsterhp * 2 ) <= hp entry and hydraheadcheck2 is false:
		if hydraheadregrowth is true:
			increase hydraheadcount by 1;
			increase monsterhp by ( hp entry / 10 );
			increase monhitbonus by 2;
			increase wdam entry by ( wdam entry / 6 );
			increase per entry by 1;
			say "Its recent wounds are enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random].  From the stump, two new necks grow, quickly forming a pair of heads to replace the fallen one which is already rotting and melting away.  The hydra now possesses [special-style-2][hydraheadcount][roman type] heads and is all the more dangerous for it.";
		otherwise:
			decrease hydraheadcount by 1;
			decrease monhitbonus by 1;
			decrease wdam entry by ( wdam entry / 10 );
			decrease per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random].  The fallen head quickly begins to rot and melt away while the wound hisses and bubbles with ichor after the harmful attack.  The beast is left with one less head for you to contend with, dropping the number to [special-style-1][hydraheadcount][roman type] [one of]snapping maws[or]draconic jaws[or]vicious heads[at random].";
		now hydraheadcheck2 is true;
		now hydraheadcheck1 is true;
	otherwise if ( ( monsterhp * 4 ) / 3 ) <= hp entry and hydraheadcheck1 is false:
		if hydraheadregrowth is true:
			increase hydraheadcount by 1;
			increase monsterhp by ( hp entry / 10 );
			increase monhitbonus by 2;
			increase wdam entry by ( wdam entry / 6 );
			increase per entry by 1;
			say "Its recent wounds are enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random].  From the stump, two new necks grow, quickly forming a pair of heads to replace the fallen one which is already rotting and melting away.  The hydra now possesses [special-style-2][hydraheadcount][roman type] heads and is all the more dangerous for it.";
		otherwise:
			decrease hydraheadcount by 1;
			decrease monhitbonus by 1;
			decrease wdam entry by ( wdam entry / 10 );
			decrease per entry by 1;
			say "[one of]Its recent wounds are[or]Your recent attacks are[or]The continued assault becomes[at random] enough to [one of]cause one of its heads to be severed[or]knocks off one of its heads[or]severs one of its many necks[at random].  The fallen head quickly begins to rot and melt away while the wound hisses and bubbles with ichor after the harmful attack.  The beast is left with one less head for you to contend with, dropping the number to [special-style-1][hydraheadcount][roman type] [one of]snapping maws[or]draconic jaws[or]vicious heads[at random].";
		now hydraheadcheck1 is true;
	now hydraheadregrowth is true;

this is the hydrabeast rule:
	choose row monster from the table of random critters;
	increase hydramaulcount by 1;
	if hydramaulcount is 4:				[tries special attack every fourth time]
		now hydramaulcount is 0;
		say "[one of]Issuing growls from its many heads[or]With sharp hisses from its multiple heads[or]With a cacophony of growling and hissing from its numerous maws[at random], the [one of]hydra[or]monster[or]creature[or]multi-headed monstrocity[at random] lunges its many heads forward, snapping and biting at you, trying to [one of]bite onto[or]snap at[or]tear into[purely at random] you with several quick strikes!";
		let hbdmg be 0;
		let hbdmgtotal be 0;
		repeat with x running from 1 to hydraheadcount:
			standardstrike;
			say "Head [x]: ";
			if monsterhit is true:
				choose row monster from the table of random critters;
				let rangenum be ( 80 - ( peppereyes * 4 ) );
				now hbdmg is 0;
				now hbdmg is ( ( wdam entry times a random number from rangenum to 120 ) / 166 );		[dmg/hit at 60%]
				if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
					now hbdmg is (hbdmg * 150) divided by 100;
					say "[special-style-2]Critical Hit![roman type] ";
				otherwise:
					say "[bold type]Hit![roman type] ";
				say "The [one of]draconic[or]reptilian[or]fangorious[or]snapping[or]menacing[at random] [one of]head[or]maw[or]mouth[at random] [one of]snaps at[or]bites[or]chews on[or]latches onto[or]clamps onto[purely at random] you in a quick, painful strike, doing [special-style-2][hbdmg][roman type] damage!";
				increase hbdmgtotal by hbdmg;
			otherwise:
				say "Miss!";
		if hbdmgtotal > 0:
			now damagein is hbdmgtotal;
			say "[normalabsorbancy]";		[normal armour protection]
			if absorb is greater than hbdmgtotal:
				now absorb is hbdmgtotal;
			if absorb is greater than 0:
				say "You prevent [special-style-1][absorb][roman type] damage!";
			decrease hp of the player by hbdmgtotal;
			increase hp of player by absorb;
			follow the player injury rule;
			say "You are [descr].";
		now peppereyes is 0;										[pepperspray wears off]
		if hp of the player is greater than 0 and libido of player < 110:
			wait for any key;
		otherwise:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;
	otherwise:
		standardretaliate;


Definition: a person is hydrafaced:
	if the facename of the player is "Hydra Beast", yes;
	no;


Section 4 - Endings

[
when play ends:
	if bodyname of player is "Hydra Beast":
		if humanity of player is less than 10:
			say "     You succumb to your hydrabeast infection.";
		otherwise:
			say "     You survive, but were infected by the hydrabeast.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Hydra Beast For FS ends here.