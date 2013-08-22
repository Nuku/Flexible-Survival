Version 1 of Doran by Blue Bishop begins here.
[ Version 1.1 - Impregnation fix ]

"Adds Doran to Flexible Survivals Wandering Monsters table"

Section 1.0 - Doran Coding Miscellany

when play begins:
	add { "Peculiar Dragon" } to infections of guy;
	add { "Peculiar Dragon" } to infections of furry;

dorgr is text that varies; [A DORGER IS YOU]
dorlastfed is a number that varies. dorlastfed is usually 555; [Doran Last Fed Timer]
dorgenreg is a truth state that varies; [Doran Gender Regard. Boolean, false = male, true = female]
dorrolereg is a number that varies. dorrolereg is usually 2; [Doran Role Regard. Numeric, 0 = Dominant Doran, 1 = Random/Neutral (Not implemented in base), 2 = Submissive Doran]
dorlastsex is a number that varies. dorlastsex is usually 555; [Sex timer]
dorroleint is a number that varies. dorroleint is usually 2; [Doran Role Intensity. Numeric. 0 = full dominant, 1-3 = neutral, 4 = full submissive]
dordomtop is a number that varies; [Doran Dominance Topic. Numeric. 0 = Player didn't submit, 1 = player did submit, 2 Doran's voluntary dominance revealed]
dorfirsttalk is a truth state that varies. dorfirsttalk is usually false; [Flag to detect if the player's talked to Doran at least once]
dorwassnub is a truth state that varies. dorwassnub is usually false; [Innoculous flag used to ward backend sex calculations and sex cooldown if you decide against having sex with Doran]
dorfedtype is a number that varies. dorfedtype is usually 1; [Determines what kind of food Doran will give you, clever girl...]
dorreq is an action applying to nothing. [Doran Request Command]

Section 1.1 - Doran Monster Responses

to say losetodoran:
	if hp of player > 0:
		say "     You quickly surrender to the dragon, which seems to briefly confuse him. Once it's clear you're really submitting, he only snorts, audibly regarding your gesture with an odd measure of disappointment, before turning tail and departing.";
		say "     It's particularly strange that any beast around these parts to so readily reject an opportunity to abuse a potential victim further.";
		now dordomtop is 1;
	otherwise:
		say "     He's about to set upon you again before you collapse, too exhausted to contend him any further, which causes him to yield once more. When it's apparent that you have no more fight in you, he seems rather pleased with himself, strutting around you in a rather gloating, energetic manner for a bit.";
		say "     Satisfied with his little victory dance, he then turns to depart. Though you've got no particular issue with this, he doesn't seem all that interested in abusing you any further, a very strange thing for a beast to do in these parts";
		if a random chance of 1 in 2 succeeds and dorlastfed - turns >= 16:
			if a random chance of 1 in 2 succeeds:
				say ". He even returns a few seconds later, bottle of water in maw, before setting it down in front of you and retreating a second time, extremely peculiar...";
				add "water bottle" to invent of player;
			otherwise:
				say ". He even returns a few seconds later, can of food in maw, before setting it down in front of you and retreating a second time, extremely peculiar...";
				add "food" to invent of player;
			now dorlastfed is turns;
		otherwise:
			say ".";

to say beatdoran:
	now calcnumber is -1;
	say "     You're about to strike down the dragon before he suddenly backs out, maw opening to speak.";
	say "     'I yield, I yield! You are my victor, I will contest such a person no further.' It's a little surprising that the beast speaks when he hasn't made so much as a peep up to this point. 'It's quite clear who's the stronger one here...' He slowly begins to step back, and you're not sure if he's going to turn tail and run.";
	say "     'To be honest, I'm not surprised my victor defeated me; I can see they're a determined one. In any case, this victory makes me theirs to do with as they please.' He bows slightly in punctuation of his concession, oddly willing to offer himself to you in lieu of your victory.";
	say "     'What would my victor subject me to?'";
	if cocks of player > 0 or cunts of player > 0:
		say "     By your wagering, you could ";
		if cunts of player > 0:
			if cocks of player > 0 and cunt length of player > 7:
				say "[link]mount him (1)[as]1[end link], make him [link]suck your dick (2)[as]2[end link], [link]eat your cunt (3)[as]3[end link], [link]ride the dragon (4)[as]4[end link], ";
				if scalevalue of player > 1 or player is twistcapped:
					say "[link]ride the dragon anally (5)[as]5[end link], or [link]turn down (0)[as]0[end link] his offer.";
					while calcnumber < 0 or calcnumber > 5:
						say "Choice? (0-5)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[dorvic_1]"; [fuck the dragon]
					otherwise if calcnumber is 2:
						say "[dorvic_2]"; [oral cock]
					otherwise if calcnumber is 3:
						say "[dorvic_3]"; [oral cunt]
					otherwise if calcnumber is 4:
						say "[dorvic_4]"; [cunt sex]
					otherwise if calcnumber is 5:
						say "[dorvic_5]"; [anal sex]
					otherwise:
						say "[dorvic_snub]"; [turn down]
				otherwise:
					say "ride the dragon anally (Too small!), or [link]turn down (0)[as]0[end link] his offer.";
					while calcnumber < 0 or calcnumber > 4:
						say "Choice? (0-4)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[dorvic_1]"; [fuck the dragon]
					otherwise if calcnumber is 2:
						say "[dorvic_2]"; [oral cock]
					otherwise if calcnumber is 3:
						say "[dorvic_3]"; [oral cunt]
					otherwise if calcnumber is 4:
						say "[dorvic_4]"; [cunt sex]
					otherwise:
						say "[dorvic_snub]"; [turn down]
			otherwise if cocks of player > 0:
				say "[link]mount him (1)[as]1[end link], make him [link]suck your dick (2)[as]2[end link], [link]eat your cunt (3)[as]3[end link], ride the dragon (Too small!)";
				if scalevalue of player > 1 or player is twistcapped:
					say "[link]ride the dragon anally (4)[as]4[end link], or [link]turn down (0)[as]0[end link] his offer.";
					while calcnumber < 0 or calcnumber > 4:
						say "Choice? (0-4)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[dorvic_1]"; [fuck the dragon]
					otherwise if calcnumber is 2:
						say "[dorvic_2]"; [oral cock]
					otherwise if calcnumber is 3:
						say "[dorvic_3]"; [oral cunt]
					otherwise if calcnumber is 4:
						say "[dorvic_5]"; [anal sex]
					otherwise:
						say "[dorvic_snub]"; [turn down]
				otherwise:
					say "ride the dragon anally (Too small!), or [link]turn down (0)[as]0[end link] his offer.";
					while calcnumber < 0 or calcnumber > 3:
						say "Choice? (0-3)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[dorvic_1]"; [fuck the dragon]
					otherwise if calcnumber is 2:
						say "[dorvic_2]"; [oral cock]
					otherwise if calcnumber is 3:
						say "[dorvic_3]"; [oral cunt]
					otherwise:
						say "[dorvic_snub]"; [turn down]
			otherwise:
				say "make him [link]eat your cunt (1)[as]1[end link], ";
				if cunt length of player > 7:
					say "[link]ride the dragon (2)[as]2[end link], ";
					if scalevalue of player > 1 or player is twistcapped:
						say "[link]ride the dragon anally (3)[as]3[end link], or [link]turn down (0)[as]0[end link] his offer.";
						while calcnumber < 0 or calcnumber > 3:
							say "Choice? (0-3)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorvic_3]"; [oral cunt]
						otherwise if calcnumber is 2:
							say "[dorvic_4]"; [cunt sex]
						otherwise if calcnumber is 3:
							say "[dorvic_5]"; [anal sex]
						otherwise:
							say "[dorvic_snub]"; [turnd own]
					otherwise:
						say "ride the dragon anally (Too small!), or [link]turn down (0)[as]0[end link] his offer.";
						while calcnumber < 0 or calcnumber > 2:
							say "Choice? (0-2)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorvic_3]"; [oral cunt]
						otherwise if calcnumber is 2:
							say "[dorvic_4]"; [cunt sex]
						otherwise:
							say "[dorvic_snub]"; [cunt sex]
				otherwise:
					say "ride the dragon (Too small!), ";
					if scalevalue of player > 1 or player is twistcapped:
						say "[link]ride the dragon anally (2)[as]2[end link], or [link]turn down (0)[as]0[end link] his offer.";
						while calcnumber < 0 or calcnumber > 2:
							say "Choice? (0-2)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorvic_3]"; [oral cunt]
						otherwise if calcnumber is 2:
							say "[dorvic_5]"; [anal sex]
						otherwise:
							say "[dorvic_snub]"; [turnd own]
					otherwise:
						say "ride the dragon anally (Too small!), or [link]turn down (0)[as]0[end link] his offer.";
						while calcnumber < 0 or calcnumber > 1:
							say "Choice? (0-1)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorvic_3]"; [oral cunt]
						otherwise:
							say "[dorvic_snub]"; [cunt sex]
		otherwise:
			say "[link]mount him (1)[as]1[end link], make him [link]suck your dick (2)[as]2[end link], ";
			if scalevalue of player > 1 or player is twistcapped:
				say "[link]ride the dragon anally (3)[as]3[end link], or [link]turn down (0)[as]0[end link] his offer.";
				while calcnumber < 0 or calcnumber > 3:
					say "Choice? (0-3)>[run paragraph on]";
					get a number;
				if calcnumber is 1:
					say "[dorvic_1]"; [fuck the dragon]
				otherwise if calcnumber is 2:
					say "[dorvic_2]"; [oral cock]
				otherwise if calcnumber is 3:
					say "[dorvic_5]"; [anal sex]
				otherwise:
					say "[dorvic_snub]"; [turn down]
			otherwise:
				say "ride the dragon anally (Too small!), or [link]turn down (0)[as]0[end link] his offer.";
				while calcnumber < 0 or calcnumber > 2:
					say "Choice? (0-2)>[run paragraph on]";
					get a number;
				if calcnumber is 1:
					say "[dorvic_1]"; [fuck the dragon]
				otherwise if calcnumber is 2:
					say "[dorvic_2]"; [oral cock]
				otherwise:
					say "[dorvic_snub]"; [turn down]
	otherwise:
		say "     You point out that you lack the proper equipment, and thusly have little to gain from such an interaction. This revelation seems to confuse him a fair bit, but he otherwise concedes.";
		say "     'Very well; however, if things change for my victor, I'm always available.' He goes on to explain where he resides. Apparently there's a cave within a not-too-distant [bold type]Rocky Outcropping[roman type], and his instructions are clear enough that you should have no issue getting there, 'Doran's the name, by the way.'";
		say "     Once he's done, he makes to leave in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";
	choose row monster from the table of random critters;
	now the rocky outcropping is known;
	now area entry is "nowhere";
	
to say dorandesc:
	now dorfedtype is a random number between 1 and 2;
	say "     Upon your travels through the plains, a rather peculiar sight approaches you from the distance. It would appear to be some manner of large, feral dragon, turquoise scales immaculately shimmering in the [if daytimer is day]day[otherwise]night [end if]light. Very much well-toned and muscled, he struts towards you with a very deliberate, formal poise. He doesn't appear immediately threatening, sizing you up with with a silent--if albeit somewhat energetic--demeanour before his poise shifts, apparently as to challenge you to combat.";
	
Section 1.2 - Doran Monster Sex Pool

to say dorvic_1: [fuck the dragon]
	say "     You suggest, rather bluntly, that he bend over and offer himself to you. The dragon, particularly excited by your blunt request, turns around, [if scalevalue of player < 4]lowering himself to the ground before [end if]hiking his tail over to leave your entry unexposed. Shapely ass revealed before you, he's already quite aroused by the prospect of your imminent abuse. Knotted, fleshy, and impressive dick and ample, scaled balls exposed to the open air.";
	say "     'My victor ought not worry for my welfare, abuse me as much as it pleases them.' It's glaringly obvious by now that this beast is very heavily inclined towards submission. You expose your [cock size desc of player] dick[smn] before him, [if cock length of player > 17]a very eager look in his eyes at the prospect of getting[otherwise]clearly eager to be[end if] impaled by [if cocks of player > 1]one of those things[otherwise]such a thing[end if].";
	say "     Approaching the dragon, you more rigorously invoke your arousal by grinding[if cocks of player > 1] one of[end if] your hardening shaft[smn] against his well-toned rear, scales immaculate and smooth under your touch, illustrating that the creature takes very good care of his appearance. Slowly, you sink the head of[if cocks of player > 1]one of [end if] your [if cock length of player > 18]impressive [end if]tool[smn] past his fleshy, yielding anal ring, eliciting from the beast a series of approving moans at your initial pace.";
	if cock length of player > 17:
		say "     Very quickly, his supple hole becomes increasingly strained to abide your member, but this only entices the beast to coax you on. 'Further, further!' Is his reply, and with a bit of work and pre's slick lubrication his tight tailpipe grows progressively willing to take your sizeable tool[if cockname of player is listed in infections of knotlist], up to the knot[end if], granting you the freedom to start fucking him proper.";
	otherwise:
		say "     He shows absolutely no difficulty in abiding your member[if cockname of player is listed in infections of knotlist], even tying its knot almost immediately[end if]. He doesn't seem to mind your ease, and is more inclined to revel in your exploitation of his form, supple abyss almost overwhelming in how assertively it milks the organ. 'Harder, harder!' Is his demand, greedy for your abuse, as you're compelled to start fucking him proper.";
	say "     [If scalevalue of player > 3]Body visibly rocking against each successive thrust[otherwise]Larger body barely moved by[end if] each successive thrust, [if cockname of player is not listed in infections of internallist]your balls audibly slap against him, a wordless remark on your rising, wanton fervor[otherwise]overtaken by your rising, wanton fervor[end if]. Your embrace on the reptile grows increasingly slick, coated by a thin veneer of sweat.";
	say "     'P-please, fill me with C-cum...!' At the very cusp of your bliss, you maintain enough control to determine if you'd like to pull out at the last second, shall you? Else you will give the greedy dragon what he wants.";
	if player consents:
		say "     Before you are completely overtaken, you wrench your [cock size desc of player] cock from the beast, quickly jacking it[if cocks of player > 2] and one of its brothers[otherwise if cocks of player is 2] and its brother[end if] off before you cry out, coating his ass[if scalevalue of player > 3] and back[end if] with gouts of your thick, virile seed";
	otherwise:
		say "     Succumbing to your tainted urges, [if cockname of player is listed in infections of knotlist and cock length of player > 17]you make one final push, tying yourself with the beast before you cry out[otherwise if cockname of player is listed in infections of knotlist]you soon cry out, tying your cock within him one final time[otherwise]you soon cry out, hilting your cock within him[end if], gouts of your thick, virile seed flooding his depths, [if cocks of player > 2]its brothers staining his behind[otherwise if cocks of player is 2]its brother staining his behind[end if]";
	say ". It takes you some time to recover, eventually [if scalevalue of player < 4]climbing[otherwise]pulling yourself[end if] off. The dragon lays there for a bit, panting himself in the wake of being ravaged. He eventually does crawl back to his feet, looking satisfied.";
	say "     'I rather enjoyed that, victor! Perhaps they would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, his prior poise somewhat diminished under the exhausted weight of his cum-stained[if cock length of player > 17] and no doubt quite sore[end if] form.";

to say dorvic_2: [oral cock]
	say "     You see no harm in humouring the dragon, freeing yourself of any obstruction that might cover you before gesturing to your [cock size desc of player] cock[smn], to which he eagerly struts toward. Too eager, in fact...";
	say "     'Hum, my victor is wont to such simple affections. I'm happy to oblige.' Scaled lips parting to expose his teeth, you no doubt feel slightly concerned that this might be some manner of trick the beast is about to play on you, but the fear is assuaged when those same lips envelop [if cocks of player > 2]one of them, taloned hand moving to stroke one of its brothers[otherwise if cocks of player is 2]one of them, taloned hand moving to stroke its brother[otherwise]it[end if]. Humid breath enveloping your lower torso, you abide his thick tongue's initial, teasing query.";
	say "     'Oh, my victor [if cock length of player > 17]is so well-endowed, I wonder if I'll properly be able to pleasure them[otherwise]tastes so inviting, I'm going to enjoy this[end if].' He pulls away briefly to offer this remark, '...If I might be so selfish, this offering leaves me quite aroused, might my victor grant me the chance to offer myself some pleasure as I attend to them?' You imagine he'd not be as capable of pleasuring you with his attention split, shall you oblige his request? Otherwise you'll ensure his attention remains solely on you.";
	if player consents:
		say "     You decide to allow him this opportunity, to which he eagerly obliges, hand moving [if cocks of player > 1]away from your spare cock to attend his own[otherwise]over to attend his own cock[end if] before his maw envelops your flesh a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to wrap around your [cock size desc of player] tool, he would exhibit a voracious desire to satisfy your need[if cock length of player < 17], frequently pushing the limits of his endurance to engulf your impressive dick[end if]. As his need for self-pleasure rises, so does the pace in which he bobs against you become erratic, driving you ever-closer to bliss along the way.";
		say "     You're just about to blow! But with his attention diverted you could exploit this opportunity to shame him further by pulling out and ejaculating on his face, should you? Else you will give the dragon what he clearly wants.";
		if player consents:
			say "     Right at the very last second, you pull your dick free of the beast, your dick[smn] soon erupting thereafter upon his unsuspecting face. Trapped in the throes of his own bliss, he can only regard the demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the beast with your [cum load size of player] load. When all is said is done he's a shameful sight, wallowing in a puddle of his own spunk.";
		otherwise:
			say "     Soon thereafter your [if cocks of player > 1]dicks erupt[otherwise]dick erupts[end if], flooding the dragon's maw with your virile seed as he's caught between swallowing down your [cum load size of player] payload and the throes of his own bliss, allowing you watch the beast's writhing, twitching form as [if cocks of player > 2]your unattended organs stain the ground, mixing with[otherwise if cocks of player is 2]your unattended organ stains the ground, mixing with[otherwise]he wallows in a puddle of[end if] his own spunk.";
	otherwise:
		say "     You choose to disallow such an act, to which he concedes with little further thought on the matter, maw enveloping your cock a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player < 17], frequently pushing the limits of his endurance to engulf your impressive dick[end if]. He retains a very methodical, calculated pace,[if cocks of player > 2] occasionally switching to one of your other dicks to keep you sensitive to his tongue's influence,[otherwise if cocks of player > 1] occasionally switching to the other dick in his grip to keep you sensitive to his tongue's influence,[otherwise if cunts of player > 1]occasionally stopping only to offer some passing affection to one of your cunts,[otherwise if cunts of player is 1]occasionally stopping only to offer some passing affection to your cunt,[end if] audible moans escaping your lips as you're rapidly pushed ever-closer to bliss.";
		say "     The air is filled with the sound of the dragon's wet affection for but a few minutes before he drives you to orgasm, organ[smn] erupting against his tongue[if cocks of player > 1] and talon[end if]. With a disciplined determination, he milks you dry of every last drop of your [cum load size of player] payload, [if cocks of player > 2]talon bunching up at your second dick's head that he might lick it clean when he concludes with the first, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your second dick's head that he might lick it clean when he is concludes with the first[otherwise]licking it clean once you might offer no more for him[end if][if cock width of player > 24], he doesn't seem even remotely phased by the amount you offer him; rather, he'd be quite jovial over it, revelling in your excess[end if].";
	say "     'Alright, I certainly hope my victor was pleased...' It takes him a moment to recover, cleaning himself off and regaining what composure might have slipped from him prior. 'That was satisfying! Perhaps you would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";

to say dorvic_3: [oral cunt]
	say "     You see no harm in humouring the dragon, freeing yourself of any obstruction that might cover you before gesturing to your [cunt size desc of player] cunt[sfn], to which he eagerly struts toward. Too eager, in fact...";
	say "     'Hum, my victor is wont to such simple affections. I'm happy to oblige.' Scaled lips parting to expose his teeth, you no doubt feel slightly concerned that this might be some manner of trick the beast is about to play on you, but the fear is assuaged when those same lips embrace [if cunts of player > 1]one of them[otherwise]it[end if][if cocks of player > 1], taloned hand moving to stroke one of your exposed dicks[otherwise if cocks of player is 1], taloned hand moving to stroke your exposed dick[otherwise if cunts of player > 1], taloned hand moving to stroke one of its sisters[otherwise if cunts of player is 2], taloned hand moving to stroke its sister[end if]. Humid breath enveloping your lower torso, you abide his thick tongue's initial, teasing query, testing your supple folds and their pliability.";
	say "     'Oh, my victor [if cunt length of player > 17]is so spacious, I wonder if I'll properly be able to pleasure them[otherwise]tastes so inviting, I'm going to enjoy this[end if].' He pulls away briefly to offer this remark, '...If I might be so selfish, your offering leaves me quite aroused, might you grant me the chance to offer myself some pleasure as I attend to you?' You imagine he'd not be as capable of pleasuring you with his attention split, shall you oblige his request? Otherwise you'll ensure his attention remains solely on you.";
	if player consents:
		say "     You decide to allow him this opportunity, to which he eagerly obliges, hand moving [if cocks of player > 0]away from your cock to attend his own[otherwise if cunts of player > 1]away from your spare portal to attend his dick[otherwise]over to attend his dick[end if] before his maw envelops your pussy a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to dive within your [cunt size desc of player] depths, he exhibits a voracious desire to satisfy your need, [if cunt length of player < 17]your ease compelling his fervor further[end if]. As his need for self-pleasure rises, so does the pace in which his tongue attends you become erratic, driving you ever-closer to bliss along the way.";
		if cocks of player > 0:
			say "     You're just about to blow! But with his attention diverted you could exploit this opportunity to shame him further by ejaculating on his face, should you? Else you'll spare the dragon of this indignity.";
			if player consents:
				say "     Right as you find your bliss, you pull his tongue free from you, aiming your dick[smn] at him and, soon thereafter, erupting upon his unsuspecting face. Trapped in the throes of his own bliss, he can only regard the demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the beast with your [cum load size of player] load. When all is said is done, he's a shameful sight, wallowing in a puddle of his own spunk.";
			otherwise:
				say "     Soon thereafter you cry out in bliss, supple passage tightening against the dragon's tongue[if cocks of player > 0], cock[smn] erupting into the open air, staining your crotch and the ground with your seed. He's clearly caught between attending you and being in the throes of his own bliss, allowing you watch his writhing, twitching form as the beast's dick unloads impotently into the ground, wallowing in a puddle of his own spunk.";
		otherwise:
			say "     It's not long before you finally cry out in bliss, supple passage tightening against the dragon's tongue[if cocks of player > 0], cock[smn] erupting into the open air, staining your crotch and the floor with your seed. He's clearly caught between attending you and being in the throes of his own bliss, allowing you watch his writhing, twitching form as the beast's dick unloads impotently into the ground, wallowing in a puddle of his own spunk.";
	otherwise:
		say "     You choose to disallow such an act, to which he concedes with little further thought on the matter, maw enveloping your pussy a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to dive within your [cunt size desc of player] depths, he exhibits a voracious desire to satisfy your need[if cunt length of player > 17], your ease of access only compelling his fervour further[end if]. He retains a very methodical, calculated pace,[if cocks of player > 1] occasionally stopping only to offer some passing affection to one of your dicks,[otherwise if cocks of player is 1] occasionally stopping only to offer some passing affection to your dick,[otherwise if cunts of player > 2] occasionally switching to attend one of your other cunts to keep you sensitive to his influence,[otherwise if cunts of player is 2] occasionally switching to your other cunt to keep you sensitive to his influence[end if] audible moans escaping your lips as you're rapidly pushed ever-closer to bliss.";
		say "     The air is filled with the sound of the dragon's wet affection for but a few minutes before he drives you to orgasm, feminine portal tightening around his tongue[if cocks of player > 0] as your cock[smn] erupt, staining yourself with your [cum load size of player] payload[end if]. With a disciplined dedication, he licks you clean until it is barren with naught but a thin veneer of his saliva.";
	say "     'Alright, I certainly hope my victor was pleased...' It takes him a moment to recover, cleaning himself off and regaining what composure might have slipped from him prior. 'That was satisfying! Perhaps my victor would be interested in another go sometime down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";

to say dorvic_4: [cunt sex]
	say "     With some curiosity, your eyes wander down upon the dragon's more private regions. Already aroused at the prospect of your imminent exploitation, you can see his exposed, fleshy dick already emerged from the sheath which housed it prior. Knotted and distinctly draconic, it's a fairly intimidating tool. Behind it hangs an equally impressive pair of heavy, scaled balls.";
	say "     'Ah, I see my victor would like to take their dragon out for a little ride, perhaps?' His remark comes as little surprise given how you've been ogling him for a fair while, though perhaps more surprising is how obliging he is towards the prospect, even with what he might get out the it. You agree, to which he slowly lays down, rolling on his back to give you a fuller, more intimate view of his towering rod, 'I am theirs to do with as they please.'";
	say "     [if scalevalue of player < 4 and cunt length of player < 12]A little sheepishly, y[otherwise]Y[end if]ou approach him, relinquishing any obstruction you might have adorned prior before your hands move to feel the organ. Soft, yielding flesh juxtaposed against his much firmer, scaled undercarriage, it's already eager to ooze pre against your touch. [if cunt length of player < 12]The thing is rather frightening, to be honest; at the very least it'll be quite a challenge to fit, even the dragon seems a little uncertain you can take him[otherwise]Quite well endowed, you imagine there'll be some challenge in getting the thing in, though you doubt it'll be that difficult for someone of your capability[end if].";
	if scalevalue of player < 4:
		say "     'Ah, does my victor require aid? I'll be as careful as someone of my size might allow.' It's clear he thinks you'll need some assistance getting it in, accept his offer? Else you'll stick to your guns.";
		if player consents:
			say "     You decide to consent to his aid, to which his taloned forepaws descend upon you, ever-so-gently lining up [if cunts of player > 1]one of your cunts[otherwise]your cunt[end if] with his proudly jutting tool. Mindful of your regard, you're slowly forced upon rod, quickly contending with his flared head. [if cunt length of player > 17]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise]After much work and strained grunts, the two of you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if]. Done helping you, the beast lets you go, allowing you to continue on your own pace.";
		otherwise:
			say "     You suggest against his aid, intent on taking care of this yourself as you line up [if cunts of player > 1]one of your cunts[otherwise]your cunt[end if] with his proudly jutting tool. Taking a moment to breath, you slowly force yourself upon the rod, quickly contending with his flared head. [if cunt length of player > 17]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise]After much work and strained grunts, the you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if].";
	otherwise:
		say "     Climbing over the beast, you carefully up your rear with his proudly jutting tool. Briefly teasing [if cunts of player > 1]one of your cunts[otherwise]your cunt[end if] with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into the supple, yielding folds of its flesh [if cunt length of player < 12]After much work and strained grunts, the you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[otherwise if cunt length of player > 17]Struck by a rather impish urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This surprise is enough to cause him to moan loudly, a gout of pre spurting from the organ, so suddenly enveloped as it is[otherwise]Past his head, your remaining descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     'Oh, m-my victor is so [if cunt length of player < 12]t-tight[otherwise if cunt length of player > 17]s-skilled[otherwise]f-firm[end if].' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 1]your own bouncing in the open air, staining the dragon's scales with their slick fluids[otherwise if cocks of player is 1]your own bouncing in the open air, staining the dragon's scales with its slick fluids[otherwise]stuffed portal eagerly milking the beast for what he's worth[end if][if scalevalue of player < 3], body visibly bulging to contain the organ[end if].";
	say "     You can tell, by the creature's rising fervour, that he's about to erupt, and it might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if cunt length of player < 12]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own dick[smn][otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz. Soon there after, your desperate endeavour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] spending your [cum load size of player] payload against him[otherwise if cunts of player > 0]cunt[sfn] staining his crotch with your release[end if], mixing with his own, the reptile now an embarrassing, cum-stained mess.";
		say "     Eventually, you step off of the dragon, letting him clean himself off.";
		say "     'Oh, how very naughty, making a mess of me like that!' He feigns insult, taking a moment to regain his posture. 'That was satisfying! Perhaps my victor would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	otherwise:
		say "     Compelled by your wanton hunger, [if cunt length of player < 12]you take considerable effort to finally tie yourself with the beast's knot[otherwise if cunt length of player > 17]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to cry out, pumping your womb full with gout after successive gout of his voluminous jizz[if scalevalue of player < 4], body visibly bulging to abide this release[end if], sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss[if cocks of player > 0], dick[smn] unloading your [cum load size of player] payload against his torso[end if]. [impregchance][line break]";
		say "     Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him.";
		say "     'Oh, my victor is quite impressive at being able to take me.' He offers his praise before getting back up, taking a moment to regain his posture. 'That was satisfying! Perhaps they would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";


to say dorvic_5: [anal sex]
	say "     With some curiosity, your eyes wander down upon the dragon's more private regions. Already aroused at the prospect of your imminent exploitation, you can see his exposed, fleshy dick already emerged from what might have housed it prior. Knotted and distinctly draconic, it's a fairly intimidating tool. Behind it hangs an equally impressive pair of heavy, scaled balls.";
	say "     'Ah, I see my victor would like to take his dragon out for a little ride, perhaps?' His remark comes as little surprise given how you've been ogling him for a fair while, though perhaps more surprising is how obliging he is towards the prospect, even with what he might get out the it. You agree, to which he slowly lays down, rolling on his back to give you a fuller, more intimate view of his towering dick, 'I am their's to do with as they please.'";
	say "     [if scalevalue of player < 4]A little sheepishly, y[otherwise]Y[end if]ou approach him, relinquishing any obstruction you might have adorned prior before your hands move to feel the organ. Soft, yielding flesh juxtaposed against his much firmer, scaled undercarriage, it's already eager to ooze pre against your touch. [if scalevalue of player < 4 and player is not twistcapped]The thing is rather frightening, to be honest; at the very least it'll be quite a challenge to fit, even the dragon seems a little uncertain you can take him[otherwise]Quite well endowed, you imagine there'll be some challenge in getting the thing in, though you doubt it'll be that difficult for someone of your capability[end if].";
	if scalevalue of player < 4:
		say "     'Ah, does my victor require aid? I'll be as careful as someone of my size might allow.' It's clear he thinks you'll need some assistance getting it in, accept his offer? Else you'll stick to your guns.";
		if player consents:
			say "     You decide to consent to his aid, to which his taloned forepaws descend upon you, ever-so gently lining up your ass with his proudly jutting tool. Mindful of your regard, you're slowly forced upon rod, quickly contending with his flared head. [if scalevalue of player is 3 and player is twistcapped]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise if scalevalue of player < 3]Much in spite your peculiar talent, it takes quite a bit of work for him to effectively sink the head into your depths, though the dragon is surprised you can even take him in the first place[otherwise]After much work and strained grunts, the two of you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if]. Done helping you, the beast lets you go, allowing you to continue on your own pace.";
		otherwise:
			say "     You suggest against his aid, intent on taking care of this yourself as you line up your ass with his proudly jutting tool. Taking a moment to breath, you slowly force yourself upon the rod, quickly contending with his flared head. [if scalevalue of player is 3 and player is twistcapped]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise if scalevalue of player < 3]Much in spite your peculiar talent, it takes quite a bit of work for you to effectively sink the head into your depths, though the dragon is surprised you can even take him in the first place[otherwise]After much work and strained grunts, the you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if].";
	otherwise:
		say "     Climbing over the beast, you carefully line up your ass with his proudly jutting rod. Briefly teasing your anal ring with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into your supple, yielding depths. [if player is twistcapped]Struck by a rather impish urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This surprise is enough to cause him to moan loudly, a gout of pre spurting from his suddenly enveloped tool[otherwise]Past his head, your descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     'Oh, m-my victor is so [if scalevalue of player < 4]t-tight[otherwise if player is twistcapped]s-skilled[otherwise]f-firm[end if].' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 0]your own bouncing in the open air[otherwise]cunt[sfn] dripping against the open air[end if], staining the dragon's scales with [if cocks of player > 1 or cunts of player > 1]their[otherwise]its[end if] slick fluids[if scalevalue of player < 3], stretched to the limits of your ability to contain the organ[end if].";
	say "     You can tell, by the creature's rising fervour, that he's about to erupt, it might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if scalevalue of player < 4]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own dick[smn][otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz. Soon thereafter, your desperate endeavour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against him[otherwise if cunts of player > 0]cunt[sfn] staining his crotch with your release[end if], mixing with his own, the reptile now an embarrassing, cum-stained mess.";
		say "     Eventually, you step off of the dragon, letting him clean himself off.";
		say "     'Oh, now very naughty, making a mess of me like that!' He feigns insult, taking a moment to regain his posture. 'That was satisfying! Perhaps my victor would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	otherwise:
		say "     Compelled by your wanton hunger, [if scalevalue of player < 4]you take considerable effort to finally tie yourself with the beast's knot[otherwise if player is twistcapped]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to cry out, pumping your bowels full with gout after successive gout of his voluminous jizz[if scalevalue of player < 3], body visibly bulging to abide this release[end if], sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against his torso[otherwise if cunts of player > 0]cunt[sfn] staining his torso with your release[end if]. [mimpregchance][line break]";
		say "     Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him.";
		say "     'Oh, my victor quite impressive at being able to take me.' He offers his praise before getting back up, taking a moment to regain his posture. 'That was satisfying! Perhaps they would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";

to say dorvic_snub: [turn down]
	say "     Not in the mood, or perhaps weirded out by the creature's odd demeanour and eagerness to submit, you decide to reject his offer. He seems to ponder this for a moment before conceding.";
	say "     'Very well; however, if my victor changes their mind, I'm always available.' He goes on to explain where he resides. Apparently there's a cave within a not-too-distant [bold type]Rocky Outcropping[roman type], and his instructions are clear enough that you should have no issue getting there, 'Doran's the name, by the way.'";
	say "     Once he's done, he makes to leave in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Peculiar Dragon";
	now attack entry is "     [one of]With great poise, the dragon[or]Strutting close to you, he[or]He[or]The dragon[at random] [one of]sweeps his tail at you, knocking you with a concussive thud[or]strikes you with the palm of his talon, a rather painful affair even if he refrains from using his claws[or]headbutts you rather fiercely, knocking you back[or]flaps his wings in your direction, sending a thundering gust of wind upon you[at random] before he yields[one of], preening and gesturing as though to taunt you[or], strutting about a bit to give you a chance to retaliate[or], preparing for what retaliation you might offer up against him[or][at random].";
	now defeated entry is "[beatdoran]";	
	now victory entry is "[losetodoran]";	
	now desc entry is "[dorandesc]";
	now face entry is "now a head described by this text"; [Non-infectious, descriptors assumedly irrelevant.]
	now body entry is "that of a well-described new form put here";
	now skin entry is "fur/scales/patterns that now cover your";
	now tail entry is "Your tail gets a full sentence ending in a period.";
	now cock entry is "thesaurian";	
	now face change entry is "your head changes in some descriptive manner";
	now body change entry is "your body takes on a newly described form";	
	now skin change entry is "you gain fur/scales/skin/patterns described herein";
	now ass change entry is "your tail or ass changes in the manner described by this text";	
	now cock change entry is "it takes on a new, kinky form";
	now str entry is 17;
	now dex entry is 24;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 20;
	now cha entry is 16;
	now sex entry is "nochange";
	now hp entry is 105;
	now lev entry is 16;
	now wdam entry is 17;
	now area entry is "Plains";
	now cocks entry is 1;
	now cock length entry is 18;
	now cock width entry is 18;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 0;
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 45;
	now loot entry is "";
	now lootchance entry is 0;
	now scale entry is 4;
	now body descriptor entry is "erudite";
	now type entry is "conceptual";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;
	now altcombat entry is "firebreath";


Section 3.0 - Doran NPC

Rocky Outcropping is a room. It is fasttravel. It is private.
the description of Rocky Outcropping is "	 The cavernous alcove, of which Doran resides in, is quite large and spacious for the dragon. You find it littered with various bits and baubles he's no doubt stumbled upon and collected for his amusement, though nothing of particular interest or value catches your eye. It's a little unkempt, but isn't all that bad all things considered. [if daytimer is day]For the most part light floods in from the cave's entrance, though there's also a campfire, near the cave's center, which still contains a few errant, glowing embers, indicative of its recent use[otherwise]Faint starlight creeps in from the outside, though the main source of illumination remains his roaring campfire at the cave's center[end if]. No doubt the surrounding outcropping of stone shields the place from the wind, making the cave relatively calm and quiet.";
Doran is a man. Doran is in Rocky Outcropping.
the linkaction of Doran is "Possible Actions: [link]talk[as]talk doran[end link], [link]smell[as]smell doran[end link], [link]fuck[as]fuck doran[end link], [link]request[as]request doran[end link][line break]";
the description of Doran is "[doranlook]";
the fuckscene of Doran is "[doransex]";
instead of sniffing Rocky Outcropping:
	say "     It has the obvious scent of earth and burnt wood, which more that overpowers any scent the fastidious Doran leaves behind.";
instead of sniffing Doran:
	say "     [one of]There's a slightly masculine air about him, though he otherwise remains fairly well-kept[or]There's a slightly masculine air about him, though he otherwise remains fairly well-kept[or]I hope there isn't something off-putting about my smell, else I appreciate the affection[or]There's a slightly masculine air about him, though he otherwise remains fairly well-kept[stopping].";

to say doranlook:
	if dorfirsttalk is false:
		say "     The dragon seems more intent on striking up a dialogue with you than giving you a proper opportunity to inspect him. You should probably talk to him first.";
	otherwise:
		say "     To facilitate your examination Doran stands erect. He's about what you'd expect from a traditional, western-styled dragon; a scaled, impressively-sized, winged quadruped. Clad in turquoise scales, his underside is accented with with rougher, larger, and less saturated scales. Against [if daytimer is day]daylight[otherwise]fire's light[end if], his scales shimmer rather dazzlingly, illustrative of how much he fusses over his appearance.";
		say "     That vain pride is even further enforced by his posture, deliberately regal and restrained, you imagine the demeanour would be somewhat awkward to pull off, but it's clear he's had a lot of practice doing it. You can command him to unfurl his wings, which--when filtering the [if daytimer is day]sun's light--create an emerald shade upon the rocky ground[otherwise]fire's light--create a shade of emerald against the cave walls[end if] as it passes through the translucent membrane.";
		say "     Commanded to offer you a more intimate view of his private regions, you can clearly see his ample, scaled package. Chitinous frame rendering his sack taut, they are still somewhat yielding to your touch. His impressive, knotted dick remains obfuscated by his sheath, pointed head peeking through it, always eager for attention.";
		say "     [italic type]Doran presently regards you as [if dorgenreg is true]female[otherwise]male[end if]. His sexual demeanour remains [if dorrolereg is 0]domineering[otherwise if dorrolereg is 2]submissive[otherwise]reasonable[end if] towards you, as you've commanded[if dorroleint is 0 and dorrolereg is 0], the severity of which being intense[otherwise if dorroleint is 4 and dorrolereg is 2], the severity of which being intense[otherwise if dorrolereg is not 1], the severity of which being fairly restrained[end if].[roman type]";
		
Instead of conversing the Doran:
	if dorfirsttalk is false:
		say "     'Ah, so my victor decided to join me, then?' The dragon regards you upon your approach, having laid down next to the campfire, '...Though I think the name 'victor' will end up being a little grating, yes?' He exposes a toothy grin, something clearly on his mind.";
		if breast size of player > 0:
			say "     'By what I can guess, you would argue that you're female, yes?--This no doubt seems like an obvious answer to you, but you'll be surprised how things end up around here; it can be very confusing. Please correct me if I'm wrong.' Do you agree with his assessment? Else he will just assume the opposite is true.";
			if player consents:
				say "     'Okay. My apologies for making a--no doubt--rather insulting query, but I wanted to be absolutely sure.'";
				now dorgenreg is true;
				now dorgr is "Mistress";
			otherwise:
				say "     'Oh, my sincerest apologies! My trespass must be forgiven, one knows how things can get around here.'";
				now dorgenreg is false;
				now dorgr is "Master";
		otherwise:
			say "     'By what I can guess, you could very well be male, yes?--This no doubt seems like an obvious answer to you, but you'll be surprised how often one can easily have difficulty making the distinction. Please correct me if I'm wrong.' Do you agree with his assessment? Else he will just assume the opposite is true.";
			if player consents:
				say "     'Okay. My apologies for making a--no doubt--rather insulting query, but I wanted to be absolutely sure.'";
				now dorgenreg is false;
				now dorgr is "Master";
			otherwise:
				say "     'Oh, my sincerest apologies! My trespass must be forgiven, one knows how things can get around here[if cocks of player > 0 and cunts of player is 0]--or perhaps my victor is male and they just like being considered a lady, how very naughty[end if].'";
				now dorgenreg is true;
				now dorgr is "Mistress";
		say "     'In any case, my victor shall henceforth be regarded as my [dorgr]--of course, feel free to [bold type]request[roman type] of me if one's body or mind changes on that assessment.' You can't help but raise an eyebrow at this new title, and your expression is quickly apparent to the dragon. 'Is that not how it should be? [dorgr] is the first one to beat me and by succeeding me I am their property; I'm theirs to do with as they wish.' It's very strange that any individual would so willingly bestow ownership of themselves upon another, should you contest him over it?";
		if player consents: 
			say "     You immediately voice your disagreement with the notion of someone being declared as mere property to another, but he dismisses the thought wholeheartedly, 'If [dorgr] cares for my well being enough to worry over such things then under their care they'll ensure it.' It seems his mind cannot be changed on this matter. At the very least it's his idea.";
		otherwise: 
			say "     You're not exactly sure this is right for him to do, or why he's so insistent on the distinction, but it's clearly his idea and he seems fine with it, not that there seems any way to change his mind on the matter.";
		if player is submissive: 
			say "     Your submissive inclination compels you to point out that this isn't exactly your 'area of expertise', to which he quickly dismisses.";
			say "     'Oh, worry not. I'll happily play the domineering role for my [dorgr], if that is what they wish.' Instinctively, you agree to this arrangement, 'Say no more of it, if my [dorgr] wants to be used then used they shall be.'";
			now dorrolereg is 0;
			now dordomtop is 2;
		say "     'That's all I need to know, [dorgr], feel free to ask me of any need that enters their mind.' He lets you off to continue as you were.";
		now dorfirsttalk is true;
	otherwise:
		say "     '";
		if a random chance of 1 in 6 succeeds:
			say "[if dorrolereg is 0][one of]Perhaps my [dorgr] can be mine for a little longer[or]How is my [dorgr][at random][otherwise][one of]Perhaps [dorgr] can stay a little longer[or]How is [dorgr][at random][end if]?'";
		otherwise if a random chance of 3 in 10 succeeds:
			say "[if dorrolereg is 0][one of]My [dorgr] is looking particularly slutty today[or]My hope is that I might get to use my [dorgr][or]My [dorgr] makes for a great toy[at random][otherwise][one of][dorgr] is looking particularly entrancing today[or]My hope is that I might please [dorgr][or][dorgr] treats me well[at random][end if].'";
		otherwise:
			say "[one of]On a particularly windy day, the whistling sound made here can be quite calming[or]Getting wood around here can be rather difficult--oh don't give me that look, I mean the trees[or]Moving around in the city is a bit too much trouble for me; not much to scavenge in the streets and few buildings are 'dragon-accessible'[or]I'd take care when wandering out there[or][dorgr] might want to ask me first before eating any of the fruit around here; better yet, just avoid the stuff altogether[or]Local monsters usually stay away from around here, thankfully[or]I find a good sense of humor or a good love of fun can get one through the hardest days[at random].'";

to say doransex:
	if cocks of player is 0 and cunts of player is 0:
		say "     Your lack of proper sexual outlet makes the prospect of such an interaction with the dragon a little one-sided, and as such you decide against it.";
	otherwise if dorfirsttalk is false:
		say "     You should probably talk to the dragon first before you get down to any sort of business.";
	otherwise if dorlastsex - turns <= 8:
		if dorrolereg is 0:
			say "     'Oh, my [dorgr] is interested in another go, so soon? I'm afraid I'm still too tired from the last bout. I'll be more than eager to have my fun with them when I'm up to it.'";
		otherwise:
			say "     'Again, [dorgr]? Oh, they must forgive me, I'm still absolutely exhausted! I don't mean to turn tail, I just wouldn't be any good at pleasing them, I'm sorry.'";
		setmonster "Peculiar Dragon";
		choose row monster from the table of random critters;
	otherwise:
		if dorrolereg is 0: [Dom sex pool]
			if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and ((cunts of player is 0 and ((anallevel is 3 and a random chance of 2 in 3 succeeds) or (anallevel is 2 and a random chance of 1 in 2 succeeds))) or (cunts of player > 0 and a random chance of 1 in 3 succeeds)) and (scalevalue of player > 1 or player is twistcapped):
				say "[dordom_1]"; [anal sex scene]
			otherwise if cunts of player > 0 and cunt length of player > 7 and a random chance of 1 in 2 succeeds:
				say "[dordom_2]"; [cunt sex scene]
			otherwise:
				say "[dordom_3]"; [oral sex scene]
		otherwise: [Sub sex pool]
			now calcnumber is -1;
			say "     Upon requesting for a bit of action, Doran gets up and moves over to you.";
			say "     '[one of]Yes[or]Certainly[or]Of course[at random], [dorgr]. [one of]What is their wish[or]How would they have me[or]How may I service them[at random]?' At present, you can ";
			if cunts of player > 0:
				if cocks of player > 0 and cunt length of player > 7:
					say "[link]mount him (1)[as]1[end link], make him [link]suck your dick (2)[as]2[end link], [link]eat your cunt (3)[as]3[end link], [link]ride him (4)[as]4[end link], ";
					if scalevalue of player > 1 or player is twistcapped:
						say "[link]ride him anally (5)[as]5[end link], or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon";
						while calcnumber < 0 or calcnumber > 5:
							say "Choice? (0-5)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorsub_1]"; [fuck the dragon]
						otherwise if calcnumber is 2:
							say "[dorsub_2]"; [oral cock]
						otherwise if calcnumber is 3:
							say "[dorsub_3]"; [oral cunt]
						otherwise if calcnumber is 4:
							say "[dorsub_4]"; [cunt sex]
						otherwise if calcnumber is 5:
							say "[dorsub_5]"; [anal sex]
						otherwise:
							say "[dorsub_snub]"; [turn down]
					otherwise:
						say "ride him anally (Too small!), or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
						while calcnumber < 0 or calcnumber > 4:
							say "Choice? (0-4)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorsub_1]"; [fuck the dragon]
						otherwise if calcnumber is 2:
							say "[dorsub_2]"; [oral cock]
						otherwise if calcnumber is 3:
							say "[dorsub_3]"; [oral cunt]
						otherwise if calcnumber is 4:
							say "[dorsub_4]"; [cunt sex]
						otherwise:
							say "[dorsub_snub]"; [turn down]
				otherwise if cocks of player > 0:
					say "[link]mount him (1)[as]1[end link], make him [link]suck your dick (2)[as]2[end link], [link]eat your cunt (3)[as]3[end link], ride him (Too small!)";
					if scalevalue of player > 1 or player is twistcapped:
						say "[link]ride him anally (4)[as]4[end link], or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
						while calcnumber < 0 or calcnumber > 4:
							say "Choice? (0-4)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorsub_1]"; [fuck the dragon]
						otherwise if calcnumber is 2:
							say "[dorsub_2]"; [oral cock]
						otherwise if calcnumber is 3:
							say "[dorsub_3]"; [oral cunt]
						otherwise if calcnumber is 4:
							say "[dorsub_5]"; [anal sex]
						otherwise:
							say "[dorsub_snub]"; [turn down]
					otherwise:
						say "ride him anally (Too small!), or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
						while calcnumber < 0 or calcnumber > 3:
							say "Choice? (0-3)>[run paragraph on]";
							get a number;
						if calcnumber is 1:
							say "[dorsub_1]"; [fuck the dragon]
						otherwise if calcnumber is 2:
							say "[dorsub_2]"; [oral cock]
						otherwise if calcnumber is 3:
							say "[dorsub_3]"; [oral cunt]
						otherwise:
							say "[dorsub_snub]"; [turn down]
				otherwise:
					say "make him [link]eat your cunt (1)[as]1[end link], ";
					if cunt length of player > 7:
						say "[link]ride him (2)[as]2[end link], ";
						if scalevalue of player > 1 or player is twistcapped:
							say "[link]ride him anally (3)[as]3[end link], or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
							while calcnumber < 0 or calcnumber > 3:
								say "Choice? (0-3)>[run paragraph on]";
								get a number;
							if calcnumber is 1:
								say "[dorsub_3]"; [oral cunt]
							otherwise if calcnumber is 2:
								say "[dorsub_4]"; [cunt sex]
							otherwise if calcnumber is 3:
								say "[dorsub_5]"; [anal sex]
							otherwise:
								say "[dorvic_snub]"; [turnd own]
						otherwise:
							say "ride him anally (Too small!), or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon";
							while calcnumber < 0 or calcnumber > 2:
								say "Choice? (0-2)>[run paragraph on]";
								get a number;
							if calcnumber is 1:
								say "[dorsub_3]"; [oral cunt]
							otherwise if calcnumber is 2:
								say "[dorsub_4]"; [cunt sex]
							otherwise:
								say "[dorsub_snub]"; [cunt sex]
					otherwise:
						say "ride him (Too small!), ";
						if scalevalue of player > 1 or player is twistcapped:
							say "[link]ride him anally (2)[as]2[end link], or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
							while calcnumber < 0 or calcnumber > 2:
								say "Choice? (0-2)>[run paragraph on]";
								get a number;
							if calcnumber is 1:
								say "[dorsub_3]"; [oral cunt]
							otherwise if calcnumber is 2:
								say "[dorsub_5]"; [anal sex]
							otherwise:
								say "[dorsub_snub]"; [turnd own]
						otherwise:
							say "ride him anally (Too small!), or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
							while calcnumber < 0 or calcnumber > 1:
								say "Choice? (0-1)>[run paragraph on]";
								get a number;
							if calcnumber is 1:
								say "[dorsub_3]"; [oral cunt]
							otherwise:
								say "[dorsub_snub]"; [cunt sex]
			otherwise:
				say "[link]mount him (1)[as]1[end link], make him [link]suck your dick (2)[as]2[end link], ";
				if scalevalue of player > 1 or player is twistcapped:
					say "[link]ride him anally (3)[as]3[end link], or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
					while calcnumber < 0 or calcnumber > 3:
						say "Choice? (0-3)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[dorsub_1]"; [fuck the dragon]
					otherwise if calcnumber is 2:
						say "[dorsub_2]"; [oral cock]
					otherwise if calcnumber is 3:
						say "[dorsub_5]"; [anal sex]
					otherwise:
						say "[dorsub_snub]"; [turn down]
				otherwise:
					say "ride him anally (Too small!), or you could [link]change your mind (0)[as]0[end link] about having fun with the dragon.";
					while calcnumber < 0 or calcnumber > 2:
						say "Choice? (0-2)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[dorsub_1]"; [fuck the dragon]
					otherwise if calcnumber is 2:
						say "[dorsub_2]"; [oral cock]
					otherwise:
						say "[dorsub_snub]"; [turn down]
		if dorwassnub is false:
			if dorrolereg is 0 and dorroleint > 0:
				decrease dorroleint by 1;
			otherwise if dorrolereg is 2 and dorroleint < 4:
				increase dorroleint by 1;
			now dorlastsex is turns;
			decrease libido of player by ((libido of player / 20) + 1);
			if libido of player is less than 0:
				now libido of player is 0;		
		otherwise:
			now dorwassnub is false;

Section 3.1 - Doran NPC Sex Pool

to say dordom_1: [Dom Doram anal sex]
	say "     Upon your [if dorroleint is 0]plea[otherwise]request[end if] for sex, the dragon gets up and struts around you in silence, barely regarding [if dorroleint is 0]your offering[otherwise]you[end if] before you're firmly pinned to the ground, immodest talons carefully exposing your ass before his discerning eyes.";
	say "     '[one of]Ah, yes[or]Hmm[or]Well then[at random], [if dorroleint is 0][one of]I'm rather fond of my [dorgr]'s ass, but I'm thinking it's missing one key ingredient[or]I think my [dorgr] needs to learn their place[or]I'm certain my [dorgr] is the best cum dumpster around[at random][otherwise][one of]I'm certain my [dorgr] likes surprises[or]I could stare at my [dorgr]'s ass like this for hours, but that would just be a waste[or]I think my [dorgr] is due for a good dicking[at random][end if], [one of]don't you think[or]yes[or]wouldn't you agree[at random]?' He remarks before you're made watch on";
	if anallevel is 3 and a random chance of 2 in 3 succeeds:
		say ", head descending upon your rear before you feel his tongue's wet[if dorroleint is 0], familiar[end if] careless against your exposed hole. [if dorroleint is 0]You beg for him to to thrust his slick organ upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your lips, it's not long before[end if] you feel it force its way past your anal ring.";
		say "     Writhing, indignant intrusion enduring ";
		if scalevalue of player < 4:
			if player is twistcapped:
				say "only slight";
			otherwise:
				say "a fair bit of";
		otherwise:
			say "little";
		say " difficulty in its movement through your bowels, eliciting a chain of gasps from you with every irreverent twitch it makes. He subjects you to this ritual for a [if dorroleint is 0]considerable[otherwise]fair[end if] amount of time, leaving your ass a slick[if dorroleint is 0] and dripping[end if] mess before he is finally satisfied[if dorroleint is 0], so aroused by this abuse that you could climax off of it alone, if not for the dragon's keen eye tempering restraint[end if].";
	otherwise:
		say ", spare talon engulfed within his maw before it's relinquished quickly thereafter, now-slick digit descending upon your behind, offering its[if dorroleint is 0] familiar[end if] careless against your exposed hole. [if dorroleint is 0]You beg for him to to force his finger upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your breath, it's not long before[end if] you feel it force its way past your anal ring.";
		say "     Firm, curving intrusion contending with ";
		if scalevalue of player < 4:
			if player is twistcapped:
				say "only slight";
			otherwise:
				say "a fair bit of";
		otherwise:
			say "little";
		say " difficulty in its movement through your bowels, eliciting a chain of gasps from you with every irreverent thrust it makes. He subjects you to this ritual for a [if dorroleint is 0]considerable[otherwise]fair[end if] amount of time, leaving your ass a slick and [if dorroleint is 0]significantly[end if] loosened up mess before he is finally satisfied[if dorroleint is 0], so aroused by this abuse that you could climax off of it alone, if not for the dragon's keen eye tempering restraint[end if].";
	if dorroleint is 0:
		say "     '[one of]Tsk[or]Oh[or]Hm[or]Ha[or]Heh[at random], [one of]my [dorgr] is quite the needy[if scalevalue of player < 5] little[end if] slut, aren't they[or]I know how to get my [dorgr] to make all the right noises, don't I[or]if my [dorgr] could see all the ways they writhe, they'd say they look very silly, wouldn't they[at random]";
	otherwise:
		say "     '[one of]Mmm[or]Yes[or]Ah[at random], [one of]I think my [dorgr] likes that, don't they[or]That's just the opening act, my [dorgr], think they can last the whole way[or]I'm sure that will prepare my [dorgr] enough for what is to follow, wont it[at random]";
	say "?' Not granted the opportunity to reply, you're made to groan[if dorroleint is 0] needily[end if] as you feel tip of his flared cockhead against your already-stretched hole";
	if scalevalue of player > 3:
		say ". No doubt certain that your large, [bodydesc of player] form will abide him with little difficulty, he--with a firm grunt--forces the whole of his cockhead in a single thrust, much to your [if dorroleint is 0]moaning approval[otherwise]groaning regard[end if] for such harsh treatment, slowly working the remainder in, up to his knot.";
	otherwise:
		say ". [if dorroleint is 0]Trusting in your ability to take him, he shows very little restraint in pushing his cockhead in, forcing tainted moans of intense pleasure out of you as it's squeezed through your tight ring[otherwise]Taking great care not to hurt you, he slowly forces his cockhead in, causing groans in intense pleasure to escape you as it's inevitably squeezed through your tight ring[end if]. With some additional effort he's able to work on the remainder, soon enveloped by your flesh, up to his knot.";
	if scalevalue of player < 4 and dorroleint is 0 and a random chance of 1 in 2 succeeds:
		say "     Briefly subjecting you to the dragon's ponderous weight of his impressive frame, your [if cocks of player > 0]blatantly hard, [cock size desc of player] dick[smn] grind against the ground, staining it with your pre[otherwise]oozing, unattended cunt[sfn] stain the ground with your lubricant[end if]. Not quite satisfied with the angle he's subjected his little toy to, he grabs a hold of you, keeping you in position as he shifts onto his back.";
		say "     '[one of]My [dorgr] is so very small, I wouldn't want to make them too uncomfortable just yet[or]This way, I get a better view of my [dorgr], as they squirm[or]For such a little [dorgr], they certainly know how to make my dick disappear[at random].' He teases you, much in lieu of your moaning regard you as he relegates you to a mere sex toy for his perverse desire, forcibly riding you up and down his throbbing, draconic length[if scalevalue of player < 3], visibly bulging in order to contain him[end if]. Pleading for his reciprocation, he can't help but at least somewhat oblige his '[dorgr]', one of his talons moving to [if cocks of player > 1]stroke one of your exposed cocks, no doubt rendered hard from the[otherwise if cocks of player is 1]stroke your exposed cock, no doubt rendered hard from the[otherwise if cunts of player > 1]tease one of your dripping, unattended portals, no doubt aching for need following this[otherwise]tease your dripping, unattended portal, no doubt aching for need following this[end if] ordeal.";
		say "     He grows increasingly determined to impale you with his knot. Your hole [if player is twistcapped]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out in lieu of each subsequent inch before you manage the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you soon find your thighs slapping against the beast's voluminous sack at a rapidly increasing pace.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out, [if cocks of player > 0]cock's sputtering forcibly erratic against your immensely strained prostate, staining the dragon's thighs and crotch with your seed[otherwise if cunts of player > 0]Pussy's gushing forcibly strained against the immense intrusion, staining the dragon's crotch with your sexual fluids[end if]. Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout flooding your bowels, [if scalevalue of player < 3]belly visibly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you can't contain any more[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your bowels, [if scalevalue of player < 3]belly visibly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you can't contain any more[end if]. It's enough to make you cry out in your own climax, [if cocks of player > 0]cock's sputtering forcibly erratic against your immensely strained prostate, staining the dragon's thighs and crotch with your seed[otherwise if cunts of player > 0]Pussy's gushing forcibly strained against the immense intrusion, staining the dragon's crotch with your sexual fluids[end if].";
		say "     Shifting back onto his feet, he offers slight care in pulling you free of his dick, knot audibly popping from your stretched hole before planting you on the ground once more, soon followed by a flood of the beast's thick, heady ejaculate thereafter. Feeling particularly devious, he revels in your pitiful state, aiming his still cum-oozing dick at your head and upper torso to sully them as well.";
	otherwise:
		say "     Subjecting you to the dragon's ponderous weight of his impressive frame, [if scalevalue of player < 4]he nonetheless takes considerable care to not crush or suffocate you under him, overwhelming heat of his rising fervor cascading down upon you[otherwise]the overwhelming heat of his rising fervor cascades down upon you[end if]. You can't help but moan as your [if cocks of player > 1]blatantly hard, [cock size desc of player] dicks grind against the ground, staining it with your pre[otherwise if cocks of player is 1]blatantly hard, [cock size desc of player] dick grinds against the ground, staining it with your pre[otherwise if cunts of player > 1]oozing, unattended cunts stain the ground with your lubricant[otherwise]oozing, unattended cunt stains the ground with your lubricant[end if].";
		say "     '[one of]Hnf[or]Mnf[or]Mmf[or]Ah[at random], ";
		if dorroleint is 0:
			say "[one of]my [dorgr] is a tight[if scalevalue of player < 4] little[end if] bitch[or]I think my [dorgr] prefers being fucked silly[or]I love it when my [dorgr] is under me like this[at random]";
		otherwise:
			say "[one of]my [dorgr] is so tight[or]I'm going to fuck my [dorgr] silly[or]I love it when my [dorgr] lets me do this[at random]";
		say "!' His remark strained against his increasing fervour, each powerful thrust sending a tremor through your[if scalevalue of player < 4] diminutive[end if] body. He grows increasingly determined to impale you with his knot. Your hole [if player is twistcapped or scalevalue of player > 3]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out in lieu of each subsequent inch before you garner the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you quickly feel his voluminous sack slap against your [if cock width of player > 0 and cockname of player is not listed in infections of internallist]own[otherwise if scalevalue of player < 4]thighs[otherwise]crotch[end if] in rapid succession.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out, [if cocks of player > 0]cock's sputtering forcibly erratic against your immensely strained prostate, staining the ground with your seed[otherwise if cunts of player > 0]Pussy's gushing forcibly strained against the immense intrusion, staining the ground with your sexual fluids[end if]. Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing his crotch firm against you one final time before roaring out, gout after overwhelming, continuous gout flooding your bowels, [if scalevalue of player < 3]belly bloating to abide his load[otherwise if scalevalue of player is 3]quickly leaking from your stuffed hole when you can't contain any more[otherwise]carnal warmth flooding your insides[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces his crotch firm against you a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your bowels, [if scalevalue of player < 3]belly bloating to abide his load[otherwise if scalevalue of player is 3]quickly leaking from your stuffed hole when you can't contain any more[otherwise]carnal warmth flooding your insides[end if]. It's enough to make you cry out in your own climax, [if cocks of player > 0]cock's sputtering forcibly erratic against your immensely strained prostate, staining you and the ground with your seed[otherwise if cunts of player > 0]Pussy's gushing forcibly strained against the immense intrusion, staining you and the ground with your sexual fluids[end if].";
		say "     Panting atop you for a moment as he recovers from the ordeal, he slowly attends to the matter of pulling you free of his dick, knot audibly popping from your stretched hole, soon followed by a flood of the beast's thick, heady ejaculate thereafter, staining your exhausted behind";
		if dorroleint is 0:
			say ". Feeling particularly devious he revels in your pitiful state, aiming his still cum-oozing dick at your [if scalevalue of player < 4]head and upper torso to sully them[otherwise]torso to sully it[end if] as well.";
		otherwise:
			say ".";
	if dorroleint is 0:
		say "     '[one of]Ah[or]Right[or]Well[at random], [one of]then[or]now[at random]...' Clearly his stamina has recovered a fair bit, as he now struts cheerfully around you, [if scalevalue of player < 5]moving[otherwise]climbing[end if] over your head to offer his oozing, spent dick to your face, '[one of]Get to work, my [dorgr] would make for a poor cum slut if they didn't finish up[or]A good [dorgr] cleans up after their messes[or]My [dorgr] always finishes their job[at random]!' Still exhausted and sore yourself, you slowly oblige the dragon's indignant, prodding insistence. Tongue caressing the softened organ, your efforts pained by you already-stuffed state, the wanton tedium of the ritual exacerbated as your affections compel it to ooze further. After some time you manage to complete your task, though you yourself remain an embarrassing, cum-stained mess.";
	say "     '[one of]Well done[or]Many thanks[or]My thanks[at random], [one of]my [dorgr] treats their dragon well[or]I always enjoy my [dorgr]'s attention[or]I look forward to having more fun with my [dorgr] in the future[at random].' Following his adulation he [if dorroleint is 0]nonetheless appears rather fond of leaving you as a mess, letting you off to clean yourself[otherwise]helps to clean you off, tongue's slick affection shared with you[end if] before resting back at the campfire once more.";
	
to say dordom_2: [Dom Doram cunt sex]
	say "     Upon your [if dorroleint is 0]plea[otherwise]request[end if] for sex, the dragon gets up and struts around you in silence, barely regarding [if dorroleint is 0]your offering[otherwise]you[end if] before you're firmly pinned to the ground, immodest talons carefully exposing your ass before his discerning eyes.";
	say "     '[one of]Ah, yes[or]Hmm[or]Well then[at random], [if dorroleint is 0][one of]I think my [dorgr] is in dire need of good breeding[or]my [dorgr] clearly needs to be put in their place[or]I'm certain you're eager for me to have my way with you[at random][otherwise][one of]my [dorgr] looks so inviting[or]I'm certain my [dorgr] likes surprises[or][at random]I could stare at my [dorgr]'s ass like this for hours, but that would just be a waste[end if], [one of]don't you think[or]yes[or]wouldn't you agree[at random]?' He remarks before you're made watch on";
	if a random chance of 1 in 2 succeeds:
		say ", head descending upon you behind before you feel his tongue's wet[if dorroleint is 0], familiar[end if] careless against your exposed cunt[sfn]. [if dorroleint is 0]You beg for him to to thrust his slick organ upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your lips, it's not long before[end if] you feel it force its way past [if cunts of player > 1]the supple folds of one[otherwise]your supple folds[end if].";
		say "     Writhing, indignant intrusion enduring [if cunt length of player > 17]little[otherwise if cunt length of player > 11]only slight[otherwise]a fair bit of[end if] difficulty in its movement through your depths, eliciting a chain of gasps from you with every irreverent twitch it makes. He subjects you to this ritual for a [if dorroleint is 0]considerable[otherwise]fair[end if] amount of time, leaving your hole a slick[if dorroleint is 0] and dripping[end if] mess before he is finally satisfied[if dorroleint is 0], so aroused by this abuse that you could climax off of it alone, if not for the dragon's keen eye tempering restraint[end if].";
	otherwise:
		say ", spare talon engulfed within his maw before it is relinquished quickly thereafter, now-slick digit descending upon your behind, offering its[if dorroleint is 0] familiar[end if] careless against your exposed cunt[sfn]. [if dorroleint is 0]You beg for him to to force his finger upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your breath, it's not long before[end if] you feel it force its way past [if cunts of player > 1]the supple folds of one[otherwise]your supple folds[end if].";
		say "     Firm, curving intrusion contending with [if cunt length of player > 17]little[otherwise if cunt length of player > 11]only slight[otherwise]a fair bit of[end if] difficulty in its movement through your depths, eliciting a chain of gasps from you with every irreverent thrust it makes. He subjects you to this ritual for a [if dorroleint is 0]considerable[otherwise]fair[end if] amount of time, leaving your hole a slick and[if dorroleint is 0] significantly[end if] loosened up mess before he is finally satisfied[if dorroleint is 0], so aroused by this abuse that you could climax off of it alone, if not for the dragon's keen eye tempering restraint[end if].";
	if dorroleint is 0:
		say "     '[one of]Tsk[or]Oh[or]Hm[or]Ha[or]Heh[at random], [one of]my [dorgr] is quite desperate for their dragon's cock, aren't they[or]my [dorgr] is desperate to be bred, aren't they[or]Oh, if my [dorgr] could see all the ways they writhe, they'd say they look very silly, wouldn't they[at random]";
	otherwise:
		say "     '[one of]Mmm[or]Yes[or]Ah[at random], [one of]I think my [dorgr] likes that, don't they[or]That's just the opening act, my [dorgr], think they can last the whole way[or]I'm sure that will prepare my [dorgr] enough for what is to follow, wont it[at random]";
	say "?' Not granting you opportunity to reply, you're made to groan[if dorroleint is 0] needily[end if] as you feel tip of his flared cockhead against your already-stretched portal";
	if cunt length of player > 17:
		say ". No doubt certain that your sufficiently well-endowed to abide him with little difficulty, he--with a firm grunt--forces the whole of his cockhead in a single thrust, much to your [if dorroleint is 0]moaning approval[otherwise]groaning regard[end if] for such harsh treatment, quickly working the remainder in, up to his knot.";
	otherwise:
		say ". [if dorroleint is 0]Trusting in your ability to take him, he shows very little restraint in pushing his cockhead in, forcing tainted moans of intense pleasure out of you as it's squeezed through[otherwise]Taking great care not to hurt you, he slowly forces his cockhead in, causing you to groan in intense pleasure as it's inevitably squeezed through[end if] your tight entrance. With some additional effort he's able to work the remainder in, up to his knot.";
	if scalevalue of player < 4 and dorroleint is 0 and a random chance of 1 in 2 succeeds:
		say "     Briefly subjecting you to the dragon's ponderous weight of his impressive frame, you[if cocks of player > 0]r blatantly hard, [cock size desc of player] dick[smn] grind against the ground, staining it with your pre[otherwise if cunts of player > 1]r oozing, unattended cunt[sfn] stain the ground with your lubricant[otherwise] must endure the feel of his coarse scales as the grind against you[end if]. Not quite satisfied with the angle he's subjected his little toy to, he grabs a hold of you, keeping you in position as he shifts onto his side.";
		say "     '[one of]I'm certain my [dorgr] would prefer to be violated in the open air[or]Oh, my [dorgr] is exceptional at being used[or]I'm always afraid I'm going to lose my [dorgr] under there[at random].' He teases you, much in lieu of your moaning regard as he relegates you to a mere sex toy for his perverse desire, forcibly riding across the length of his throbbing, draconic organ[if scalevalue of player < 3], visibly bulging in order to contain him[end if]. Writhing against the dragon's scaled thigh as he grinds you across it, ";
		if cocks of player > 0 or cunts of player > 1:
			say "he can't help but further subject '[dorgr]' to this wanton affection, one of his talons moving to[if cocks of player > 1]stroke one of your exposed cocks, no doubt rendered hard from the[otherwise if cocks of player is 1]stroke your exposed cock, no doubt rendered hard from the[otherwise if cunts of player > 2]tease one of your dripping, unattended portals, no doubt aching for need following this[otherwise]tease your dripping, unattended portal, no doubt aching for need following this[end if] ordeal.";
		otherwise:
			say "he lowers his head down to meet you with his tongue's slick affection, heated breath washing over you, no doubt made increasingly shallow by his rising fervour.";
		say "     He grows increasingly determined to impale you with his knot. Your hole [if cunt length of player > 13]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out in lieu of each subsequent inch before you manage the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you quickly find your thighs slapping against the beast's voluminous sack with a rapid succession.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out,";
			if cocks of player > 0:
				say "cock's sputtering forcibly erratic against the [if cunt length of player > 13]somewhat[otherwise]immensely[end if] straining intrusion, staining the dragon's thigh and the ground with your seed";
			otherwise:
				say "Pussy's gushing forcibly strained against the immense intrusion, staining the dragon's thigh and the ground with your sexual fluids";
			say ". Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout flooding your womb, [if scalevalue of player < 3]belly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you may contain not a drop more[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your womb, [if scalevalue of player < 3]belly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you may contain naught a drop more[end if]. It's enough to make you cry out in your own climax, ";
			if cocks of player > 0: 
				say "cock's sputtering forcibly erratic against the [if cunt length of player > 13]somewhat[otherwise]immensely[end if] straining intrusion, staining the dragon's thigh and the ground with your seed.";
			otherwise:
				say "Pussy's gushing forcibly strained against the immense intrusion, staining the dragon's thigh and the ground with your sexual fluids.";
		say "     Shifting back onto his feet, he offers slight care in pulling you free of his dick, knot audibly popping from your stretched hole before planting you on the ground once more, soon followed by a flood of the beast's thick, heady ejaculate thereafter. Feeling particularly devious, he revels in your pitiful state, aiming his still cum-oozing dick at your head and upper torso to sully them as well.";
	otherwise:
		say "     Forced to abide the dragon's ponderous weight of his impressive frame, [if scalevalue of player < 4]he nonetheless takes considerable care to not crush or suffocate you under him,[otherwise]the[end if] overwhelming heat of his rising fervor cascading down upon you. You can't help but moan as you[if cocks of player > 1]r blatantly hard, [cock size desc of player] dicks grind against the ground, staining it with your pre[otherwise if cocks of player is 1]r blatantly hard, [cock size desc of player] dick grinds against the ground, staining it with your pre[otherwise if cunts of player > 2]r oozing, unattended cunts stain the ground with your lubricant[otherwise if cunts of player > 1]r oozing, unattended cunt stains the ground with your lubricant[otherwise] feel the dragon reaching down to offer his tongue's slick affection, heated breath washing over you in tandem with his body's[end if].";
		say "     '[one of]Hnf[or]Mnf[or]Mmf[or]Ah[at random],";
		if dorroleint is 0:
			say "[one of]I'm going to enjoy ruining my [dorgr][or]my [dorgr] will be walking funny after this[at random]";
		otherwise:
			say "[one of]my [dorgr] might walk funny for a little while after this[or]I'm going to fuck my [dorgr] silly[at random]";
		say "!' His remark strained against his increasing fervour, each powerful thrust sending a tremor through your[if scalevalue of player < 4] diminutive[end if] body. He grows increasingly determined to impale you with his knot. Your hole [if cunt length of player > 13]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out in lieu of each subsequent inch before you garner the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you quickly feel his voluminous sack slap against your [if cock width of player > 0 and cockname of player is not listed in infections of internallist]own[otherwise if scalevalue of player < 4]thighs[otherwise]crotch[end if] in rapid succession.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out, ";
			if cocks of player > 0:
				say "cock's sputtering forcibly erratic against the [if cunt length of player > 13]somewhat[otherwise]immensely[end if] straining intrusion, staining the ground with your seed";
			otherwise:
				say "pussy's gushing forcibly strained against the immense intrusion, staining the ground with your sexual fluids";
			say ". Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing his crotch firm against you one final time before roaring out, gout after overwhelming, continuous gout flooding your womb, [if scalevalue of player < 3]belly bloating to abide his load[otherwise if scalevalue of player is 3]quickly leaking from your stuffed hole when you may contain not a drop more[otherwise]dragon's carnal warmth washing over you[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces his crotch firm against you a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your bowels, [if scalevalue of player < 3]belly bloating to abide his load[otherwise if scalevalue of player is 3]quickly leaking from your stuffed hole when you may contain not a drop more[otherwise]carnal warmth washing over you[end if]. It's enough to make you cry out in your own climax, ";
			if cocks of player > 0:
				say "cock's sputtering forcibly erratic against the [if cunt length of player > 13]somewhat[otherwise]immensely[end if] straining intrusion, staining you and the ground with your seed.";
			otherwise:
				say "Pussy's gushing forcibly strained against the immense intrusion, staining you and the ground with your sexual fluids.";
		say "     Panting atop you for a moment as he recovers from the ordeal, he slowly attends to the matter of pulling you free of his dick, knot audibly popping from your stretched hole, soon followed by a flood of the beast's thick, heady ejaculate thereafter, staining your exhausted behind";
	if dorroleint is 0:
		say ". Feeling particularly devious he revels in your pitiful state, aiming his still cum-oozing dick at your [if scalevalue of player < 4]head and upper torso to sully them[otherwise]torso to sully it[end if] as well";
	say ".";
	if dorroleint is 0:
		say "     '[one of]Ah[or]Right[or]Well[at random], [one of]then[or]now[at random]...' Clearly his stamina has recovered a fair bit, as he now struts cheerfully around you, [if scalevalue of player < 5]moving[otherwise]climbing[end if] over your head to offer his oozing, spent dick to your face, '[one of]My [dorgr] wouldn't abide leaving their dragon dirty[or]My [dorgr]'s work isn't quite done yet[or]It'd be very inappropriate if my [dorgr] didn't maintain their dragon[at random]!' Still exhausted and sore yourself, you slowly oblige the dragon's indignant, prodding insistence. Tongue caressing the softened organ, your efforts pained by you already-stuffed state, the wanton tedium of the ritual exacerbated as your affections compel it to ooze further, undoing your prior work. After some time you manage to complete your task, though you yourself remain an embarrassing, cum-stained mess.";
	say "     '[one of]Well done[or]Many thanks[or]My thanks[at random], [one of]my [dorgr] treats their dragon well[or]I always enjoy my [dorgr]'s attention[or]I look forward to having more fun with my [dorgr] in the future[at random].' Following his adulation he [if dorroleint is 0]nonetheless appears rather fond of leaving you as a mess, letting you off to clean yourself[otherwise]helps to clean you off, tongue's slippery affection shared with you[end if] before resting back at the campfire once more.";

to say dordom_3: [Dom Doram oral sex]
	say "     Upon [if dorroleint is 0]gesturing to[otherwise]courting[end if] Doran for sex, he briefly ponders what he might subject you to, scratching his chin as he lays there before finally coming to a conclusion. He stands upright, rigid, poised silhouette partially outlined against the [if daytimer is day]creeping daylight[otherwise]fire[end if].";
	if dorroleint is 0:
		say "     '[one of]I think my [dorgr]'s best suited for sucking off their dragon[or]My dick's eager for my [dorgr]'s attention[or]I know my [dorgr] longs for a taste of their dragon[at random]";
	otherwise:
		say "     '[one of]I think it's only fair that my [dorgr] offers me some oral satisfaction[or]I would want my [dorgr] to grant my dick some much-needed attention[or]I long for the touch of my [dorgr]'s lips[at random]";
	say ".' With his [if dorroleint is 0]command appointed[otherwise]request made[end if] you approach him,[if scalevalue of player > 3]head [end if][if dorroleint is 0]eagerly [end if] descending upon the dragon's scaled undercarriage. Toned frame heaving with each excited breath, you're given ample view of the beast's[if dorrolereg is 0] enticing[end if] cock, already peeking from it's sheath with a wanton anticipation. [if dorrolereg is 0]Immediately[otherwise]Soon enough[end if] your lips descend upon its exposed head, tongue's affection coaxing its arrival further, much to his moaning approval.";
	say "     '[one of]Mmm[or]Ah[or]Yes[at random], [if dorroleint is 0][one of]my [dorgr] is such a good little slut[or]my [dorgr] can't resist the sight of dick[or]I don't think anybody would make a better pet than my [dorgr][at random][otherwise][one of]my [dorgr]'s tongue feels so nice[or]I wish only for more, my [dorgr][or]please don't stop, my [dorgr][at random][end if].' Compelled to advance your endeavours, your [if scalevalue of player > 3]tongue shifts to attend[otherwise]digits rise to caress[end if] his ponderous, scaled ballsack, further inciting his dick's countenance, until naught remains unexposed before you";
	if scalevalue of player > 3:
		say ". [if dorroleint is 0]Entranced by the tool, you're inclined to immediately engulf it within your maw's confines, [otherwise]Lips slowly enveloping the head, you descend upon its length, gradually building a motion until you're eagerly[end if] bobbing against";
	otherwise:
		say ". [if scalevalue of player < 3]Much too small to fit that big thing into your mouth, you ultimately relegate yourself to letting your hands and tongue do all the hard work, pumping[otherwise]Lips enveloping the head, it can barely fit within your hold, relegating most of your work to your hands as they pump[end if]";
	say "the member with a wild fervour. Your senses are flooded with the taste and smell of the dragon's thick and heady sexual fluids as they drool from his organ[if dorroleint is 0], more than enough incentive to fuel your hunger further[end if].";
	say "     You can [if scalevalue of player > 3]feel his heaving body against you[otherwise]watch his heaving body[end if] as the dragon's breath becomes increasingly shallow, your own rising lust made very much apparent, [if cocks of player > 0][cock size desc of player] cock[smn] driven erect, aching[otherwise if cunts of player > 0]cunt[sfn] aching[end if] for attention";
	if scalevalue of player > 3:
		if dorroleint is 0:
			say ". Detecting your need, the dragon grants himself this opportunity to reciprocate, head moving to offer his tongue's affection in return, slick appendage caressing [if cocks of player > 1]one of them[otherwise if cocks of player > 0]it[otherwise if cunts of player > 1]them[otherwise]it[end if]; however, his endeavours are somewhat reserved, clearly meant to tease you rather than offer any proper compensation.";
		otherwise:
			say ". Detecting your need, the dragon grants himself this opportunity to reciprocate, head moving to offer his tongue's affection in return, scaled [if cocks of player > 1]maw enveloping one of them[otherwise if cocks of player > 0]maw enveloping it[otherwise if cunts of player > 1]lips embracing one of them[otherwise]lips embracing it[end if].";
		say "     'M-[dorgr]...!' Doran[if dorroleint is not 0]'s remark muffled against your flesh as you[otherwise]mutters under his breath before your affections[end if] are richly rewarded, the creature suddenly going rigid as your maw is flooded with surge after successive, voluminous surge of the beast's carnal batter, [if dorroleint is 0]driven by your overwhelming need to consume as much as you can, the dragon's persistent teasing eventually enough[otherwise]the dragon's reciprocation more than enough[end if] to drive you to bliss, [if dorroleint is 0]sexual fluids left as a puddle on the floor[otherwise]eagerly consuming your emergent sexual fluids[end if].";
	otherwise:
		if dorroleint is 0:
			say "; however, intent on giving the beast your undivided attention, you continue to eagerly jerk him at the expense of your own, overwhelming need.";
		otherwise:
			say ". Succumbing to your own, overwhelming need you relinquish one of your hands to desperately [if cocks of player > 0]jerk yourself off[otherwise]fondle yourself[end if], attention now split between your own need and continuing to pump the dragon's tool.";
		say "     'M-[dorgr]...!' Doran mutters under his breath before your affections are richly rewarded, the creature suddenly going rigid as you're painted with surge after successive, voluminous surge of the beast's carnal batter. [if dorroleint is 0]Driven by your voracious need to consume as much as you can, you are made dizzy by the overwhelming amount of seed he offers you, quickly outpacing your ability, sputtering out of your mouth and down your [bodytype of player] frame[otherwise]This particularly lewd circumstance more than enough to drive you to bliss, though the overwhelming amount of seed he offers quickly overwhelms you, sputtering out of your mouth and down your frame, mixing with your own sexual fluids[end if].";
	if dorroleint is 0:
		say "     [if scalevalue of player > 3]It takes awhile for both of you to recover. You pull free of the softening tool, but the dragon isn't done with you yet, prodding it[otherwise]Taking awhile for both of you to recover, the dragon isn't done with you yet, prodding the softened tool[end if] against your face with a rather bold lack of reverence.";
		say "     '[one of]Oh[or]Hm[or]Now then[at random], my [dorgr], [one of]it'd be improper to not clean up after your mess[or]a good toy finishes the job[or]your dragon won't let you go until you lick him clean[at random].' Still dazed by the prior experience, you need a second before your wanton submission compels you to oblige, tongue caressing along the length of the sated, dripping dick";
		if scalevalue of player > 3:
			say ". Thankfully, it doesn't take long polish the cheeky little lizard's pole, and it's soon positively spotless.";
			say "     '[one of]Ah[or]Yes[or]Excellent[at random], [one of]my [dorgr] makes such a good cum slut[or]my [dorgr] is so obedient[or]I don't think I'd ever be as good at sucking cock as my [dorgr][at random]!' Clearly satisfied, he returns to the campfire, allowing you a moment to clear your head before going off.";
		otherwise if scalevalue of player < 3 and a random chance of 1 in 2 succeeds:
			say ". It quickly becomes apparent, however, that there's just too much to deal with, the cheeky little lizard just oozes more any time you clean part of him off, following up with condescending taunts for your slowness. So intent you become that you don't realize it when he's gone hard a second time, your attempts at fastidiousness only driving him to another orgasm! It might not be as much as the last, and you're sure he's right spent now, but you're absolutely exhausted; you can't do any more.";
			say "     '[one of]Tsk[or]Hmph[at random], [one of]my [dorgr] is such a pitiful, tiny slut that can't even clean their messes[or]I feel like I have to teach my [dorgr] how to properly clean a dick[or]I may need to think of a way to punish my [dorgr][at random]...' Chastise you though he may, it's very clear he got a lot out of your floundering, and does thankfully let you off, granting you the opportunity to clean yourself off and recover from the ordeal proper.";
		otherwise:
			say ". It takes a fair while to properly clean him, however, the cheeky little lizard occasionally oozing more from your continued affections, frequently setting you back before you finally finish, dick positively spotless... Though the same can't be said for you.";
			say "     '[one of]Hm[or]Yes[or]Excellent[at random], [one of]my [dorgr] makes such a good little slut[or]my [dorgr] is so obedient[or]I don't think I'd ever be as good at sucking cock as my [dorgr][at random]!' Clearly satisfied, he returns to the campfire, allowing you to clean yourself off and recover from the whole ordeal.";
	otherwise:
		say "     [if scalevalue of player > 3]Taking a moment for both of you to recover from the ordeal, the dragon takes his time cleaning you of the mess you've made whilst attending to him[otherwise]Taking a moment for both of you to recover from the ordeal, the dragon eventually moves out from over you, quickly meeting you again with his tongue's affection, cleaning you of the mess you've made until you're slick only with that of the dragon's saliva[end if].";
		say "     '[one of]Ah[or]Yes[or]Mm[at random], [one of]my [dorgr] treats their dragon well[or]I don't think a dragon could be happier with any other [dorgr][or]my [dorgr] certainly knows how make a mess of things[at random]!' His regard jovial in lieu of your completed task, he sets back down next to the campfire, allowing you to recover and go about your business.";

to say dorsub_1: [Sub Doram being fucked]
	say "     You decide to [if dorroleint is 4]order[otherwise]ask[end if] the dragon to turn away and offer himself. Eager to please, he wheels around, [if scalevalue of player < 4]lowering himself to the ground before [end if]hiking his tail over to leave your entry unexposed. Shapely ass revealed before you, he's already quite aroused by the prospect of your imminent abuse, partially exposed tool staining the dirt with its pre.";
	say "     '[one of]Ah[or]Oh[or]Mm[or]Very well[at random], [dorgr], [if dorroleint is 4][one of]completely ruin me[or]please abuse me[or]I ache for them[at random][otherwise][one of]don't hold back[or]I'm ready for anything they've got[or]I'm all theirs[at random][end if].' You expose your [cock size desc of player] dick[smn] before him, [if cock length of player > 17 or dorroleint is 4]a very eager, needy look in his eyes at the prospect of getting[otherwise]clearly eager to be[end if] impaled by [if cocks of player > 1]one of those things[otherwise]such a thing[end if].";
	say "     Approaching the dragon, you more rigorously invoke your arousal by grinding[if cocks of player > 1] one of[end if] your hardening shaft[smn] between the cheeks of his well-toned rear, scales immaculate and smooth under your touch. Slowly, you sink the head of[if cocks of player > 1]one of [end if] your [if cock length of player > 17]impressive [end if]tool[smn] past his fleshy, yielding anal ring, eliciting from the beast a series of approving moans at your initial pace.";
	if cock length of player > 17:
		say "     Very quickly, his supple hole becomes increasingly strained to abide your member, but this only entices the beast to coax you on. 'Further, [dorgr], further!' he would reply, and with a bit of work and pre's slick lubrication his tight tailpipe grows increasingly abiding to your sizeable tool[if cockname of player is listed in infections of knotlist], up to the knot[end if], granting you the freedom to start fucking him proper.";
	otherwise:
		say "     He shows absolutely no difficulty in abiding your member[if cockname of player is listed in infections of knotlist], even tying its knot almost immediately[end if]. He doesn't seem to mind your ease, and is more inclined to revel in your exploitation of his form, supple abyss almost overwhelming in how assertively it milks the organ. 'Harder, [dorgr], harder!' He would [if dorroleint is 4]plead[otherwise]demand[end if], greedy for your abuse, as you're compelled to start fucking him proper.";
	say "     [If scalevalue of player > 3]Body visibly rocking against each successive thrust[otherwise]Larger body barely moved by[end if] each successive thrust, [if cockname of player is not listed in infections of internallist]your balls audibly slap against him, a wordless remark on[otherwise]overtaken by[end if] your rising, wanton fervor. Your embrace on the reptile grows increasingly slick, coated by a thin veneer of sweat.";
	say "     '[one of]P-please[or]M-more[or]A-ah[at random], [if dorroleint is 4][one of]use me like the s-slutty cum dumpster I am[or]fill me with M-[dorgr]'s cum[or]I n-need [dorgr]'s cum[at random][otherwise][one of]M-[dorgr][or]d-don't hold back, [dorgr][or]don't s-stop, [dorgr][at random][end if]...!' At the very cusp of your bliss, you maintain enough control to determine if you'd like to pull out at the last second, shall you? Else you will give the greedy dragon what he wants.";
	if player consents:
		say "     Before you are completely overtaken, you wrench your [cock size desc of player] cock from the beast, quickly jacking it[if cocks of player > 2] and one of its brothers[otherwise if cocks of player is 2] and its brother[end if] off before you cry out, coating his ass[if scalevalue of player > 3] and back[end if] with [if cock width of player > 24]voluminous [end if]gouts of your thick, virile seed[if cock width of player > 24]; so substantial your payload that you render the beast a shameful, coated mess of cum[end if]. It takes you some time to recover, eventually [if scalevalue of player < 4]climbing[otherwise]pulling yourself[end if] off. The dragon lays there for a bit, panting himself in the wake of being ravaged. He eventually does crawl back to his feet, looking satisfied";
		if dorroleint is 4:
			say ". You, on the other hand, are a bit of a mess. Command your dragon to clean you off?";
			if player consents:
				say "     You gesture to your oozing, cum-stained cock[smn], Doran immediately picking up on your command and moving up to you, slick tongue quick to slather [if cocks of player > 1]them[otherwise]it[end if] with attention.";
				say "     '[one of]Mmm[or]Ah[or]Yes[at random]... [if cock width of player > 24][one of][dorgr] made such a big mess, this pleases me[or][dorgr] offers me so much[or]Such a messy [dorgr][at random][otherwise][one of]I love the taste of [dorgr][or]it pleases me to clean [dorgr][or]I can't get enough of [dorgr][at random][end if].' Intermittent praise offered up between cleaning you off, the dragon takes great pains to caress along your[if cock length of player > 17]substantial [end if] length, until you have naught to offer him to clean... Though he himself remains a sullied[if cock length of player > 17], sore[end if]  mess.";
		otherwise:
			say ".";
	otherwise:
		say "     Succumbing to your overwhelming urges, [if cockname of player is listed in infections of knotlist and cock length of player > 17]you make one final push, tying yourself with the beast before you cry out[otherwise if cockname of player is listed in infections of knotlist]you soon cry out, tying your cock within his fleshy abyss one last time[otherwise]you soon cry out, hilting your cock within his  fleshy abyss[end if], gouts of your thick, [if cock width of player > 24]voluminous[otherwise]virile[end if] seed flooding his depths[if cocks of player > 2], its brothers staining his behind and crotch[otherwise if cocks of player is 2], its brother staining his behind and crotch[end if]";
		if cock width of player > 24:
			say ". So substantial your payload that the beast visibly bloats to abide it, much to his twisted approval";
		say ". It takes you some time to recover, eventually [if scalevalue of player < 4]climbing[otherwise]pulling yourself[end if] off. The dragon lays there for a bit, panting himself in the wake of being ravaged. He eventually does crawl back to his feet, looking satisfied";
		if dorroleint is 4:
			say ". You, on the other hand, are a bit of a mess. Command your dragon to clean you off?";
			if player consents:
				say "     You gesture to your oozing, cum-stained cock[smn], Doran immediately picking up on your command and moving up to you, slick tongue quick to slather [if cocks of player > 1]them[otherwise]it[end if] with attention.";
				say "     '[one of]Mmm[or]Ah[or]Yes[at random]... [if cock width of player > 24][one of][dorgr] made such a big mess, this pleases me[or][dorgr] offers me so much[or]Such a messy [dorgr][at random][otherwise][one of]I love the taste of [dorgr][or]it pleases me to clean [dorgr][or]I can't get enough of [dorgr][at random][end if].' Intermittent praise offered up between cleaning you off, the dragon takes great pains to caress along your[if cock length of player > 17]substantial [end if] length, until you have naught to offer him to clean... Though the same can't be quite be said for himself, a sweat-soaked[if cock length of player > 17], sore,[end if] and cum-leaking mess.";
		otherwise:
			say ".";
	say "     '[one of]My thanks[or]Many thanks[or]My appreciation[at random], [dorgr], [if dorroleint is 4][one of]I long for their further abuse[or]please don't be afraid to use their dragon again[or]their treatment brings me immense pleasure[at random][otherwise][one of]I hope they enjoyed themself[or]that was fun[or]I look forward to the next bout[at random][end if].' Your satisfaction met, he goes back off on his own, cleaning up the devastation you have wrought.";

to say dorsub_2: [Sub Doram cock oral]
	say "     In silence you set yourself down, exposing your [cock size desc of player], [cock of player] dick[smn] before the dragon. [if dorroleint is 4]Immediately he is upon you, implicitly understanding what you would have him do[otherwise]Gesturing him over he makes his way to you, clearly eager to please[end if].";
	say "     '[if dorroleint is 4][one of][dorgr], nothing would please their dragon more[or][dorgr], their dragon longs to taste them[or]I see [dorgr] is in need of me[at random][otherwise][one of]I'd be happy to oblige [dorgr][or][dorgr]'s very eager for my affection, I see[or]it certainly looks like [dorgr]'s excited to see me[at random][end if]...' Any further discourse the dragon might muster suppressed by your offering, scaled lips parting to engulf [if cocks of player > 2]the head of one of them, taloned hand moving to caress one of its brothers[otherwise if cocks of player is 2]the head of one of them, taloned hand moving to caress its brother[otherwise]its head[end if]. Humid breath washing over your lower torso, [if dorroleint is 4]he's rather gentle in this initial, oral embrace, no doubt illustrative of a particular reverence for your flesh[otherwise]you abide his thick tongue's initial, teasing query[end if].";
	say "     '[one of]Oh[or]Hm[or]Ah[at random], ";
	if dorroleint is 4: 
		say "[if cock length of player > 17][dorgr] [one of]never ceases to impress me with their size[or]is so very big and intimidating[or]has such enviable assets[at random][otherwise][one of][dorgr] never ceases to impress me with their taste[or]I hope I can satisfy [dorgr][or]what [dorgr] offers me is such a treat[at random][end if]";
	otherwise:
		say "[if cock length of player > 17][dorgr] [one of]is quite the challenging prospect[or]certainly tests the limits of my ability[or]makes me quite jealous of their size[at random][otherwise][one of]I hope [dorgr] is comfortable[or][dorgr] is in for some fun now[or][dorgr] is going to love this[at random][end if]";
	say "!' Relenting his attendance to offer this remark, ";
	if dorroleint is not 4 or (dorroleint is 4 and a random chance of 1 in 3 succeeds):
		say "he continues on, '...Though, [if dorroleint is 4][one of]I must beg for the opportunity to satisfy myself[or]they make me ache with need[at random][otherwise][one of]my own need is overwhelming[or]this task leaves me quite aroused[at random][end if], might they grant me this chance?' You imagine he'd not be as capable of pleasuring you with his attention split, shall you oblige his request? Otherwise you'll ensure his attention remains solely on you.";
		if player consents:
			say "     You decide to allow him this opportunity, to which he [if dorroleint is 4]gratefully[otherwise]eagerly[end if] obliges, hand moving [if cocks of player > 1]away from your spare cock to attend his own[otherwise]over to attend his own cock[end if] before his maw envelops your flesh a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player < 17 and dorroleint is 4], more than eager to hilt your impressive dick within his supple confines, at expense to his own comfort[otherwise if cock length of player < 17], frequently pushing the limits of his endurance to better engulf your impressive dick[end if]. As his need for self-pleasure rises, so does the pace in which he bobs against you become erratic, though it's more than sufficient in bringing you closer to bliss.";
			say "     You're just about to blow! You can afford to pull out and ejaculate on the dragon's unsuspecting face, should you? Else you will give him what he clearly wants.";
			if player consents:
				say "     Right at the very last second, you pull your dick free of the beast, your organ[smn] soon erupting thereafter upon his briefly confused visage. Trapped in the throes of his own bliss, he can only regard in demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the dragon with your [cum load size of player] load. When all is said is done he's a shameful sight, wallowing in a puddle of his own spunk[if dorroleint is 4], tongue desperate to lick clean yours from his face[end if].";
				say "     '[one of]Oh[or]Ah[at random], [if dorroleint is 4][one of]such is [dorgr]'s punishment for my weak will[or][dorgr]'s dragon deserved that[at random][otherwise][one of][dorgr]'s a sneaky one[or]quite the trick there, [dorgr][or][dorgr] certainly got me there[at random][end if].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own shameful state.";
			otherwise:
				say "     Soon thereafter your [if cocks of player > 1]dicks erupt[otherwise]dick erupts[end if], flooding the beast's maw with your virile seed as he's caught between swallowing down your [cum load size of player] payload and the throes of his own bliss, allowing you watch the dragon's writhing, twitching form as [if cocks of player > 2]your unattended organs stain the ground, mixing with[otherwise if cocks of player is 2]your unattended organ stains the ground, mixing with[otherwise]he wallows in a puddle of[end if] his own spunk.";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, no doubt to attend to his own shameful state.";
		otherwise:
			say "     You choose to disallow such an act, to which he [if dorroleint is 4]quickly nods in agreement, clearly trying to disavow making the request in the first place before his maw envelops[otherwise]concedes with little further thought on the matter, maw enveloping[end if] your cock a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player < 17 and dorroleint is 4], more than eager to hilt your impressive dick within his supple confines, at expense to his own comfort[otherwise if cock length of player < 17], frequently pushing the limits of his endurance to better engulf your impressive dick[end if]. He retains a very methodical, calculated pace,[if cocks of player > 1] occasionally switching to the other dick in his grip to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
			if dorroleint is 4:
				say "     You're just about to blow! You can command him to relinquish his hold on you and subsequently ejaculate on the dragon's obedient face, should you? Else you will give him what he clearly wants.";
				if player consents:
					say "     Words strained under the weight of your passion, you order the beast to let go, doing as you command just before your organ[smn] erupt upon his obliging visage. Regarding in demeaning act with a wanton embrace, he patiently abides being so irreverently sullied by your [cum load size of player] load. When all is said is done he's an embarrassing mess, eagerly licking his face of your spunk.";
					say "     '[one of]Oh[or]Ah[at random], [one of]I am unworthy of [dorgr]'s countenance[or][dorgr]'s dragon obliges being shamed so[at random].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own shameful state.";
				otherwise:
					say "     It's not long before you cry out, organ[smn] erupting against his skilled tongue[if cocks of player > 1] and talon[end if]. With a disciplined determination, he milks you dry of every last drop of your [cum load size of player] payload, [if cocks of player > 2]talon bunching up at your second dick's head that he might lick it clean when he concludes with the first, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your second dick's head that he might lick it clean when he is concludes with the first[otherwise]licking it clean once you might offer no more for him[end if][if cock width of player > 24], he doesn't seem even remotely phased by the amount you offer him; rather, his regard is measurably more jovial over the offering[end if].";
					say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";
			otherwise:
				say "     It's not long before you cry out, organ[smn] erupting against his skilled tongue[if cocks of player > 1] and talon[end if]. With a disciplined determination, he milks you dry of every last drop of your [cum load size of player] payload, [if cocks of player > 2]talon bunching up at your second dick's head that he might lick it clean when he concludes with the first, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your second dick's head that he might lick it clean when he is concludes with the first[otherwise]licking it clean once you might offer no more for him[end if][if cock width of player > 24], he doesn't seem even remotely phased by the amount you offer him; rather, his regard is measurably more jovial over the offering[end if].";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";	
	otherwise:
		say "he soon reverts back into obedience thereafter, maw enveloping your cock a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player < 17 and dorroleint is 4], more than eager to hilt your impressive dick within his supple confines, at expense to his own comfort[otherwise if cock length of player < 17], frequently pushing the limits of his endurance to better engulf your impressive dick[end if]. He retains a very methodical, calculated pace,[if cocks of player > 1] occasionally switching to the other dick in his grip to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
		if dorroleint is 4:
			say "     You're just about to blow! You can command him to relinquish his hold on you and subsequently ejaculate on the dragon's obedient face, should you? Else you will give him what he clearly wants.";
			if player consents:
				say "     Words strained under the weight of your passion, you order the beast to let go, doing as you command just before your organ[smn] erupt upon his obliging visage. Regarding in demeaning act with a wanton embrace, he patiently abides being so irreverently sullied by your [cum load size of player] load. When all is said is done he's an embarrassing mess, eagerly licking his face of your spunk.";
				say "     '[one of]Oh[or]Ah[at random], [one of]I am unworthy of [dorgr]'s countenance[or][dorgr]'s dragon obliges being shamed so[at random].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own shameful state.";
			otherwise:
				say "     It's not long before you cry out, organ[smn] erupting against his skilled tongue[if cocks of player > 1] and talon[end if]. With a disciplined determination, he milks you dry of every last drop of your [cum load size of player] payload, [if cocks of player > 2]talon bunching up at your second dick's head that he might lick it clean when he concludes with the first, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your second dick's head that he might lick it clean when he is concludes with the first[otherwise]licking it clean once you might offer no more for him[end if][if cock width of player > 24], he doesn't seem even remotely phased by the amount you offer him; rather, his regard is measurably more jovial over the offering[end if].";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";
		otherwise:
			say "     It's not long before you cry out, organ[smn] erupting against his skilled tongue[if cocks of player > 1] and talon[end if]. With a disciplined determination, he milks you dry of every last drop of your [cum load size of player] payload, [if cocks of player > 2]talon bunching up at your second dick's head that he might lick it clean when he concludes with the first, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your second dick's head that he might lick it clean when he is concludes with the first[otherwise]licking it clean once you might offer no more for him[end if][if cock width of player > 24], he doesn't seem even remotely phased by the amount you offer him; rather, his regard is measurably more jovial over the offering[end if].";
			say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";

to say dorsub_3: [Sub Doram cunt oral]
	say "     In silence you set yourself down, exposing your [cunt size desc of player]    cunt[sfn] before the dragon. [if dorroleint is 4]Immediately he is upon you, implicitly understanding what you would have him do[otherwise]Gesturing him over he makes his way to you, clearly eager to please[end if].";
	say "     '[if dorroleint is 4][one of][dorgr], nothing would please their dragon more[or][dorgr], their dragon longs to taste them[or]I see [dorgr] is in need of me[at random][otherwise][one of]I'd be happy to oblige [dorgr][or][dorgr]'s very eager for my affection, I see[or]it certainly looks like [dorgr]'s excited to see me[at random]...' Any further discourse the dragon might muster suppressed by your offering, scaled lips parting to embrace [otherwise if cunts of player > 1]one of your supple, nether lips[otherwise]your supple, nether lips[end if],[if cocks of player > 1] taloned hands moving to caress one of your exposed dicks[otherwise if cocks of player is 1] taloned hand moving to caress your exposed dick[otherwise if cunts of player > 2] taloned hand moving to caress one of its sisters[otherwise if cunts of player is 2] taloned hand moving to caress its sister[end if]. Humid breath washing over your lower torso, [if dorroleint is 4]he's particularly gentle in this initial, oral embrace, no doubt illustrative of a particular reverence for your flesh[otherwise]you abide his thick tongue's initial, teasing query[end if].";
	say "     '[one of]Oh[or]hm[or]Ah[at random], ";
	if dorroleint is 4: 
		say "[if cunt length of player > 17][dorgr] [one of]has so much to offer their dragon[or]offers quite an intimidating feast of flesh[or]has such enviable assets[at random][otherwise][one of][dorgr] never ceases to impress me with their taste[or]I hope I can satisfy [dorgr][or]what [dorgr] offers me is such a treat[at random][end if]";
	otherwise:
		say "[if cunt length of player > 17][dorgr] [one of]is quite the challenging prospect[or]certainly isn't unwilling to test my ability[or]is quite the impressive offering[at random][otherwise][one of]I hope [dorgr] is comfortable[or][dorgr] is in for some fun now[or][dorgr] is going to love this[at random][end if]";
	say "!' Relenting his attendance to offer his remark, ";
	if dorroleint is not 4 or (dorroleint is 4 and a random chance of 1 in 3 succeeds):
		say "he continues on, '...Though, [if dorroleint is 4][one of]I must beg for the opportunity to satisfy myself[or]they make me ache with need[at random][otherwise][one of]my own need is overwhelming[or]this task leaves me quite aroused[at random][end if], might they grant me this chance?' You imagine he'd not be as capable of pleasuring you with his attention split, shall you oblige his request? Otherwise you'll ensure his attention remains solely on you.";
		if player consents:
			say "     You decide to allow him this opportunity, to which he [if dorroleint is 4]gratefully[otherwise]eagerly[end if] obliges, hand moving [if cocks of player > 0]away from your spare cock to attend his own[otherwise if cunts of player > 1]away from your spare portal to attend his previously neglected cock[otherwise]over to attend his previously neglected cock[end if] before his maw envelops your flesh a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to descend upon your depths, he exhibits a voracious desire to satisfy your need [if cunt length of player > 17 and dorroleint is 4], more than eager to push the limits of how far he can thrust his tongue upon you, at expense to his own comfort[otherwise if cock length of player > 17], frequently pushing the limits of his ability to thrust his tongue upon you[end if]. As his need for self-pleasure rises, so does the pace in which he bobs against you become erratic, though it's more than sufficient in bringing you closer to bliss.";
			if cocks of player > 0:
				say "     You're just about to blow! You can afford to pull yourself free and ejaculate on the dragon's unsuspecting face, should you? Else you will give him what he clearly wants.";
				if player consents:
					say "     Right at the very last second, you pull yourself of the beast, your dick[smn] soon erupting thereafter upon his briefly confused visage. Trapped in the throes of his own bliss, he can only regard in demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the dragon with your [cum load size of player] load. When all is said is done he's a shameful sight, wallowing in a puddle of his own spunk[if dorroleint is 4], tongue desperate to lick clean yours from his face[end if].";
					say "     '[one of]Oh[or]Ah[at random], [if dorroleint is 4][one of]such is [dorgr]'s punishment for my weak will[or][dorgr]'s dragon deserved that[at random][otherwise][one of][dorgr]'s a sneaky one[or]quite the trick there, [dorgr][or][dorgr] certainly got me there[at random][end if].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own, embarrassing state.";
				otherwise:
					say "     Soon thereafter you cry out, [if cocks of player > 1]unattended dicks erupting impotently into the open air as your stuffed pussy tightens[otherwise if cocks of player is 1]unattended dick erupting impotently into the open fair as your stuffed pussy tightens[otherwise]your stuffed pussy tightening[end if] against the beast's twitching intrusion, caught between feasting upon your sexual fluids and the throes of his own bliss, allowing you watch the beast's writhing, twitching form as he wallows in a puddle of his own spunk.";
					say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, no doubt to attend to his own shameful state.";
			otherwise:
				say "     Soon thereafter you cry out, [if cocks of player > 1]unattended dicks erupting impotently into the open air as your stuffed pussy tightens[otherwise if cocks of player is 1]unattended dick erupting impotently into the open fair as your stuffed pussy tightens[otherwise]your stuffed pussy tightening[end if] against the beast's twitching intrusion, caught between feasting upon your sexual fluids and the throes of his own bliss, allowing you watch the beast's writhing, twitching form as he wallows in a puddle of his own spunk.";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, no doubt to attend to his own shameful state.";
		otherwise:
			say "     You choose to disallow such an act, to which he [if dorroleint is 4]quickly nods in agreement, clearly trying to disavow making the request in the first place before his maw envelops[otherwise]concedes with little further thought on the matter, maw enveloping[end if] your flesh a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to descend upon your depths, he exhibits a voracious desire to satisfy your need[if cunt length of player > 17 and dorroleint is 4], more than eager to push the limits of how far he can thrust his tongue upon you, at expense to his own comfort[otherwise if cunt length of player > 17], frequently pushing the limits of his ability to thrust his tongue upon you[end if]. He retains a very methodical, calculated pace,[if cocks of player > 0] occasionally switching to your dick in his grip to keep you sensitive to his tongue's influence,[otherwise if cunts of player > 1] occasionally switching to your other cunt within his influence to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
			if dorroleint is 4 and cocks of player > 0:
				say "     You're just about to blow! You can command him to relinquish his hold on you and subsequently ejaculate on the dragon's obedient face, should you? Else you will give him what he clearly wants.";
				if player consents:
					say "     Words strained under the weight of your passion, you order the beast to let go of him, doing as you command just before your dick[smn] erupt upon his obliging visage. Regarding in demeaning act with a wanton embrace, he patiently abides being so irreverently sullied by your [cum load size of player] load. When all is said is done he's an embarrassing mess, eagerly licking his face of your spunk.";
					say "     '[one of]Oh[or]Ah[at random], [one of]I am unworthy of [dorgr]'s countenance[or][dorgr]'s dragon obliges being shamed so[at random].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own shameful state.";
				otherwise:
					say "     It's not long before you cry out, pussy tightening against his tongue. With a disciplined determination, he prolongs your bliss for as long as he might be able to, [if cocks of player > 2]talon bunching up at your dick's head that he might lick it clean when he concludes with the portal, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal, though he is not so dexterous that he can stop the other from spilling all over the ground[otherwise if cocks of player is 1]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal[otherwise]licking it clean once you can go on for no longer[end if].";
					say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";
 			otherwise:
				say "     It's not long before you cry out, pussy tightening against his tongue. With a disciplined determination, he prolongs your bliss for as long as he might be able to, [if cocks of player > 2]talon bunching up at your dick's head that he might lick it clean when he concludes with the portal, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal, though he is not so dexterous that he can stop the other from spilling all over the ground[otherwise if cocks of player is 1]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal[otherwise]licking it clean once you can go on for no longer[end if].";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";
	otherwise:
		say "he soon reverts back into obedience thereafter, maw enveloping your flesh a second time, his endeavours now much more deliberate. Dextrous, slick appendage eager to descend upon your depths, he exhibits a voracious desire to satisfy your need[if cunt length of player > 17 and dorroleint is 4], more than eager to push the limits of how far he can thrust his tongue upon you, at expense to his own comfort[otherwise if cunt length of player > 17], frequently pushing the limits of his ability to thrust his tongue upon you[end if]. He retains a very methodical, calculated pace,[if cocks of player > 0] occasionally switching to your dick in his grip to keep you sensitive to his tongue's influence,[otherwise if cunts of player > 1] occasionally switching to your other cunt within his influence to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
		if dorroleint is 4 and cocks of player > 0:
			say "     You're just about to blow! You can command him to relinquish his hold on you and subsequently ejaculate on the dragon's obedient face, should you? Else you will give him what he clearly wants.";
			if player consents:
				say "     Words strained under the weight of your passion, you order the beast to let go of him, doing as you command just before your dick[smn] erupt upon his obliging visage. Regarding in demeaning act with a wanton embrace, he patiently abides being so irreverently sullied by your [cum load size of player] load. When all is said is done he's an embarrassing mess, eagerly licking his face of your spunk.";
				say "     '[one of]Oh[or]Ah[at random], [one of]I am unworthy of [dorgr]'s countenance[or][dorgr]'s dragon obliges being shamed so[at random].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own shameful state.";
			otherwise:
				say "     It's not long before you cry out, pussy tightening against his tongue. With a disciplined determination, he prolongs your bliss for as long as he might be able to, [if cocks of player > 2]talon bunching up at your dick's head that he might lick it clean when he concludes with the portal, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal, though he is not so dexterous that he can stop the other from spilling all over the ground[otherwise if cocks of player is 1]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal[otherwise]licking it clean once you can go on for no longer[end if].";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";
		otherwise:
			say "     It's not long before you cry out, pussy tightening against his tongue. With a disciplined determination, he prolongs your bliss for as long as he might be able to, [if cocks of player > 2]talon bunching up at your dick's head that he might lick it clean when he concludes with the portal, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal, though he is not so dexterous that he can stop the other from spilling all over the ground[otherwise if cocks of player is 1]talon bunching up at your dick's head that he might lick it clean when he is concludes with the portal[otherwise]licking it clean once you can go on for no longer[end if].";
			say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, settling back down next to the fire.";

to say dorsub_4: [Sub Doram cunt sex]
	say "     Decidedly, you [if dorroleint is 4]command[otherwise]ask[end if] the dragon to roll on his back and expose his dick for you. Instinctively, he complies, laying on the ground once more before his legs are spread, exposing himself fully before you. The mere implication of your command is enough to arouse him slightly, flared cockhead peeking from its scaled sheath.";
	say "     '[dorgr], [if dorroleint is 4][one of]I'm honoured by such a prospect[or]I long to be relegated as a mere toy for their pleasure[or]I am theirs to do with as they please[at random][otherwise][one of]don't hold back[or]I'm eager to be riden[or]I'm excited by the prospect[at random][end if]";
	if dorroleint is 4:
		say ".' Feeling a little impish, however, you think you could command the dragon to suck himself off in order to spare yourself the matter of preparing him yourself. Shall you? Lest you resolve this matter for him.";
		if player consents:
			say "     Grinning, you order Doran to fellate himself before you. Nodding in agreement, he props himself up, twisting his torso that his head might meet his crotch, scaled lips enveloping his cockhead. He's certainly flexible, lest he wouldn't be able to keep the whole of him so clean for you. The air fills with the wet sound of his self-pleasure, the fervour of which rapidly reaching a fever pitch; however, you order him to stop before he can wholly get off on it, allowing him to lay back down, his organ now fully erect before you, dripping with an aching need.";
		otherwise:
			say "     You advance upon his crotch, hands quickly compelled to feel his sizeable, full sack and bulging sheath. Moans escaping the dragon's lips, you prepare him with your tongue's affection, continued attention compelling the organ to gradually grow to full scale. Not quite intent to subject yourself to the ride dry, you make some effort to slick the member beforehand, [if scalevalue of player > 3]finding little difficulty in achieving your goal[otherwise], though you're not quite big enough to get the job done, the dragon bending in to help you with his own[end if]. It's not long before it's ready, dripping with an aching need.";
	otherwise:
		say ".' You advance upon his crotch, hands quickly compelled to feel his sizeable, full sack and bulging sheath. Moans escaping the dragon's lips, you prepare him with your tongue's affection, continued attention compelling the organ to gradually grow to full scale. Not quite intent to subject yourself to the ride dry, you make some effort to slick the member beforehand, [if scalevalue of player > 3]finding little difficulty in achieving your goal[otherwise], though you're not quite big enough to get the job done, the dragon bending in to help you with his own[end if]. It's not long before it's ready, dripping with an aching need.";
	if scalevalue of player < 4:
		say "     Now ready, you climb over his scaled undercarriage, carefully aiming the tool for [if cunts of player > 0]one of your exposed cunts[otherwise]your exposed cunt[end if].";
		say "     '[one of]Ah[or]Oh[or]Um[at random], does [dorgr] [one of]need aid[or]require help[at random]? [if dorroleint is 4][one of]Not that I think they can't handle their dragon, of course[or]I wouldn't want my size to cause them too much trouble[at random][otherwise][one of]I wouldn't want to hurt them[or]I'll be as slow as is comfortable for them[at random][end if].' It's obvious he worries for your safety. Let him? Else you will stick to your guns.";
		if player consents:
			say "     You agree to his aid, to which he responds by moving his taloned forepaws over you, ever-so-gently pressing you down upon this slicked, proudly jutting tool. Mindful of your regard, you're slowly made to descend upon his rod, quickly contending with its flared head. [if cunt length of player > 11]Your difficulty is only brief before you sink it within your depths entirely, your subsequent ease much to the dragon's enjoyment[otherwise]After much work and strained grunts, the two of you manage to sink the head into your depths[end if], the rest taking somewhat less work, up to the knot. Done helping you, the beast lets you go, allowing you to continue on your own pace.";
		otherwise:
			say "     You suggest against his aid, intent on taking care of this on your own terms as you press yourself down upon this slicked, proudly jutting tool, quickly contending with its flared head. [if cunt length of player > 11]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's enjoyment[otherwise]After much work and strained grunts, you manage to sink the head into your depths[end if], the rest taking somewhat less work, up to the knot.";
	otherwise:
		say "     Moving over the beast, you carefully line up your behind with this slick, proudly jutting tool. Briefly teasing [if cunts of player > 0]one of your exposed cunts[otherwise]your exposed cunt[end if] with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into your supple, yielding folds of flesh. [if cunt length of player < 12]After much work and strained grunts, the you manage to envelop the head into your depths, the rest taking somewhat less work, up to the knot[otherwise if cunt length of player > 17]Struck by a rather impish urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This shock is enough to cause him to moan loudly, a gout of pre spurting from his suddenly engulfed tool[otherwise]Past his head, your descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     '[one of]Oh[or]Nrgh[or]Nnf[at random], [one of]M-[dorgr] is so [if cunt length of player < 12]t-tight[otherwise if cunt length of player < 17]s-skilled[otherwise]f-firm[end if][or]I-I can't hold back, M-[dorgr][or]M-[dorgr][at random]...' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 1]your own bouncing against the open air, staining the dragon's scales with their slick fluids[otherwise if cocks of player is 1]your own bouncing against the open air, staining the dragon's scales with its slick fluids[otherwise if cunts of player > 2]exposed cunts dripping against the open air, staining the dragon's scales with their slick fluids[otherwise if cunts of player is 2]exposed cunt dripping against the open air, staining the dragon's scales with its slick fluids[otherwise]stuffed portal eagerly milking the beast for what he's worth[end if][if scalevalue of player < 3 or cunt length of player < 12], stretched to the limits of your ability to contain the organ[end if].";
	say "     You can tell he's about to erupt. It might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if cunt length of player < 12]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own[otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz. Soon thereafter, your desperate fervour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against him[otherwise if cunts of player > 1]pussies staining his crotch with your release[otherwise]pussy staining his crotch with your release[end if], mixing with his own, the reptile an embarrassing, cum-stained mess.";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean before he grants you the freedom of dismounting him proper[otherwise]Eventually, you step off of the dragon, letting him clean himself off[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]It pleases their dragon to sully him so[or]their torment is all I desire[or]I beg that you mistreat me again[at random][otherwise][one of]how very naughty, making a mess of me like that[or]they're a mischievous one[or]and I had just cleaned myself[at random][end if].' [if dorroleint is 4]He pleads[otherwise]He feigns insult[end if], taking a moment to recover before getting back up and returning back to his spot in the cave. No doubt it'll take him a bit to clean himself the mess that was made.";
	otherwise:
		say "     Compelled by your wanton hunger, [if cunt length of player < 12]you take considerable effort to finally tie yourself with the beast's knot[otherwise if cunt length of player > 17]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to roar out, pumping you full with gout after successive gout of his voluminous jizz[if scalevalue of player < 3], body visibly bulging to abide this release[end if]. Sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against his torso[otherwise if cunts of player > 0]cunt[sfn] staining his torso with your release[end if], strained by the such an impressive intrusion. [impregchance][line break]";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean, even as you pull yourself free he's quick to attend to your leaking hole until he's satisfied, finally letting you off[otherwise]Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]I love seeing them full of their dragon's seed[or]they're so good at taking their dragon's load[or]I beg for the opportunity to fill them again[or]I love being inside them[at random][otherwise][one of]they always manage to impress me[or]I envy their skill[or]they know how to handle themself[at random][end if].' He offers his regards, taking a moment to recover before getting back up and returning back to his spot in the cave. He already goes through a ritual of cleaning himself of the mess that was doubtlessly made.";

to say dorsub_5: [Sub Doram anal sex]
	say "     Decidedly, you [if dorroleint is 4]command[otherwise]ask[end if] the dragon to roll on his back and expose his dick for you. Instinctively, he complies, laying on the ground once more before his legs are spread, exposing himself fully before you The mere implication of your command is enough to arouse him slightly, flared cockhead peeking from its scaled sheath.";
	say "     '[dorgr], [if dorroleint is 4][one of]I'm honoured by such a prospect[or]I long to be relegated as a mere toy for their pleasure[or]I am theirs to do with as they please[at random][otherwise][one of]don't hold back[or]I'm eager to be riden[or]I'm excited by the prospect[at random][end if]";
	if dorroleint is 4:
		say ".' Feeling a little impish, however, you think you could command the dragon to suck himself off in order to spare yourself the matter of preparing him yourself. Shall you? Lest you deal with this matter for him.";
		if player consents:
			say "     Grinning, you order Doran to fellate himself before you. Nodding in agreement, he props himself up, twisting his torso that his head might meet his crotch, scaled lips enveloping his cockhead. He's certainly flexible, lest he wouldn't be able to keep the whole of him so clean for you. The air fills with the wet sound of his self-pleasure, the fervour of which rapidly reaching a fever pitch; however, you order him to stop before he can wholly get off on it, allowing him to lay back down, his organ now fully erect before you, dripping with an aching need.";
		otherwise:
			say "     You advance upon his crotch, hands quickly compelled to feel his sizeable, full sack and bulging sheath. Moans escaping the dragon's lips, you prepare him with your tongue's affection, continued attention compelling the organ to gradually grow to full scale. Not quite intent to subject yourself to the ride dry, you make some effort to slick the member beforehand, [if scalevalue of player > 3]finding little difficulty in achieving your goal[otherwise], though you're not quite big enough to get the job done, the dragon bending in to help you with his own[end if]. It's not long before it's ready, dripping with an aching need.";
	otherwise:
		say ".' You advance upon his crotch, hands quickly compelled to feel his sizeable, full sack and bulging sheath. Moans escaping the dragon's lips, you prepare him with your tongue's affection, continued attention compelling the organ to gradually grow to full attention. Not quite intent to subject yourself to the ride dry, you make some effort to slick the member beforehand, [if scalevalue of player > 3]finding little difficulty in achieving your goal[otherwise], though you're not quite big enough to get the job done, the dragon bending in to help you with his own[end if]. It's not long before it's ready, dripping with an aching need.";
	if scalevalue of player < 4:
		say "     Now ready, you climb over his scaled undercarriage, carefully aiming the tool for your exposed anus.";
		say "     '[one of]Ah[or]Oh[or]Um[at random], does [dorgr] [one of]need aid[or]require help[at random]? [if dorroleint is 4][one of]Not that I think they can't handle their dragon, of course[or]I wouldn't want my size to cause them too much trouble[at random][otherwise][one of]I wouldn't want to hurt them[or]I'll be as slow as is comfortable for them[at random][end if].' It's obvious he worries for your safety. Let him? Else you'll stick to your guns.";
		if player consents:
			say "     You agree to his aid, to which he responds by moving his taloned forepaws over you, ever-so-gently pressing you down upon this slicked, proudly jutting tool. Mindful of your regard, you're slowly made to descend upon his rod, quickly contending with its flared head. [if scalevalue of player is 3 and player is twistcapped]Your difficulty is only brief before you sink it within your depths entirely, your subsequent ease much to the dragon's enjoyment[otherwise if scalevalue of player < 3]Much in spite your peculiar talent, it takes quite a bit of work for him to effectively sink the head into your depths, though the dragon is glad you can even take him in the first place[otherwise]After much work and strained grunts, the two of you manage to sink the head into your depths[end if], the rest taking somewhat less work, up to the knot. Done helping you, the beast lets you go, allowing you to continue on your own pace.";
		otherwise:
			say "     You suggest against his aid, intent on taking care of this on your own terms as you press yourself down upon this slicked, proudly jutting tool, quickly contending with its flared head. [if scalevalue of player is 3 and player is twistcapped]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's enjoyment[otherwise if scalevalue of player < 3]Much in spite your peculiar talent, it takes quite a bit of work for you to effectively sink the head into your depths, though the dragon is glad you can even take him in the first place[otherwise]After much work and strained grunts, you manage to sink the head into your depths[end if], the rest taking somewhat less work, up to the knot.";
	otherwise:
		say "     Moving over the beast, you carefully line up your ass with this slick, proudly jutting tool. Briefly teasing your anal ring with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into your supple, yielding depths. [if player is twistcapped and dorroleint is 4]Struck by a rather mischievous urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This surprise is enough to cause him to moan loudly, a gout of pre spurting from his suddenly enveloped tool[otherwise]Past his head, your descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     '[one of]Oh[or]Nrgh[or]Nnf[at random], [one of]M-[dorgr] is so [if scalevalue of player < 4]t-tight[otherwise if player is twistcapped]s-skilled[otherwise]f-firm[end if][or]I-I can't hold back, M-[dorgr][or]M-[dorgr][at random]...' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 0]your own bouncing against the open air[otherwise]cunt[sfn] dripping against the open air[end if], staining the dragon's scales with [if cocks of player > 1]their[otherwise if cocks of player is 1]its[otherwise if cunts of player > 1]their[otherwise if cunts of player is 1]its[end if] slick fluids[if scalevalue of player < 3], stretched to the limits of your ability to contain the organ[end if].";
	say "     You can tell he's about to erupt. It might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if scalevalue of player < 4]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own[otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz. Soon thereafter, your desperate fervour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against him[otherwise if cunts of player > 1]pussies staining his crotch with your release[otherwise if cunts of player > 0]pussy staining his crotch with your release[end if], mixing with his own, the reptile an embarrassing, cum-stained mess.";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean before he grants you the freedom of dismounting him proper[otherwise]Eventually, you step off of the dragon, letting him clean himself off[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]It pleases their dragon to sully him so[or]their torment is all I desire[or]I beg that they mistreat me again[at random][otherwise][one of]how very naughty, making a mess of me like that[or]they're a mischievous one[or]and I had just cleaned myself[at random][end if].' [if dorroleint is 4]He pleads[otherwise]He feigns insult[end if], taking a moment to recover before getting back up and returning back to his spot in the cave. No doubt it'll take him a bit to clean himself the mess that was made.";
	otherwise:
		say "     Compelled by your wanton hunger, [if scalevalue of player < 4]you take considerable effort to finally tie yourself with the beast's knot[otherwise if player is twistcapped]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to cry out, pumping you full with gout after successive gout of his voluminous jizz[if scalevalue of player < 3], body visibly bulging to abide this release[end if]. Sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against his torso[otherwise if cunts of player > 0]cunt[sfn] staining his torso with your release[end if], strained by the such an impressive intrusion. [mimpregchance][line break]";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean, even as you pull yourself free he's quick to attend to your leaking hole until he's satisfied, finally letting you off[otherwise]Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]I love seeing them full of their dragon's seed[or]they're so good at taking their dragon's load[or]I beg for the opportunity to fill them again[or]I love being inside them[at random][otherwise][one of]they always manage to impress me[or]I envy their skill[or]they know how to handle themself[at random][end if].' He offers his regards, taking a moment to recover before getting back up and returning back to his spot in the cave. He already goes through a ritual of cleaning himself of the mess that was doubtlessly made.";

to say dorsub_snub: [Sub Doram snubbed]
	say "'[dorgr].' He turns and sits back down next to the fire.";
	now dorwassnub is true;

Section 3.2 - Doran Request Tree

understand "request doran" as dorreq.
understand "request of doran" as dorreq.
understand "request from doran" as dorreq.

check dorreq:
	if Doran is not visible, say "That's not a verb I recognise." instead;
	
carry out dorreq:
	if dorfirsttalk is false:
		say "     You'll probably want to talk to the dragon before you ask anything of him.";
	otherwise:
		now calcnumber is -1;
		say "     '[one of]How may I help [dorgr][or]Yes[or]Is there something [dorgr] needs[or]What would [dorgr] ask of me[at random]?' [line break]";
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Options:[roman type][line break]";
			say "(1) [link]Sexual position[as]1[end link] - Doran's demeanour: [bold type][if dorrolereg is 0]Dominant[otherwise if dorrolereg is 2]Submissive[otherwise]Neutral[end if][roman type].";
			say "(2) [link]Gender Regard[as]2[end link] - Doran's gender association: [bold type][if dorgenreg is true]Female[otherwise]Male[end if][roman type].";	
			say "[line break]";
			say "[bold type]Requests:[roman type][line break]";
			say "(3) [link]Scavenge[as]3[end link] - Request Doran's aid.";
			say "[line break]";
			say "(0) [link]Exit[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "[doropt_1]"; [Demeanour Option]
			otherwise if calcnumber is 2:
				say "[doropt_2]"; [Gender Option]
			otherwise if calcnumber is 3:
				say "[dorreq_1]"; [Food Requisition]
			otherwise:
				say "[doropt_0]"; [End]
				now trixieexit is 1;

Section 3.3 - Doran Request Pool

to say doropt_1: [Demeanour Option]
	if dorrolereg is 2:
		if dordomtop < 2: [Explanation for non-submissive players who didn't get that intro in his first talk]
			say "     You bring up the matter of his overt submissiveness to the dragon.";
			say "     'Oh, [dorgr], is that not to their liking? I have no problem with being on top, if they are so inclined.' Should you agree to his suggestion?";
			if player consents:
				say "     'Certainly, my [dorgr]";
				if dordomtop is 1:
					say ". I shouldn't be surprised, as I recall they tried to offer themself when I challenged them--Not that I didn't find the prospect tempting there as I do now";
				say ". When next they ask for sex, they'll find my regard to be quite different.' He grins mischievously at you.";
				now dorrolereg is 0;
			otherwise:
				say "     'My mistake, but don't be afraid to ask if they change their mind.'";
			now dordomtop is 2;
		otherwise:
			say "     'In a different mood? Would [dorgr] prefer being on the bottom?'";
			if player consents:
				now dorrolereg is 0;
				say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], my [dorgr] will now be put in their place.'";
			otherwise:
				say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";
	otherwise:
		say "     'In a different mood? Would my [dorgr] prefer to be on the top again?'";
		if player consents:
			now dorrolereg is 2;
			say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], [dorgr]'s dragon will learn his place.'";
		otherwise:
			say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";

to say doropt_2: [Gender Option]
	if dorgenreg is false:
		say "     'Has something come up? Would [dorgr] prefer to be regarded as a female?'";
		if player consents:
			now dorgenreg is true;
			now dorgr is "Mistress";
			say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], I will now regard Master as [dorgr].'";
		otherwise:
			say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";
	otherwise:
		say "     'Has something come up? Would [dorgr] prefer to be regarded as a male?'";
		if player consents:
			now dorgenreg is false;
			now dorgr is "Master";
			say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], I will now regard Mistress as [dorgr].'";
		otherwise:
			say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";

to say dorreq_1: [Food requisition]
	if dorlastfed - turns >= 16:	
		if dorfedtype is 1:
			say "     'Ah, yes! I found some water, maybe it will help [dorgr]?' He hands it over to you.";
			add "water bottle" to invent of player;
		otherwise:
			say "     'Ah, yes! I found some food, maybe it will help [dorgr]?' He hands it over to you.";
			add "food" to invent of player;
		now dorlastfed is turns;
		now dorfedtype is a random number between 1 and 2;
	otherwise:
		say "     'My sincerest apologies, [dorgr], I haven't come across anything yet! But please, do check again later.'";

to say doropt_0: [End]
	say "     '[one of]Don't be afraid to ask me of anything[or]I'll be here[or]Come again[at random], [dorgr].'";

Doran ends here.