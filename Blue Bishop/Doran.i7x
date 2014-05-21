Version 1 of Doran by Blue Bishop begins here.
[ Version 1.4 - Minor Additions, adjustment to cunt requirements, neutral doran sex scene ]

"Adds Doran to Flexible Survivals Wandering Monsters table"

Section 1.0 - Doran Coding Miscellany

when play begins:
	add { "Peculiar Dragon" } to infections of guy;
	add { "Peculiar Dragon" } to infections of furry;

dorgr is text that varies; [A DORGER IS YOU]
dorlastfed is a number that varies. dorlastfed is usually 555; [Doran Last Fed Timer]
dorgenreg is a truth state that varies; [Doran Gender Regard. Boolean, false = male, true = female]
dorrolereg is a number that varies. dorrolereg is usually 2; [Doran Role Regard. Numeric, 0 = Dominant Doran, 1 = Random/Neutral (Not implemented in base), 2 = Submissive Doran]
dorroleint is a number that varies. dorroleint is usually 2; [Doran Role Intensity. Numeric. 0 = full dominant, 1-3 = neutral, 4 = full submissive]
dordomtop is a number that varies; [Doran Dominance Topic. Numeric. 0 = Player didn't submit, 1 = player did submit, 2 Doran's voluntary dominance revealed]
dorfirsttalk is a truth state that varies. dorfirsttalk is usually false; [Flag to detect if the player's talked to Doran at least once]
dorwassnub is a truth state that varies. dorwassnub is usually false; [Innoculous flag used to ward backend sex calculations and sex cooldown if you decide against having sex with Doran]
dorfedtype is a number that varies. dorfedtype is usually 1; [Determines what kind of food Doran will give you, clever girl...]
dorreq is an action applying to nothing. [Doran Request Command]
dorrim is an action applying to nothing. [Hidden Request Tree for warding Rimjob scene]
dorautint is a number that varies. dorautint is usually 0; [Doran Auto-Fire Intensity, 0 = Off, 1 = Strict, 2 = Loose]
dorbb is a truth state that varies. dorbb is usually false; [Doran Blue-Balling, True indicates for the final sex roll to increase player libido instead of decrease]
dorauto is a truth state that varies. dorauto is usually false; [Doran Automatic, True indicates that Doran initiated the sex himself for the purpose of the player-submissive scenes]
dorrjd is a truth state that varies. dorrjd is usually false; [Doran Rimjob Disuasion, true indicates that the player does not want the aformentioned scene in their dom doran pool]
dorrjdr is a truth state that varies. dorrjdr is usually false; [Doran Rimjob Disuasion Reveal, true indicates that the player's used the special interaction at least once once]
dorautr is a truth state that varies. dorrjdr is usually false; [Doran Auto-fire Reveal, true indicates that the player's used this interaction at least once]
dornpbb is a number that varies. dornpbb is usually 0; [Doran Non-Player Blue-Balling, used to indicate if Doran has received orgasm denial/neglect]

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
	say "     'To be honest, I'm not surprised my victor defeated me; I can see they're a determined one. In any case, this victory makes me theirs to do with as they please.' He bows slightly in punctuation of his concession, oddly willing to offer himself to you in the wake of your victory.";
	say "     'What would my victor subject me to?'";
	if cocks of player > 0 or cunts of player > 0:
		say "     By your wagering, you could ";
		if cunts of player > 0:
			if cocks of player > 0 and cunt length of player > 4:
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
				if cunt length of player > 4:
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
	say "     Approaching the dragon, you more rigorously invoke your arousal by grinding[if cocks of player > 1] one of[end if] your hardening shaft[smn] against his well-toned rear, scales immaculate and smooth under your touch, illustrating that the creature takes very good care of his appearance. Slowly, you sink the[if cockname of player is listed in infections of bluntlist] blunt[end if] head of[if cocks of player > 1]one of [end if] your [if cock length of player > 17]impressive [end if]tool[smn] past his fleshy, yielding anal ring, eliciting from the beast a series of approving moans at your initial pace.";
	if cock length of player > 17:
		say "     Very quickly, his supple hole becomes increasingly strained to abide your member, but this only entices the beast to coax you on. 'Further, further!' Is his reply, and with a bit of work and pre's slick lubrication his tight tailpipe grows progressively willing to take your sizeable tool[if cockname of player is listed in infections of knotlist], up to the knot[end if], granting you the freedom to start fucking him proper.";
	otherwise:
		say "     He shows absolutely no difficulty in abiding your member[if cockname of player is listed in infections of knotlist], even tying its knot almost immediately[end if]. He doesn't seem to mind your ease, and is more inclined to revel in your exploitation of his form, supple abyss almost overwhelming in how assertively it milks the organ. 'Harder, harder!' Is his demand, greedy for your abuse, as you're compelled to start fucking him proper.";
	say "     [If scalevalue of player > 3]Body visibly rocking against each successive thrust[otherwise]Larger body barely moved by[end if] each successive thrust, [if cockname of player is not listed in infections of internallist]your balls audibly slap against him, a wordless remark on your rising, wanton fervor[otherwise]overtaken by your rising, wanton fervor[end if]. Your embrace on the reptile grows increasingly slick, coated by a thin veneer of sweat.";
	say "     'P-please, fill me with C-cum...!' At the very cusp of your bliss, you maintain enough control to determine if you'd like to pull out at the last second, shall you? Else you will give the greedy dragon what he wants.";
	if player consents:
		say "     Before you are completely overtaken, you wrench your [cock size desc of player] cock from the beast, quickly jacking it[if cocks of player > 2] and one of its brothers[otherwise if cocks of player is 2] and its brother[end if] off before you cry out, coating his ass[if scalevalue of player > 3] and back[end if] with gouts of your thick, virile seed";
	otherwise:
		say "     Succumbing to your tainted urges, [if cockname of player is listed in infections of knotlist and cock length of player > 17]you make one final push, tying yourself with the beast before you cry out[otherwise if cockname of player is listed in infections of knotlist]you soon cry out, tying your cock within him one final time[otherwise]you soon cry out, hilting your cock within him[end if], gouts of your thick, virile seed flooding his depths[if cocks of player > 2], its brothers staining his behind[otherwise if cocks of player is 2], its brother staining his behind[end if]";
	say ". It takes you some time to recover, eventually [if scalevalue of player < 4]climbing[otherwise]pulling yourself[end if] off. The dragon lays there for a bit, panting himself in the wake of being ravaged. He eventually does crawl back to his feet, looking satisfied.";
	say "     'I rather enjoyed that, victor! Perhaps they would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, his prior poise somewhat diminished under the exhausted weight of his cum-stained[if cock length of player > 17] and no doubt quite sore[end if] form.";

to say dorvic_2: [oral cock]
	say "     You see no harm in humouring the dragon, freeing yourself of any obstruction that might cover you before gesturing to your [cock size desc of player] cock[smn], to which he eagerly struts toward. Too eager, in fact...";
	say "     'Hum, my victor is wont to such simple affections. I'm happy to oblige.' Scaled lips parting to expose his teeth, you no doubt feel slightly concerned that this might be some manner of trick the beast is about to play on you, but the fear is assuaged when those same lips envelop [if cocks of player > 2]one of them, taloned hand moving to stroke one of its brothers[otherwise if cocks of player is 2]one of them, taloned hand moving to stroke its brother[otherwise]it[end if]. Humid breath enveloping your lower torso, you abide his thick tongue's initial, teasing query.";
	say "     'Oh, my victor [if cock length of player > 17]is so well-endowed, I wonder if I'll properly be able to pleasure them[otherwise]tastes so inviting, I'm going to enjoy this[end if].' He pulls away briefly to offer this remark, '...If I might be so selfish, this offering leaves me quite aroused, might my victor grant me the chance to offer myself some pleasure as I attend to them?' You imagine he'd not be as capable of pleasuring you with his attention split, shall you oblige his request? Otherwise you'll ensure his attention remains solely on you.";
	if player consents:
		say "     You decide to allow him this opportunity, to which he eagerly obliges, hand moving [if cocks of player > 1]away from your spare cock to attend his own[otherwise]over to attend his own cock[end if] before his maw envelops your flesh a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to wrap around your [cock size desc of player] tool, he would exhibit a voracious desire to satisfy your need[if cock length of player < 17], frequently pushing the limits of his endurance to engulf your impressive dick[end if]. As his need for self-pleasure rises, so does the pace in which he bobs against you become erratic, driving you ever-closer to bliss along the way.";
		say "     You're just about to blow! But with his attention diverted you could exploit this opportunity to shame him further by pulling out and ejaculating on his face, should you? Else you will give the dragon what he clearly wants.";
		if player consents:
			say "     Right at the very last second, you pull your dick free of the beast, your dick[smn] soon erupting thereafter upon his unsuspecting face. Trapped in the throes of his own bliss, he can only regard the demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the beast with your [cum load size of player] load. When all is said is done he's a shameful sight, wallowing in a puddle of his own spunk.";
		otherwise:
			say "     Soon thereafter your [if cocks of player > 1]dicks erupt[otherwise]dick erupts[end if], flooding the dragon's maw with your virile seed as he's caught between swallowing down your [cum load size of player] payload and the throes of his own bliss, allowing you watch the beast's writhing, twitching form as [if cocks of player > 2]your unattended organs stain the ground, mixing with[otherwise if cocks of player is 2]your unattended organ stains the ground, mixing with[otherwise]he wallows in a puddle of[end if] his own spunk.";
	otherwise:
		say "     You choose to disallow such an act, to which he concedes with little further thought on the matter, maw enveloping your cock a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player < 17], frequently pushing the limits of his endurance to engulf your impressive dick[end if]. He retains a very methodical, calculated pace,[if cocks of player > 2] occasionally switching to one of your other dicks to keep you sensitive to his tongue's influence,[otherwise if cocks of player > 1] occasionally switching to the other dick in his grip to keep you sensitive to his tongue's influence,[otherwise if cunts of player > 1]occasionally stopping only to offer some passing affection to one of your cunts,[otherwise if cunts of player is 1]occasionally stopping only to offer some passing affection to your cunt,[end if] audible moans escaping your lips as you're rapidly pushed ever-closer to bliss.";
		say "     The air is filled with the sound of the dragon's wet affection for but a few minutes before he drives you to orgasm, organ[smn] erupting against his tongue[if cocks of player > 1] and talon[end if]. With a disciplined determination, he milks you dry of every last drop of your [cum load size of player] payload, [if cocks of player > 2]talon bunching up at your second dick's head that he might lick it clean when he concludes with the first, though he is not so dexterous that he can stop the others from spilling all over the ground[otherwise if cocks of player is 2]talon bunching up at your second dick's head that he might lick it clean when he is concludes with the first[otherwise]licking it clean once you might offer no more for him[end if][if cock width of player > 24], he doesn't seem even remotely phased by the amount you offer him; rather, he'd be quite jovial over it, reveling in your excess[end if].";
	say "     'Alright, I certainly hope my victor was pleased...' It takes him a moment to recover, cleaning himself off and regaining what composure might have slipped from him prior. 'That was satisfying! Perhaps you would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";

to say dorvic_3: [oral cunt]
	say "     You see no harm in humouring the dragon, freeing yourself of any obstruction that might cover you before gesturing to your [cunt size desc of player] cunt[sfn], to which he eagerly struts toward. Too eager, in fact...";
	say "     'Hum, my victor is wont to such simple affections. I'm happy to oblige.' Scaled lips parting to expose his teeth, you no doubt feel slightly concerned that this might be some manner of trick the beast is about to play on you, but the fear is assuaged when those same lips embrace [if cunts of player > 1]one of them[otherwise]it[end if][if cocks of player > 1], taloned hand moving to stroke one of your exposed dicks[otherwise if cocks of player is 1], taloned hand moving to stroke your exposed dick[otherwise if cunts of player > 1], taloned hand moving to stroke one of its sisters[otherwise if cunts of player is 2], taloned hand moving to stroke its sister[end if]. Humid breath enveloping your lower torso, you abide his thick tongue's initial, teasing query, testing your supple folds and their pliability.";
	say "     'Oh, my victor [if cunt length of player > 17]is so spacious, I wonder if I'll properly be able to pleasure them[otherwise]tastes so inviting, I'm going to enjoy this[end if].' He pulls away briefly to offer this remark, '...If I might be so selfish, your offering leaves me quite aroused, might you grant me the chance to offer myself some pleasure as I attend to you?' You imagine he'd not be as capable of pleasuring you with his attention split, shall you oblige his request? Otherwise you'll ensure his attention remains solely on you.";
	if player consents:
		say "     You decide to allow him this opportunity, to which he eagerly obliges, hand moving [if cocks of player > 0]away from your cock to attend his own[otherwise if cunts of player > 1]away from your spare portal to attend his dick[otherwise]over to attend his dick[end if] before his maw envelops your pussy a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to dive within your [cunt size desc of player] depths, he exhibits a voracious desire to satisfy your need, [if cunt length of player < 17]your ease compelling his fervor further[end if]. As his need for self-pleasure rises, so does the pace in which his tongue attends you become erratic, driving you ever-closer to bliss along the way.";
		if cocks of player > 0:
			say "     You're just about to blow! But with his attention diverted you could exploit this opportunity to shame him further by ejaculating on his face, should you? Else you'll spare the dragon of this indignity.";
			if player consents:
				say "     Right as you find your bliss, you pull his tongue free from you, aiming your dick[smn] at him and, soon thereafter, erupting upon his unsuspecting face. Trapped in the throes of his own bliss, he can only regard the demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the beast with your [cum load size of player] load. When all is said is done, he's a shameful sight, wallowing in a puddle of his own spunk.";
			otherwise:
				say "     Soon thereafter you cry out in bliss, supple passage tightening against the dragon's tongue[if cocks of player > 0], cock[smn] erupting into the open air, staining your crotch and the ground with your seed. He's clearly caught between attending you and being in the throes of his own bliss, allowing you watch his writhing, twitching form as the beast's dick unloads impotently into the ground, wallowing in a puddle of his own spunk.";
		otherwise:
			say "     It's not long before you finally cry out in bliss, supple passage tightening against the dragon's tongue[if cocks of player > 0], cock[smn] erupting into the open air, staining your crotch and the floor with your seed. He's clearly caught between attending you and being in the throes of his own bliss, allowing you watch his writhing, twitching form as the beast's dick unloads impotently into the ground, wallowing in a puddle of his own spunk.";
	otherwise:
		say "     You choose to disallow such an act, to which he concedes with little further thought on the matter, maw enveloping your pussy a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to dive within your [cunt size desc of player] depths, he exhibits a voracious desire to satisfy your need[if cunt length of player > 17], your ease of access only compelling his fervour further[end if]. He retains a very methodical, calculated pace,[if cocks of player > 1] occasionally stopping only to offer some passing affection to one of your dicks,[otherwise if cocks of player is 1] occasionally stopping only to offer some passing affection to your dick,[otherwise if cunts of player > 2] occasionally switching to attend one of your other cunts to keep you sensitive to his influence,[otherwise if cunts of player is 2] occasionally switching to your other cunt to keep you sensitive to his influence[end if] audible moans escaping your lips as you're rapidly pushed ever-closer to bliss.";
		say "     The air is filled with the sound of the dragon's wet affection for but a few minutes before he drives you to orgasm, feminine portal tightening around his tongue[if cocks of player > 0] as your cock[smn] erupt, staining yourself with your [cum load size of player] payload[end if]. With a disciplined dedication, he licks you clean until it is barren with naught but a thin veneer of his saliva.";
	say "     'Alright, I certainly hope my victor was pleased...' It takes him a moment to recover, cleaning himself off and regaining what composure might have slipped from him prior. 'That was satisfying! Perhaps my victor would be interested in another go sometime down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";

to say dorvic_4: [cunt sex]
	say "     With some curiosity, your eyes wander down upon the dragon's more private regions. Already aroused at the prospect of your imminent exploitation, you can see his exposed, fleshy dick already emerged from the sheath which housed it prior. Knotted and distinctly draconic, it's a fairly intimidating tool. Behind it hangs an equally impressive pair of heavy, scaled balls.";
	say "     'Ah, I see my victor would like to take their dragon out for a little ride, perhaps?' His remark comes as little surprise given how you've been ogling him for a fair while, though perhaps more surprising is how obliging he is towards the prospect, even with what he might get out of it. You agree, to which he slowly lays down, rolling on his back to give you a fuller, more intimate view of his towering rod, 'I am theirs to do with as they please.'";
	say "     [if scalevalue of player < 4 and cunt length of player < 12]A little sheepishly, y[otherwise]Y[end if]ou approach him, relinquishing any obstruction you might have adorned prior before your hands move to feel the organ. Soft, yielding flesh juxtaposed against his much firmer, scaled undercarriage, it's already eager to ooze pre against your touch. [if cunt length of player < 12]The thing is rather frightening, to be honest; at the very least it'll be quite a challenge to fit, even the dragon seems a little uncertain you can take him[otherwise]Quite well endowed, you imagine there'll be some challenge in getting the thing in, though you doubt it'll be that difficult for someone of your capability[end if].";
	if scalevalue of player < 4:
		say "     'Ah, does my victor require aid? I'll be as careful as someone of my size might allow.' It's clear he thinks you'll need some assistance getting it in, accept his offer? Else you'll stick to your guns.";
		if player consents:
			say "     You decide to consent to his aid, to which his taloned forepaws descend upon you, ever-so-gently lining up [if cunts of player > 1]one of your cunts[otherwise]your cunt[end if] with his proudly jutting tool. Mindful of your regard, you're slowly forced upon rod, quickly contending with his flared head. [if cunt length of player > 17]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise]After much work and strained grunts, the two of you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if]. Done helping you, the beast lets you go, allowing you to continue on your own pace.";
		otherwise:
			say "     You suggest against his aid, intent on taking care of this yourself as you line up [if cunts of player > 1]one of your cunts[otherwise]your cunt[end if] with his proudly jutting tool. Taking a moment to breath, you slowly force yourself upon the rod, quickly contending with his flared head. [if cunt length of player > 17]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise]After much work and strained grunts, you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if].";
	otherwise:
		say "     Climbing over the beast, you carefully up your rear with his proudly jutting tool. Briefly teasing [if cunts of player > 1]one of your cunts[otherwise]your cunt[end if] with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into the supple, yielding folds of its flesh [if cunt length of player < 12]After much work and strained grunts, you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[otherwise if cunt length of player > 17]Struck by a rather impish urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This surprise is enough to cause him to moan loudly, a gout of pre spurting from the organ, so suddenly enveloped as it is[otherwise]Past his head, your remaining descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     'Oh, m-my victor is so [if cunt length of player < 12]t-tight[otherwise if cunt length of player > 17]s-skilled[otherwise]f-firm[end if].' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 1]your own bouncing in the open air, staining the dragon's scales with their slick fluids[otherwise if cocks of player is 1]your own bouncing in the open air, staining the dragon's scales with its slick fluids[otherwise]stuffed portal eagerly milking the beast for what he's worth[end if][if scalevalue of player < 3], body visibly bulging to contain the organ[end if].";
	say "     You can tell, by the creature's rising fervour, that he's about to erupt, and it might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if cunt length of player < 12]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own dick[smn][otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz. Soon there after, your desperate endeavour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] spending your [cum load size of player] payload against him[otherwise if cunts of player > 0]cunt[sfn] staining his crotch with your release[end if], mixing with his own, the reptile now an embarrassing, cum-stained mess.";
		say "     Eventually, you step off of the dragon, letting him clean himself off.";
		say "     'Oh, how very naughty, making a mess of me like that!' He feigns insult, taking a moment to regain his posture. 'That was satisfying! Perhaps my victor would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	otherwise:
		say "     Compelled by your wanton hunger, [if cunt length of player < 12]you take considerable effort to finally tie yourself with the beast's knot[otherwise if cunt length of player > 17]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to cry out, pumping your womb full with gout after successive gout of his voluminous jizz[if scalevalue of player < 4], body visibly bulging to abide this release[end if], sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss[if cocks of player > 0], dick[smn] unloading your [cum load size of player] payload against his torso[end if].";
		say "     Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him.";
		say "     'Oh, my victor is quite impressive at being able to take me.' He offers his praise before getting back up, taking a moment to regain his posture. 'That was satisfying! Perhaps they would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	say "     Finished, he turns to depart in that direction, scaled and well-toned ass waving at you in his departure, as though to entice you to follow.";


to say dorvic_5: [anal sex]
	say "     With some curiosity, your eyes wander down upon the dragon's more private regions. Already aroused at the prospect of your imminent exploitation, you can see his exposed, fleshy dick already emerged from what might have housed it prior. Knotted and distinctly draconic, it's a fairly intimidating tool. Behind it hangs an equally impressive pair of heavy, scaled balls.";
	say "     'Ah, I see my victor would like to take his dragon out for a little ride, perhaps?' His remark comes as little surprise given how you've been ogling him for a fair while, though perhaps more surprising is how obliging he is towards the prospect, even with what he might get out of it. You agree, to which he slowly lays down, rolling on his back to give you a fuller, more intimate view of his towering dick, 'I am their's to do with as they please.'";
	say "     [if scalevalue of player < 4]A little sheepishly, y[otherwise]Y[end if]ou approach him, relinquishing any obstruction you might have adorned prior before your hands move to feel the organ. Soft, yielding flesh juxtaposed against his much firmer, scaled undercarriage, it's already eager to ooze pre against your touch. [if scalevalue of player < 4 and player is not twistcapped]The thing is rather frightening, to be honest; at the very least it'll be quite a challenge to fit, even the dragon seems a little uncertain you can take him[otherwise]Quite well endowed, you imagine there'll be some challenge in getting the thing in, though you doubt it'll be that difficult for someone of your capability[end if].";
	if scalevalue of player < 4:
		say "     'Ah, does my victor require aid? I'll be as careful as someone of my size might allow.' It's clear he thinks you'll need some assistance getting it in, accept his offer? Else you'll stick to your guns.";
		if player consents:
			say "     You decide to consent to his aid, to which his taloned forepaws descend upon you, ever-so gently lining up your ass with his proudly jutting tool. Mindful of your regard, you're slowly forced upon rod, quickly contending with his flared head. [if scalevalue of player is 3 and player is twistcapped]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise if scalevalue of player < 3]Much in spite your peculiar talent, it takes quite a bit of work for him to effectively sink the head into your depths, though the dragon is surprised you can even take him in the first place[otherwise]After much work and strained grunts, the two of you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if]. Done helping you, the beast lets you go, allowing you to continue on your own pace.";
		otherwise:
			say "     You suggest against his aid, intent on taking care of this yourself as you line up your ass with his proudly jutting tool. Taking a moment to breath, you slowly force yourself upon the rod, quickly contending with his flared head. [if scalevalue of player is 3 and player is twistcapped]Your difficulty is only brief before you sink the head into your depths entirely, your subsequent ease much to the dragon's surprise[otherwise if scalevalue of player < 3]Much in spite your peculiar talent, it takes quite a bit of work for you to effectively sink the head into your depths, though the dragon is surprised you can even take him in the first place[otherwise]After much work and strained grunts, you manage to sink the head into your depths, the rest taking somewhat less work, up to the knot[end if].";
	otherwise:
		say "     Climbing over the beast, you carefully line up your ass with his proudly jutting rod. Briefly teasing your anal ring with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into your supple, yielding depths. [if player is twistcapped]Struck by a rather impish urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This surprise is enough to cause him to moan loudly, a gout of pre spurting from his suddenly enveloped tool[otherwise]Past his head, your descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     'Oh, m-my victor is so [if scalevalue of player < 4]t-tight[otherwise if player is twistcapped]s-skilled[otherwise]f-firm[end if].' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 0]your own bouncing in the open air[otherwise]cunt[sfn] dripping against the open air[end if], staining the dragon's scales with [if cocks of player > 1 or cunts of player > 1]their[otherwise]its[end if] slick fluids[if scalevalue of player < 3], stretched to the limits of your ability to contain the organ[end if].";
	say "     You can tell, by the creature's rising fervour, that he's about to erupt, it might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if scalevalue of player < 4]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own dick[smn][otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz. Soon thereafter, your desperate endeavour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against him[otherwise if cunts of player > 0]cunt[sfn] staining his crotch with your release[end if], mixing with his own, the reptile now an embarrassing, cum-stained mess.";
		say "     Eventually, you step off of the dragon, letting him clean himself off.";
		say "     'Oh, now very naughty, making a mess of me like that!' He feigns insult, taking a moment to regain his posture. 'That was satisfying! Perhaps my victor would be interested in another go sometimes down the line?' He goes on to explain where he resides. Apparently there's a cave within [bold type]Rocky Outcropping[roman type] not far from here, and his instructions are clear enough that you should have no issue getting there. 'Doran's the name, by the way.'";
	otherwise:
		say "     Compelled by your wanton hunger, [if scalevalue of player < 4]you take considerable effort to finally tie yourself with the beast's knot[otherwise if player is twistcapped]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to cry out, pumping your bowels full with gout after successive gout of his voluminous jizz[if scalevalue of player < 3], body visibly bulging to abide this release[end if], sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against his torso[otherwise if cunts of player > 0]cunt[sfn] staining his torso with your release[end if].";
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

Rocky Outcropping is a room. It is fasttravel. It is private. It is sleepsafe.
Outcropping Exit is a door. Outcropping Exit is dangerous. The marea of Outcropping Exit is "Plains". Outcropping Exit is undescribed. Outcropping Exit is east of Rocky Outcropping.
the description of Rocky Outcropping is "	 The cavernous alcove, of which Doran resides in, is quite large and spacious for the dragon. You find it littered with various bits and baubles he's no doubt stumbled upon and collected for his amusement, though nothing of particular interest or value catches your eye. It's a little unkempt, but isn't all that bad all things considered. [if daytimer is day]For the most part light floods in from the cave's entrance, though there's also a campfire, near the cave's center, which still contains a few errant, glowing embers, indicative of its recent use[otherwise]Faint starlight creeps in from the outside, though the main source of illumination remains his roaring campfire at the cave's center[end if]. No doubt the surrounding outcropping of stone shields the place from the wind, making the cave relatively calm and quiet.";
Doran is a man. Doran is in Rocky Outcropping.
the linkaction of Doran is "Possible Actions: [link]talk[as]talk doran[end link], [link]smell[as]smell doran[end link], [link]fuck[as]fuck doran[end link], [link]request[as]request doran[end link], [link]discuss[as]discuss doran[end link][line break]";
the description of Doran is "[doranlook]";
the fuckscene of Doran is "[doransex]";
instead of sniffing Rocky Outcropping:
	say "     It has the obvious scent of earth and burnt wood, which more than overpowers any scent the fastidious Doran leaves behind.";
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
				say "     'Oh, my sincerest apologies! My trespass must be forgiven, one knows how things can get around here[if cocks of player is 0 and cunts of player > 0]--or perhaps my victor is female and they just like being considered a man, how very naughty[end if].'";
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
			[may want to fix a neutral doran offer here]
		otherwise: 
			say "     You're not exactly sure this is right for him to do, or why he's so insistent on the distinction, but it's clearly his idea and he seems fine with it, not that there seems any way to change his mind on the matter.";
		if player is submissive: 
			say "     Your submissive inclination compels you to point out that this isn't exactly your 'area of expertise', to which he quickly dismisses.";
			say "     'Oh, worry not. I'll happily play the domineering role for my [dorgr], if that is what they wish.' Instinctively, you agree to this arrangement, 'Say no more of it, if my [dorgr] wants to be used then used they shall be.'";
			now dorrolereg is 0;
			now dordomtop is 2;
		say "     'That's all I need to know, [dorgr], feel free to ask of me any need that enters their mind.' He lets you off to continue as you were.";
		now dorfirsttalk is true;
		now the vmusings of Doran is "[doranmusing]"; [Activate Muse]
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
	otherwise if lastfuck of Doran - turns <= 8:
		if dorrolereg is 0:
			say "     'Oh, my [dorgr] is interested in another go, so soon? I'm afraid I'm still too tired from the last bout. I'll be more than eager to have my fun with them when I'm up to it.'";
		otherwise:
			say "     'Again, [dorgr]? Oh, they must forgive me, I'm still absolutely exhausted! I don't mean to turn tail, I just wouldn't be any good at pleasing them, I'm sorry.'";	
	otherwise:
		say "[dorsexprot]"; [Invoke Doran Sex Protocol]

dorneutroll is a number that varies. dorneutroll is usually 0; [Doran Neutral Roll. Doran decides which position he'll take after last sex. 1 = Dominant, 2 = Submissive]
	
to say dorsexprot: [Doran Sex Protocol]
	if dorneutroll is 0, now dorneutroll is a random number between 1 and 2; [Safeguard]
	if dorrolereg < 2 and dorroleint is 4, decrease dorroleint by 1; [Free push to reduce switching time]
	if dorrolereg > 0 and dorroleint is 0, increase dorroleint by 1;
	if dorrpis > 0: [Is a Roleplay In Session?]
		say "[dorrpsp]"; [Doran Roleplay Sex Protocol]
	otherwise if dorrolereg is 0 or (dorrolereg is 1 and dorneutroll is 1): [Dom sex pool]
		now dorvorpcf is false;
		now dorvornpcf is false;
		now dorvornpa is false;
		if dorrolereg is 1 and a random chance of 1 in 2 succeeds:
			say "[dorneut_1]"; [NEW! 69 Scene]
		otherwise if anallevel is 3 and dorroleint is 0 and (("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or (a random chance of 1 in 6 succeeds)) and dorrjd is false:
			say "[dordom_6]"; [rimjob scene]
		otherwise if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and ((cunts of player is 0 and ((anallevel is 3 and a random chance of 2 in 3 succeeds) or (anallevel is 2 and a random chance of 1 in 2 succeeds))) or (cunts of player > 0 and a random chance of 1 in 4 succeeds)) and (scalevalue of player > 1 or player is twistcapped):
			say "[dordom_1]"; [anal sex scene]
		otherwise if cunts of player > 0 and cunt length of player > 4 and a random chance of 1 in 3 succeeds:
			say "[dordom_2]"; [cunt sex scene]
		otherwise if (cock length of player > 17 and a random chance of 1 in 3 succeeds) or (cock length of player < 19 and a random chance of 1 in 2 succeeds): [Dominant Doran Handjob Scenes]
			if (cocks of player > 0 and cunts of player is 0) or (cocks of player > 0 and cunts of player > 0 and a random chance of 1 in 2 succeeds):
				say "[dordom_4]"; [Cock-Focused Iteration]
			otherwise:
				say "[dordom_5]"; [Cunt-Focused Iteration]
		otherwise if cocks of player > 0 and cock length of player > 18 and a random chance of 1 in 2 succeeds:
			say "[dordom_7]"; [Riding scene]
		otherwise:
			say "[dordom_3]"; [oral sex scene]
	otherwise: [Sub sex pool]
		now calcnumber is -1;
		say "     Upon requesting for a bit of action, Doran gets up and moves over to you[if dorrolereg is 1], his demeanour suggesting he's in a more submissive mood[end if].";
		say "     '[one of]Yes[or]Certainly[or]Of course[at random], [dorgr]. [one of]What is their wish[or]How would they have me[or]How may I service them[at random]?'";
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Choices:[roman type][line break]";
			say "(1) [if cocks of player > 0][link]Mount him[as]1[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
			say "(2) [if cocks of player > 0][link]Suck your dick[as]2[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
			say "(3) [if cunts of player > 0][link]Eat your cunt[as]3[end link][otherwise][italic type]Female-specific interaction[roman type][end if][line break]";
			say "(4) [if cunts of player > 0][link]Ride him[as]4[end link][otherwise][italic type]Female-specific interaction[roman type][end if] [if cunts of player > 0 and cunt length of player < 8][italic type]- Too small![roman type][end if][line break]";
			say "(5) [link]Ride him anally[as]5[end link] [if scalevalue of player < 2 and player is not twistcapped][italic type]- Too small![roman type][end if][line break]";
			say "(6) [link]Receive Rimjob[as]6[end link][line break]";
			say "(7) [link]Pleasure him orally[as]7[end link][line break]";
			say "[line break]";
			say "(0) [link]'Nevermind.'[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-5)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 7:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				if cocks of player is 0:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
				otherwise:
					say "[dorsub_1]"; [fuck the dragon]
					now trixieexit is 1;
			otherwise if calcnumber is 2:
				if cocks of player is 0:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
				otherwise:
					say "[dorsub_2]"; [oral cock]
					now trixieexit is 1;
			otherwise if calcnumber is 3:
				if cunts of player is 0:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
				otherwise:
					say "[dorsub_3]"; [oral cunt]
					now trixieexit is 1;
			otherwise if calcnumber is 4:
				if cunts of player is 0 or cunt length of player < 5:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
				otherwise:
					say "[dorsub_4]"; [cunt sex]
					now trixieexit is 1;
			otherwise if calcnumber is 5:
				if scalevalue of player < 2 and player is not twistcapped:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
				otherwise:
					say "[dorsub_5]"; [anal sex]
					now trixieexit is 1;
			otherwise if calcnumber is 6:
				say "[dorsub_6]"; [Rimjob Scene]
				now trixieexit is 1;
			otherwise if calcnumber is 7:
				say "[dorsub_7]"; [Oral Giving Scene]
				now trixieexit is 1;
			otherwise:
				say "[dorsub_snub]"; [turn down]
				now trixieexit is 1;
	if dorwassnub is false:
		if dorrolereg is 0 and dorroleint > 0:
			decrease dorroleint by 1;
		otherwise if dorrolereg is 2 and dorroleint < 4:
			increase dorroleint by 1;
		otherwise if dorrolereg is 1:
			if dorroleint > 2:
				decrease dorroleint by 1;
			otherwise if dorroleint < 2:
				increase dorroleint by 1;
			now dorneutroll is a random number between 1 and 2;
		now lastfuck of Doran is turns;
		if dorbb is true:
			increase libido of player by 5;
			if libido of player > 100:
				now libido of player is 100;
		otherwise:
			if libido of player > 25:
				decrease libido of player by ((libido of player / 20) + 1);
		if dorvorreg > 1 and dorrolereg is 0 and dorrpis is 0, follow the turnpass rule;
		now dorrpis is 0;
		now dorrp_tv1 is 0;
		now dorrp_tv2 is 0;
		now dorrp_tv3 is 0;
		now dorrp_tv4 is 0;
		if dornpbb > 0, decrease dornpbb by 1;
	otherwise:
		now dorwassnub is false;
	now dorbb is false;
	
an everyturn rule:
	if player is in Rocky Outcropping and Doran is visible: [Auto-Fire Protocol]
		if dorroleint is 0 and dorrolereg is 0 and dorautint > 0 and (cunts of player > 0 or cocks of player > 0) and dorrpis is 0:
			let x be 0;
		otherwise:
			continue the action;
		if (dorautint is 1 and lastfuck of Doran - turns < 9) or (dorautint is 2 and lastfuck of doran - turns < 17):
			continue the action;	
		now dorauto is true;
		say "[dorsexprot]";
		now dorauto is false;

understand "rimjob doran" as dorrim.

check dorrim:
	if Doran is not visible, say "That's not a verb I recognise." instead;
	
carry out dorrim:
	if dorrolereg is 0 and anallevel is 3:
		if dorrjdr is false:
			say "     You approach Doran, advising against having him force you to attend of his ass when having sex, which appears to briefly confuse the dragon.";
			say "     'Oh... My apologies, I got the impression you might be into that sort of thing, perhaps I misperceived your obsession with ass?' You ask if this is a problem, to which he shakes his head in response, 'Of course not, the last thing I'd want to do is make my [dorgr] uncomfortable... Well, uncomfortable in a way they don't enjoy. If they command it, then it shall be done.' Shall you?";
			if player consents:
				now dorrjd is true;
				say "     'Very well, my apologies if I caused any sort of inconvenience.'";
			otherwise:
				say "     'Oh, uh, alright. Don't be afraid to ask this of me again if it does bother you.'";
			now dorrjdr is true;
		otherwise:
			if dorrjd is false:
				say "     'Would my [dorgr] rather not have their dragon sit on their face?'";
				if player consents:
					say "     'Then worry no longer about it.'";
					now dorrjd is true;
				otherwise:
					say "     'Very well, I'll think no more of this concern.'";
			otherwise:
				say "     'Has my [dorgr] changed their mind on this particular subject?'";
				if player consents:
					say "     'Alright, I will certainly exploit this new freedom.'";
					now dorrjd is false;
				otherwise:
					say "     'Very well, I'll think no more of this concern.'";
	otherwise:
		say "     You are not eligible for this particular interaction, indicating that you shouldn't encounter what it entails anyways.";			

Section 3.1 - Doran NPC Sex Pool

to say dordom_1: [Dom Doran anal sex]
	if dorauto is true:
		say "     Suddenly, you find yourself firmly pinned against ground. The dragon roughly exposing your ass before his hungering eyes, clearly desperate to use you.";
		say "     '[one of]Hmpf[or]Tsk[or]Well then[at random], [one of]I'm rather fond of my [dorgr]'s ass, and for too long it's been missing one key ingredient[or]I think my [dorgr] needs to learn their place for their neglect[or]my [dorgr] is such a cum dumpster, they forget to attend to their dragon[at random], [one of]don't they think[or]wouldn't they agree[at random]?' His remark carrying the sting of your neglect,";
	otherwise:
		say "     Upon your [if dorroleint is 0]plea[otherwise]request[end if] for sex, the dragon gets up and struts around you in silence, barely regarding [if dorroleint is 0]your offering[otherwise]you[end if] before you're firmly pinned to the ground, immodest talons carefully exposing your ass before his discerning eyes.";
		say "     '[one of]Ah, yes[or]Hmm[or]Well then[at random], [if dorroleint is 0][one of]I'm rather fond of my [dorgr]'s ass, but I'm thinking it's missing one key ingredient[or]I think my [dorgr] needs to learn their place[or]I'm certain my [dorgr] is the best cum dumpster around[at random][otherwise][one of]I'm certain my [dorgr] likes surprises[or]I could stare at my [dorgr]'s ass like this for hours, but that would just be a waste[or]I think my [dorgr] is due for a good dicking[at random][end if], [one of]don't they think[or]yes[or]wouldn't they agree[at random]?' He remarks before";
	say " you're made watch on";
	if anallevel is 3 and a random chance of 2 in 3 succeeds:
		say ", head descending upon your rear before you feel his tongue's wet[if dorroleint is 0], familiar[end if] caress against your exposed hole. [if dorroleint is 0]You beg for him to to thrust his slick organ upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your lips, it's not long before[end if] you feel it force its way past your anal ring.";
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
		say ", spare talon engulfed within his maw before it's relinquished quickly thereafter, now-slick digit descending upon your behind, offering its[if dorroleint is 0] familiar[end if] caress against your exposed hole. [if dorroleint is 0]You beg for him to to force his finger upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your breath, it's not long before[end if] you feel it force its way past your anal ring.";
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
		say "     '[one of]Mmm[or]Yes[or]Ah[at random], [one of]I think my [dorgr] likes that, don't they[or]that's just the opening act, my [dorgr], think they can last the whole way[or]I'm sure that will prepare my [dorgr] enough for what is to follow, wont it[at random]";
	say "?' Not granted the opportunity to reply, you're made to groan[if dorroleint is 0] needily[end if] as you feel tip of his flared cockhead against your already-stretched hole";
	if scalevalue of player > 3:
		say ". No doubt certain that your large, [bodydesc of player] form will abide him with little difficulty, he--with a firm grunt--forces the whole of his cockhead in a single thrust, much to your [if dorroleint is 0]moaning approval[otherwise]groaning regard[end if] for such harsh treatment, slowly working the remainder in, up to his knot.";
	otherwise:
		say ". [if dorroleint is 0]Trusting in your ability to take him, he shows very little restraint in pushing his cockhead in, forcing tainted moans of intense pleasure out of you as it's squeezed through your tight ring[otherwise]Taking great care not to hurt you, he slowly forces his cockhead in, causing groans in intense pleasure to escape you as it's inevitably squeezed through your tight ring[end if]. With some additional effort he's able to work on the remainder, soon enveloped by your flesh, up to his knot.";
	if scalevalue of player < 4 and dorroleint is 0 and a random chance of 1 in 2 succeeds:
		say "     Briefly subjecting you to the dragon's ponderous weight of his impressive frame, your [if cocks of player > 0]blatantly hard, [cock size desc of player] dick[smn] grind against the ground, staining it with your pre[otherwise]oozing, unattended cunt[sfn] stain the ground with your lubricant[end if]. Not quite satisfied with the angle he's subjected his little toy to, he grabs a hold of you, keeping you in position as he shifts onto his back.";
		say "     '[one of]My [dorgr] is so very small, I wouldn't want to make them too uncomfortable just yet[or]This way, I get a better view of my [dorgr], as they squirm[or]For such a little [dorgr], they certainly know how to make my dick disappear[at random].' He teases you, much in the wake of your moaning regard you as he relegates you to a mere sex toy for his perverse desire, forcibly riding you up and down his throbbing, draconic length[if scalevalue of player < 3], visibly bulging in order to contain him[end if]. Pleading for his reciprocation, he can't help but at least somewhat oblige his '[dorgr]', one of his talons moving to [if cocks of player > 1]stroke one of your exposed cocks, no doubt rendered hard from the[otherwise if cocks of player is 1]stroke your exposed cock, no doubt rendered hard from the[otherwise if cunts of player > 1]tease one of your dripping, unattended portals, no doubt aching for need following this[otherwise]tease your dripping, unattended portal, no doubt aching for need following this[end if] ordeal.";
		say "     He grows increasingly determined to impale you with his knot. Your hole [if player is twistcapped]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out in the wake of each subsequent inch before you manage the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you soon find your thighs slapping against the beast's voluminous sack at a rapidly increasing pace.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out, ";
			if cocks of player > 0: 
				say "cock's sputtering forcibly erratic against your[if scalevalue of player < 4] immensely[end if] strained prostate, staining the dragon's thighs and crotch with your seed";
			otherwise if cunts of player > 0:
				say "pussy's gushing forcibly strained against the[if scalevalue of player < 4] immense[end if] intrusion, staining the dragon's crotch with your sexual fluids";
			say ". Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout flooding your bowels, [if scalevalue of player < 3]belly visibly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you can't contain any more[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your bowels, [if scalevalue of player < 3]belly visibly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you can't contain any more[end if]. It's enough to make you cry out in your own climax, ";
			if cocks of player > 0:
				say "cock's sputtering forcibly erratic against your[if scalevalue of player < 4] immensely[end if] strained prostate, staining the dragon's thighs and crotch with your seed.";
			otherwise if cunts of player > 0:
				say "pussy's gushing forcibly strained against the[if scalevalue of player < 4] immense[end if] intrusion, staining the dragon's crotch with your sexual fluids.";
		say "     Shifting back onto his feet, he offers slight care in pulling you free of his dick, knot audibly popping from your stretched hole before planting you on the ground once more, soon followed by a flood of the beast's thick, heady ejaculate thereafter. Feeling particularly devious, he revels in your pitiful state, aiming his still cum-oozing dick at your head and upper torso to sully them as well.";
	otherwise:
		say "     Subjecting you to the dragon's ponderous weight of his impressive frame, [if scalevalue of player < 4]he nonetheless takes considerable care to not crush or suffocate you under him, overwhelming heat of his rising fervor cascading down upon you[otherwise]the overwhelming heat of his rising fervor cascades down upon you[end if]. You can't help but moan as your [if cocks of player > 1]blatantly hard, [cock size desc of player] dicks grind against the ground, staining it with your pre[otherwise if cocks of player is 1]blatantly hard, [cock size desc of player] dick grinds against the ground, staining it with your pre[otherwise if cunts of player > 1]oozing, unattended cunts stain the ground with your lubricant[otherwise]oozing, unattended cunt stains the ground with your lubricant[end if].";
		say "     '[one of]Hnf[or]Mnf[or]Mmf[or]Ah[at random], ";
		if dorroleint is 0:
			say "[one of]my [dorgr] is a tight[if scalevalue of player < 4] little[end if] bitch[or]I think my [dorgr] prefers being fucked silly[or]I love it when my [dorgr] is under me like this[at random]";
		otherwise:
			say "[one of]my [dorgr] is so tight[or]I'm going to fuck my [dorgr] silly[or]I love it when my [dorgr] lets me do this[at random]";
		say "!' His remark strained against his increasing fervour, each powerful thrust sending a tremor through your[if scalevalue of player < 4] diminutive[end if] body. He grows increasingly determined to impale you with his knot. Your hole [if player is twistcapped or scalevalue of player > 3]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out the wake of each subsequent inch before you garner the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you quickly feel his voluminous sack slap against your [if cock width of player > 0 and cockname of player is not listed in infections of internallist]own[otherwise if scalevalue of player < 4]thighs[otherwise]crotch[end if] in rapid succession.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out, ";
			if cocks of player > 0: 
				say "cock's sputtering forcibly erratic against your[if scalevalue of player < 4] immensely[end if] strained prostate, staining the ground with your seed";
			otherwise:
				say "pussy's gushing forcibly strained against the[if scalevalue of player < 4] immense[end if] intrusion, staining the ground with your sexual fluids";
			say ". Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing his crotch firm against you one final time before roaring out, gout after overwhelming, continuous gout flooding your bowels, [if scalevalue of player < 3]belly bloating to abide his load[otherwise if scalevalue of player is 3]quickly leaking from your stuffed hole when you can't contain any more[otherwise]carnal warmth flooding your insides[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces his crotch firm against you a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your bowels, [if scalevalue of player < 3]belly bloating to abide his load[otherwise if scalevalue of player is 3]quickly leaking from your stuffed hole when you can't contain any more[otherwise]carnal warmth flooding your insides[end if]. It's enough to make you cry out in your own climax, ";
			if cocks of player > 0:
				say "cock's sputtering forcibly erratic against your[if scalevalue of player < 4] immensely[end if] strained prostate, staining you and the ground with your seed.";
			otherwise:
				say "pussy's gushing forcibly strained against the[if scalevalue of player < 4] immense[end if] intrusion, staining you and the ground with your sexual fluids.";
		say "     Panting atop you for a moment as he recovers from the ordeal, he slowly attends to the matter of pulling you free of his dick, knot audibly popping from your stretched hole, soon followed by a flood of the beast's thick, heady ejaculate thereafter, staining your exhausted behind";
		if dorroleint is 0:
			say ". Feeling particularly devious he revels in your pitiful state, aiming his still cum-oozing dick at your [if scalevalue of player < 4]head and upper torso to sully them[otherwise]torso to sully it[end if] as well.";
		otherwise:
			say ".";
	if dorroleint is 0:
		say "     '[one of]Ah[or]Right[or]Well[at random], [one of]then[or]now[at random]...' Clearly his stamina has recovered a fair bit, as he now struts cheerfully around you, [if scalevalue of player < 5]moving[otherwise]climbing[end if] over your head to offer his oozing, spent dick to your face, '[one of]Get to work, my [dorgr] would make for a poor cum slut if they didn't finish up[or]A good [dorgr] cleans up after their messes[or]My [dorgr] always finishes their job[at random]!' Still exhausted and sore yourself, you slowly oblige the dragon's indignant, prodding insistence. Tongue caressing the softened organ, your efforts pained by you already-stuffed state, the wanton tedium of the ritual exacerbated as your affections compel it to ooze further. After some time you manage to complete your task, though you yourself remain an embarrassing, cum-stained mess.";
	now dorvorpcf is true;
	if dorvorreg is 2 and scalevalue of player < 4:
		say "     '[if dorroleint is 0][one of]Heh[or]Mmm[or]Tsk[at random], [one of]I think it's safe to say that my meal of a [dorgr] is rightly prepared[or]looking at them now, my [dorgr] is such an appetizing little slut[or]I don't think I'm finished with using my little [dorgr] just yet[at random][otherwise][one of]Moving on[or]Very well[or]Alright then[at random], [one of]I hope my [dorgr] is eager for a little trip[or]I'm eager to make a meal of my so very obliging [dorgr][or]I think I can afford a some 'special' fun with my [dorgr][at random][end if].' Licking his lips, an implicit illustration of what is to follow, you feel his tongue upon you once more, briefly tasting his meal-to-be as he offers you a moment to catch your breath.";
		dorvore;
	otherwise:
		say "     '[one of]Well done[or]Many thanks[or]My thanks[at random], [if dorroleint is 0][one of]my [dorgr] takes their dragon like a good slut[or]I always enjoy filling my [dorgr] with their dragon's cum[or]I look forward to using my [dorgr] in the future[at random][otherwise][one of]my [dorgr] treats their dragon well[or]I always enjoy my [dorgr]'s attention[or]I look forward to having more fun with my [dorgr] in the future[at random][end if].' Following his adulation he [if dorroleint is 0]nonetheless appears rather fond of leaving you as a mess, letting you off to clean yourself[otherwise]helps to clean you off, tongue's slick affection shared with you[end if] before resting back at the campfire once more.";
	
to say dordom_2: [Dom Doran cunt sex]
	if dorauto is true:
		say "     Suddenly, you find yourself firmly pinned against ground. The dragon roughly exposing your ass before his hungering eyes, clearly desperate to use you.";
		say "     '[one of]Tsk[or]Hmph[or]Well then[at random], [one of]My [dorgr] has been neglected of a proper breeding[or]my [dorgr] clearly needs to be put in their place for their absence[or]I'm more than eager to have my way with my [dorgr][at random], [one of]don't they think[or]wouldn't they agree[at random]?' His remark carrying the sting of your neglect,";
	otherwise:
		say "     Upon your [if dorroleint is 0]plea[otherwise]request[end if] for sex, the dragon gets up and struts around you in silence, barely regarding [if dorroleint is 0]your offering[otherwise]you[end if] before you're firmly pinned to the ground, immodest talons carefully exposing your ass before his discerning eyes.";
		say "     '[one of]Ah, yes[or]Hmm[or]Well then[at random], [if dorroleint is 0][one of]I think my [dorgr] is in dire need of good breeding[or]my [dorgr] clearly needs to be put in their place[or]I'm certain my [dorgr]'s eager for me to have my way with them[at random][otherwise][one of]my [dorgr] looks so inviting[or]I'm certain my [dorgr] likes surprises[or][at random]I could stare at my [dorgr]'s ass like this for hours, but that would just be a waste[end if], [one of]don't they think[or]wouldn't they agree[at random]?' He remarks before";
	say " you're made watch on";
	if a random chance of 1 in 2 succeeds:
		say ", head descending upon you behind before you feel his tongue's wet[if dorroleint is 0], familiar[end if] caress against your exposed cunt[sfn]. [if dorroleint is 0]You beg for him to to thrust his slick organ upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your lips, it's not long before[end if] you feel it force its way past [if cunts of player > 1]the supple folds of one[otherwise]your supple folds[end if].";
		say "     Writhing, indignant intrusion enduring [if cunt length of player > 17]little[otherwise if cunt length of player > 11]only slight[otherwise]a fair bit of[end if] difficulty in its movement through your depths, eliciting a chain of gasps from you with every irreverent twitch it makes. He subjects you to this ritual for a [if dorroleint is 0]considerable[otherwise]fair[end if] amount of time, leaving your hole a slick[if dorroleint is 0] and dripping[end if] mess before he is finally satisfied[if dorroleint is 0], so aroused by this abuse that you could climax off of it alone, if not for the dragon's keen eye tempering restraint[end if].";
	otherwise:
		say ", spare talon engulfed within his maw before it is relinquished quickly thereafter, now-slick digit descending upon your behind, offering its[if dorroleint is 0] familiar[end if] caress against your exposed cunt[sfn]. [if dorroleint is 0]You beg for him to to force his finger upon your depths, much to his amusement, teasing you for but a moment longer before he obliges, causing you to moan as[otherwise]Briefly teasing you, wanton moans escaping your breath, it's not long before[end if] you feel it force its way past [if cunts of player > 1]the supple folds of one[otherwise]your supple folds[end if].";
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
		say "     '[one of]I'm certain my [dorgr] would prefer to be violated in the open air[or]Oh, my [dorgr] is exceptional at being used[or]I'm always afraid I'm going to lose my [dorgr] under there[at random].' He teases you, much in the wake of your moaning regard as he relegates you to a mere sex toy for his perverse desire, forcibly riding across the length of his throbbing, draconic organ[if scalevalue of player < 3], visibly bulging in order to contain him[end if]. Writhing against the dragon's scaled thigh as he grinds you across it, ";
		if cocks of player > 0 or cunts of player > 1:
			say "he can't help but further subject '[dorgr]' to this wanton affection, one of his talons moving to[if cocks of player > 1]stroke one of your exposed cocks, no doubt rendered hard from the[otherwise if cocks of player is 1]stroke your exposed cock, no doubt rendered hard from the[otherwise if cunts of player > 2]tease one of your dripping, unattended portals, no doubt aching for need following this[otherwise]tease your dripping, unattended portal, no doubt aching for need following this[end if] ordeal.";
		otherwise:
			say "he lowers his head down to meet you with his tongue's slick affection, heated breath washing over you, no doubt made increasingly shallow by his rising fervour.";
		say "     He grows increasingly determined to impale you with his knot. Your hole [if cunt length of player > 13]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out the wake of each subsequent inch before you manage the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you quickly find your thighs slapping against the beast's voluminous sack with a rapid succession.";
		if libido of player > 20:
			say "     Almost immediately thereafter you cry out,";
			if cocks of player > 0:
				say "cock's sputtering forcibly erratic against the [if cunt length of player > 13]somewhat[otherwise]immensely[end if] straining intrusion, staining the dragon's thigh and the ground with your seed";
			otherwise:
				say "pussy's gushing forcibly strained against the immense intrusion, staining the dragon's thigh and the ground with your sexual fluids";
			say ". Doran would doubtlessly chide you for your sensitivity if he weren't so wrapped up in matters of his own climax, forcing you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout flooding your womb, [if scalevalue of player < 3]belly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you may contain not a drop more[end if].";
		otherwise:
			say "     Soon thereafter, Doran trembling with an unbridled, wanton fury, he forces you firm against his crotch a final time before roaring out, gout after overwhelming, continuous gout of cum flooding your womb, [if scalevalue of player < 3]belly bloating to abide his load[otherwise]quickly leaking from your stuffed hole when you may contain naught a drop more[end if]. It's enough to make you cry out in your own climax, ";
			if cocks of player > 0: 
				say "cock's sputtering forcibly erratic against the [if cunt length of player > 13]somewhat[otherwise]immensely[end if] straining intrusion, staining the dragon's thigh and the ground with your seed.";
			otherwise:
				say "pussy's gushing forcibly strained against the immense intrusion, staining the dragon's thigh and the ground with your sexual fluids.";
		say "     Shifting back onto his feet, he offers slight care in pulling you free of his dick, knot audibly popping from your stretched hole before planting you on the ground once more, soon followed by a flood of the beast's thick, heady ejaculate thereafter. Feeling particularly devious, he revels in your pitiful state, aiming his still cum-oozing dick at your head and upper torso to sully them as well.";
	otherwise:
		say "     Forced to abide the dragon's ponderous weight of his impressive frame, [if scalevalue of player < 4]he nonetheless takes considerable care to not crush or suffocate you under him,[otherwise]the[end if] overwhelming heat of his rising fervor cascading down upon you. You can't help but moan as you[if cocks of player > 1]r blatantly hard, [cock size desc of player] dicks grind against the ground, staining it with your pre[otherwise if cocks of player is 1]r blatantly hard, [cock size desc of player] dick grinds against the ground, staining it with your pre[otherwise if cunts of player > 2]r oozing, unattended cunts stain the ground with your lubricant[otherwise if cunts of player > 1]r oozing, unattended cunt stains the ground with your lubricant[otherwise] feel the dragon reaching down to offer his tongue's slick affection, heated breath washing over you in tandem with his body's[end if].";
		say "     '[one of]Hnf[or]Mnf[or]Mmf[or]Ah[at random],";
		if dorroleint is 0:
			say "[one of]I'm going to enjoy ruining my [dorgr][or]my [dorgr] will be walking funny after this[at random]";
		otherwise:
			say "[one of]my [dorgr] might walk funny for a little while after this[or]I'm going to fuck my [dorgr] silly[at random]";
		say "!' His remark strained against his increasing fervour, each powerful thrust sending a tremor through your[if scalevalue of player < 4] diminutive[end if] body. He grows increasingly determined to impale you with his knot. Your hole [if cunt length of player > 13]only briefly[otherwise]somewhat[end if] stubborn about it before he finally makes headway, causing you to slowly cry out in the wake of each subsequent inch before you garner the token reprieve of engulfing the whole of his tool. This progression, however, fails to compel him to go about his business any slower, as you quickly feel his voluminous sack slap against your [if cock width of player > 0 and cockname of player is not listed in infections of internallist]own[otherwise if scalevalue of player < 4]thighs[otherwise]crotch[end if] in rapid succession.";
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
				say "pussy's gushing forcibly strained against the immense intrusion, staining you and the ground with your sexual fluids.";
		say "     Panting atop you for a moment as he recovers from the ordeal, he slowly attends to the matter of pulling you free of his dick, knot audibly popping from your stretched hole, soon followed by a flood of the beast's thick, heady ejaculate thereafter, staining your exhausted behind";
	if dorroleint is 0:
		say ". Feeling particularly devious he revels in your pitiful state, aiming his still cum-oozing dick at your [if scalevalue of player < 4]head and upper torso to sully them[otherwise]torso to sully it[end if] as well";
	say ".";
	if dorroleint is 0:
		say "     '[one of]Ah[or]Right[or]Well[at random], [one of]then[or]now[at random]...' Clearly his stamina has recovered a fair bit, as he now struts cheerfully around you, [if scalevalue of player < 5]moving[otherwise]climbing[end if] over your head to offer his oozing, spent dick to your face, '[one of]My [dorgr] wouldn't abide leaving their dragon dirty[or]My [dorgr]'s work isn't quite done yet[or]It'd be very inappropriate if my [dorgr] didn't maintain their dragon[at random]!' Still exhausted and sore yourself, you slowly oblige the dragon's indignant, prodding insistence. Tongue caressing the softened organ, your efforts pained by you already-stuffed state, the wanton tedium of the ritual exacerbated as your affections compel it to ooze further, undoing your prior work. After some time you manage to complete your task, though you yourself remain an embarrassing, cum-stained mess.";
	now dorvorpcf is true;
	if dorvorreg is 2 and scalevalue of player < 4:
		say "     '[if dorroleint is 0][one of]Heh[or]Mmm[or]Tsk[at random], [one of]I think it's safe to say that my meal of a [dorgr] is rightly prepared[or]looking at them now, my [dorgr] is such an appetizing little slut[or]I don't think I'm finished with using my little [dorgr] just yet[at random][otherwise][one of]Moving on[or]Very well[or]Alright then[at random], [one of]I hope my [dorgr] is eager for a little trip[or]I'm eager to make a meal of my so very obliging [dorgr][or]I think I can afford a some 'special' fun with my [dorgr][at random][end if].' Licking his lips, an implicit illustration of what is to follow, you feel his tongue upon you once more, briefly tasting his meal-to-be as he offers you a moment to catch your breath.";
		dorvore;
	otherwise:
		say "     '[one of]Well done[or]Many thanks[or]My thanks[at random], [if dorroleint is 0][one of]my [dorgr] takes their dragon like a good slut[or]I always enjoy filling my [dorgr] with their dragon's cum[or]I look forward to using my [dorgr] in the future[at random][otherwise][one of]my [dorgr] treats their dragon well[or]I always enjoy my [dorgr]'s attention[or]I look forward to having more fun with my [dorgr] in the future[at random][end if].' Following his adulation he [if dorroleint is 0]nonetheless appears rather fond of leaving you as a mess, letting you off to clean yourself[otherwise]helps to clean you off, tongue's slick affection shared with you[end if] before resting back at the campfire once more.";

to say dordom_3: [Dom Doran oral sex]
	if dorauto is true:
		say "     You, rather abruptly, find yourself pulled next to the fire by Doran, a wanton need in his appearance when you're forced to give him your undivided attention, poised silhouette partially outlined against the [if daytimer is day]creeping daylight[otherwise]fire[end if].";
		say "     '[one of]My [dorgr]'s is due for sucking off their dragon[or]Too long has my dick been neglected of my [dorgr]'s attention[or]My [dorgr] clearly needs the taste of their dragon[at random].' With his command appointed, [if scalevalue of player > 3]your head is forced to descend[otherwise]you're forced to descend[end if]";
	otherwise:
		say "     Upon [if dorroleint is 0]gesturing to[otherwise]courting[end if] Doran for sex, he briefly ponders what he might subject you to, scratching his chin as he lays there before finally coming to a conclusion. He stands upright, rigid, poised silhouette partially outlined against the [if daytimer is day]creeping daylight[otherwise]fire[end if].";
		say "     '[if dorroleint is 0][one of]I think my [dorgr]'s best suited for sucking off their dragon[or]My dick's eager for my [dorgr]'s attention[or]I know my [dorgr] longs for a taste of their dragon[at random][otherwise][one of]I think it's only fair that my [dorgr] offers me some oral satisfaction[or]I would want my [dorgr] to grant my dick some much-needed attention[or]I long for the touch of my [dorgr]'s lips[at random][end if]";
		say ".' With his [if dorroleint is 0]command appointed[otherwise]request made[end if] you approach him,[if scalevalue of player > 3]head [end if][if dorroleint is 0]eagerly [end if] descending";
	say " upon the dragon's scaled undercarriage. Toned frame heaving with each excited breath, you're given ample view of the beast's[if dorrolereg is 0] enticing[end if] cock, already peeking from it's sheath with a wanton anticipation. [if dorrolereg is 0]Immediately[otherwise]Soon enough[end if] your lips descend upon its exposed head, tongue's affection coaxing its arrival further, much to his moaning approval.";
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
		say "     'M-[dorgr]...!' Doran mutters under his breath before your affections are richly rewarded, the creature suddenly going rigid as you're painted with surge after successive, voluminous surge of the beast's carnal batter. [if dorroleint is 0]Driven by your voracious need to consume as much as you can, you are made dizzy by the overwhelming amount of seed he offers you, quickly outpacing your ability, sputtering out of your mouth and down your [bodytype of player] frame[otherwise]This particularly lewd circumstance more than enough to drive you to bliss, though the excessive amount of seed he offers quickly overwhelms you, sputtering out of your mouth and down your [bodydesc of player] frame, mixing with your own sexual fluids[end if].";
	now dorvorpcf is true;
	if dorroleint is 0:
		say "     [if scalevalue of player > 3]It takes awhile for both of you to recover. You pull free of the softening tool, but the dragon isn't done with you yet, prodding it[otherwise]Taking awhile for both of you to recover, the dragon isn't done with you yet, prodding the softened tool[end if] against your face with a rather bold lack of reverence.";
		say "     '[one of]Oh[or]Hm[or]Now then[at random], my [dorgr], [one of]it'd be improper to not clean up after your mess[or]a good toy finishes the job[or]your dragon won't let you go until you lick him clean[at random].' Still dazed by the prior experience, you need a second before your wanton submission compels you to oblige, tongue caressing along the length of the sated, dripping dick";
		if scalevalue of player > 3:
			say ". Thankfully, it doesn't take long polish the cheeky little lizard's pole, and it's soon positively spotless.";
			say "     '[one of]Ah[or]Yes[or]Excellent[at random], [one of]my [dorgr] makes such a good cum slut[or]my [dorgr] is so obedient[or]I don't think I'd ever be as good at sucking cock as my [dorgr][at random]!' Clearly satisfied, he returns to the campfire, allowing you a moment to clear your head before going off.";
		otherwise if scalevalue of player < 3 and a random chance of 1 in 2 succeeds:
			say ". It quickly becomes apparent, however, that there's just too much to deal with, the cheeky little lizard just oozes more any time you clean part of him off, following up with condescending taunts for your slowness. So intent you become that you don't realize it when he's gone hard a second time, your attempts at fastidiousness only driving him to another orgasm! It might not be as much as the last, and you're sure he's right spent now, but you're absolutely exhausted; you can't do any more.";	
			if dorvorreg is 2 and scalevalue of player < 4:
				now dorvornpa is true;
				say "     '[one of]Tsk[or]Hmph[at random], [one of]It seems I'll have to punish my [dorgr][or]my [dorgr] will just have to satisfy their dragon another way[or]My tiny, pitiful [dorgr] will just have to suffice as a meal for their dragon, then[at random]...' Chastising you, you're forced to the ground by his snout. Nipping and licking your cum-stained self firmly, Doran briefly teases you prior to his imminent punishment.";
				dorvore;
			otherwise:
				say "     '[one of]Tsk[or]Hmph[at random], [one of]my [dorgr] is such a pitiful, tiny slut that can't even clean their messes[or]I feel like I have to teach my [dorgr] how to properly clean a dick[or]I may need to think of a way to punish my [dorgr][at random]...' Chastise you though he may, it's very clear he got a lot out of your floundering, and does thankfully let you off, granting you the opportunity to clean yourself off and recover from the ordeal proper.";			
		otherwise:
			say ". It takes a fair while to properly clean him, however, the cheeky little lizard occasionally oozing more from your continued affections, frequently setting you back before you finally finish, dick positively spotless... Though the same can't be said for you.";
			if dorvorreg is 2 and scalevalue of player < 4:
				say "     '[one of]Hmph[or]No[or]Tsk[at random], [one of]my [dorgr] is still too slow a little slut[or]obedient though they may be, my [dorgr] has yet to fully satisfy their dragon[or]I think my [dorgr] would be a poor little slut if they didn't feed their dragon after pleasing them[at random]!' Doran moves around to force you firmly to the ground with his snout, tongue briefly tasting your cum-stained self as he prepares to satisfy himself another way.";
				dorvore;
			otherwise:
				say "     '[one of]Hm[or]Yes[or]Excellent[at random], [one of]my [dorgr] is a proper little slut[or]my [dorgr] is so obedient[or]I don't think I'd ever be as good at sucking cock as my [dorgr][at random]!' Clearly satisfied, he returns to the campfire, allowing you to clean yourself off and recover from the whole ordeal.";
	otherwise:
		say "     [if scalevalue of player > 3]Taking a moment for both of you to recover from the ordeal, the dragon takes his time cleaning you of the mess you've made whilst attending to him[otherwise]Taking a moment for both of you to recover from the ordeal, the dragon eventually moves out from over you, quickly meeting you again with his tongue's affection, cleaning you of the mess you've made until you're slick only with that of the dragon's saliva[end if].";
		if dorvorreg is 2 and scalevalue of player < 4:
			say "     '[one of]Ah[or]Yes[or]Mm[at random], [one of]my [dorgr] treats their dragon well[or]I don't think a dragon could be happier with any other [dorgr][or]my [dorgr] certainly knows how make a mess of things[at random]!' His regard jovial in the wake of your completed task, he however pushes you back down with his snout when you attempt to pull away. '[one of]Oh[or]Not so fast[or]Now, now[at random], [one of]isn't my [dorgr] forgetting something[or]my [dorgr] wouldn't leave their dragon hungry, now would they[or]has my [dorgr] forgotten our arrangement[at random]?' Tongue caressing your cum-stained form, he affectionately prepares his meal-to-be.";
			dorvore;
		otherwise:
			say "     '[one of]Ah[or]Yes[or]Mm[at random], [one of]my [dorgr] treats their dragon well[or]I don't think a dragon could be happier with any other [dorgr][or]my [dorgr] certainly knows how make a mess of things[at random]!' His regard jovial in in the wake of your completed task, he sets back down next to the campfire, allowing you to recover and go about your business.";

to say dorsub_1: [Sub Doran being fucked]
	say "     You decide to [if dorroleint is 4]order[otherwise]ask[end if] the dragon to turn away and offer himself. Eager to please, he wheels around, [if scalevalue of player < 4]lowering himself to the ground before [end if]hiking his tail over to leave your entry unexposed. Shapely ass revealed before you, he's already quite aroused by the prospect of your imminent abuse, partially exposed tool staining the dirt with its pre.";
	say "     '[one of]Ah[or]Oh[or]Mm[or]Very well[at random], [dorgr], [if dorroleint is 4][one of]completely ruin me[or]please abuse me[or]I ache for them[at random][otherwise][one of]don't hold back[or]I'm ready for anything they've got[or]I'm all theirs[at random][end if].' You expose your [cock size desc of player] dick[smn] before him, [if cock length of player > 17 or dorroleint is 4]a very eager, needy look in his eyes at the prospect of getting[otherwise]clearly eager to be[end if] impaled by [if cocks of player > 1]one of those things[otherwise]such a thing[end if].";
	say "     Approaching the dragon, you more rigorously invoke your arousal by grinding[if cocks of player > 1] one of[end if] your hardening shaft[smn] between the cheeks of his well-toned rear, scales immaculate and smooth under your touch. Slowly, you sink the[if cockname of player is listed in infections of bluntlist] blunt[end if] head of[if cocks of player > 1]one of [end if] your [if cock length of player > 17]impressive [end if]tool[smn] past his fleshy, yielding anal ring, eliciting from the beast a series of approving moans at your initial pace.";
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
	if dornpbb is 1, now dornpbb is 2;
	say "     '[one of]My thanks[or]Many thanks[or]My appreciation[at random], [dorgr]. [if dorroleint is 4][one of]I long for their further abuse[or]Please don't be afraid to use their dragon again[or]Their treatment brings me immense pleasure[at random][otherwise][one of]I hope they enjoyed themself[or]That was fun[or]I look forward to the next bout[at random][end if].' Your satisfaction met, he goes back off on his own, cleaning up the devastation you have wrought.";

to say dorsub_2: [Sub Doran cock oral]
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
			say "     You decide to allow him this opportunity, to which he [if dorroleint is 4]gratefully[otherwise]eagerly[end if] obliges, hand moving [if cocks of player > 1]away from your spare cock to attend his own[otherwise]over to attend his own cock[end if] before his maw envelops your flesh a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player < 17 and dorroleint is 4], more than eager to hilt your impressive dick within his supple confines, at expense to his own comfort[otherwise if cock length of player < 17], frequently pushing the limits of his endurance to better engulf your impressive dick[end if]. As his need for self-pleasure rises, so does the pace in which he bobs against you become erratic, though it's more than sufficient in bringing you closer to bliss.";
			say "     You're just about to blow! You can afford to pull out and ejaculate on the dragon's unsuspecting face, should you? Else you will give him what he clearly wants.";
			if player consents:
				say "     Right at the very last second, you pull your dick free of the beast, your organ[smn] soon erupting thereafter upon his briefly confused visage. Trapped in the throes of his own bliss[if dornpbb > 0], its intensity exacerbated by his prior neglect[end if], he can only regard in demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the dragon with your [cum load size of player] load. When all is said is done he's a shameful sight, wallowing in a puddle of his own spunk[if dorroleint is 4], tongue desperate to lick clean yours from his face[end if].";
				say "     '[one of]Oh[or]Ah[at random], [if dorroleint is 4][one of]such is [dorgr]'s punishment for my weak will[or][dorgr]'s dragon deserved that[at random][otherwise][one of][dorgr]'s a sneaky one[or]quite the trick there, [dorgr][or][dorgr] certainly got me there[at random][end if].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own shameful state.";
			otherwise:
				say "     Soon thereafter your [if cocks of player > 1]dicks erupt[otherwise]dick erupts[end if], flooding the beast's maw with your virile seed as he's caught between swallowing down your [cum load size of player] payload and the throes of his own bliss[if dornpbb > 0], its intensity exacerbated by his prior neglect[end if], allowing you watch the dragon's writhing, twitching form as [if cocks of player > 2]your unattended organs stain the ground, mixing with[otherwise if cocks of player is 2]your unattended organ stains the ground, mixing with[otherwise]he wallows in a puddle of[end if] his own spunk.";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, no doubt to attend to his own shameful state.";
		otherwise:
			if dornpbb is 1, now dornpbb is 2;
			say "     You choose to disallow such an act, to which he [if dorroleint is 4]quickly nods in agreement, clearly trying to disavow making the request in the first place before his maw envelops[otherwise]concedes with little further thought on the matter, maw enveloping[end if] your cock a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player > 17 and dorroleint is 4], more than eager to hilt your impressive dick within his supple confines, at expense to his own comfort[otherwise if cock length of player > 17], frequently pushing the limits of his endurance to better engulf your impressive dick[end if]. He retains a very methodical, calculated pace,[if cocks of player > 1] occasionally switching to the other dick in his grip to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
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
		say "he soon reverts back into obedience thereafter, maw enveloping your cock a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to wrap around your [cock size desc of player] tool, he exhibits a voracious desire to satisfy your need[if cock length of player > 17 and dorroleint is 4], more than eager to hilt your impressive dick within his supple confines, at expense to his own comfort[otherwise if cock length of player > 17], frequently pushing the limits of his endurance to better engulf your impressive dick[end if]. He retains a very methodical, calculated pace,[if cocks of player > 1] occasionally switching to the other dick in his grip to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
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

to say dorsub_3: [Sub Doran cunt oral]
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
			say "     You decide to allow him this opportunity, to which he [if dorroleint is 4]gratefully[otherwise]eagerly[end if] obliges, hand moving [if cocks of player > 0]away from your spare cock to attend his own[otherwise if cunts of player > 1]away from your spare portal to attend his previously neglected cock[otherwise]over to attend his previously neglected cock[end if] before his maw envelops your flesh a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to descend upon your depths, he exhibits a voracious desire to satisfy your need [if cunt length of player > 17 and dorroleint is 4], more than eager to push the limits of how far he can thrust his tongue upon you, at expense to his own comfort[otherwise if cock length of player > 17], frequently pushing the limits of his ability to thrust his tongue upon you[end if]. As his need for self-pleasure rises, so does the pace in which he bobs against you become erratic, though it's more than sufficient in bringing you closer to bliss.";
			if cocks of player > 0:
				say "     You're just about to blow! You can afford to pull yourself free and ejaculate on the dragon's unsuspecting face, should you? Else you will give him what he clearly wants.";
				if player consents:
					say "     Right at the very last second, you pull yourself of the beast, your dick[smn] soon erupting thereafter upon his briefly confused visage. Trapped in the throes of his own bliss[if dornpbb > 0], its intensity exacerbated by his prior neglect[end if], he can only regard in demeaning act with a wanton embrace, form a writhing and twitching mess as he lets you stain the dragon with your [cum load size of player] load. When all is said is done he's a shameful sight, wallowing in a puddle of his own spunk[if dorroleint is 4], tongue desperate to lick clean yours from his face[end if].";
					say "     '[one of]Oh[or]Ah[at random], [if dorroleint is 4][one of]such is [dorgr]'s punishment for my weak will[or][dorgr]'s dragon deserved that[at random][otherwise][one of][dorgr]'s a sneaky one[or]quite the trick there, [dorgr][or][dorgr] certainly got me there[at random][end if].' His comments following after he obediently licks you clean of your [if cock width of player > 24]substantial [end if]mess, he pull away and lets you free once he's satisfied with his work, no doubt to attend to his own, embarrassing state.";
				otherwise:
					say "     Soon thereafter you cry out, [if cocks of player > 1]unattended dicks erupting impotently into the open air as your stuffed pussy tightens[otherwise if cocks of player is 1]unattended dick erupting impotently into the open fair as your stuffed pussy tightens[otherwise]your stuffed pussy tightening[end if] against the beast's twitching intrusion, caught between feasting upon your sexual fluids and the throes of his own bliss[if dornpbb > 0], its intensity exacerbated by his prior neglect[end if], allowing you watch the beast's writhing, twitching form as he wallows in a puddle of his own spunk.";
					say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, no doubt to attend to his own shameful state.";
			otherwise:
				say "     Soon thereafter you cry out, [if cocks of player > 1]unattended dicks erupting impotently into the open air as your stuffed pussy tightens[otherwise if cocks of player is 1]unattended dick erupting impotently into the open fair as your stuffed pussy tightens[otherwise]your stuffed pussy tightening[end if] against the beast's twitching intrusion, caught between feasting upon your sexual fluids and the throes of his own bliss, allowing you watch the beast's writhing, twitching form as he wallows in a puddle of his own spunk.";
				say "     '[one of]Ah[or]Alright[or]Yes[at random], [if dorroleint is 4][one of][dorgr] offers me so much[or]I hope I did [dorgr] proud[or][at random][otherwise][one of]I hope [dorgr] is satisfied[or]I hope [dorgr] enjoyed that as much as I did[or]I think [dorgr]'s dragon is finished here[at random][end if].' His regard punctuation to his work, you've been cleaned of your prior mess, the dragon pulling away and letting you off, no doubt to attend to his own shameful state.";
		otherwise:
			if dornpbb is 1, now dornpbb is 2;
			say "     You choose to disallow such an act, to which he [if dorroleint is 4]quickly nods in agreement, clearly trying to disavow making the request in the first place before his maw envelops[otherwise]concedes with little further thought on the matter, maw enveloping[end if] your flesh a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to descend upon your depths, he exhibits a voracious desire to satisfy your need[if cunt length of player > 17 and dorroleint is 4], more than eager to push the limits of how far he can thrust his tongue upon you, at expense to his own comfort[otherwise if cunt length of player > 17], frequently pushing the limits of his ability to thrust his tongue upon you[end if]. He retains a very methodical, calculated pace,[if cocks of player > 0] occasionally switching to your dick in his grip to keep you sensitive to his tongue's influence,[otherwise if cunts of player > 1] occasionally switching to your other cunt within his influence to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
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
		say "he soon reverts back into obedience thereafter, maw enveloping your flesh a second time, his endeavours now much more deliberate. Dexterous, slick appendage eager to descend upon your depths, he exhibits a voracious desire to satisfy your need[if cunt length of player > 17 and dorroleint is 4], more than eager to push the limits of how far he can thrust his tongue upon you, at expense to his own comfort[otherwise if cunt length of player > 17], frequently pushing the limits of his ability to thrust his tongue upon you[end if]. He retains a very methodical, calculated pace,[if cocks of player > 0] occasionally switching to your dick in his grip to keep you sensitive to his tongue's influence,[otherwise if cunts of player > 1] occasionally switching to your other cunt within his influence to keep you sensitive to his tongue's influence,[end if] rapidly driving you ever-closer to your bliss.";
		if dornpbb is 1, now dornpbb is 2;
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

to say dorsub_4: [Sub Doran cunt sex]
	say "     Decidedly, you [if dorroleint is 4]command[otherwise]ask[end if] the dragon to roll on his back and expose his dick for you. Instinctively, he complies, laying on the ground once more before his legs are spread, exposing himself fully before you. The mere implication of your command is enough to arouse him slightly, flared cockhead peeking from its scaled sheath.";
	say "     '[dorgr], [if dorroleint is 4][one of]I'm honoured by such a prospect[or]I long to be relegated as a mere toy for their pleasure[or]I am theirs to do with as they please[at random][otherwise][one of]don't hold back[or]I'm eager to be ridden[or]I'm excited by the prospect[at random][end if]";
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
		say "     Moving over the beast, you carefully line up your behind with this slick, proudly jutting tool. Briefly teasing [if cunts of player > 0]one of your exposed cunts[otherwise]your exposed cunt[end if] with it, much to the groans of the dragon's approval, you slowly force yourself upon the rod, flared head slowly sinking into your supple, yielding folds of flesh. [if cunt length of player < 12]After much work and strained grunts, you manage to envelop the head into your depths, the rest taking somewhat less work, up to the knot[otherwise if cunt length of player > 17]Struck by a rather impish urge, you abruptly descend upon his tool in its entirety, so pliable that you envelop his knot with almost no difficulty. This shock is enough to cause him to moan loudly, a gout of pre spurting from his suddenly engulfed tool[otherwise]Past his head, your descent is a fair bit easier, up to his knot, the size of which is sufficiently challenging to compel you against dealing with just yet[end if].";
	say "     '[one of]Oh[or]Nrgh[or]Nnf[at random], [one of]M-[dorgr] is so [if cunt length of player < 12]t-tight[otherwise if cunt length of player < 17]s-skilled[otherwise]f-firm[end if][or]I-I can't hold back, M-[dorgr][or]M-[dorgr][at random]...' His discourse is mixed with deep moans, elicited as you build a motion of riding the dragon's powerful dick, [if cocks of player > 1]your own bouncing against the open air, staining the dragon's scales with their slick fluids[otherwise if cocks of player is 1]your own bouncing against the open air, staining the dragon's scales with its slick fluids[otherwise if cunts of player > 2]exposed cunts dripping against the open air, staining the dragon's scales with their slick fluids[otherwise if cunts of player is 2]exposed cunt dripping against the open air, staining the dragon's scales with its slick fluids[otherwise]stuffed portal eagerly milking the beast for what he's worth[end if][if scalevalue of player < 3 or cunt length of player < 12], stretched to the limits of your ability to contain the organ[end if].";
	say "     You can tell he's about to erupt. It might be ideal to pull out just before then. Shall you? Lest you abide the fullness of his carnal fury.";
	if player consents:
		say "     Just on the cusp of the beast's bliss, you [if cunt length of player < 12]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own[otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz[if dornpbb > 0], the volume of which intensified by his prior neglect[end if]. Soon thereafter, your desperate fervour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against him[otherwise if cunts of player > 1]pussies staining his crotch with your release[otherwise]pussy staining his crotch with your release[end if], mixing with his own, the reptile an embarrassing, cum-stained mess.";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean before he grants you the freedom of dismounting him proper[otherwise]Eventually, you step off of the dragon, letting him clean himself off[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]It pleases their dragon to sully him so[or]their torment is all I desire[or]I beg that you mistreat me again[at random][otherwise][one of]how very naughty, making a mess of me like that[or]they're a mischievous one[or]and I had just cleaned myself[at random][end if].' [if dorroleint is 4]He pleads[otherwise]He feigns insult[end if], taking a moment to recover before getting back up and returning back to his spot in the cave. No doubt it'll take him a bit to clean himself the mess that was made.";
	otherwise:
		say "     Compelled by your wanton hunger, [if cunt length of player < 12]you take considerable effort to finally tie yourself with the beast's knot[otherwise if cunt length of player > 17]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to roar out, pumping you full with gout after successive gout of his voluminous jizz[if dornpbb > 0], the volume of which intensified by his prior neglect[end if][if scalevalue of player < 3], body visibly bulging to abide this release[end if]. Sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against his torso[otherwise if cunts of player > 0]cunt[sfn] staining his torso with your release[end if], strained by the such an impressive intrusion.";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean, even as you pull yourself free he's quick to attend to your leaking hole until he's satisfied, finally letting you off[otherwise]Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]I love seeing them full of their dragon's seed[or]they're so good at taking their dragon's load[or]I beg for the opportunity to fill them again[or]I love being inside them[at random][otherwise][one of]they always manage to impress me[or]I envy their skill[or]they know how to handle themself[at random][end if].' He offers his regards, taking a moment to recover before getting back up and returning back to his spot in the cave. He already goes through a ritual of cleaning himself of the mess that was doubtlessly made.";

to say dorsub_5: [Sub Doran anal sex]
	say "     Decidedly, you [if dorroleint is 4]command[otherwise]ask[end if] the dragon to roll on his back and expose his dick for you. Instinctively, he complies, laying on the ground once more before his legs are spread, exposing himself fully before you The mere implication of your command is enough to arouse him slightly, flared cockhead peeking from its scaled sheath.";
	say "     '[dorgr], [if dorroleint is 4][one of]I'm honoured by such a prospect[or]I long to be relegated as a mere toy for their pleasure[or]I am theirs to do with as they please[at random][otherwise][one of]don't hold back[or]I'm eager to be ridden[or]I'm excited by the prospect[at random][end if]";
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
		say "     Just on the cusp of the beast's bliss, you [if scalevalue of player < 4]wrench[otherwise]pull[end if] yourself free of the cock, rapidly frotting your [if cocks of player > 0]own[otherwise]cunt[sfn][end if] against his throbbing, pre-slicked tool just before he cries out, gout after successive gout painting the dragon's torso and face with his own jizz[if dornpbb > 0], the volume of which intensified by his prior neglect[end if]. Soon thereafter, your desperate fervour is rewarded when you find your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against him[otherwise if cunts of player > 1]pussies staining his crotch with your release[otherwise if cunts of player > 0]pussy staining his crotch with your release[end if], mixing with his own, the reptile an embarrassing, cum-stained mess.";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean before he grants you the freedom of dismounting him proper[otherwise]Eventually, you step off of the dragon, letting him clean himself off[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]It pleases their dragon to sully him so[or]their torment is all I desire[or]I beg that they mistreat me again[at random][otherwise][one of]how very naughty, making a mess of me like that[or]they're a mischievous one[or]and I had just cleaned myself[at random][end if].' [if dorroleint is 4]He pleads[otherwise]He feigns insult[end if], taking a moment to recover before getting back up and returning back to his spot in the cave. No doubt it'll take him a bit to clean himself the mess that was made.";
	otherwise:
		say "     Compelled by your wanton hunger, [if scalevalue of player < 4]you take considerable effort to finally tie yourself with the beast's knot[otherwise if player is twistcapped]making one, final descent, engulfing him fully[otherwise]you take one final effort to tie yourself with the beast's knot[end if], more than enough to cause him to cry out, pumping you full with gout after successive gout of his voluminous jizz[if dornpbb > 0], the volume of which intensified by his prior neglect[end if][if scalevalue of player < 3], body visibly bulging to abide this release[end if]. Sparse remnants sputtering from your tied hole to stain the beast's crotch as you contend with your own bliss, [if cocks of player > 0]dick[smn] unloading your [cum load size of player] payload against his torso[otherwise if cunts of player > 0]cunt[sfn] staining his torso with your release[end if], strained by the such an impressive intrusion.";
		say "     [if dorroleint is 4]Insistently, he goes about licking you clean, even as you pull yourself free he's quick to attend to your leaking hole until he's satisfied, finally letting you off[otherwise]Eventually, you pull yourself free of the dragon's now-softened organ, stepping off of him[end if].";
		say "     'Oh [dorgr], [if dorroleint is 4][one of]I love seeing them full of their dragon's seed[or]they're so good at taking their dragon's load[or]I beg for the opportunity to fill them again[or]I love being inside them[at random][otherwise][one of]they always manage to impress me[or]I envy their skill[or]they know how to handle themself[at random][end if].' He offers his regards, taking a moment to recover before getting back up and returning back to his spot in the cave. He already goes through a ritual of cleaning himself of the mess that was doubtlessly made.";

to say dorsub_snub: [Sub Doran snubbed]
	say "'[dorgr].' He turns and sits back down next to the fire.";
	now dorwassnub is true;
	
Section 3.1.1 - Expanded Dom Doran Scenes

to say dordom_4: [Dom Doran cock-focused handjob]
	if dorauto is true:
		say "     You're given little chance to react before Doran pounces,[if scalevalue of player < 4] smaller form[end if] grabbed and dragon to his place of rest, firmly exposed before him.";
		say "     '[one of]Tsk[or]Hmpf[at random], [one of]I've been wanting to play with my [dorgr] for too long now[or]my [dorgr] has left me alone for too long without my toy[or]I was beginning to think my [dorgr] forgot they were their dragon's plaything[at random]!' No doubt agitated by your absence";
	otherwise:
		say "     Perceptive as Doran is, you're barely given the time to [if dorroleint is 0]offer yourself[otherwise]ask for sex[end if] before he's on you,[if scalevalue of player < 4] smaller form[end if] grabbed and pulled to his place of rest, eager to expose yourself before him.";
		if dorroleint is 0:
			say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]I've been wanting to play with my [dorgr][or]my [dorgr] makes quite the entertaining toy[or]I'm beginning to think my [dorgr] is rather fond of being their dragon's plaything[at random]!' Teasing you for but a moment";
		otherwise:
			say "     '[one of]Mm[or]Hm[or]I see[at random], [one of]it's clear my [dorgr] is a quite pent up[or]my [dorgr] doubtlessly needs their dragon's affection[or]my [dorgr] need but only relax[at random]...' Soft remark illustrative of his intent";
	say ", the dragon's talons wrap around [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], second talon holding you in place as he [if dorroleint is 0]firmly[otherwise]carefully[end if] caresses your exposed length, driving you hard before the beast's intent gaze.";
	say "     Satisfied with your offering, his scaled snout descends upon you, thick tongue's light, teasing caress enough to make the attended organ ooze pre, your[if cockname of player is listed in infections of knotlist] knotted[end if] tool[if cockname of player is not listed in infections of internallist] and [ball size][end if] quickly made slick with a mix of saliva and sexual fluids.";
	if dorroleint is 0:
		say "     'My [dorgr] [one of]is so very needy[or]squirms so amusingly under their dragon[or]can't resist their dragon's touch[at random]...' Tongue's";
	otherwise:
		say "     '[one of]I think my [dorgr] likes that[or]Mayhaps we kick this into high gear[or]One could say that my [dorgr]'s fun is just starting[at random], yes?' Tongue's";
	say " affection ascending to embrace your[if scalevalue of player < 4] diminutive,[end if] [bodytype of player] torso[if breast size of player > 0] and along the curvature of your [short breast size desc of player] breasts[end if], he [if dorroleint is 0]uses his snout to keep you pinned down[otherwise]maintains this affection[end if] as his other talon moves [if cocks of player > 2]to one of your other members, now attending two of them[otherwise if cocks of player is 2]to your other member, now attending both of them[otherwise if cunts of player > 1]to one of your cunts, briefly teasing its entrance as your member remains attended to in tandem[otherwise if cunts of player is 1]your cunt, briefly teasing its entrance as your member remains attended to in tandem[otherwise if anallevel is not 1]your anal ring, briefly teasing its entrance as your member remains attended to in tandem[otherwise]to offer its reassuring caress along the length of your legs[end if]. His endeavours quickly rise in fervour, ";
	if cocks of player > 1:
		say "[if cock length of player > 17]frequently commenting on how impressive your assets are[otherwise if cock length of player < 6 and dorroleint is 0]often teasing you over how inadequate your assets are[otherwise]offering cooing approval of your assets[end if] as he proceeds to milk them with a twisted determination.";
	otherwise if cunts of player > 0:
		say "[if cock length of player > 17]frequently praising you for the size of your dick[otherwise]offering cooing approval to your assets[end if] as he proceeds to support his endeavours by sinking his digit past the supple folds of your flesh, [if cunt length of player < 7]slight, strained grunts escaping his lips as he contends with your tight hole[otherwise]meeting only brief resistance as you envelope the irreverent intrusion[end if]";
	otherwise:
		say "[if cock length of player > 17]frequently commenting on how impressive your asset is[otherwise if cock length of player < 6 and dorroleint is 0]often teasing you over how inadequate your asset is[otherwise]offering cooing approval of your asset[end if] as";
		if anallevel is not 1:
			say "he proceeds to support his endeavours by sinking his digit into the depths of your yielding hole, [if scalevalue of player < 4 and player is not twistcapped]slight, strained grunts escaping his lips as he contends with its tightness[otherwise]meeting only brief resistance as you envelope the irreverent intrusion[end if].";
		otherwise:
			say "his grip tightens around your leg, no doubt to keep you from being tossed about in the wake of his fierce pumping.";
	if dorroleint is 0 and ((dorauto is true and a random chance of 2 in 3 succeeds) or (dorauto is false and a random chance of 1 in 5 succeeds)):
		say "     Just on the cusp of blissful release, the dragon suddenly relents, a sly grin emerging from his lips as he lets the fires of your wanton need quickly die down. Instinctively, you move to pleasure yourself, but his talons move to assure that no such endeavour can be achieved.";
		say "     '[one of]Tsk[or]Hmpf[at random], [one of]my [dorgr] is so desperate and needy, I think I shall save them for later[or]I enjoy watching my [dorgr] squirm with such desperation[or]my [dorgr]'s struggling amuses me[at random].' Teasing you in the wake of this torment, he further wounds your pride by moving his talons to you face, made slick with saliva and precum. '[one of]Look at this mess my [dorgr] made, they better clean it up[or]my [dorgr] is such a messy one, their dragon won't let them leave until they make that right[at random].' Gradually, you oblige the dragon, tongue caressing the curvature of his scaled digits, taste flooded with that of your own sexual fluids. Doubtlessly, this brief, twisted ritual exacerbates your already overwhelming need.";
		now dorbb is true;
		if dorvorreg is 2 and scalevalue of player < 4:
			say "     '[one of]Very good[or]Well done[at random], my [dorgr]. [one of]I'm done having fun with them, though their dragon still hungers[or]I'm sure they're just as eager to be their dragon's meal as they are for satisfaction[at random].' Smug look about him, he teases you further with his tongue's affection, now very much different in its intent. Still exhausted and unspent, you can't help but writhe wantonly against his touch.";
			dorvore;
		otherwise:
			say "     '[one of]Very good[or]Well done[at random], my [dorgr]. [one of]Maybe, if they're good, I'll satisfy them the next time[or]I'm sure they'll be all the more eager for the next time[at random].' He struts back to where he rested, by the fire, a smug look on his face. No doubt quite amused by the trick he's played, you're forced to move on and contend with your lingering lust.";
	otherwise:
		say "     A grin emerging from his lips, he enjoys observing your increasingly desperate need for release, his endeavours persisting for a while longer before you moan out in bliss";
		if dorroleint is 0:
			say ". Deviously, he hikes up your lower torso, aiming your cock[smn] downwards upon you to douse you and your face and upper torso with your";
		otherwise:
			say ", dousing your torso with your";
		say " [cum load size of player] payload";
		if cocks of player is 1 and (cunts of player > 0 or anallevel is not 1):
			say ", each gout of jizz strained and prolonged by his intrusive talon's expert milking of your [if cunts of player > 0]stuffed portal[otherwise]beleaguered prostate[end if]";
		say ". Slowly pulling his talons free of you, you're given some opportunity to survey [if dorroleint is 0]the devastation[otherwise]what[end if] he has wrought, yourself a worn out and[if cock width of player > 24] massively[end if] cum-stained mess";
		if dorroleint is 0:
			say ". He doesn't quite seem done with you just yet, however, as you're held down a second time, talons moving to caress along your sullied, [bodydesc of player] form before they are brought to your face, slick with your heady sexual fluids.";
			say "     '[if cock width of player > 24][one of]Such a messy [dorgr][or]My [dorgr], look at all this mess[at random][otherwise][one of]Tsk[or]Hmph[at random][end if], [one of]start licking[or]be good and clean this up[or]I won't let them leave until they take care of this[at random]!' Intent on having you attend to this matter, you're forced to lick clean the beast's talons of your own thick, virile cum, tongue caressing along the curvature of his scaled digits";
			if cock width of player < 7 or scalevalue of player > 3:
				say ". This ritual persists for only a brief moment before he's satisfied, [if scalevalue of player > 3 and cock width of player > 24]your large scale granting you a fair measure of expedience in spite your sizeable load[otherwise if scalevalue of player > 3]your large scale granting you a fair measure of expedience[otherwise]the mess you've made of yourself not being particularly substantive[end if], finally freeing you from his grip.";
			otherwise if cock width of player < 25:
				say ". This ritual persists for some measure of time, Doran frequently taking a recently-cleaned talon to sully it again with your spent seed, given the fairly substantive mess you've made, before finally freeing you from his grip.";
			otherwise:
				say ". So massive the mess you've created, it becomes increasingly clear that this ritual is insufficient in cleaning you in any timely manner. As such, the now-impatient Doran's head descends upon you once again, tongue licking clean the mess you've made before he would force his scaled lips upon your own. Comparatively smaller frame barely able to handle his tongue's rough probing, he forces upon you an dizzying cocktail of his saliva and your spunk, doing this over and over again until you're finally clean--and no doubt reeling a little from all the cum you've been rapidly forced to ingest. Now satisfied, he lets you go.";
		otherwise:
			say ".";
			say "     Giving you a moment to rest, his maw descends upon you a second time, meeting you with his thick tongue's caress as he endeavours to clean you up in silence. [if cock width of player > 24]This ritual persists for a fair amount of time, considering the substantial mess you've made[otherwise]His work need only take a moment before he's complete[end if], leaving you with only a thin veneer of saliva.";
		if dorvorreg is 2 and scalevalue of player < 4:
			if cock width of player > 20 and dorroleint is 0, now dorvorpcf is true;
			say "     '[one of]Mm[or]Hm[or]Heh[at random], [if dorroleint is 0][one of]I could learn a thing or two from my [dorgr] about being such a good[or][dorgr] certainly knows a thing or two about being an obedient[at random] little [one of]toy[or]slut[at random][otherwise][one of]I enjoy playing with my [dorgr][or]my [dorgr] is such fun[or]my [dorgr] should have seen the look on their face[at random][end if]!' Satisfied though he may be, his tongue continues to caress along your smaller frame, a hungry look in his eyes. '[one of]Ah[or]Oh[at random] [one of]But we're not done here yet[or]my [dorgr]'s fun is just starting[or]don't think I'll let them off that easy[at random].'";
			dorvore;
		otherwise:
			say "     '[one of]Mm[or]Hm[or]Heh[at random], [if dorroleint is 0][one of]I could learn a thing or two from my [dorgr] about being such a good[or][dorgr] certainly knows a thing or two about being an obedient[at random] little [one of]toy[or]slut[at random][otherwise][one of]I enjoy playing with my [dorgr][or]my [dorgr] is such fun[or]my [dorgr] should have seen the look on their face[at random][end if]!' Satisfied, he lets you off before he struts back to his place of rest next to the fire, watching you with slight amusement as you get back up and go about your business.";

to say dordom_5: [Dom Doran cunt-focused handjob]
	if dorauto is true:
		say "     You're given little chance to react before Doran pounces,[if scalevalue of player < 4] smaller form[end if] grabbed and dragon to his place of rest, firmly exposed before him.";
		say "     '[one of]Tsk[or]Hmpf[at random], [one of]I've been wanting to play with my [dorgr] for too long now[or]my [dorgr] has left me alone for too long without my toy[or]I was beginning to think my [dorgr] forgot they were their dragon's plaything[at random]!' No doubt agitated by your absence";
	otherwise:
		say "     Perceptive as Doran is, you're barely given the time to [if dorroleint is 0]offer yourself[otherwise]ask for sex[end if] before he's on you,[if scalevalue of player < 4] smaller form[end if] grabbed and pulled to his place of rest, eager to expose yourself before him.";
		if dorroleint is 0:
			say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]I've been wanting to play with my [dorgr][or]my [dorgr] makes quite the entertaining toy[or]I'm beginning to think my [dorgr] is rather fond of being their dragon's plaything[at random]!' Teasing you for but a moment";
		otherwise:
			say "     '[one of]Mm[or]Hm[or]I see[at random], [one of]it's clear my [dorgr] is a quite pent up[or]my [dorgr] doubtlessly needs their dragon's affection[or]my [dorgr] need but only relax[at random]...' Soft remark illustrative of his intent";
	say ", the dragon's talons descend upon [if cunts of player > 1]one of your [cunt size desc of player] cunts[otherwise]your [cunt size desc of player] cunt[end if], second talon holding you in place as he [if dorroleint is 0]firmly[otherwise]carefully[end if] caresses its supple lips, your subsequent arousal making you wet before the beast's intent gaze.";
	say "     Satisfied with your response, his scaled snout descends upon you, thick tongue's light, teasing caress wracking you with further bliss, you're soon made very slick with a mix of saliva and sexual fluids.";
	if dorroleint is 0:
		say "     'My [dorgr] [one of]is so very needy[or]squirms so amusingly under their dragon[or]can't resist their dragon's touch[at random]...' Tongue's";
	otherwise:
		say "     '[one of]I think my [dorgr] likes that[or]Mayhaps we kick this into high gear[or]One could say that my [dorgr]'s fun is just starting[at random], yes?' Tongue's";
	say " affection ascending to embrace your[if scalevalue of player < 4] diminutive,[end if] [bodytype of player] torso[if breast size of player > 0] and along the curvature of your [short breast size desc of player] breasts[end if], he [if dorroleint is 0]uses his snout to keep you pinned down[otherwise]maintains this affection[end if] as his other talon moves [if cocks of player > 1]to one of your dicks, claws now attending it in tandem[otherwise if cocks of player is 1]to you dick, now attending to it in tandem[otherwise if cunts of player > 2]to one of your other portals, now attending to the two of them in tandem[otherwise if cunts of player > 1]your other portal, now attending to both of them in tandem[otherwise if anallevel is not 1]your anal ring, briefly teasing its entrance as your feminine portal remains attended to in tandem[otherwise]to offer its reassuring caress along the length of your legs[end if]. His endeavours quickly rise in fervour, ";
	if cocks of player > 0:
		say "[if cunt length of player < 7]slight, strained grunts escaping his lips[otherwise]meeting only brief resistance[end if] as he forces his digit past the supple folds of your flesh, pumping your dick all the while in his endeavour to milk them with a twisted determination.";
	otherwise:
		say "[if cunt length of player < 7]slight, strained grunts escaping his lips[otherwise]meeting only brief resistance[end if] as he forces his digit[if cunts of player > 1 or anallevel is not 1]s[end if] past the supple folds of your flesh";
		if cunts of player is 1 and anallevel is not 1:
			say ", his endeavours to penetrate your ass [if cunt length of player < 7 and scalevalue of player < 4 and player is not twistcapped]equally[otherwise if scalevalue of player < 4 and player is not twistcapped]noticably more[otherwise if cunt length of player > 5]not nearly as[otherwise]just as[end if] difficult";
	say ".";
	if dorroleint is 0 and ((dorauto is true and a random chance of 2 in 3 succeeds) or (dorauto is false and a random chance of 1 in 5 succeeds)):
		say "     Just on the cusp of blissful release, the dragon suddenly relents, a sly grin emerging from his lips as he lets the fires of your wanton need quickly die down. Instinctively, you move to pleasure yourself, but his talons move to assure that no such endeavour can be achieved.";
		say "     '[one of]Tsk[or]Hmpf[at random], [one of]my [dorgr] is so desperate and needy, I think I shall save them for later[or]I enjoy watching my [dorgr] squirm with such desperation[or]my [dorgr]'s struggling amuses me[at random].' Teasing you in the wake of this torment, he further wounds your pride by moving his talons to you face, made slick with saliva and sexual fluids. '[one of]Look at this mess my [dorgr] made, they better clean it up[or]my [dorgr] is such a messy one, their dragon won't let them leave until they make that right[at random].' Gradually, you oblige the dragon, tongue caressing the curvature of his scaled digits, taste flooded with that of your own feminine honey. Doubtlessly, this brief, twisted ritual exacerbates your already overwhelming need.";
		now dorbb is true;
		if dorvorreg is 2 and scalevalue of player < 4:
			say "     '[one of]Very good[or]Well done[at random], my [dorgr]. [one of]I'm done having fun with them, though their dragon still hungers[or]I'm sure they're just as eager to be their dragon's meal as they are for satisfaction[at random].' Smug look about him, he teases you further with his tongue's affection, now very much different in its intent. Still exhausted and unspent, you can't help but writhe wantonly against his touch.";
			dorvore;
		otherwise:
			say "     '[one of]Very good[or]Well done[at random], my [dorgr]. [one of]Maybe, if they're good, I'll satisfy them the next time[or]I'm sure they'll be all the more eager for the next time[at random].' He struts back to where he rested, by the fire, a smug look on his face. No doubt quite amused by the trick he's played, you're forced to move on and contend with your lingering lust.";
	otherwise:
		say "     A grin emerging from his lips, he enjoys observing your increasingly desperate need for release, his endeavours persisting for a while longer before you moan out in bliss";
		if dorroleint is 0 and cocks of player > 0:
			say ". Deviously, he hikes up your lower torso, aiming your cock[smn] downwards upon you to douse you and your face and upper torso with your";
		otherwise:
			say ", dousing your crotch[if cocks of player > 0] and torso[end if] with your";
		say " sexual fluids, [if cocks of player > 0]each gout of jizz strained and prolonged by his intrusive talon's expert milking of your stuffed portal[otherwise]your orgasm prolonged for as long as the dragon can manage[end if]. Slowly pulling his talons free of you, you're given some opportunity to survey [if dorroleint is 0]the devastation[otherwise]what[end if] he has wrought, yourself a worn out";
		if cocks of player > 0:
			say " and[if cock width of player > 24] massively[end if] cum-stained";
		say " mess";
		if dorroleint is 0:
			say ". He doesn't quite seem done with you just yet, however, as you're held down a second time, talons moving to caress along your sullied, [bodydesc of player] form before they are brought to your face, slick with your heady sexual fluids.";
			say "     '[if cock width of player > 24 and cocks of player > 0][one of]Such a messy [dorgr][or]My [dorgr], look at all this mess[at random][otherwise][one of]Tsk[or]Hmph[at random][end if], [one of]start licking[or]be good and clean this up[or]I won't let them leave until they take care of this[at random]!' Intent on having you attend to this matter, you're forced to lick clean the beast's talons of your own [if cocks of player > 0]thick, virile cum[otherwise]honey[end if], tongue caressing along the curvature of his scaled digits";
			if cocks of player > 0:
				if cock width of player < 7 or scalevalue of player > 3:
					say ". This ritual persists for only a brief moment before he's satisfied, [if scalevalue of player > 3 and cock width of player > 24]your large scale granting you a fair measure of expedience in spite your sizeable load[otherwise if scalevalue of player > 3]your large scale granting you a fair measure of expedience[otherwise]the mess you've made of yourself not being particularly substantive[end if], finally freeing you from his grip.";
				otherwise if cock width of player < 25:
					say ". This ritual persists for some measure of time, Doran frequently taking a recently-cleaned talon to sully it again with your spent seed, given the fairly substantive mess you've made, before finally freeing you from his grip.";
				otherwise: 
					say ". So massive the mess you've created, it becomes increasingly clear that this ritual is insufficient in cleaning you in any timely manner. As such, the now-impatient Doran's head descends upon you once again, tongue licking clean the mess you've made before he would force his scaled lips upon your own. Comparatively smaller frame barely able to handle his tongue's rough probing, he forces upon you an dizzying cocktail of his saliva and your spunk, doing this over and over again until you're finally clean--and no doubt reeling a little from all the cum you've been rapidly forced to ingest. Now satisfied, he lets you go.";
			otherwise:
				say ". This ritual persists for only a brief moment before he's satisfied, [if scalevalue of player > 3]your large scale granting you a fair measure of expedience[otherwise]the mess you've made of yourself not being particularly substantive[end if].";
		otherwise:
			say ".";
			say "     Giving you a moment to rest, his maw descends upon you a second time, meeting you with his thick tongue's caress as he endeavours to clean you up in silence. [if cock width of player > 24]This ritual persists for a fair amount of time, considering the substantial mess you've made[otherwise]His work need only take a moment before he's complete[end if], leaving you with only a thin veneer of saliva.";
		if dorvorreg is 2 and scalevalue of player < 4:
			if cocks of player > 0 and cock width of player > 20 and dorroleint is 0, now dorvorpcf is true;
			say "     '[one of]Mm[or]Hm[or]Heh[at random], [if dorroleint is 0][one of]I could learn a thing or two from my [dorgr] about being such a good[or][dorgr] certainly knows a thing or two about being an obedient[at random] little [one of]toy[or]slut[at random][otherwise][one of]I enjoy playing with my [dorgr][or]my [dorgr] is such fun[or]my [dorgr] should have seen the look on their face[at random][end if]!' Satisfied though he may be, his tongue continues to caress along your smaller frame, a hungry look in his eyes. '[one of]Ah[or]Oh[at random] [one of]But we're not done here yet[or]my [dorgr]'s fun is just starting[or]don't think I'll let them off that easy[at random].'";
			dorvore;
		otherwise:
			say "     '[one of]Mm[or]Hm[or]Heh[at random], [if dorroleint is 0][one of]I could learn a thing or two from my [dorgr] about being such a good[or][dorgr] certainly knows a thing or two about being an obedient[at random] little [one of]toy[or]slut[at random][otherwise][one of]I enjoy playing with my [dorgr][or]my [dorgr] is such fun[or]my [dorgr] should have seen the look on their face[at random][end if]!' Satisfied, he lets you off before he struts back to his place of rest next to the fire, watching you with slight amusement as you get back up and go about your business.";

to say dordom_6: [Dom Doran rimjob]
	if dorauto is true:
		say "     You find yourself suddenly pounced upon, [if scalevalue of player < 4]your smaller, [bodytype of player] form pinned to the ground with little effort[otherwise]pinning you to the ground with little effort[end if]. Agitated in demeanour, Doran casually wheels around and gives you a rather telling view of his ass. [if scalevalue of player < 4]Large, s[otherwise]S[end if]hapely curves exposed to you, he shows no restraint in pressing your face firmly between his cheeks.";
		say "     '[one of]Such a shameful[or]I'm disappointed in my[or]What a negligent[at random][if scalevalue of player < 4] little[end if] [dorgr], [one of]they're deserving of being under their dragon's ass[or]they're good for nothing but being a toy for their dragon's amusement[or]this is what they're deserving of, I'm certain[at random].' Bitter in his regard, he continues, '[one of]Be a good little slut and make up for their absence[or]Oh, it's so very hard to keep myself clean back there, I think this is suitable punishment for my slutty little [dorgr][at random]. Maybe I'll reward them for their good behaviour.' Illustrating this gesture, you feel his talons caress [if cocks of player > 1]one of your exposed, [cock size desc of player] dicks[otherwise if cocks of player is 1]your exposed, [cock size desc of player] dick[otherwise if cunts of player > 1]one of your exposed, [cunt size desc of player] cunts[otherwise]your exposed, [cunt size desc of player] cunt[end if], your subsequent moans muffled against the dragon's ample flesh.";
	otherwise:
		say "     Sly grin across Doran's face, he sees your approach. No doubt already aware of your need, he humours your plea before pouncing you, pinning [if scalevalue of player < 4]your smaller, [bodytype of player] form to the ground with little effort[otherwise]you to the ground with little effort[end if]. Smug in demeanour, he casually wheels around and gives you a rather telling view of his ass. [if scalevalue of player < 4]Large, s[otherwise]S[end if]hapely curves exposed to you, he takes considerable pleasure in irreverently grinding your face between its cheeks.";
		say "     '[one of]Oh[or]Mm[or]Yes[at random], my[if scalevalue of player < 4] little[end if] [dorgr], [one of]they're barely worth being under their dragon's ass[or]they can't help but be a toy for their dragon's amusement[or]this is what they've been wanting, I'm certain[at random].' A laugh in his regard, he continues, '[one of]Be a good little slut and lick their dragon's hole[or]Oh, it's so very hard to keep myself clean back there, I think my slutty little [dorgr] is better suited for the task[at random]. I'll be certain to reward them for their good behaviour.' Illustrating this gesture, you feel his talons caress [if cocks of player > 1]one of your exposed, [cock size desc of player] dicks[otherwise if cocks of player is 1]your exposed, [cock size desc of player] dick[otherwise if cunts of player > 1]your exposed, [cunt size desc of player] cunts[otherwise]your exposed, [cunt size desc of player] cunt[end if], your subsequent moans immediately muffled by the beast when he firmly presses his anal ring against your maw.";
	say "     [if scalevalue of player < 4]Surrounded in utter darkness, with only the sensory input of Doran's scaled hindquarters pressed firmly against you and the dragon's initial teasing[otherwise]Pressed firmly between Doran's scaled cheeks, his initial teasing compelling you onward[end if], you're inclined to oblige his demand, tongue briefly teasing his eager portal, firm scales diminishing into supple, yielding flesh, obliging in your slick organ's initial intrusion, though playfully inclined to squeeze it within it's occupancy. Yourself fully aroused by this ritual, the dragon reciprocates by continuing to slowly";
	if cocks of player > 0:
		say "stroke the [cock size desc of player] organ, spare talons moving to attend [if cocks of player > 2]one of it's brothers[otherwise if cocks of player is 2]it's brother[otherwise if cunts of player > 1]one of your exposed cunts[otherwise if cunts of player is 1]your exposed cunt[otherwise]your own, exposed tailpipe[end if] in tandem[if cocks of player is 1], talon making a deliberately slow effort in its descent within your flesh[end if].";
	otherwise:
		say "caress your [cunt size desc of player] portal, making a deliberately slow effort to descend a talon within its depths, along with [if cunts of player > 2]one of its sisters[otherwise if cunts of player is 2]its sister[otherwise]your own, exposed tailpipe[end if].";
	if scalevalue of player < 4:
		say "     '[one of][dorgr] is such an obedient little toy[or]That's a good little [dorgr][or]Keep going, little [dorgr][at random]...' The dragon's dick oozing pre upon your exposed, [bodytype of player] torso, it's certainly clear your endeavour arouses him, though your diminutive form can only do so much compared to the overwhelming influence of his touch. Deliberately, painstakingly drawn out in his pace, it compels a considerable expedience in your tongue's reciprocation, your increasingly sore jaw numbed by your overwhelming, wanton need, soon made slick against him with sweat.";
		say "     Drawing you out for a long as possible, it's inevitable that you cry out, muffled by the beast's flesh, [if cocks of player > 0]thick spunk spurting all over yourself and the beast[otherwise if cunts of player > 0]gushing portal[sfn] staining the dragon's talons with your honey[end if]. This doesn't appear to satisfy him, however, leaning back to subject you to his ass even further in attendance of his own pleasure, the weight he carefully forces you to abide exacerbated as he jerks himself off.";
		say "     You continue to service his anal ring in the hopes of expedite his endeavour, the sounds of his final groans muffled by your confines, his supple ring throbbing against your tongue, [bodydesc of player] form soon flooded with the warmth of his virile cum as it oozes over you. Satisfied though he may be, he seems intent to remain on top of you for but a moment longer, licking both him and yourself clean of the mess he's made before finally getting off.";
	otherwise:
		say "     '[one of]Nng[or]Mnnf[or]A-ah[at random], [one of]my [dorgr] is so very good at pleasing their dragon[or]keep going, my [dorgr][or]my [dorgr] really loves their dragon's ass[at random]...!' Your substantive, slick intrusion doubtlessly quite effective at getting the dragon off, you can feel the dragon's dick oozing pre against your [bodytype of player] torso. In the wake of his rising need, his endeavours to pleasure you become increasingly erratic, as do your own.";
		say "     The wet sounds of your continued endeavours fill the air for but a moment longer until both of you meet bliss, your own cries muffled by the beast's flesh. [if cocks of player > 0]Thick, [cum load size of player] spunk spurting all over yourself and the beast, mixing with his own[otherwise if cunts of player > 0]Gushing portal[sfn] staining the dragon's talons with your honey, his spunk making a mess of the two of you[end if] as his hole throbs around your tongue. He takes a considerable amount of time to recover and even longer to lick both him and yourself clean of the mess he's made, forcing you to abide being under his ass for a fair while longer, yourself also exhausted, before finally getting off you.";
	if dorvorreg is 2 and scalevalue of player < 4:
		say "     '[one of]Oh, I don't know why my [dorgr] was under there, they should be in their dragon instead[or]The way my [dorgr] attends me, I think they've earned a proper reward[or]As much as I enjoy my [dorgr] under their dragon, I'd much rather they be inside them[at random]!' His teasing persisting as he wheels around, your sore self soon receives his tongue's affection once more, this time as a clear illustration of what he has planned for you next.";
		dorvore;
	otherwise:
		say "     '[one of]Oh, I nearly forgot my [dorgr] was under there, silly me[or]The way my [dorgr] attends me, I'd think they prefer being down there[or]If I could, I'd keep my [dorgr] under me like that[at random]!' He teases you once your free, no doubt finding yourself a fair bit sore from the whole ordeal. He's intent to look you over a bit before contentedly moving back to where he was resting prior, no doubt satisfied with himself.";

to say dordom_7: [Dom Doran Riding]
	if dorauto is true:
		say "     The dragon capitalizes on the very instant he's within your sights, glaring irritatedly as he approaches before forcing you onto your back. [if scalevalue of player < 4]Pulling your smaller, [bodytype of player] form closer[otherwise]Adjusting your [bodytype of player] form before him[end if], he reveals your [cock size desc of player] dick[smn] before prying eyes.";
		say "     '[one of]Hmpf[or]Tsk[at random], [one of]my [dorgr] is much too negligent[or]for too long has my [dorgr] left me be[or]I've been waiting too long for my [dorgr][at random]...' Stern expression shifting to a grin, an increasingly greedy look about him as his talons move to stroke [if cocks of player > 2]two of your impressive tools[otherwise if cocks of player is 2]both of your impressive tools[otherwise]your impressive tool[end if], '[one of]They clearly need to be used by their dragon[or]Oh, and they desperately need to be used[or]And they deserve to be exploited like the toy they are[at random]";
	otherwise:
		say "     The dragon appears particularly generous in the wake of your countenance, grinning as he [if dorroleint is 0]pushes[otherwise]sets[end if] you on your back, [if scalevalue of player < 4]pulling your smaller, [bodytype of player] form closer[otherwise]adjusting your [bodytype of player] form before him[end if], revealing your [cock size desc of player] dick[smn] before prying eyes.";
		say "     '[one of]Heh[or]Ooh[or]Yes[at random], [if scalevalue of player < 4][one of]my [dorgr] is so very big for someone so very small[or]thank goodness my [dorgr] is willing to overlook the inconvenience of being so well-endowed[or]my little [dorgr] is full of such big surprises[at random][otherwise][one of]my [dorgr] is so very big, in more ways than one[or]no doubt my [dorgr] is quite proud of their equipment[or]I never cease to be impressed by my [dorgr][at random][end if]...' He continues to grin, a greedy look about him as his talons move to stroke [if cocks of player > 2]two of your impressive tools[otherwise if cocks of player is 2]both of your impressive tools[otherwise]your impressive tool[end if], '[if dorroleint is  0][one of]I think they'd like to be used by their dragon[or]Oh, and they're so eager to be used[or]And always eager to be exploited like the toy they are[at random][otherwise][one of]I'd be remiss not to make use of them[or]I'm certain they wouldn't mind if I take a ride[or]Just relax, I'll take it from here[at random][end if]";
	say ".' Tongue descending you caress your voluminous flesh, until your mighty organ[if cocks of player > 1]s are[otherwise] is[end if] rendered hard before his affection.";
	if dorroleint is 0 and ((dorauto is false and a random chance of 1 in 3 succeeds) or (dorauto is true and a random chance of 2 in 3 succeeds)):
		say "     Suddenly, he rises to [if scalevalue of player > 3]tower[otherwise]climb[end if] over you, aiming[if cocks of player > 1] one of[end if] your cock[smn] towards his scaled ass before quickly descending upon it, feeling particularly inclined to have a go with you sans any lubricant.";
		say "     Strained grunts escaping his lips, he shows almost no restraint in forcing it within his fleshy depths, eager to exploit you for his own personal pleasure. [if scalevalue of player < 4]You're forced to abide more and more of the dragon's ponderous weight, eager to push you to the limits of what you can take[otherwise]The dragon keeps the full of his weight on you, pinning you firmly to the ground[end if] as he shares his tongue's firm affection across your [bodydesc of player] frame[if scalevalue of player < 4], a feat not particularly easy for someone of your size[end if].";
		say "     '[one of]Nfm[or]Mmf[or]Urgh[at random], [one of]my M-[dorgr] likes being used as a slutty[or]m-my [dorgr] is such a challenging[or]my [dorgr] m-makes for such a good[at random][if scalevalue of player < 4] little[end if] t-toy.' [if cockname of player is listed in infections of knotlist]It takes the dragon a fair bit of time to engulf your dick in its entirety, contending for a fair amount of time to deal with your knot[otherwise]Several prolonged minutes filled with the sound his grunting the dragon eventually manages to engulf your dick in its entirety[end if]; however, shows little interest in trying to acclimate to your size before he begins bouncing against you, this rough treatment doubtlessly a bit of a strain on you.";
	otherwise:
		say "     His sleek appendage takes a fair bit of care to fondle along[if cocks of player > 1] one of[end if] your cock's length, this patient reverence causing a moan to escape your lips, your emergent pre mixing with his saliva. Eventually satisfied in his preparation, Doran rises to [if scalevalue of player > 3]tower[otherwise]climb[end if] over you, aiming your dripping member towards his scaled ass. The beast takes some time to tease you, grinding it between his substantive, scaled cheeks before he finally attempting to push it through his tight ring.";
		say "     Brief, strained grunts illustrative of his endeavours, he shows [if dorroleint is 0]almost no[otherwise]some[end if] restraint in forcing the organ within his fleshy confines, [if dorroleint is 0]eager to exploit you for his own personal pleasure[otherwise]his prior lubrication diminishing some of the strain his work puts on you[end if]";
		if dorroleint is 0:
			say ". [if scalevalue of player < 4]You're forced to abide more and more of the dragon's ponderous weight, eager to push you to the limits of what you can take[otherwise]The dragon keeps the full of his weight on you, pinning you firmly to the ground[end if]";
		otherwise:
			say ". [if scalevalue of player < 4]The dragon takes some care not to crush you under his weight, an endeavour quickly becoming difficult for him to maintain[otherwise]The dragon keeps you gently pinned under his weight[end if]";
		say " as he shares his tongue's[if dorroleint is 0] firm[end if] affection across your [bodydesc of player] frame[if scalevalue of player < 4], a feat not particularly easy for someone of your size[end if].";
		say "     '[one of]Mm[or]Ah[or]Oh[at random], ";
		if dorroleint is 0:
			say "my [dorgr] [one of]likes being used as a slutty[or] is such a challenging[or]makes for such a good[at random][if scalevalue of player < 4] little[end if] toy";
		otherwise:
			say "[one of]I can see my [dorgr] enjoying being ridden[or]my [dorgr] is so very challenging[or]don't worry, my [dorgr], their dragon will be gentle[at random]";
		say ".' [if cockname of player is listed in infections of knotlist]It takes the dragon a fair bit of time to engulf your dick in its entirety, contending for a fair amount of time to deal with your knot[otherwise]Several prolonged minutes filled with the sound his grunting the dragon eventually manages to engulf your dick in its entirety[end if]. [if dorroleint is 0]Takes some time[otherwise]Shows little interest in trying to acclimate[end if] to your size before he begins bouncing against you, his prior lubrication [if dorroleint is 0]at least a slight balm to his rough treatment[otherwise]making the whole affair a lot easier on you[end if].";
	say "     His own dick slapping against you with an audible lack of reverence, strings of pre spurt from it to stain you[if scalevalue of player < 4] and your face[end if], [if dorroleint is 0]any affection you might be inclined to reciprocated prevented against by his hold, intent to let the thing bounce free before you[otherwise]inclined to reciprocate by reaching out to stroke the thing as well, much to his approval[end if]. He chooses to [if cocks of player > 2]move a free talon to one of your unengulfed dicks, offering a casual, passing affection to it in order to exacerbate[otherwise if cocks of player is 2]move a free talon to your unengulfed dick, offering a casual, passing affection to it in order to exacerbate[otherwise if cunts of player > 1]lean back, stroking one of your, previously neglected, [cunt size desc of player] cunts, offering a casual, passing affection to it in order to exacerbate[otherwise if cunts of player is 1]leans back to stroke your, previously neglected, [cunt size desc of player] cunt, offering a casual, passing affection to it in order to exacerbate[otherwise if anallevel is 3]lean back, forcing a digit past your, previously neglected, anal ring, that he might accelerate[otherwise]continue with his tongue's attention, body smeared with pre and saliva as you are awash in his heated, panting breath, clearly eager for[end if] your imminent bliss. Loudly panting, his endeavours are relentless, compelled by an overwhelming, wanton need, with [if dorroleint is 0]little regard to the strain it puts[otherwise]an increasing strain[end if] on you.";
	say "     '[one of]A-ah[or]A-ang[or]N-nn[at random]... [one of]F-fuck[or]M-more[or]I'm g-gonna[at random]";
	if dorroleint is 0 and ((dorauto is false and a random chance of 1 in 5 succeeds) or (dorauto is true and a random chance of 2 in 3 succeeds)):
		say "...!' Just about to break, he pulls himself free of your [cock size desc of player] dick, frotting with it[if cocks of player > 2] and one of its brothers[otherwise if cocks of player is 2]and its brother[end if] until the both of you cry out, your [cum load size of player] load mixing with his own to stain your exhausted form, a weakened laugh escaping the dragon's lips as each gout paints you white with cum[if cock width of player > 24], making a massive mess of yourself from your release[end if].";
		if dorvorreg is 2 and scalevalue of player < 4:
			say "     '[one of]Tsk[or]Hmpf[or]Oh[at random], [one of]look at this mess, my [dorgr] will just have to go to their room[or]How very naughty, I'll have to punish my [dorgr] for this mess[or]my [dorgr] is such a messy cum slut, they need to be taught a lesson[at random]!' Grinning slightly as he chastises you for a mistake clearly not your own, you feel his tongue against you, though out of little desire to clean the mess he's made so much as to taste his little, soon-to-be-disciplined meal.";
			now dorvornpa is true;
			dorvore;
		otherwise:
			say "     '[one of]Heh[or]Ha[or]Hm[at random], [one of]my [dorgr] looks good this way[or]I got my [dorgr] good[or]I think my [dorgr] prefers being a messy cum slut[at random]!' Grinning to you as he slowly recovers, he chooses to leave you to clean yourself up[if cock width of player > 24]--an endeavour that will doubtlessly take you some time--[otherwise] [end if]before departing once more to his place of rest.";
	otherwise:
		say "...!' With one final, firm descent upon your tool, this concluding [if dorroleint is 0]command[otherwise]endeavour[end if] is more than enough to make you both cry out, your own [cum load size of player] load rapidly pumping into his depths, his own cum [if dorroleint is 0]aimed to paint you with a lewd lack of restraint[otherwise]firing wildly into the open air[end if]. [if cock width of player > 24]Forcibly, he pulls your hands against his belly, having you feel his form as it visibly bloats to contain your load[otherwise if cockname of player is listed in infections of knotlist]Moaning loudly, he remains tied to you[otherwise]Moaning loudly, he keep your tool enveloped entirely within his depths[end if], eager to contain every last drop of your seed.";
		if dorvorreg is 2 and scalevalue of player < 4:
			say "     '[one of]Whew[or]Heavens[or]Goodness[at random], [if dorroleint is 0][one of]That was a great appetizer, now I'm ready for the main course[or]now my [dorgr] gets their inevitable reward[or]my [dorgr] is such a slutty little toy, and soon to be a meal as well[at random][otherwise][one of]We're not finished here just yet, my [dorgr][or]I'm so blessed that my [dorgr] gives me a ride AND a meal[or]I must thank my [dorgr] for that opportunity, and the one that is to follow[at random][end if]!' Taking some time to rest, he eventually does free you of his cumbersome weight. [if cock width of player > 24]Groaning slightly as his overstuffed hole leaks some of your voluminous jizz when he pulls[otherwise]Pulling[end if] himself off your now-softening dick, you're soon met with his tongue's reassuring affection, eager to fill himself even further.";
			if cock width of player > 24, now dorvornpcf is true;
			dorvore;
		otherwise:
			say "     '[one of]Whew[or]Heavens[or]Goodness[at random], [if dorroleint is 0][one of]I'm rather fond of using my [dorgr] like that[or]no doubt my [dorgr] is happy to be so rewarded with this opportunity[or]my [dorgr] is such a slutty little toy[at random][otherwise][one of]I think my [dorgr] enjoyed that[or]I like taking my [dorgr] out for a ride[or]I must thank my [dorgr] for this opportunity[at random][end if]!' Taking some time to rest, he eventually does free you of his[if scalevalue of player < 4] cumbersome[end if] weight, [if cock width of player > 24]groaning slightly as his overstuffed hole leaks some of your voluminous jizz when he pulls[otherwise]pulling[end if] himself of your now-softening dick before [if dorroleint is 0]slowly departing back to his place of rest, leaving you to clean yourself off[otherwise]taking a brief moment to clean you, departing back to his place of rest once he's satisfied[end if].";
			
Section 3.1.2 - Doran Vore Protocol

dorvorpcf is a truth state that varies. dorvorpcf is usually false; [Doran Vore Player Cum Filled, identifies player state for the vore pool]
dorvornpcf is a truth state that varies. dorvorpcf is usually false; [Doran Vore Non-Player Cum Filled, identifies Doran state for the vore pool]
dorvornpa is a truth state that varies. dorvornpa is usually false; [Doran Vore Non-Player Annoyed, idenfies Doran state for vore pool]

to dorvore: [Invocation of Doran Vore Protocol]
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	if a random chance of 1 in 2 succeeds: [Foot-first Variant]
		say "     Talons binding your legs between his scaled thumb and index, you're made to writhe against the feel of his slick organ teasing your exposed feet. The dragon amused by your squirming, his digit's hold rises further up your form, its place taken by that same tongue, tugging you feet-first towards his open maw.";
		say "     He's particularly inclined to give you a telling view of your fate. Exploiting the [if daytimer is day]creeping day[otherwise]fire's [end if]light to let you clearly see his drooling, fleshy abyss. Lined with an intimidating set of teeth, he [if dorroleint is 0]occasionally teases you by rubbing them harmlessly against your legs[otherwise]nonetheless takes great care to not subject you to them[end if] as you're pulled further into his depths, talons holding you by your [bodydesc of player] torso as you're brought further within these slick confines.";
		say "     Eventually, he pulls the rest of you from the ground, rearing his head into the air and freeing you of his grip to let gravity do his job for him. Unbound though you now may be, the slippery pit nonetheless makes avoiding your descent impossible. His tongue's warm caress felt writhing against your vulnerable body, your feet are tightly embraced by the beast's gullet, your progressive descent is eventually emphasized by the closing of his teeth behind you, blocking out any remaining vestige of light.";
		say "     This supple ring pulls you deeper and deeper to your inevitable destination, deliberate, exaggerated gulping on the dragon's part drawing you further into his overwhelmingly heated confines, foot by foot, with a particular expedience. The fruit of his labours seems imminent when your feet might be granted the reprieve of his much roomier stomach";
		if dorbb is true:
			say ". As you're inevitably enveloped along your crotch, your previously unattended arousal is brought once more to the forefront, though your circumstance remains too confining to properly resolve it at this very second";
		say ", the remainder of you squeezed through in no time.";
	otherwise: [Head-first Variant]
		say "     Slick appendage's affection persisting, you repeatedly feel his heated breath washing over you, his maw is agape to give you a clear view of your inevitable descent. Generally fastidious though Doran may be, this primal gesture causes him to start drooling over you, no doubt eager for your taste.";
		say "     Intimidating teeth bordering his is wet, fleshy abyss from the outside world, the dragon[if dorroleint is 0]'s inclined to tease you, nipping his little companion before[otherwise] takes great care to spare you from them as[end if] that same tongue pulls you head-first into his voracious maw, using a talon to help guide your way. Supple, eager surface caressing your face and [bodydesc of player] torso, the beast revels in subjecting you to this touch in partial darkness.";
		say "     Gradually rearing his head up, you make your sliding descent along the slick organ before you're stopped by his oppressively tight gullet";
		if dorbb is true:
			say ". The feel of his wriggling, indignant appendage against your crotch brings the matter of your previously unattended arousal to the forefront once more, though the immediacy of your circumstance doesn't really grant you the opportunity to satisfy yourself";
		say ". The previous, meager light of [if daytimer is day]day[otherwise]his fire[end if] giving way to utter blackness, you're slowly enveloped by it, his prior grip eventually relinquished when it is no longer needed.";
		say "     You're not subject to this ritual for very long, as gravity and his throat's muscles make quick work of you. Tight ring pulling you deeper and deeper into his heated tunnel before your head is finally granted the reprieve of his much more abiding stomach, and seconds later what remains of you follows suit.";
	say "     At the conclusion your descent into the Doran's slippery, fleshy prison,[if dorvornpcf is true] a cum-filled mess of your own make as[end if] he strokes his--[if scalevalue of player is 3]doubtlessly bugling[otherwise]somewhat bulging[end if]--belly in satisfaction. The supple, yielding confines embrace you in your fetal position, [if dorvornpcf is true]a dizzyingly heady swill of semen and[otherwise]slick with his heady[end if] saliva";
	if dorbb is true:
		now dorbb is false;
		say ". Finally overtaken by your overwhelming, unsated lust, and free to satisfy it you're driven to [if cocks of player > 0]jerk yourself off[otherwise]fondle yourself[end if] right there within these walls, certainly not needing much time before you set yourself off, ";
		if cocks of player > 1:
			if cock width of player > 24:
				say "voluminous load quickly flooding these pulsing holdings, exacerbating Doran's already[if scalevalue of player < 3] somewhat[end if] bloated state and forcing you to bathe in a pool of your own spent jizz";
				now dorvornpcf is true;
			otherwise:
				say "spending your [cum load size of player] against these pulsing holdings, further making it slick";
		otherwise:
			say "spending yourself against these pulsing holdings, further making it slick";
		if dorvordur is 0:
			say ". Finally satisfied, you black out from the whole affair.";
			say "[dorvorcdis]";
		otherwise:
			say ". Amused by your little digression, he gets up and struts around the cave with you in tow, doubtless [if dorvornpcf is true]sloshing[otherwise]jostling[end if] you about ever so slightly.";
			say "     '[one of]Hm[or]Tsk[or]Ha[at random]! [one of]My naughty little [dorgr] couldn't resist the chance to satisfy themselves[or]So sensitive is my little [dorgr][at random], [if cock width of player > 24][one of]they'll just have spend their stay with what they have wrought[or]I guess they'll just have to spend their time in there as a cummy little mess[at random][otherwise][one of]I should probably keep them in there for doing that[or]I'll just have to find a way to punish them further down the line[at random][end if]!' His teasing muffled by your enclosure, he's no doubt amused by the circumstance he has subjected you to";
			If dorvordur is 1:
				if dorvordis is 0:
					say ". Overwhelmed by exhaustion, you soon pass out after that.";
					say "[dorvorcdis]";
				otherwise:
					say ".";
					say "[dorvorpdis]";
			otherwise if dorvordur is 2:
				say ". Eventually, he chooses to go about his business while you still remain inside him.";
				say "[dorvorlpa]";
				if waiterhater is 0:
					wait for any key;
					say "[line break]";
				if dorvordis is 0:
					say ". Overwhelmed by exhaustion, you lose consciousness soon after that.";
					say "[dorvorcdis]";
				otherwise:
					say ".";
					say "[dorvorpdis]";
			otherwise if dorvordur is 3:
				say ". Eventually, he chooses to go about his business while you still remain inside him.";
				say "[dorvorlpa]";
				say "[dorvorlpb]";	
	otherwise if dorvordur is not 0:
		say ". Eventually, Doran climbs back to his feet, clearly feeling somewhat amused as he struts around the cave, [if dorvornpcf is true]sloshing[otherwise]jostling[end if] you about ever so slightly.";
		say "     '[one of]Oh[or]Yes[or]Heh[at random], ";
		if dorroleint is 0:
			say "[if dorvornpa is true][one of]maybe next time my [dorgr] will perform better[or]at the very least my [dorgr] makes for a good meal, in spite of themselves[or]I have half a mind to keep my [dorgr] in there, for their failures[at random][otherwise][one of]my slutty little [dorgr] is just as good a meal as they are at servicing their dragon[or]I have half a mind to keep my [dorgr] in there if it means I can keep them with me[or]my [dorgr] is just as good a toy as they are a snack[at random]";
		otherwise:
			say "[one of]I must thank my [dorgr] for this opportunity[or]I enjoy being close to my [dorgr] like this[or]it feels so nice to be full with my [dorgr][at random]";
		say ", and [if dorvornpcf is true][one of]I'm certain they rather enjoy swimming in their own seed[or]I'm so full, with all they've filled me with[at random][otherwise if dorvorpcf is true][one of]they taste all the better filled with their dragon's cum[or]I bet they'd like to take a moment to digest their dragon's load[at random][otherwise][one of]I bet they like it in there[or]I'm certain they enjoy keeping me company like this[at random][end if].' His brief musing significantly muffled by your enclosure, it's clear he enjoys subjecting you to this circumstance";
		If dorvordur is 1:
			if dorvordis is 0:
				say ". Overwhelmed by exhaustion, you soon pass out after that.";
				say "[dorvorcdis]";
			otherwise:
				say ".";
				say "[dorvorpdis]";
		otherwise if dorvordur is 2:
			say ". Eventually, he chooses to go about his business while you still remain inside him.";
			say "[dorvorlpa]";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			if dorvordis is 0:
				say ". Overwhelmed by exhaustion, you lose consciousness soon after that.";
				say "[dorvorcdis]";
			otherwise:
				say ".";
				say "[dorvorpdis]";
		otherwise if dorvordur is 3:
			say ". Eventually, he chooses to go about his business while you still remain inside him.";
			say "[dorvorlpa]";
			say "[dorvorlpb]";
	otherwise:
		say ". It is soon after this that you black out, trapped within these pulsing holdings.";
		if waiterhater is 0:
			wait for any key;
			say "[line break]";
		say "[dorvorcdis]";

to say dorvorlpa: [Doran Vore Linger Pool A]
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	if daytimer is day and a random chance of 1 in 4 succeeds:
		say "     The dragon decides to wander off outside to gather--what can you guess by the eventual sound of cracking and being slightly tossed about as a result of his exertion--wood for his fire. He seems to have little difficulty going about his business with you in tow, and it'd no doubt be quite a peculiar sight for anyone who saw it. [one of]He encounters little conflict from this errand[or]He encounters slight conflict from this errand, but appears to ward them off with little effort[or]One of the trees isn't particularly fond with this arrangement, but he manages to pull away from it and look elsewhere[at random]. You imagine he eventually returns to his cave with the supplies he has obtained, as it seems that he takes the time to pile his harvest in a corner";
	otherwise if a random chance of 1 in 3 succeeds:
		say "     The dragon decides to go on a [if daytimer is day]day[otherwise]night[end if]time stroll. Happily strutting along the plains to enjoy the scenery and perhaps scavenge little bit. Admittedly, it is perhaps a bit embarrassing that he carry you around in public view so casually, wasteland though it may be. He occasionally stops to gently stroke you, offering you some passing attention whilst he likely observes his surroundings.";
		if a random chance of 1 in 3 succeeds:
			say "     He appears to encounter some conflict, but after a brief tussle it seems like he comes out on top, implicitly leaving the assailant to be bothered by someone else";
		otherwise if a random chance of 1 in 2 succeeds:
			say "     He goes about his business with little issue, no doubt taking his time to bask in the [if daytimer is day]sunlight[otherwise]moonlight[end if]";
		otherwise:
			say "     It's soon made apparent that he's come toe to toe with something quite large, but it seems that he eventually managed to ward the creature off with only slight difficulty";
		say ". Eventually, you can sense that he returns back to his cave, satisfied with his little adventure";
	otherwise if a random chance of 1 in 2 succeeds:
		say "     It's apparent that the dragon is taking this moment to clean himself, as you soon feel his tongue pressing against you through your fleshy confines. He's very thorough, and quite flexible, as he takes a considerable amount of time attending to himself. You suspect he exacerbates some of his cleaning, simply to affectionately tease his willing occupant. He does eventually appear satisfied with himself, and gets back up to strut around, no doubt to check himself out";
	otherwise:
		say "     For some time it's a bit unclear what the dragon is doing. He appears to have relegated himself to laying about, mumbling to himself too faintly for you to pick up what he's saying, occasionally moving a talon to gently rub you from over his scaled belly. [if dorcusprog > 1]From what you can guess, you're fairly certain he's playing with his toys again[otherwise]Whatever it is, he seems to be enjoying himself, at the very least[end if]. After a while, he finishes this peculiar ritual and yawns a bit, getting back up and stretching himself out after being stationary for so long";

to say dorvorlpb: [Doran Vore Linger Pool B -- NOTE: Nested discharge protocol]
	say ". He soon takes a seat once more, perhaps pondering what he should do next.";
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	if a random chance of 1 in 3 succeeds:
		say "     Eventually, Doran decides to take [if daytimer is day]a nap[otherwise]some rest[end if], stretching out next to his[if daytimer is night] roaring[end if] campfire before he gets himself comfortable. It's not long before you he calms considerable, the sound of his heartbeat slowing. You feel him casually stroke you through his scaled undercarriage, but eventually that too dies down, descending into sleep entirely";
		if dorvordis is 0:
			say ". You too soon fall to rest, no doubt quite exhausted from this whole ordeal.";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			say "[dorvorcdis]";
		otherwise:
			say ". He does eventually wake up, crawling back to his feet and stretching for a moment to offer up a prolonged yawn before dealing with his little captive.";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			say "[dorvorpdis]";
	otherwise if a random chance of 1 in 2 succeeds:
		say "     After some time, you find yourself to tussled about in a somewhat abrupt and erratic fashion. From what you can guess, Doran appears to practicing his posturing and movement. He spends a good amount of time doing this, though you occasionally feel his touch against your slick prison in idle reassurance. The very meticulous way he goes about practicing like this clearly illustrates an almost obsessive interest in how he presents himself";
		if dorvordis is 0:
			say ". Finally overwhelmed by exhaustion, the whole ordeal is enough to make you pass out.";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			say "[dorvorcdis]";
		otherwise:
			say ". After this goes on for a while he finishes scrutinizing his posture, no doubt eager to deal with his little captive.";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			say "[dorvorpdis]";
	otherwise:
		say "     After a brief calm, he makes a weird whining noise and rolls onto his back. It's a somewhat peculiar act, though it's soon made clear that he's found himself in a playful mood, as he begins to prod his little captive. The feel of his talon poking you, imprisoned and vulnerable as you are, forces you to squirm about, much to the dragon's chuckling amusement, clearly enjoying the sensation of you wiggling around in there";
		if dorvordis is 0:
			say ". Finally overwhelmed by exhaustion, the whole ordeal is enough to make you pass out.";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			say "[dorvorcdis]";
		otherwise:
			say ". After having some fun with you for a fair stretch of time he spares you of any further teasing, climbing back to his feet.";
			if waiterhater is 0:
				wait for any key;
				say "[line break]";
			say "[dorvorpdis]";

to say dorvorpdis: [Doran Vore Protocolled Discharge]
	if dorvordis is 2 or (dorvordis is 3 and a random chance of 1 in 2 succeeds):
		say "     Soon enough, you feel the dragon's body groan and churn, illustrative of his desire to free you in a less than dignified manner. Hunkered down in an attempt to appeal to gravity's aid, the once-abiding confines tighten around you to push you through a previously unobliging sphincter, forcing you head-first into the depths of this narrow labyrinth of flesh.";
		say "     Squeezed along his slick bowels, inch by inch, the dragon [if dorroleint is 0]is clearly inclined to take his sweet time with disposing of you, subjecting you to this ritual for as long as he might get away with[otherwise]takes considerable pains to try and free you as quickly as possible, flushing you through his bowels with a deliberate rapidity[end if]. In due time, you find yourself exposed to the light and cold air of the outside world once more";
		if dorroleint is 0: 
			say "; however, he's not quite inclined to free you just yet, inching you in and out for a second--as though illustrative of a certain indecision to let you free--before he finally relinquishes you onto the ground with an audibly wet splat.";
		otherwise:
			say ". Carefully, he relinquishes you onto the ground below, mindful of your clearly vulnerable state.";
		say "     Dizzily in disarray as you are, you pull yourself up from the puddle of saliva[if dorvornpcf is true] and spunk[end if] left in your wake. Doran [if dorroleint is 0]can't help but chuckle at your present state, looking you over to see if everything is where it belongs before giving you a final nip of approval, leaving you a complete[otherwise]wheels around, tongue gently caressing along you as he takes the time to clean you of your embarrassing[end if] mess.";
		say "     '[one of]Hm[or]Oh[or]Mm[at random], [if dorroleint is 0][one of]I bet my [dorgr] likes being discarded like a used meal[or]I think my [dorgr] looks appropriate like this, as a messy little slut[or]what a mess, I should put my [dorgr] back in after making all this[at random][otherwise][one of]my [dorgr] is so very weird, to ask of me this[or]I hope my [dorgr] had a nice trip[or]I'm certain my [dorgr] would like to go on another ride like that, eventually[at random][end if]!' Teasing you for a moment, he's no doubt a bit worn out from the whole ordeal, and returns to his campfire to rest whilst you too take a moment to recover[if dorroleint is 0], using this opportunity to clean yourself off[end if] before eventually going about your business.";
	otherwise:
		say "     In due time, you feel the dragon go rigid, a somewhat audible hacking sound coming from him in clear illustration of his intent to free you from your slick prison. On cue, you feel his previously looser confines tighten around you, forcing you back out the tight ring from whence you came.";
		say "     The endeavour is fairly brief and unflattering, as you're unceremoniously hacked back up through his gullet and into the beast's waiting maw";
		if dorroleint is 0:
			say ". Tongue writhing against you briefly, his refrain seems to tease the notion of swallowing you back down once more, before he inevitably chooses to place";
		otherwise:
			say ". His tongue's caress carefully inspecting you, he doesn't subject you to his maw's familiar confines long before gently placing";
		say "you back down onto the ground, exposed once more to the harsh light and dry air of the outside world.";
		say "     Laying in a puddle of saliva[if dorvornpcf is true] and some spunk[end if], Doran[if dorroleint is 0] grins at you, looking you over to see if everything is in order before giving you a final nip of approval, leaving you a complete, dizzy[otherwise]'s snout descends upon you, tongue gently caressing along your disoriented form as he takes the time to clean you of your embarrassing[end if] mess.";
		say "     '[one of]Heh[or]Ah[or]Hey[at random], [if dorroleint is 0][one of]my [dorgr] should probably be glad I chose to let them go[or]I think my [dorgr] looks appropriate like this, as a messy little slut[or]what a mess, I should put my [dorgr] back in after making all this[at random][otherwise][one of]so that's where my [dorgr] was all along[or]I hope my [dorgr] had a nice trip[or]I'm certain my [dorgr] would like to go on another ride like that, eventually[at random][end if]!' Teasing you for a moment, he's no doubt a bit worn out from the whole ordeal, and returns to his campfire to rest whilst you[if dorroleint is 0] clean yourself off and[end if] recover as well, before eventually going about your business.";

to say dorvorcdis: [Doran Vore Clean Discharge]
	say "     When you come to, you find yourself spread across the earthy floor, free of the dragon's confines once more, as he lays next to you. [if dorroleint is 0]You're still quite a sticky mess, no doubt left that way for Doran's amusement[otherwise]At the very least it appears Doran cleaned you off while you were out cold[end if].";
	say "     '[one of]I see my [dorgr] has awoken[or]Rise and shine, my [dorgr][or]Ah, welcome back, my [dorgr][at random]!' Grinning, he gives you a playful [if dorroleint is 0]nip[otherwise]lick[end if]. '[one of]That was fun[or]I enjoyed that[at random], [if dorroleint is 0][one of]I look forward to making a meal of them again, when I get the chance[or]I'm certain they're eager to be abused by their [dorgr] again, when they feel up to it[at random][otherwise][one of]I'm honoured that my [dorgr] would let their dragon make a meal of them[or]I hope my [dorgr] enjoyed that as much as their dragon did[at random][end if]!' Nudging you off, he lets you go to attend your own matters[if dorroleint is 0], the first of which probably being to clean yourself off[end if].";

Section 3.1.3 Expanded Submissive Scenes

to say dorsub_6: [Rimjob scene]
	say "     You, [if dorroleint is 4]rather bluntly, order[otherwise]somewhat sheepishly, ask[end if] Doran to have him attend your ass, to which he unquestioningly obliges. Moving close and rolling onto his back, the dragon ";
	if dorroleint is 4:
		say "eagerly waits as you [if scalevalue of player < 4]climb on top[otherwise]move over[end if] him and offer";
	otherwise:
		say "[if scalevalue of player < 4]carefully picks you up and places him on his scaled, lean chest[otherwise]shuffles under your large, [bodydesc of player] form[end if] so that you might offer him";
	say "a telling view of your exposed behind, much to the approval of his prying eyes.";
	say "     '[one of]Oh[or]Hm[or]Ah[or]Mm[at random], [dorgr], [if dorroleint is 4][one of]their dragon is blessed with this opportunity[or]I long for their taste[or]they offer me such a treat[at random][otherwise][one of]they make such a lewd request of their dragon[or]I wonder what they might taste like[or]they make quite an offering to their dragon[at random][end if]!' He punctuates his remark with the warm, slick feel of his prehensile tongue along the curvature of your [bodytype of player] behind. His reverence remains fairly brief, before you feel his tongue slowly invade your anal ring, [if scalevalue of player < 4]it's substantive girth very quickly made apparent to you as it worms[otherwise]worming its way[end if] through your bowels. He's obviously quite restrained and slow in his pace out of regard for you; however, you could command him to be rougher on you -- though you imagine things will quickly spiral out of control if you do. Shall you? Else he'll likely maintain this current tempo.";
	if player consents:
		say "     [if dorroleint is 4]Perhaps a little meekly, you ask[otherwise]Pressing your rear more firmly on his snout, you tell[end if] him to pick up the pace. [if dorroleint is 4]Ever obedient, he almost immediately floods[otherwise]With slight caution, he begins to rapidly flood[end if] your bowels with the writhing organ, causing you to twist and tense in intense pleasure in the wake of its irreverent occupancy. Quickly building up a pace of assailing your fleshy abyss, his continued influence is almost dizzying, [if cocks of player > 0]cock[smn] standing in aching attention[otherwise]cunt[sfn] dripping with an aching need[end if], [if dorroleint is 4]the dragon freeing a talon to idly fondle you whilst he maintains his[otherwise]instinctively opting to stroke yourself during this continued[end if] assault.";
		say "     The efficacy of his expedience is made very clear when you're soon made to cry out, [if cocks of player > 1]dicks spurting their [cum load size of player] load against the dragon's torso, their[otherwise if cocks of player is 1]dick spurting its [cum load size of player] load against the dragon's torso, its[otherwise if cunts of player > 1]pussies gushing against the open air, staining the dragon's neck, their[otherwise]pussy gushing against the open air, staining the dragon's neck, its[end if] release strained by his worming appendage. Once the fires of your need die down, the audibly wet sound of the dragon's tongue escaping your hole fills the air, stopping for only a moment to clean you of any lingering mess[if cock width of player > 24], of which there is quite a lot[end if].";
		say "     '[one of]Hm[or]Mm[or]Ah[at random]! [if dorroleint is 4][one of]I hope [dorgr] is impressed with their dragon[or][dorgr] lets their dragon have all sorts of fun[or]I'm glad to see [dorgr] enjoyed themselves[at random][otherwise][one of]I hope I wasn't too hard on [dorgr][or][dorgr] is quite the squirter[or]Hopefully, [dorgr] won't be too sore after all that[at random][end if].' [if scalevalue of player < 4]Putting you back down[otherwise]Pulling out from under you[end if], he takes a moment to clean himself off[if cock width of player > 24], a task requiring a fair bit, given your substantive load,[end if] before returning back to his place of rest, now that he is finished. No doubt this little exercise has left you a bit worn out, and it takes a moment for you to feel ready enough to go about your business.";
		if dornpbb is 1, now dornpbb is 2;
	otherwise:
		say "     Slowly, you feel inch after inch of the writing organ enveloped within the confines of your bowels, [if cocks of player > 0]cock[smn] gradually driven erect[otherwise]cunt[sfn] beginning to ache with need[end if] by this tainted attendance. The slower pace allows you to see that the dragon is clearly aroused from his task, draconic dick exposed to the open air, [if scalevalue of player < 4]partially[otherwise]easily[end if] within your reach. Perhaps you should offer some reciprocation? Else you'll ensure the attention remains solely on you.";
		if player consents:
			say "     [if scalevalue of player < 4]Reaching out[otherwise]Moving a hand[end if] to touch his oozing rod, you begin to caress along its firm length in response to the dragon's continued attendance. Soft moans vibrating against your attended flesh, it's quickly apparent that this persisting affection incites an increasing fervour from your companion, his talons soon moving your stroke [if cocks of player > 1]one of your unattended cocks[otherwise if cocks of player is 1]your unattended cock[otherwise if cunts of player > 1]one of your unattended portals[otherwise]your unattended portal[end if] in additional reciprocation. Both of you, in turn, pushing one to attend the other more, and the pace to bliss begins to approach at a dizzying speed.";
			say "     With the dragon's continual, merciless assault on you, it's not long before a loud moan escapes your lips, [if cocks of player > 1]dicks spurting their [cum load size of player] load against the dragon's torso, their[otherwise if cocks of player is 1]dick spurting its [cum load size of player] load against the beast's torso, its[otherwise if cunts of player > 1]pussies gushing against the open air, staining the beast's neck, their[otherwise]pussy gushing against the open air, staining the beast's neck, its[end if] release strained by his worming appendage";
			if dorroleint is 4:
				say ". Doran's own climax is quickly on its approach, shall you deny him of it?";
				if player consents:
					say "     Immediately, your grip tightens around the base pf his pre-slicked organ, ceasing any additional affection. Too tied up right now to put up any real protest, the dragon can only writhe and moan in disdain for this denial of release. Eventually, his lust sufficiently dies down, tongue slowly pulling free of your hole before you let him off, [if scalevalue of player < 4]climb[otherwise]gett[end if]ing off him, visibly weakened by his unsated lust, of which you command him not to appease.";
					say "     '[one of]O-oh[or]A-ah[or]N-nng[at random], [one of][dorgr] torments their dragon so[or]I will obey [dorgr]'s order[or]I pray [dorgr] will grant their dragon release eventually[at random]...' Clearly strained and discomforted by the ordeal, he nonetheless makes an endeavour to clean you of the mess you've made, his own practice of hygiene following thereafter when he returns to the fire.";
					now dornpbb is 2;
				otherwise:
					say "     When the dragon does find release, shall you aim him away from you? Else you'll take the full brunt of his blast.";
					if player consents:
						say "     Inevitable roar of bliss vibrating against your thighs, you quickly steer the dragon's cock toward a nearby wall, dousing it with errant strings of his thick, white fluid[if dornpbb > 0], the magnitude of which intensified by his prior neglect[end if]. Your attendant pants audibly, warm breath rising up against you as he takes a moment to recover";
						now tempnum is 0;
					otherwise:
						say "     Inevitable roar of bliss vibrating against your thighs, you're immediately hit with a barrage of the dragon's voluminous seed[if dornpbb > 0], the magnitude of which intensified by his prior neglect[end if], painting [if scalevalue of player < 4]you utterly[otherwise]your torso[end if] with strings of the thick, white fluid, until it oozes down to meet your attendant's tongue, who -- though quite exhausted -- nonetheless remains very eager lick what he might reach clean of you";
						now tempnum is 1;
					say ". Eventually, ";
					if dorroleint is 4:
						say "you let him free, [if scalevalue of player < 4]climb[otherwise]gett[end if]ing off him before he cleans you of [if tempnum is 1]the remainder of his[otherwise]any remaining[end if]";
					otherwise:
						say "he [if scalevalue of player < 4]puts you back down[otherwise]pulls out from under you[end if], cleaning you of [if tempnum is 1]the remainder of his[otherwise]any remaining[end if]";	
					say " mess.";
					say "      '[if dorroleint is 4][one of]It pleases their dragon that they could tend to them so[or]Oh, my [dorgr]'s ass is positively enviable[or]I could tend to [dorgr] like that for hours[at random][otherwise][one of]I hope I satisfied [dorgr][or]That was certainly a fun little digression[or]Oh, the things [dorgr] asks of me[at random][end if]!' Grinning slyly, he returns back to his place of rest once he's satisfied with your present state, letting you gather your thoughts and go about your business once more.";
			otherwise:
				say ". Doran's own climax is quickly on its approach, shall you aim him away from you? Else you'll take the full brunt of his blast.";
				if player consents:
					say "     Inevitable roar of bliss vibrating against your thighs, you quickly steer the dragon's cock toward a nearby wall, dousing it with errant strings of his thick, white fluid[if dornpbb > 0], the magnitude of which intensified by his prior neglect[end if]. Your attendant pants audibly, warm breath rising up against you as he takes a moment to recover";
					now tempnum is 0;
				otherwise:
					say "     Inevitable roar of bliss vibrating against your thighs, you're immediately hit with a barrage of the dragon's voluminous seed[if dornpbb > 0], the magnitude of which intensified by his prior neglect[end if], painting [if scalevalue of player < 4]you utterly[otherwise]your torso[end if] with strings of the thick, white fluid, until it oozes down to meet your attendant's tongue, who -- though quite exhausted -- nonetheless remains very eager lick what he might reach clean of you";
					now tempnum is 1;
				say ". Eventually, ";
				if dorroleint is 4:
					say "you let him free, [if scalevalue of player < 4]climb[otherwise]gett[end if]ing off him before he cleans you of [if tempnum is 1]the remainder of his[otherwise]any remaining[end if]";
				otherwise:
					say "he [if scalevalue of player < 4]puts you back down[otherwise]pulls out from under you[end if], cleaning you of [if tempnum is 1]the remainder of his[otherwise]any remaining[end if]";	
				say " mess.";
				say "     '[if dorroleint is 4][one of]It pleases their dragon that they could tend to them so[or]Oh, my [dorgr]'s ass is positively enviable[or]I could tend to [dorgr] like that for hours[at random][otherwise][one of]I hope I satisfied [dorgr][or]That was certainly a fun little digression[or]Oh, the things [dorgr] asks of me[at random][end if]!' Grinning slyly, he returns back to his place of rest once he's satisfied with your present state, letting you gather your thoughts and go about your business once more.";
		otherwise:
			if dornpbb is 1, now dornpbb is 2;
			say "     Reveling in this lewd ritual, the dragon's oozing rod bobs unattended before you, though he is [if dorroleint is 4]obedient[otherwise]obliging[end if] enough to remain unfettered by a need to deal with it this very moment, each irreverent twitch of his invading appendage expertly making you twist and writhe in pleasure. His talons soon move your stroke [if cocks of player > 1]one of your unattended cocks[otherwise if cocks of player is 1]your unattended cock[otherwise if cunts of player > 1]one of your unattended portals[otherwise]your unattended portal[end if] in additional attention, exacerbating your already rapidly approaching bliss.";
			say "     Wet sounds of his affection filling the air for only a brief moment longer, a loud moan is eventually forced from your lips, [if cocks of player > 1]dicks spurting their [cum load size of player] load against the dragon's torso, their[otherwise if cocks of player is 1]dick spurting its [cum load size of player] load against the dragon's torso, its[otherwise if cunts of player > 1]pussies gushing against the open air, staining the dragon's neck, their[otherwise]pussy gushing against the open air, staining the dragon's neck, its[end if] release strained by his worming appendage. Eventually, ";
			if dorroleint is 4:
				say "you let him free, [if scalevalue of player < 4]climb[otherwise]gett[end if]ing off him before he cleans you of [if tempnum is 1]the remainder of his[otherwise]any remaining[end if]";
			otherwise:
				say "he [if scalevalue of player < 4]puts you back down[otherwise]pulls out from under you[end if], cleaning you of [if tempnum is 1]the remainder of his[otherwise]any remaining[end if]";	
			say " mess.";
			say "     '[if dorroleint is 4][one of]It pleases their dragon that they could tend to them so[or]Oh, my [dorgr]'s ass is positively enviable[or]I could tend to [dorgr] like that for hours[at random][otherwise][one of]I hope I satisfied [dorgr][or]That was certainly a fun little digression[or]Oh, the things [dorgr] asks of me[at random][end if]!' Grinning slyly, he returns back to his place of rest once he's satisfied with your present state, letting you gather your thoughts and go about your business once more";

to say dorsub_7: [Oral Giving scene]
	say "     [if dorroleint is 4]Ordered[otherwise]Asked[end if] to roll onto his back, the dragon silently obliges as you approach. Doran's[if scalevalue of player < 4] sizeable[end if] genitalia is exposed before you, ample sack and bulging sheath left to your mercy. Seeing as how the creature won't protest your actions, you could obsess over his carnal offering. Should you? Else you'll get straight to the point.";
	if player consents:
		now tempnum is 1;
		say "     Hands tracing up his crotch to meet his voluptuous, scaled balls, held taut against him. About the size of a large grapefruit each, [if scalevalue of player < 3]they're too big to fit[otherwise if scalevalue of player is 3]they barely fit[otherwise]your large size allows you to fit them[end if] within your grasp. Head lowering to revel in its scent, his hygiene subdues his virile, heady musk, wafting up to meet your querying senses. Shall you attend to it with your tongue's affection? Else you'll move on.";
		if player consents:
			now tempnum is 2;
			say "     A faint moan escaping the dragon's lip, his response to your tongues slick, inquisitive attention. Firmly though they are held in place, they nonetheless remain yielding enough to abide your lewd embrace, masculine scent exacerbated by your taste. Continuing this for a few, long minutes, your attention eventually wanders upward. Sheath bulging further with this lewd attention, the head of the creature's dick partially exposed and dripping against his lean torso.";
			say "     Still lavishing affection upon his package, your hands reach up to feel";
		otherwise:
			say "     Slowly, your hands wander up to his sheath, dick's head exposed and drooling slightly from your attention, feeling";
		say " that taut housing. Barely able to contain his proud tool, it would clearly prefer to be rid of its occupant, curvature of his sizeable knot felt hiding within these confines for the moment";
		if tempnum is 2:
			say ". Shall you raise your tongue's attendance to the meet his sheath? Else, you will continue feeling it up until he exposes himself fully.";
			if player consents:
				now tempnum is 3;
				say "     S[if scalevalue of player > 3]ubstantially s[end if]licked sack departed from, your irreverent appendage's assault continues along sheath's length in place of your hands. This new attention expediting his arousal, you're offered the sensation of his tool gradually rising from these depths and into the open air, and it's not long before his cock is completely rigid and eager.";
			otherwise:
				say "     Sack kept s[if scalevalue of player > 3]ubstantially s[end if]lick, your lewd affection further brings out the beast's scent, hand gentling pumps along the sheath's length, graced with groans from the dragon and the feel of his tool rising from his depths, until his cock is completely rigid and eager.";
		otherwise:
			say ". Shall you offer your tongue's attention to his sheath? Else, you will continue feeling it up until he exposes himself fully.";
			if player consents:
				now tempnum is 3;
				say "     Your irreverent appendages assault along sheath's length in place of your hands. This new attention expediting his arousal, you're offered the sensation of his tool gradually rising from these depths and into the open air, and it's not long before his cock is completely rigid and eager.";
			otherwise:
				say "     Your hand gently pumps along the sheath's length, graced with groans from the dragons and the feel of his tool rising from his depths, until his cock is completely rigid and eager. Precum staining his torso, it begs for attention.";
	otherwise:
		now tempnum is 0;
		say "     Impartially, your hand coils around his sheath, which is barely able to contain the dragon's dick, before [if dorroleint is 4]assertively[otherwise]gently[end if] pumping along its length, each successive motion exposing his tool further, inch by inch. Moans escaping the dragon's lips, you needn't do this for long until its completely rigid and eager before you, dripping with need.";
	say "     '[one of]Oh[or]Mm[or]Ah[or]Nng[at random], [dorgr], [if dorroleint is 4][one of]they are so very charitable to their dragon[or]I am gifted with one so attentive[or]I hope I am satisfactory for them[at random][otherwise][one of]it seems they're feeling very charitable[or]they're feeling very attentive, I see[or]I hope they like what they see[at random][end if].' Reaching a hand to grace his tool, it remains slick and throbbing to your touch. Shall you heed it's call? Else you will [if tempnum > 1]continue to obsess over your present fixation[otherwise]maintain your distance[end if].";
	if player consents:
		now dorrp_tv1 is 1;
		say "     [if tempnum is 2]Pulling away from his balls[otherwise if tempnum is 3]Pullin away from his sheath[otherwise]Drawing closer[end if], your tongue soon meets to caress along the dragon's precum-lubricated dick, overwhelming your senses with his heady, masculine flavour";
		if tempnum > 1, now tempnum is 1;
		if tempnum > 0:
			say ". Some eighteen inches in length, it's [if scalevalue of player < 4]an extremely intimidating tool[otherwise if scalevalue of player is 4]a fairly intimidating tool[otherwise]nothing someone of your size can't handle[end if], head tapered and flared, supported by a thick and slightly ribbed shaft, down to meed it's bulging knot. Pinkish in hue, it nonetheless maintains a measure of his turquoise colouration, most intense at the base";
		say ". This focus is soon";
	otherwise:
		now dorrp_tv1 is 0;
		say "     [if tempnum is 2]Heady scent of his assailed orbs exacerbated as your continued attendance starts to make him break a sweat[otherwise if tempnum is 3]Though accessing his sheath his somewhat difficult with his arousal, this particular tease continues to further push him[otherwise]Observing from afar[end if], you continue to stroke the dragon's precum-lubricated dick, air quickly filling with his masculine smell, your endeavours soon";
	say " rewarded with errant spurts of his sexual fluids, staining his scaled torso further. You could supplement your current work by stimulating him anally, shall you?";
	if player consents:
		now dorrp_tv2 is 1;
		say "     Reaching a hand between his scaled thighs, [if scalevalue of player < 3]you're a bit strained to properly reach him, attention split as you are, digits [otherwise]your digits[end if] soon push past his supple anal ring, meeting his prostate with[if scalevalue of player < 4] a bit of difficulty, and you're ultimately forced to pushed the whole of your hand in there to reach it[otherwise]with little difficulty[end if]. This addition incites a clear response of approval from the dragon, your lewd, internal caress causing him to tense with every motion.";
	say "     '[one of]A-ah[or]O-oh[or]N-nng[at random], [if dorroleint is 4][one of]Milk y-your dragon dry, M-[dorgr][or]I beg f-for bliss, [dorgr][or]I can't c-control myself, M-[dorgr][at random][otherwise][one of]I-I can't hold of any longer, M-[dorgr][or][dorgr], I'm g-gonna blow[or]M-[dorgr][at random][end if]...!' Panting audibly in the wake of your continued affection, ";
	if dorroleint is 4:
		say "you can deny him of orgasm, shall you? Else you'll sate the dragon's rising lust.";
		if player consents:
			say "     Just as he might find satisfaction, you immediately pull away from him. Caught in the throes of bliss, he instinctually tries to reach for his dick and take your place, only to pull his talons away and scold him until he obliges. Panting, and with his lust slowly dieing back down, he looks like a bit of an addled mess.";
			say "     '[one of]Oh[or]Tsk[or]Ah[at random], [one of]how [dorgr] teases me so[or]the things [dorgr] subjects me to[or]I hope I haven't upset [dorgr][at random]...' Still lust addled, you imagine he's obedient enough that he won't satisfy himself the second you turn your back. Eventually, when you allow him, he cleans himself off a bit and goes back to his place of rest, to recover. Denied orgasm though he might have been, there's no question that this little ritual has left you a little lust-addled, yourself.";
			now dornpbb is 2;
			now dorbb is true;
		otherwise:
			say "     Very well, shall you [if tempnum > 1]shift your attention to his dick and[otherwise if dorrp_tv1 is 0]move in and[end if] finish this by sucking him off? Else he'll waste his load against himself.";
			if player consents:
				say "     Quickly, you [if tempnum > 1]move your way up[otherwise]move in[end if] to engulf his cockhead within your lips[if scalevalue of player < 4], your small body barely able to contain it[end if], madly [if dorrp_tv2 is 1]milking[otherwise]pumping[end if] the beast. This is more than enough to bring him over the edge, roaring out weakly as his dick[if dorrp_tv2 is 1] and anal ring[end if] throb against your hands, unloading gout after successive gout into your eager maw[if dornpbb > 0], its volume exacerbated from his prior neglect[end if]";
				if scalevalue of player < 4:
					say ". [if dorroleint is 4]Substantial though his load is, he's trained enough restrained to not overwhelm you, allowing your diminutive form to down the thick, potent seed with little difficulty[otherwise]Given how diminutive your form is, you can barely keep up with all of it, his thick, potent seed quickly sputtering from your hole[end if]";
				otherwise:
					say ". You gulp down his load with little difficulty[if dorroleint is 4], aided by the obedient dragon managing some measure of restraint[end if], allowing you to savour his thick, potent seed";
			otherwise:
				say "     [if tempnum is 2]Reveling in his substantive orbs[otherwise if tempnum is 3]Reveling in his sheath and cockbase[otherwise if dorrp_tv1 is 1]Delighting in his oozing cock[otherwise]Continuing to watch from afar[end if], it's not long before your continued [if dorrp_tv2 is 1]milking[otherwise]pumping[end if] makes the beast roar out weakly, his dick[if dorrp_tv2 is 1] and anal ring[end if] throbbing against your hands, spending gout after successive gout against his face and torso[if dornpbb > 0], its volume exacerbated from his prior neglect[end if]";
				say ". Eventually, you pull free of the dragon, now a spent and panting mess.";
			say "     '[if dorroleint is 4][one of][dorgr]'s dragon immensely appreciates this gift[or]This dragon is gifted with such a generous [dorgr][or]I'm glad [dorgr] appreciates their dragon[at random][otherwise][one of]Clearly [dorgr] was feeling a bit generous[or]No doubt [dorgr] likes what the see[or]I hope [dorgr] enjoyed attending to their dragon[at random][end if]!' Having very much enjoyed this little ritual, he eventually moves to clean himself up, returning back to his place of rest[if dorroleint is 4] once you'll allow him[end if]. Though he certainly got a kick out of it, there's no question that relieving him has left you a bit lust-addled.";
			now dorbb is true;
	otherwise:
		say "shall you [if tempnum > 1]shift your attention to his dick and[otherwise if dorrp_tv1 is 0]move in and[end if] finish this by sucking him off? Else he'll waste his load against himself.";
		if player consents:
			say "     Quickly, you [if tempnum > 1]move your way up[otherwise]move in[end if] to engulf his cockhead within your lips[if scalevalue of player < 4], your small body barely able to contain it[end if], madly [if dorrp_tv2 is 1]milking[otherwise]pumping[end if] the beast. This is more than enough to bring him over the edge, roaring out weakly as his dick[if dorrp_tv2 is 1] and anal ring[end if] throb against your hands, unloading gout after successive gout into your eager maw[if dornpbb > 0], its volume exacerbated from his prior neglect[end if]";
			if scalevalue of player < 4:
				say ". [if dorroleint is 4]Substantial though his load is, he's trained enough restrained to not overwhelm you, allowing your diminutive form to down the thick, potent seed with little difficulty[otherwise]Given how diminutive your form is, you can barely keep up with all of it, his thick, potent seed quickly sputtering from your hole[end if]";
			otherwise:
				say ". You gulp down his load with little difficulty[if dorroleint is 4], aided by the obedient dragon managing some measure of restraint[end if], allowing you to savour his thick, potent seed";
		otherwise:
			say "     [if tempnum is 2]Substantive balls churning against your touch[otherwise if tempnum is 3]Reveling in his sheath and cockbase[otherwise if dorrp_tv1 is 1]Delighting in his oozing cock[otherwise]Continuing to watch from a distance[end if], it's not long before your continued [if dorrp_tv2 is 1]milking[otherwise]pumping[end if] makes the beast roar out weakly, his dick[if dorrp_tv2 is 1] and anal ring[end if] throbbing against your hands, spending gout after successive gout against his face and torso[if dornpbb > 0], its volume exacerbated from his prior neglect[end if]";
		say ". Eventually, you pull free of the dragon, now a spent and panting mess.";
		say "      '[if dorroleint is 4][one of][dorgr]'s dragon immensely appreciates this gift[or]This dragon is gifted with such a generous [dorgr][or]I'm glad [dorgr] appreciates their dragon[at random][otherwise][one of]Clearly [dorgr] was feeling a bit generous[or]No doubt [dorgr] likes what they see[or]I hope [dorgr] enjoyed attending to their dragon[at random][end if]!' Having very much enjoyed this little ritual, he eventually moves to clean himself up, returning back to his place of rest[if dorroleint is 4] once you'll allow him[end if]. Though he certainly got a kick out of it, there's no question that relieving him has left you a bit lust-addled.";
		now dorbb is true;

Section 3.1.4 - Neutal Doran Sex

to say dorneut_1:
	say "     Making an offer to Doran, he briefly considers his approach. Quickly coming to a conclusion, he eagerly grins[if scalevalue of player < 4] down[end if] at you.";
	say "     '[one of]Ah[or]Oh[or]Hm[at random], [one of]perhaps [dorgr] would prefer a bit of mutual fun?[run paragraph on]I think [dorgr]'s dragon is feeling particularly adventurous right now.[run paragraph on][or]methinks [dorgr]'s dragon would like to do something a little different.[run paragraph on][at random]' Moving closer he offers to remove any attire you might have on you, affectionately nosing you over.";
	say "     'Would [dorgr] prefer to be on top, or bottom?'";
	now tempnum is 0;
	now tempnum2 is 0;
	now calcnumber is -1;
	let tempnum3 be 0;
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type](1)[roman type] [link]'Top.'[as]1[end link]";
		say "[bold type](2)[roman type] [link]'Bottom.'[as]2[end link]";
		say "[bold type](3)[roman type] [link]'You decide.'[as]3[end link]";
		while 1 is 1:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 1 and calcnumber <= 3:
				break;
			otherwise:
				say "'I'm sorry, could [dorgr] repeat that?'";
		if calcnumber is 1:
			now tempnum is 1;
			say "     '[one of]Very well[or]Certainly[or]No problem[at random].' T";
			now trixieexit is 1;
		otherwise if calcnumber is 2:
			now tempnum is 2;
			say "     '[one of]Very well[or]Certainly[or]No problem[at random].' T";
			now trixieexit is 1;
		otherwise:
			now tempnum is a random number between 1 and 2;
			say "     'Oh, [one of]how generous[or]my thanks[or]a pleasure[at random]!' T";
			now trixieexit is 1;
		say "he dragon [if tempnum is 1]rolls onto his back and invites you to climb on him[otherwise if scalevalue of player < 4]sets you down on the ground before moving over you[otherwise]sets you down on the ground before climbing atop you[end if], such that you offer him unobstructed access to your exposed hindquarters. In turn, you're presented with his substantive, partially aroused assets [if tempnum is 1]before[otherwise]above[end if] you, the beast eager to tease you by prodding you with its already-oozing tip.";
		if tempnum is 1:
			say "     Shall you go all in? Else you'll keep your distance.";
			if player consents:
				say "     Immediately, you thrust the dripping rod between your lips, [if scalevalue of player < 3]quickly overwhelmed by its size, further exacerbated[otherwise if scalevalue of player is 3]somewhat overwhelmed by its size, further exacerbated[otherwise]easily handling the impressive organ, even[end if] as it grows to full attention. Taste awash in his masculine flavour, your expedient";
				now tempnum2 is 1;
			otherwise:
				say "     Slowly, you wrap your hand around the dripping rod, gradually pumping the impressive organ until it grows to full attention. Fingers quickly made slick with precum, your";
				now tempnum2 is 2;
			say " attendance is quickly reciprocated, Doran";
			if cocks of player > 0 and (((cunts of player > 0 or anallevel is 3) and a random chance of 1 in 2 succeeds) or (cunts of player is 0 and anallevel is not 3)):
				say " wrapping his tongue around[if cocks of player > 1] one of[end if] your [cock size desc of player] dick[smn], his slick affection easily driving you hard and";
				now tempnum3 is 1;
				if cock width of player > 24 and dorvorreg is 2, now dorvornpcf is true;
			otherwise if cunts of player > 0 and ((anallevel is 3 and a random chance of 1 in 2 succeeds) or anallevel is not 3):
				say "'s tongue caressing along the entrance of[if cunts of player > 1] one of[end if] your cunt[sfn] before thrusting the writhing appendage into your supple depths,";
				now tempnum3 is 2;
			otherwise:
				say "'s tongue caressing along the entrance of your anal ring before thrusting the writhing appendage into your fleshy abyss,";
				now tempnum3 is 3;
			say " drawing out[if tempnum2 is 1] muffled[end if] moans from your lips.";
		otherwise:
			now tempnum2 is 1;
			say "     Subject to the[if scalevalue of player < 4] substantive[end if] weight of the dragon, he eagerly exploits this more dominant position to thrust his dripping rod between your lips, [if scalevalue of player < 3]quickly overwhelmed by its size, further exacerbated[otherwise if scalevalue of player is 3]somewhat overwhelmed by its size, further exacerbated[otherwise]easily handling the impressive organ, even as it[end if] grows to full attention. Taste instantly awash in his masculine flavour, Doran happily offers to reciprocate your attendance, ";
			if cocks of player > 0 and (((cunts of player > 0 or anallevel is 3) and a random chance of 1 in 2 succeeds) or (cunts of player is 0 and anallevel is not 3)):
				say "wrapping his tongue around[if cocks of player > 1] one of[end if] your [cock size desc of player] dick[smn], his slick affection easily driving you hard and";
				now tempnum3 is 1;
				if cock width of player > 24 and dorvorreg is 2, now dorvornpcf is true;
			otherwise if cunts of player > 0 and ((anallevel is 3 and a random chance of 1 in 2 succeeds) or anallevel is not 3):
				say "tongue caressing along the entrance of[if cunts of player > 1] one of[end if] your cunt[sfn] before thrusting the writhing appendage into your supple depths,";
				now tempnum3 is 2;
			otherwise:
				now tempnum3 is 3;
				say "tongue caressing along the entrance of your anal ring before thrusting the writhing appendage into your fleshy abyss,";
			say " squeezing muffled moans from your lips.";
		say "     As his affection picks up in pace, scaled lips soon [if tempnum3 is 1]enveloping your dick[otherwise if tempnum3 is 2]embracing your cunt[otherwise]embracing your ass[end if], you are, in turn, driven further to [if tempnum2 is 1]pump[otherwise]suck off[end if] his sputtering cock. Quickly [if tempnum is 2]bathed[otherwise]awash[end if] in heat and sweat from your[if scalevalue of player < 4] larger[end if] companion as this back-and-forth reaches a fever pitch, until [if tempnum is 2]his body begins to tremble, unable to restrain himself as he thrusts against your touch, yourself[otherwise]your body begins to treble unable to restrain yourself as you thrust against his touch, himself[end if] doing the same.";
		if libido of player > 40:
			say "     Too sensitive to hold back for very long, you let out a[if tempnum2 is 1] muffled[end if] cry, [if tempnum3 is 1 and cocks of player > 2]unloading your [cum load size of player] load into the beast's eager maw, its brothers staining the rest between your torsos[otherwise if tempnum3 is 1 and cocks of player is 2]unloading your [cum load size of player] load into the beast's eager maw, its brother staining the rest between your torsos[otherwise if tempnum3 is 1]unloading your [cum load size of player] load into the beast's eager maw[otherwise if tempnum3 is 2 and cocks of player > 0]supple lips squeezing around his invading appendage as your cock[smn] fires off your [cum load size of player] load between your torsos[otherwise if tempnum3 is 2]supple lips squeezing around his invading appendage[otherwise if tempnum3 is 3 and cunts of player > 0 and cocks of player is 0]supple ring squeezing around his invading appendage as your dripping cunt[sfn] ache[sfv] for attention[otherwise if tempnum is 3 and cocks of player > 0]supple ring squeezing around his invading appendage as your [cock size desc of player] cock[smn] fire[smv] off your [cum load size of player] load between your torsos[otherwise]supple ring squeezing around his invading appendage as your writhe in insatiable need[end if]. You're dazed by your sated need, but you're not done yet, and Doran drives you on to continue your end of the bargain.";
		if tempnum is 1:
			say "     It's clear he can't hold back any longer! Shall you pull [if tempnum2 is 2]in and suck him off at the last second[otherwise]out just before he blows[end if]?";
			if tempnum2 is 2:
				if player consents:
					say "     Lips meeting to embrace his gushing, flared head, it's more than enough to[if libido of player > 40] finally[end if] set the dragon off, his roar in bliss muffled against your [bodytype of player] form as your maw is quickly flooded with wave after successive wave of his substantial load, quickly [if scalevalue of player < 4]sputtering from your lips[otherwise]making your dizzy with how much you're driven to swallow[end if][if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
					if dorvorreg is 2, now dorvorpcf is true;
				otherwise:
					if libido of player < 41, now tempnum2 is 2;
					say "     Shall you aim away from you? Else you'll get painted by the stuff.";
					if player consents:
						say "     Directing the rod away from you, it takes only a few more seconds before you [if libido of player > 40] finally[end if] set the dragon off, his roar in bliss muffled against your [bodytype of player] form as the stone wall is drenched with wave after successive wave of his substantial load[if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
					otherwise:
						say "     You only have to stare down his barrel for a few more seconds before you [if libido of player > 40] finally[end if] set the dragon off, his roar in bliss muffled against your [bodytype of player] as your immediately drenched with wave after successive wave of his substantial load[if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
			otherwise:
				if player consents:
					say "     Shall you aim away from you? Else you'll get painted by the stuff.";
					if player consents:
						say "     Pulling out and directing the rod away from you, it takes only a few more seconds before you [if libido of player > 40] finally[end if] set the dragon off, his roar in bliss muffled against your [bodytype of player] form as the stone wall is drenched with wave after successive wave of his substantial load[if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
					Otherwise:
						say "     Pulling away, you only have to stare down his barrel for a few more seconds before you [if libido of player > 40] finally[end if] set the dragon off, his roar in bliss muffled against your [bodytype of player] as your immediately drenched with wave after successive wave of his substantial load[if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
				otherwise:
					if libido of player < 41, now tempnum2 is 1;
					say "     Plunging his gushing rod down your hole as far as you can muster, it's more than enough to[if libido of player > 40] finally[end if] set the dragon off, his roar in bliss muffled against your [bodytype of player] form as your maw is quickly flooded with wave after successive wave of his substantial load, quickly [if scalevalue of player < 4]sputtering from your lips[otherwise]making your dizzy with how much you're driven to swallow[end if][if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
					if dorvorreg is 2, now dorvorpcf is true;
		otherwise:
			say "     Unable to hold back any longer the dragon plunges his gushing rod down your hole as far as you can take, more than enough to[if libido of player > 40] finally[end if] set him off, his roar in bliss muffled against your [bodytype of player] form as your maw is quickly flooded with wave after successive wave of his substantial load, quickly [if scalevalue of player < 4]sputtering from your lips and dripping down your face[otherwise]making your dizzy with how much you're driven to swallow[end if][if libido of player > 40].[run paragraph on] Eventually, things begin to die down, and you're given a moment to catch your breath[end if].";
			if dorvorreg is 2, now dorvorpcf is true;
		if libido of player < 41:
			say "     Your turn quickly following on the heels of his own, you let out a[if tempnum2 is 1] muffled[end if] cry, [if tempnum3 is 1 and cocks of player > 2]unloading your [cum load size of player] load into the beast's eager maw, its brothers staining the rest between your torsos[otherwise if tempnum3 is 1 and cocks of player is 2]unloading your [cum load size of player] load into the beast's eager maw, its brother staining the rest between your torsos[otherwise if tempnum3 is 1]unloading your [cum load size of player] load into the beast's eager maw[otherwise if tempnum3 is 2 and cocks of player > 0]supple lips squeezing around his invading appendage as your cock[smn] fires off your [cum load size of player] load between your torsos[otherwise if tempnum3 is 2]supple lips squeezing around his invading appendage[otherwise if tempnum3 is 3 and cunts of player > 0 and cocks of player is 0]supple ring squeezing around his invading appendage as your dripping cunt[sfn] ache[sfv] for attention[otherwise if tempnum is 3 and cocks of player > 0]supple ring squeezing around his invading appendage as your [cock size desc of player] cock[smn] fire[smv] off your [cum load size of player] load between your torsos[otherwise]supple ring squeezing around his invading appendage as your writhe in insatiable need[end if]. Dazed by your sated need, you require quite a while to catch your breath.";
		if dorvorreg is 2 and scalevalue of player < 4:
			say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]but [dorgr]'s fun has just begun[or][dorgr]'s dragon isn't done with them just yet[or]now comes my favourite part[at random]!' [if tempnum is 1]Grinning at you, Doran pulls you closer, grip firmly wrapped around your smaller form[otherwise]Still pinning you down, Doran grins at you, his tongue caressing your smaller form[end if], clearly eager to make a meal of you.";
			dorvore;
		otherwise:
			say "     '[one of]Oh[or]Hm[or]Yes[at random], [one of]I hope [dorgr] had plenty of fun[or]I hope [dorgr]'s dragon didn't make too much of a mess[or][dorgr] is always fun to play with[at random]!' [if tempnum is 1]Helping you off[otherwise]Climbing off of you[end if], Doran goes about checking you over and cleaning you up before allowing you to gather your things and go about your business once more, the dragon no doubt needing a bit of time to clean up the rest of the mess.";
		
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
			say "(1) [link]Sexual position[as]1[end link] - [bold type][if dorrolereg is 0]Dominant[otherwise if dorrolereg is 2]Submissive[otherwise]Neutral[end if][roman type][line break]";
			say "(2) [link]Gender Regard[as]2[end link] - [bold type][if dorgenreg is true]Female[otherwise]Male[end if][roman type][line break]";	
			say "(3) [if dorroleint is not 0]Interaction Locked - Requires Max Domination[otherwise][link]Sex Auto-fire[as]3[end link] - [end if][bold type][if dorautint is 1 and dorroleint is 0]Strict[otherwise if dorautint is 2 and dorroleint is 0]Loose[otherwise if dorroleint is 0]Off[end if][roman type][line break]";
			say "[line break]";
			say "[bold type]Requests:[roman type][line break]";
			say "(4) [link]Scavenge[as]4[end link] - Request Doran's aid[line break]";
			say "(5) [if dorcusprog < 2]Interaction Locked - Try Discussing with Doran[otherwise][link]Roleplay Session[as]5[end link][end if][bold type][if dorrpis > 0] - Roleplay Queued[end if][roman type][line break]";
			say "(6) [link]Vore Extension[as]6[end link] - [bold type][if dorvorreg is 0]Uninquired[otherwise if dorvorreg is 2]Active[otherwise]Inactive[end if][roman type] [italic type][if dorvorreg is 2 and scalevalue of player > 3]Player too large![otherwise if dorvorreg is 2 and dorrolereg is 2]Doran is Submissive![end if][roman type][line break]";
			say "[line break]";
			say "(0) [link]Exit[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-6)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 6:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "[doropt_1]"; [Demeanour Option]
			otherwise if calcnumber is 2:
				say "[doropt_2]"; [Gender Option]
			otherwise if calcnumber is 3:
				if dorrolereg is 0 and dorroleint is 0:
					say "[doropt_3]"; [Sex Auto-fire]
				otherwise:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise if calcnumber is 4:
				say "[dorreq_1]"; [Food Requisition]
			otherwise if calcnumber is 5:
				if dorcusprog < 2:
					say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
				otherwise:
					say "[dorrp]"; [Roleplay Session]	
			otherwise if calcnumber is 6:
				say "[doropt_4]"; [Vore Implementation]
			otherwise:
				say "[doropt_0]"; [End]
				now trixieexit is 1;
					
Section 3.3 - Doran Request Pool

to say doropt_1: [Demeanour Option]
	if dordomtop < 2: [Explanation for non-submissive players who didn't get that intro in his first talk]
		say "     You bring up the matter of his overt submissiveness to the dragon.";
		say "     'Oh, [dorgr], is that not to their liking? I have no problem with being on top, if they are so inclined.'";
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Sexual Position:[roman type][line break]";
			say "(1) [link]'Go on top.'[as]1[end link]";
			say "(2) [link]'Stay on bottom.'[as]2[end link]";
			say "(3) [link]'I'd rather we not adhere domineering or submissive positions.'[as]3[end link]";	
			say "[line break]";
			say "(0) [link]Nevermind[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "     'Certainly, my [dorgr]";
				if dordomtop is 1:
					say ". I shouldn't be surprised, as I recall they tried to offer themself when I challenged them--Not that I didn't find the prospect tempting there as I do now";
				say ". When next they ask for sex, they'll find my regard to be quite different.' He grins mischievously at you.";
				now dorrolereg is 0;
				now trixieexit is 1;
				increase dordomtop by 2;
			otherwise if calcnumber is 2:
				say "     'My mistake, but don't be afraid to ask if they change their mind.'";
				now dorrolereg is 2;
				now trixieexit is 1;
				increase dordomtop by 2;
			otherwise if calcnumber is 3:
				if dorneutroll is 0, now dorneutroll is a random number between 1 and 2;
				say "     'Oh? Hmm, well, [dorgr] commands it... I'm rather disinclined to alter the established roles, but I can switch between them on whatever whim fancies me at the moment. I hope that better suits them.'";
				now dorrolereg is 1;
				now trixieexit is 1;
				increase dordomtop by 2;
			otherwise:
				say "     'My mistake, but don't be afraid to ask if they change their mind.'";
				now trixieexit is 1;
				increase dordomtop by 2;
	otherwise: [Explanation for non-submissive players who didn't get that intro in his first talk]
		say "     'In a different mood? Would [if dorrolereg is 0]my [end if][dorgr] prefer to [if dorrolereg is 0]be on top again[otherwise if dorrolereg is 2]be on bottom[otherwise]alter our arrangement[end if]?'";
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Sexual Position:[roman type][line break]";
			say "(1) [link]'[if dorrolereg is 0]Stay[otherwise]Go[end if] on top.'[as]1[end link]";
			say "(2) [link]'[if dorrolereg is 2]Stay[otherwise]Go[end if] on bottom.'[as]2[end link]";
			say "(3) [link]'Let's [if dorrolereg is 1]keep[otherwise]make[end if] things random.'[as]3[end link]";	
			say "[line break]";
			say "(0) [link]'Nevermind.'[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], my [dorgr] will [if dorrolereg is 0]be kept[otherwise]now be put[end if] in their place.'";
				now dorrolereg is 0;
				now trixieexit is 1;
			otherwise if calcnumber is 2:
				say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], [dorgr]'s dragon will [if dorrolereg is 2]keep[otherwise]learn[end if] his place.'";
				now dorrolereg is 2;
				now trixieexit is 1;
			otherwise if calcnumber is 3:
				if dorneutroll is 0, now dorneutroll is a random number between 1 and 2;
				say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], [dorgr]'s dragon will [if dorrolereg is 1]keep surprising[otherwise]surprise[end if] them.'";
				now dorrolereg is 1;
				now trixieexit is 1;
			otherwise:
				say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[or]Think no more on it[or]Very well[or]Understood[at random].";
				now trixieexit is 1;

to say doropt_2: [Gender Option]
	if dorgenreg is false:
		say "     'Has something come up? Would [dorgr] prefer to be regarded as a female?'";
		if player consents:
			now dorgenreg is true;
			now dorgr is "Mistress";
			say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], I will now regard Master as [dorgr].'";
		otherwise:
			say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[or]Think no more on it[or]Very well[or]Understood[at random].'";
	otherwise:
		say "     'Has something come up? Would [dorgr] prefer to be regarded as a male?'";
		if player consents:
			now dorgenreg is false;
			now dorgr is "Master";
			say "     '[one of]Very well[or]No problem[or]Okay[or]Certainly[or]Of course[at random], I will now regard Mistress as [dorgr].'";
		otherwise:
			say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[or]Think no more on it[or]Very well[or]Understood[at random].'";

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

to say doropt_3: [Doran Auto-Fire]	
	if dorautr is false:
		now calcnumber is -1;
		say "     Approaching Doran, you suggest that he have his way with you at his behest. This seems to amuse him a fair bit.";
		say "     'Oh, my [dorgr], I'm beginning to worry that they're more submissive than even me!' A grin across his face, he gives you a wink. 'I have no issue with this request. I must inquire, however, as to how strict my [dorgr] wishes this to be. I can be extremely strict, which means I'll pounce them the second I see them and I'm feeling up to it, or I can be a bit more casual, where I'll wait for their cue for a little bit before deciding by myself.'[line break]";
		now dorautr is true;
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Auto-Fire:[roman type][line break]";
			say "(1) [link]Strict[as]1[end link] - Immediate.";
			say "(2) [link]Loose[as]2[end link] - Two day wait after last sex before becoming active.";	
			say "[line break]";
			say "(0) [link]Nevermind[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 2:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "     'Got it, strict it is. Also, keep in mind that if [dorgr] decides they want to be on top again, the conditions will obviously be inappropriate for such a thing as this and I won't do it anymore.'";
				now dorautint is 1;
			otherwise if calcnumber is 2:
				say "     'Got it, loose it is. Also, keep in mind that if [dorgr] decides they want to be on top again, the conditions will obviously be inappropriate for such a thing as this and I won't do it anymore.'";
				now dorautint is 2;
			otherwise:
				say "     'No problem, don't be afraid to ask if one changes their mind. Also, keep in mind that if [dorgr] decides they want to be on top again, the conditions will obviously be inappropriate for such a thing as this and I won't do it anymore.'";
			now trixieexit is 1;
	otherwise:
		now calcnumber is -1;
		say "     'Ah, yes, would my [dorgr] like to alter this arrangement?'[line break]";
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Auto-Fire:[roman type][line break]";
			say "(1) [link]Strict[as]1[end link] - Immediate[bold type][if dorautint is 1]-Set[end if][roman type].";
			say "(2) [link]Loose[as]2[end link] - Two day wait after last sex before becoming active[bold type][if dorautint is 2]-Set[end if][roman type].";
			say "(3) [link]Off[as]3[end link] [bold type][if dorautint is 0]Currently Inactive[otherwise]Deactivate[end if][roman type].";
			say "[line break]";
			say "(0) [link]Nevermind[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "     '[one of]Got it[or]Certainly[or]No problem[or]Alright[at random], strict it is.'";
				now dorautint is 1;
			otherwise if calcnumber is 2:
				say "     '[one of]Got it[or]Certainly[or]No problem[or]Alright[at random], loose it is.'"; 
				now dorautint is 2;
			otherwise if calcnumber is 3:
				say "     '[one of]Got it[or]Certainly[or]No problem[or]Alright[at random], I'll cut it out.'"; 
				now dorautint is 0;		
			otherwise:
				say "     '[one of]Enough on that[or]Moving on[at random].'";
				now trixieexit is 1;

to say doropt_0: [End]
	say "     '[one of]Don't be afraid to ask of me anything[or]I'll be here[or]Come again[at random], [dorgr].'";
	
Chapter 3.3.1 - Vore Option Extension

dorvorreg is a number that varies. dorvorreg is usually 0; [Doran Vore Regard. 0 = Not revealed, 1 = Inactive, 2 = Active]
dorvordur is a number that varies. dorvordur is usually 0; [Doran Vore Duration. 0 = Very Short, 1 = Short, 2 = Medium, 3 = Long] 
dorvordis is a number that varies. dorvordis is usually 0; [Doran Vore Discharge. 0 = None/Implicit, 1 = Oral, 2 = Anal, 3 = Random] 

to say doropt_4: [Doran Vore Extension]
	if dorvorreg is 0:
		if dorrolereg is 2:
			say "     You get the impression that such a request would only be ideal if Doran was in a dominant position. You may want to ask him to be in such a position first, if you're interested in this particular thing.";
		otherwise:
			now dorvorreg is 2;
			say "     You are compelled by a particular interest to query Doran on the subject of having him consume you. It's an inherently awkward topic to ask and the dragon grins as you try to make some effort to present it reasonably. Once it's clear what you're asking, his initial response is one of slight confusion.";
			say "     'Huh... [dorgr], what they ask of me... Well, first off, I must ask if they understand how serious a request they're making of their dragon. Who knows how many lives are lost out there to beasts of such a deviant hunger. Do they understand this?'";
			if player consents:
				now tempnum is 1;
				say "     'Good! Then";
			otherwise:
				now tempnum is 0;
				say "     'Then they are lucky to have avoided it! As for me,";
			say " my [dorgr] should take comfort in knowing that there is no negative drawback to being consumed by their dragon--assuming they have the free time!' He grins, no doubt amused with his little 'bait and switch'. Should you pressure him to explain himself?";
			if player consents:
				say "     'Oh, it's not important.' He seems frustratingly inclined to dismiss your query altogether, 'The fact that my [dorgr] came to me with such a request[if tempnum is 1], knowing well of the potential harm it might bring them,[end if] shows a great measure of trust from them. I ask that they trust me this far as well";
			otherwise:
				say "     'The fact that my [dorgr] came to me with such a request[if tempnum is 1], knowing well of the potential harm it might bring them,[end if] shows a great measure of trust from them. I'm extremely honoured";
			say ".' He gets up, strutting around to eye you over for a moment.";
			say "     '";
			if scalevalue of player > 3:
				say "Immediately, I must warn my [dorgr] that they're too big to fit. They'll have to find a way to bring themselves down to around normal human size or smaller--we can still discuss this, but when the time comes they won't see my doing the deed ";
			otherwise:
				say "Everything seems in order here, I can handle them";
			say ".' He sits back down once more, before continuing. 'I'll go ahead and eat my [dorgr] at the conclusion of every time we have sex, assuming everything remains in order. Obviously, if they decide to be on top again, I'll stop.'";
			say "     'That's all I need to tell you beforehand, now we can get into the more granular details--I've assumed, since they brought the topic up, that they're interested and as such I've already put myself in an [bold type]Active[roman type] stance for them.'";
	otherwise:
		say "Certainly, [dorgr], is there anything regarding this arrangement they want to change?";
	if dorvorreg is not 0:
		now calcnumber is -1;
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Vore Extensions:[roman type][line break]";
			say "(1) [link]State[as]1[end link] - [bold type][if dorvorreg is 2]Active[otherwise]Inactive[end if][roman type][line break]";
			say "(2) [link]Duration[as]2[end link] - [bold type][if dorvordur is 0]Very Short[otherwise if dorvordur is 1]Short[otherwise if dorvordur is 2]Medium[otherwise if Dorvordur is 3]Long[end if][roman type][line break]";	
			say "(3) [link]Discharge[as]3[end link] - [bold type][if dorvordur is 0]None/Implicit [bracket]Locked via duration[close bracket][otherwise if dorvordis is 0]None/Implicit[otherwise if dorvordis is 1]Oral[otherwise if dorvordis is 2]Anal[otherwise if dorvordis is 3]Random[end if][roman type][line break]";
			say "[line break]";
			say "(0) [link]Back to Main Menu[as]0[end link][line break]";	
			while 1 is 1:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				if dorvorreg is 1:
					say "     'Want me to start making a meal of my [dorgr]?'";
					if player consents:
						now dorvorreg is 2;
						say "     'Then delight I shall on my [dorgr].'";
					otherwise:
						say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";
				otherwise:
					say "     'Want me to cease making a meal of my [dorgr]?'";
					if player consents:
						now dorvorreg is 1;
						say "     'Then no longer I shall delight on my [dorgr].'";
					otherwise:
						say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";
			otherwise if calcnumber is 2:
				say "'Right then, how much do you want to experience post-consumption?'";
				now calcnumber is -1;	
				let dorcusexit be 0;
				while dorcusexit is 0:
					say "(1) [link]Very Short (Implicit discharge-locked)[as]1[end link][bold type][if dorvordur is 0]- Set[end if][roman type][line break]";
					say "(2) [link]Short[as]2[end link][bold type][if dorvordur is 1]- Set[end if][roman type][line break]";	
					say "(3) [link]Medium[as]3[end link][bold type][if dorvordur is 2]- Set[end if][roman type][line break]";
					say "(4) [link]Long[as]4[end link][bold type][if dorvordur is 3]- Set[end if][roman type][line break]";
					say "[line break]";
					say "(0) [link]Nevermind[as]0[end link][line break]";	
					while 1 is 1:
						say "Choice? (0-4)>[run paragraph on]";
						get a number;
						if calcnumber >= 0 and calcnumber <= 4:
							break;
						otherwise:
							say "'I'm sorry, could [dorgr] repeat that?'";
					if calcnumber is 1:
						say "     'Very well, my [dorgr] will experience nothing following the deed and regain consciousness to find themselves free of me once more.'";
						now dorvordur is 0;
						now calcnumber is -1;	
						now dorcusexit is 1;
					otherwise if calcnumber is 2:
						say "     'Alright, my [dorgr] will have some experience inside their dragon before I let them go.'";
						now dorvordur is 1;
						now calcnumber is -1;	
						now dorcusexit is 1;
					otherwise if calcnumber is 3:
						say "     'Very well, my [dorgr]'s dragon will go about their business for a while before finally freeing them.'";
						now dorvordur is 2;
						now calcnumber is -1;	
						now dorcusexit is 1;
					otherwise if calcnumber is 4:
						say "     'Certainly, my [dorgr] will find themselves trapped within their dragon for a considerably prolonged period before they are finally let free.'";
						now dorvordur is 3;
						now calcnumber is -1;	
						now dorcusexit is 1;
					otherwise if calcnumber is 0:
						now calcnumber is -1;	
						now dorcusexit is 1;
			otherwise if calcnumber is 3:
				if dorvordur is 0:
					say "[bracket]Unavailable At the shortest duration[close bracket][line break]";
				otherwise:
					say "     'My [dorgr] has to come back out at some point. In what way would they prefer?'";
					now calcnumber is -1;	
					let dorcusexit be 0;
					while dorcusexit is 0:
						say "(1) [link]None/Implicit[as]1[end link][bold type][if dorvordis is 0]- Set[end if][roman type][line break]";
						say "(2) [link]Oral[as]2[end link][bold type][if dorvordis is 1]- Set[end if][roman type][line break]";	
						say "(3) [link]Anal[as]3[end link][bold type][if dorvordis is 2]- Set[end if][roman type][line break]";
						say "(4) [link]Random[as]4[end link][bold type][if dorvordis is 3]- Set[end if][roman type][line break]";
						say "[line break]";
						say "(0) [link]Nevermind[as]0[end link][line break]";	
						while 1 is 1:
							say "Choice? (0-4)>[run paragraph on]";
							get a number;
							if calcnumber >= 0 and calcnumber <= 4:
								break;
							otherwise:
								say "'I'm sorry, could [dorgr] repeat that?'";
						if calcnumber is 1:
							say "     'Got it, my [dorgr] will black out and simply find themselves free of me afterwards.'";
							now dorvordis is 0;
							now calcnumber is -1;	
							now dorcusexit is 1;
						otherwise if calcnumber is 2:
							say "     'No problem, my [dorgr] will be regurgitated back out from whence they came.'";
							now dorvordis is 1;
							now calcnumber is -1;	
							now dorcusexit is 1;
						otherwise if calcnumber is 3:
							say "     'Done. My [dorgr] will be taking the 'full tour' of their dragon, as it were.'";
							now dorvordis is 2;
							now calcnumber is -1;	
							now dorcusexit is 1;
						otherwise if calcnumber is 4:
							say "     'Okay. My [dorgr] will be discharged through either one of the two explicit options, at my behest.'";
							now dorvordis is 3;
							now calcnumber is -1;	
							now dorcusexit is 1;
						otherwise if calcnumber is 0:
							now calcnumber is -1;	
							now dorcusexit is 1;	
			otherwise:
				say "     'No problem. Feel free to raise this topic with me any time. Even if I can't fulfil their need for whatever reason, there's no harm in discussing it.'";
				now trixieexit is 1;

Chapter 3.3 - Doran Discussion Tree

dorlastcuss is a number that varies. dorlastcuss is usually 555; [Doran Last Discussion]
dorcusprog is a number that varies. dorcusprog is usually 0; [Doran Discussion Progression]
dorcusexit is a number that varies. dorcusexit is usually 0; [Additional exit value for nested multiple-choice]
dorcusexit2 is a number that varies. dorcusexit2 is usually 0; [Additional exit value for nested multiple-choice]
dorcustv_1 is a number that varies. dorcustv_1 is usually 0; [Doran Discussion Temporary Number 1]
[dorcustv_2 is a number that varies. dorcustv_2 is usually 0; [Doran Discussion Temporary Number 2]]
[dorcustv_3 is a number that varies. dorcustv_3 is usually 0; [Doran Discussion Temporary Number 3]]
dorcus is an action applying to nothing.
dorrprr is a number that varies. dorrprr is usually 0; [Doran RP Reveal Regard. Affected by player interaction in discussion]

understand "discuss doran" as dorcus.
understand "discuss with doran" as dorcus.

check dorcus:
	if Doran is not visible, say "That's not a verb I recognise." instead;
	
carry out dorcus:
	now dorcustv_1 is 0;
	if dorfirsttalk is false:
		say "     You should probably go through introductions before you move onto any larger discourse.";
	otherwise if dorlastcuss - turns <= 4:
		say "     'I'm sorry, [dorgr], I'd love to chat but there are some things I need attending to. Perhaps in a few hours?'";
	otherwise if dorcusprog is 0: 	
		say "[dorcus_1]"; [Of One's Past]
		now dorlastcuss is turns;
		now dorcusprog is 1;
	otherwise if dorcusprog is 1: 
		say "[dorcus_2]"; [Of Hobbies and Imagination]
		now dorlastcuss is turns;
		now dorcusprog is 2;
	otherwise:
		say "     'I'd like to talk more, but there's nothing I can think of off the top of my head that would be interesting to discuss. My apologies.'";

Chapter 3.3.1 - Doran Dicussion Pool
		
to say dorcus_1: [Of One's Past]
	say "     You decide to strike up a more substantive conversation with Doran. Sitting down next to [if daytimer is night]roaring[otherwise]spent[end if] campfire. You decide to keep things fairly basic and inquire of his past and how he got the way he did. Raising this topic forces him to ponder for a moment.";
	say "     '...Such as is the way with this blight, I believe most people one'll find will have little memory of their past. Of course, I say this as assurance to [dorgr] that this is not the case for me. I recall perfectly where I came from; however, I'm afraid that is something I'm not willing to share";
	if "Curious" is listed in feats of player:
		say ".' Ever-curious as you are";
	otherwise:
		say ".' Instinctively";
	say ", you ask him why.";
	say "     'My past is entirely unimportant, and one wouldn't benefit from its knowledge; quite the contrary, it'd be more of a hindrance--[dorgr], do they know of context";
	if intelligence of player > 14:
		say "?' Though you're smart enough to be familiar with the term itself, you're not exactly sure as to his usage of it. It's clear the question is rhetorical for the purpose of a digression, so";
	otherwise:
		say "?' You're not quite sure what he's getting at, but";
	say " you humour him by saying no.";
	say "     'Of all the things I could be, they are not what I am now to [dorgr]. I could have been an individual of great fame or fortune, or perhaps I was a helpless cog in some corporate machine. Perhaps I am but a wandering spirit. Perhaps I am the cause of this blight--or perhaps I am but a figment of [dorgr]'s increasingly deranged mind.' He grins, somewhat amused by the notion, before continuing.";
	say "     'What matters is that any one of these changes your perception of me, and I don't want such a perception to be anything beyond being [dorgr]'s dragon.'";
	now calcnumber is -1;	
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type][link]1) 'You don't trust me?'[as]1[end link][roman type]";
		say "[bold type][link]2) 'Why does this matter?'[as]2[end link][roman type]";
		say "[bold type][link]3) 'As your [dorgr] I could order you to tell me.'[as]3[end link][roman type][line break]";
		if dorcustv_1 is 0:
			say "[bold type][link]4) 'Very well, I'll honour your insistence on this subject.' (Exit)[as]4[end link][roman type][line break]";
		otherwise:
			say "[bold type][link]4) 'Alright, I won't argue with you about it any further.' (Exit)[as]4[end link][roman type][line break]";
		while 1 is 1:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber >= 1 and calcnumber <= 4:
				break;
			otherwise:
				say "'I'm sorry, could [dorgr] repeat that?'";
		if calcnumber is 1:
			now dorcustv_1 is 1;
			say "     'Ah... Trust. There isn't a thing I find more valuable...' He seems to reminisce over this notion for a moment before returning to the topic at hand, '[dorgr], be assured that, if I was lacking for care in trust, I would have lied. I feel blatant obfuscation is a kinder disservice than true deception, and better that I wound one's pride than plant any seed of distrust.'";
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				say "[bold type][link]1) 'Trust works both ways; why should I trust you if you won't trust me with this?'[as]1[end link]";	
				if charisma of player > 14:
					say "[bold type][link]2) (Charisma: [charisma of player]/15) 'And yet, you could argue that this blatant obfuscation inspires less trust than a good deception.'[as]2[end link]";
				otherwise:
					say "2) (Charisma: [charisma of player]/15) (Insufficient charisma!)[line break]";
				say "[bold type][link]3) (Return to the main topic)[as]3[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 3:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					say "     'My decision to not explain my past isn't a trust issue. If I didn't trust [dorgr] then I wouldn't be so inclined to make them so";
					if charisma of player > 14:
						say ".' He's clearly trying to misdirect you. You imagine that he only makes this claim because the arrangement remains convenient for him; you're not the one making him your property here. You could press him on this, but you doubt you'll get anywhere with it, so you leave it at that for now.";
					otherwise:
						say ".' You're not exactly sure about this claim, but you decide to leave it at that.";
				otherwise if calcnumber is 2:
					if charisma of player < 15:
						say "     (Invalid interaction: You don't have enough Charisma.)[line break]";
					otherwise:
						say "     'Such a deception that I would have to live with--assuming it even worked...' He grimaces slightly in illustration of the notion before continuing.";
						say "     '[dorgr] is quick-tongued. Let's skip theatrics and get to the point: Though I claim assurance that this secret isn't important, I will make no effort to offer any compensation if said assurance is insufficient. This is the price of admission I have imposed, the only price I have put up since their claim over me, but I will hold no ill-will towards [dorgr] if they find that price too expensive for their tastes.' He is exceedingly straightforward in this expression when explaining this to you, which makes him very difficult to read.";
					now calcnumber is -1;	
				otherwise if calcnumber is 3:
					now calcnumber is -1;	
					now dorcusexit is 1;
		otherwise if calcnumber is 2:
			now dorcustv_1 is 1;
			say "     'The answer to that question is fairly straightforward: We benefit from a simplistic relationship. You use me[if dorrolereg is 0]--On top though I may be--[otherwise] [end if]and that brings me a joy. Anything else would get in the way of that.'";
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				say "[bold type][link]1) 'Perhaps I wish for our relationship to be deeper?'[as]1[end link][roman type]";
				say "[bold type][link]2) (Return to the main topic)[as]2[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-2)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 2:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					say "     'And [dorgr] flatters me with such a proposal, but I'm not the dragon one takes home to their parents... Also, I'm certain being called [dorgr] day in and day out, in the context of a closer relationship, would grate considerably.'";
					now calcnumber is -1;
					let dorcusexit2 be 0;
					while dorcusexit2 is 0:
						say "[bold type][link]1) 'Then don't call me [dorgr].'[as]1[end link][roman type]";
						say "[bold type][link]2) (Return to the main topic)[as]2[end link][roman type][line break]";
						while 1 is 1:
							say "Choice? (1-2)>[run paragraph on]";
							get a number;
							if calcnumber >= 1 and calcnumber <= 2:
								break;
							otherwise:
								say "'I'm sorry, could [dorgr] repeat that?'";
						if calcnumber is 1:
							say "     '--Oh, but why wouldn't I call my [dorgr] by their proper title? That's unfitting of my station!' Grinning a little, it's clear he won't budge on the matter.";
							now calcnumber is -1;	
						otherwise if calcnumber is 2:
							now calcnumber is -1;	
							now dorcusexit2 is 1;
							now dorcusexit is 1;
		otherwise if calcnumber is 3:
			now dorcustv_1 is 1;
			say "     'Oh, [dorgr], such disdain pains me greatly. Every ounce of my will for life leave me, were I to suffer such disappointment. But alas, naught shall escape these twisted lips.' He chuckles a bit, no doubt amused by this bout of melodramatics."; 
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				say "[bold type][link]1) 'I'm getting the impression you don't take my role seriously.'[as]1[end link][roman type]";
				say "[bold type][link]2) (Return to the main topic)[as]2[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-2)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 2:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					say "     'That isn't necessarily my intent, but there are limits to my ability--Ah, one wouldn't, say, aggres a mere toaster for its inability to tell the time.'";
					now calcnumber is -1;
					let dorcusexit2 be 0;
					while dorcusexit2 is 0:
						if intelligence of player > 14:
							say "[bold type][link]1) (Intelligence: [intelligence of player]/15) 'A toaster's limitation is intrinsic, this is self-imposed.'[as]1[end link][roman type]";
						otherwise:
							say "1) (Intelligence: [intelligence of player]/15) (Insufficient intelligence!)[line break]";
						say "[bold type][link]2) (Return to the main topic)[as]2[end link][roman type][line break]";
						while 1 is 1:
							say "Choice? (1-2)>[run paragraph on]";
							get a number;
							if calcnumber >= 1 and calcnumber <= 2:
								break;
							otherwise:
								say "'I'm sorry, could [dorgr] repeat that?'";
						if calcnumber is 1:
							if intelligence of player < 15:
								say "     (Invalid interaction: You don't have enough Intelligence)[line break]";
							otherwise:
								say "     'Hm, [dorgr] is quite the relentless one... This falls back into the subject of context. If I didn't want my [dorgr] as such then I wouldn't have brought it up. I guess that is an admission that said context is the one thing I serve above them.'";
							now calcnumber is -1;	
						otherwise if calcnumber is 2:
							now calcnumber is -1;	
							now dorcusexit2 is 1;
							now dorcusexit is 1;
		otherwise if calcnumber is 4:
			say "     'Understand that I garner no joy from keeping secrets, but I do ask that [dorgr] gain some solace in the assurance that I will never lie to them, and that my past is not of some significance that their lack of knowledge would harm them down the line.' He decides to conclude the topic at that, leaving you to go about your business[if charisma of player > 14], though you remain a fair bit unsure as to his assurance of honesty[end if].";
			now trixieexit is 1;

to say dorcus_2: [Of Hobbies and Imagination]
	say "     You approach Doran, who--oddly enough--seems to be huddled in one of the cave's corners, facing away from you, all the while distracted with something. Quietly, you approach the dragon, who appears to be muttering something to himself, before tapping him on the side. He's set off with a right jolt and you see what he's been doing.";
	say "     'A-ah, [dorgr], I didn't hear them come in. Um, er...' Apparently he managed to find a number of children's toys and he's been playing with them. Embarrassment streaks his face, red hot with the reveal of this peculiar pastime.";
	say "     'I should, well, uh...' He scuttles about to clean up the toys, no doubt a fair bit shamed by their presence, '...They never say how boring the post-apocalyptic scene can be, and I'm never short on free time.'";
	now calcnumber is -1;	
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type][link]1) 'Shouldn't you be out scavenging, or something?' I assume something of your size would have to eat a lot.[as]1[end link][roman type]";
		say "[bold type][link]2) 'Alright, but why dolls?'[as]2[end link][roman type]";
		say "[bold type][link]3) 'You worry too much about what I think of your pastime.'[as]3[end link][roman type]";
		say "[bold type][link]4) 'Perhaps you could move over and have me join you?'[as]4[end link][roman type][line break]";
		if dorcustv_1 is 0:
			say "[bold type][link]5) 'Well, alright then... I'll be over here.' (Exit)[as]5[end link][roman type][line break]";
		otherwise:
			say "[bold type][link]5) 'I'm certain you'd like some time alone, then?' (Exit)[as]5[end link][roman type][line break]";
		while 1 is 1:
			say "Choice? (1-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 1 and calcnumber <= 5:
				break;
			otherwise:
				say "'I'm sorry, could [dorgr] repeat that?'";
		if calcnumber is 1:
			say "     'Collecting food and water to feed myself is quite easy, actually. And I'm not finding any shortage of wood.' You invite him to elaborate, to which he's somewhat reluctant to do, 'I'm not really influenced by the infectious nature of the surroundings, which takes a lot of the risk out of getting what I need.'";
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				if "Curious" is listed in feats of player:
					say "[bold type][link]1) (Curious:) 'How?'[as]1[end link]";
				otherwise:
					say "1) (Unavailable: Requires Curious Feat)[line break]";
				if intelligence of player > 15:
					say "[bold type][link]2) (Intelligence: [intelligence of player]/16) 'That's extremely unlikely save for something exceedingly powerful.'[as]2[end link]";
				otherwise:
					say "2) (Intelligence: [intelligence of player]/16) (Insufficient intelligence!)[line break]";
				say "[bold type][link]3) (Return to the main topic)[as]3[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 3:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					if "Curious" is not listed in feats of player:
						say "     (Invalid interaction: You don't have that feat.)[line break]";
					otherwise:
						say "     He seems ill-inclined to explain further, but with some prodding he manages to budge.";
						say "     'Does [dorgr] remember our discussion on context? Talking about this particular matter would alter that.' That seems to be all you can squeeze out of him.";
					now calcnumber is -1;	
				otherwise if calcnumber is 2:
					if intelligence of player < 16:
						say "     (Invalid interaction: You don't have enough Intelligence.)[line break]";
					otherwise:
						say "     'That might be one angle, but if I was so powerful, how could [dorgr] defeat me? And I'm certain weaker creatures can find a way to deal with it.' He grimaces slightly following this remark, [if perception of player > 15]an obvious tell, no doubt he's trying to misdirect you in this moment of weakness[otherwise]perhaps dissatisfied with this answer[end if].'";
						now calcnumber is -1;
						let dorcusexit2 be 0;
						while dorcusexit2 is 0:
							if perception of player > 15:
								say "[bold type][link]1) (Perception: [perception of player]/16) 'I got the impression you were holding back by a fair amount when we fought.'[as]1[end link][roman type]";
							otherwise:
								say "1) (Perception: [perception of player]/16) (Insufficient perception!)[line break]";
							say "[bold type][link]2) 'That doesn't really explain your immunity.'[as]2[end link][roman type]"; 
							say "[bold type][link]3) (Return to the main topic)[as]3[end link][roman type][line break]";
							while 1 is 1:
								say "Choice? (1-3)>[run paragraph on]";
								get a number;
								if calcnumber >= 1 and calcnumber <= 3:
									break;
								otherwise:
									say "'I'm sorry, could [dorgr] repeat that?'";
							if calcnumber is 1:
								if perception of player < 15:
									say "     (Invalid interaction: You don't have enough Perception.)[line break]";
								otherwise:
									say "     He appears caught in a corner here, taking a prolonged length of time to determine an answer, seems to eventually make an appeal to emotion.";
									say "     'I beg of them, [dorgr], their dragon is being crushed under the weight of this excessive scrutiny.' He does seem genuinely distressed, and you get the impression that he might flee outright rather than continue, so you leave it at that.";
								now calcnumber is -1;	
							otherwise if calcnumber is 2:
								say "     'I like to think I'm a bit smarter than what's out there. I could easily circumnavigate anything I couldn't handle.' He grimaces a bit at this answer, as well.";
								now calcnumber is -1;	
							otherwise if calcnumber is 3:
								now calcnumber is -1;	
								now dorcusexit2 is 1;
								now dorcusexit is 1;
					now calcnumber is -1;	
				otherwise if calcnumber is 3:
					now calcnumber is -1;	
					now dorcusexit is 1;		
		otherwise if calcnumber is 2:
			say "     'Oh, [dorgr], they sting me when they call them dolls... Grant me a measure of patience to wax sentimental, I think one's imagination is perhaps the greatest ability anyone has. There's a certain freedom in one's mind that is without comparison in the world as a whole, though I find that it can still be a bit restrictive in a vacuum... However, that's another topic altogether.' He begins to ponder a bit in the wake of his digression. He seems rather fond of this subject.";
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				say "[bold type][link]1) 'How often do you spend playing like this?'[as]1[end link]";
				say "[bold type][link]2) 'Where did you get them?'[as]2[end link]";
				say "[bold type][link]3) (Return to the main topic)[as]3[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 3:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					say "     'Uh... Whenever I have some free time and [dorgr] isn't around, I suppose.' He blushes a visible measure more in response to this particular query.";
					now calcnumber is -1;	
				otherwise if calcnumber is 2:
					say "     'I manage to recover some, on occasion. Apparently, certain strains of this blight are receptive to this kind of stuff, so they're quite difficult to find these days.'";
					now calcnumber is -1;	
				otherwise if calcnumber is 3:
					now calcnumber is -1;	
					now dorcusexit is 1;	
		otherwise if calcnumber is 3:
			now dorcustv_1 is 1;
			say "     'My thanks, I perhaps worry too much over my image. What is the right way for something like me to act? Me playing with toys doesn't quite give the impression of a big, strong dragon. I worry most of all that this harms the image I provide to you.' He still seems a bit morose, though your regard has cheered him up a little bit, at least.";
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				say "[bold type][link]1) 'I don't care about how you present yourself to me.'[as]1[end link]";
				say "[bold type][link]2) (Return to the main topic)[as]2[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-2)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 2:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					say "     'Again, I thank [dorgr] for trying to calm me, but I do care a lot on how I present myself. The fact that they are here now shows that I've done something right with you, I can only assume it's that image.'";
					now calcnumber is -1;	
				otherwise if calcnumber is 2:
					now calcnumber is -1;	
					now dorcusexit is 1;	
		otherwise if calcnumber is 4:
			now dorcustv_1 is 1;
			say "     'Oh, [dorgr], I'm flattered by the attempt to make me feel better, but this isn't quite something I think they'd be all that into.' His mood does appear to have brightened up, at least. '...Though, give me some time, I might think of something more appropriate for them.'";
			now calcnumber is -1;	
			let dorcusexit be 0;
			while dorcusexit is 0:
				say "[bold type][link]1) 'What did you have in mind?'[as]1[end link]";
				say "[bold type][link]2) 'But I assure you, I would enjoy joining you!'[as]2[end link]";
				say "[bold type][link]3) (Return to the main topic)[as]3[end link][roman type][line break]";
				while 1 is 1:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber >= 1 and calcnumber <= 3:
						break;
					otherwise:
						say "'I'm sorry, could [dorgr] repeat that?'";
				if calcnumber is 1:
					say "     'Well, I'm certain we can find a way to 'play' with each other that might be more in line with your interests. Get back to me on it.'";
					now calcnumber is -1;	
				otherwise if calcnumber is 2:
					say "     'Oh, [dorgr]...' He grins a little, chuckling at your remark. 'I think we can all say here that playing with toys isn't the reason they hang around my little abode. You're very sweet, though.'";
					now calcnumber is -1;		
				otherwise if calcnumber is 3:
					now calcnumber is -1;	
					now dorcusexit is 1;
		otherwise if calcnumber is 5:
			if dorcustv_1 is 1:
				say "     'Yeah... And thanks. I revel in play; the assertion of roles and facsimiles for the sake of imagination, it offers a certain... Freedom, that I can't be without. I hope [dorgr] understands.' He lets you off, returning to his toys to stow them away once more.";
				now dorrprr is 1;
			otherwise:
				say "     'Yeah... Please forgive me, I never intended to harm your impression of me. I would ask that you try to overlook this irregularity.' He lets you off, quickly scurrying back to stow away his toys.";
			say "[line break][bold type][bracket]Interaction Unlocked: Request Roleplay[close bracket][roman type]";
			now trixieexit is 1;
			
Chapter 4 - Doran Roleplay Protocol

to say dorrp:
	if dorrprr < 2:
		say "     You approach the Doran with the subject of roleplay, in the wake of the reveal regarding his particular interests.";
		if dorrprr is 1:
			say "     'Oh, [dorgr], they would like to play a game, then? It reassures me that they've taken my odd hobbies so well";
		otherwise:
			say "     'Really, [dorgr]? I got the impression that they were a bit off-put by my odd hobby, though I'll happily oblige them. Maybe I'll find something more in line with their 'interests'";
		increase dorrprr by 2;
		say ".' He ponders briefly, for a moment, before continuing.";
		say "    'Alright, I might have an idea or two that might be of interest. Here's what I got--though forgive me if there what I got to offer right now is a bit limited; give me some time and I figure my imagination will come with other possible scenarios, I'm certain.'";
	otherwise:
		say "     Certainly, [dorgr], what game would they like to play?";
	if dorrprr is not 0:
		now calcnumber is -1;
		let trixieexit be 0;
		while trixieexit is 0:
			say "[bold type]Main Roleplay Categories:[roman type][line break]";
			say "(1) [link]Matters of a Feral Nature[as]1[end link][line break]";
			say "(2) [link]Dragons and Similar Fantasy Fare[as]2[end link][line break]";
			say "(-) ----[line break]";
			say "(-) ----[line break]";
			say "[line break]";
			say "(3) [link]Suspend Current Session[as]3[end link] -[bold type][if dorrpis is 0] No[end if] RP in Session[line break][roman type]";
			say "(0) [link]Return to Main Menu[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-3)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 3:
					break;
				otherwise:
					say "'I'm sorry, could [dorgr] repeat that?'";
			if calcnumber is 1:
				say "[dorrpmfn]"; [Doran RP: Matters of a Feral Nature Submenu]
			otherwise if calcnumber is 3:
				if dorrpis > 0:
					say "     'Right, [dorgr], want to cancel what we've currently have planned?'";
					if player consents:
						now dorrpis is 0;
						now dorrp_tv1 is 0;
						now dorrp_tv2 is 0;
						now dorrp_tv3 is 0;
						now dorrp_tv4 is 0;
						say "     'Then think no more of it.'";
					otherwise:
						say "     '[one of]Alright[or]Okay[or]My mistake[or]Certainly[at random].'";
				otherwise:
					say "     'Ah, I'm sorry [dorgr], I don't believe any roleplay is in session right now.";
			otherwise if calcnumber is 2:
				say "[dorrpdsff]"; [Doran RP: Dragons and Similar Fantasy Fare Submenu]
			otherwise:
				say "     'It's no issue, [dorgr], don't be shy if you're feeling creative.'";
				now trixieexit is 1;
				
Section 4.1 - Doran Roleplay Submenu Protocols

to say dorrpmfn: [Doran RP: Matters of a Feral Nature Submenu]
	say "     'This fare generally entails me asserting a more 'bestial' role, so this might be worth their time if that's their interest--or maybe they'd just prefer I not talk nearly as much.' He grins slightly in relation to his musing.";
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Matters of a Feral Nature:[roman type][line break]";
		say "(1) [link]The Virile Beast[as]1[end link][line break]";
		say "(-) ----[line break]";
		say "(-) ----[line break]";
		say "(-) ----[line break]";
		say "[line break]";
		say "(0) [link]Dragons and Similar Fantasy Fare[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-1)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 1:
				break;
			otherwise:
				say "'I'm sorry, could [dorgr] repeat that?'";
		if calcnumber is 1:
			say "[dorrpovb]"; [Doran RP: The Virile Beast Query]
		otherwise:
			say "     '[one of]Alright[or]Moving on[or]Very well[or]Got it[at random].'";
			now trixieexit is 1;
			
to say dorrpdsff: [Doran RP: Dragons and Similar Fantasy Fare Submenu]
	say "     'Ah, yes, [dorgr]. Since I'm very much a dragon, this topic explores that in a more 'Traditional' sense, you could say.'";
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Dragons and Similar Fantasy Fare:[roman type][line break]";
		say "(1) [link]The Knight[as]1[end link][line break]";
		say "(-) ----[line break]";
		say "(-) ----[line break]";
		say "(-) ----[line break]";
		say "[line break]";
		say "(0) [link]Return to Main Categories[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-1)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 1:
				break;
			otherwise:
				say "'I'm sorry, could [dorgr] repeat that?'";
		if calcnumber is 1:
			say "[dorrptk]"; [Doran RP: The Knight Query]
		otherwise:
			say "     '[one of]Alright[or]Moving on[or]Very well[or]Got it[at random].'";
			now trixieexit is 1;

Section 4.2 - Doran Roleplay Queries

dorrpis is a number that varies. dorrpis is usually 0; [Doran Roleplay In Session. 0 = None, 1 to X = Identifies which roleplay is active]
dorrp_tv1 is a number that varies. dorrp_tv1 is usually 0; [Doran Roleplay Temp Value 1. Use is contextual to the scene]
dorrp_tv2 is a number that varies. dorrp_tv2 is usually 0; [Doran Roleplay Temp Value 2. Use is contextual to the scene]
dorrp_tv3 is a number that varies. dorrp_tv3 is usually 0; [Doran Roleplay Temp Value 3. Use is contextual to the scene]
dorrp_tv4 is a number that varies. dorrp_tv4 is usually 0; [Doran Roleplay Temp Value 4. Use is contextual to the scene]

to say dorrpovb: [Doran RP: The Virile Beast Query]
	say "     '[if dorrolereg > 0]Ah, [dorgr], I must caution that this puts them in a considerably submissive position, which might not be their thing[end if]";
	if dorrolereg > 0 and anallevel is 1 and ((cunts of player > 0 and cunt length of player < 5) or cunts of player is 0):
		say ", additionally,";
	otherwise if anallevel is 1 and ((cunts of player > 0 and cunt length of player < 5) or cunts of player is 0):
		say "I must caution [dorgr],";
	if anallevel is 1 and cunts of player > 0 and cunt length of player < 5:
		say "because they're too small for me to fit in their proper hole, I really have no choice but to take their back door, but I get the impression that's not something they would enjoy";
	otherwise if anallevel is 1:
		say "this role isn't particularly bright, so It'll make little sense for me to, say, go the oral route, and I'm of the impression that they're not fond of taking it from the back door";
	if dorrolereg > 0:
		say ".'[line break]";
		say "     '";
	otherwise if anallevel is 1 and ((cunts of player > 0 and cunt length of player < 5) or cunts of player is 0):
		say ".'[line break]";
		say "     '";
	say "This session entails my taking the role of a libido-crazy beast who's captured [dorgr] for the purpose of 'breeding'--for reasons which are complicated I can't actually reproduce, but for the session we can assume that this is his motivation. It's a very simple session, entailing lots of bestial sex. Does this pique their interest?'";
	if player consents:
		now dorrpis is 1;
		say "     'Alright! Let's get into the finer details. We can open this session two ways. Either with [dorgr] trespassing into my 'territory', or me having implicitly captured [dorgr] and our fun begins just as I'm dragging them back. Yes for trespassing? Else I will assume the latter is true.'";
		if player consents:
			say "     'Got it, trespassing it is.'";
			 now dorrp_tv1 is 0;
		otherwise:
			now dorrp_tv1 is 1;
			say "     'Got it, trophy it is.'";
		say "     'Moving on, how long should this be? One might be fond of a long run, but it's easy to forget how boring being tethered to a wall for a fair while can be; I can assure them that it might end up too repetitive for their tastes. We'll do a number from zero to three, zero being short and three being very long.'";
		now calcnumber is -1;
		while 1 is 1:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			otherwise:
				say "'I'm sorry, could [dorgr] repeat that?'";
		if calcnumber >= 0 and calcnumber <= 3:
			now dorrp_tv2 is calcnumber;
			say "'Alright, I see your [dorrp_tv2].'"; 
		if cunts of player > 0 and cunt length of player > 6 and anallevel is not 1 and (scalevalue of player > 1 or player is twistcapped):
			say "     'One final matter. Obviously the pretense of this affair is procreation, but I can easily have myself go through the back door. We can handwave it as stupidity. Yes or no?'";
			if player consents:
				now dorrp_tv3 is 1;
				say "     'Okay, no problem.";
		if wslevel is 3:
			say "     Instinctively, you're inclined to bring up the subject of the dragon marking you during the scene, which briefly confuses Doran.";
			say "     'Oh, you're into that sort of thing? Ah, hm... That... Really isn't my area of expertise... I mean... The smell would take ages to get out of this place! Hm... I guess I can make a concession for [dorgr], is that their desire?'";
			if player consents:
				say "     'Got it, I'm sure I'll be ready when [dorgr] is.'";
				now dorrp_tv4 is 1;
			otherwise:
				say "     'Ah, very well. I fear [dorgr] worries too much for my feelings on this matter, but we'll speak no more on it.'";
		say "     'That's all I need to know for this session, next time I'm asked for sex we'll have a little fun[if dorautint > 0]--oh, and [dorgr], I won't automatically have my way with them while a bit of roleplay is scheduled, it's more conducive this way[end if].' A grin on his face, he lets you off to prepare.";
	otherwise:
		say "     'Not an issue, I'm sure I can come up with something else.'";
		
to say dorrptk: [Doran RP: The Knight Query]
	say "     'Very well. This scene explores the notion of a dragon and a knight in battle, with the victor having their way with the other. Shall [dorgr] be the victor? Else I'll assume they'll want me to win.'";
	if player consents:
		say "     'Got it. I will lose to [dorgr], leaving them at their mercy";
		if cocks of player is 0:
			say ". I must caution them, this session entails me taking it from behind, which they cannot naturally provide. I should be able to provision them with a strap-on that should fit their size and shape, in its place";
		say ". Is this desirable?'";
		if player consents:
			now dorrpis is 2;
			say "     'Good to know. There's very little I need to ask about this session, since [dorgr] will be in control. How would you like me to respond to my loss, shall I be aggressive throughout? Otherwise, I will succumb to a submissive state by the end.'";
			if player consents:
				now dorrp_tv1 is 1;
				say "     'Done, aggressive it is.'";
			otherwise:
				now dorrp_tv1 is 0;
				say "     'Done, submissive it is.'";
			say "     'And that's all I need to ask! I'll have everything in order for when [dorgr] is ready.'";
		otherwise:
			say "     'My mistake, I'm certain I have something else they'd prefer.'";
	otherwise:
		say "     'Very well. My [dorgr] will lose to me, and thusly they will succumb to the fate of this dragon's toy";
		if anallevel is 1 and ((cunts of player > 0 and cunt length of player < 5) or cunts of player is 0):
			say ". I must caution [dorgr], though, [if cunts of player > 0 and cunt length of player < 5]because they're too small for me to fit in their proper hole I really have no choice but to take their back door, but I get the impression that's not something they would enjoy[otherwise]for simplicity's sake I'll be sticking to the anal sex, and I'm of the impression that they're not fond of taking it from the back door[end if]";
		say ". Is that in line with their desire?'";
		if player consents:
			now dorrpis is 3;
			say "     'Moving on, would you prefer my demeanour be smug, or aggressive? Yes for smug.'";
			if player consents:
				now dorrp_tv1 is 1;
				say "     'Alright, smug it is.'";
			otherwise:
				now dorrp_tv1 is 0;
				say "     'Alright, Aggressive it is.'";
			if dorvorreg > 1 and scalevalue of player < 4:
				say "     'Ah, do you want this scene to conclude with me eating [dorgr], as well?'";
				if player consents:
					say "     'Got it. What is my motivation for this act? Would you say that I'm doing this to imprison [dorgr]? Else I will assume the intent is to end them.'";
					if player consents:
						say "     'Alright, a captive [dorgr] will become.'";
						now dorrp_tv2 is 2;
					otherwise:
						now dorrp_tv2 is 1;
						say "      'Alright, we will play as though this is my [dorgr]'s demise.'";
				otherwise:
					now dorrp_tv2 is 0;
					say "     'My mistake. Moving on, then...'";
			otherwise:
				now dorrp_tv2 is 0;
			if cunts of player > 0 and cunt length of player > 4 and anallevel is not 1:
				say "     '--Oh, would you prefer I take [dorgr] up the behind instead of the proper hole? Easy thing for me to do in this circumstance, so it's a choice I can freely provide.'";
				if player consents:
					now dorrp_tv3 is 1;
					say "     'Got it.'";
				otherwise:
					now dorrp_tv3 is 0;
					say "     'Very well, disregard my mentioning of it, in this case.'";
			otherwise:
				now dorrp_tv3 is 0;
			say "     'That's all I need from them. I'll roll this session out when everyone is ready.'";
		otherwise:
			say "      'My mistake, I'm certain I have something else they'd prefer.'";

Section 4.3 - Doran Roleplay Sex Protocol

to say dorrpsp:
	if dorrpis is 1:
		say "[dorrpovbs]"; [Doran RP of the Virile Beast Scene]
	otherwise if dorrpis is 2 or dorrpis is 3:
		say "[dorrptks]"; [Doran RP The Knight Scene]

Section 4.4 - Doran Roleplay Sex Pool

to say dorrpovbs:
	if cunts of player is 0 or cunt length of player < 5 or dorrp_tv3 is 1:
		now dorrp_tv3 is 2;
	if dorrp_tv1 is 0: [Variant Trespasser]
		say "     Cautiously, you move to search the cave for anything of value. Finding little of any use to you, your scavenging is interrupted when your peripheral vision is flooded with the sight of [if scalevalue of player < 4]a looming shadow[otherwise]another[end if]. You're not given a chance to turn around before you're pounced, pinned to the ground. The feel of drool dripping against your skin, you're forced to watch on as the dragon sniffs and exposes your[if scalevalue of player < 4] smaller,[end if] [bodytype of player] form before his feral gaze.";
		say "     You're not completely helpless; you could struggle against the beast's grip, shall you? Else you will choose to succumb to the dragon's primal will.";
	otherwise: [Variant Trophy]
		say "     [if scalevalue of player < 4]Carried[otherwise]Heaved[end if] towards the cave, the dragon casually [if scalevalue of player < 4]tosses[otherwise]forces[end if] you into a corner. After your embarrassing defeat at his hand, the creature spared you of any immediately abuse and instead chose to keep you for himself. The huffing of his quizzical sniffing quite audible as he inspects your[if scalevalue of player < 4] smaller,[end if] [bodytype of player] form.";
		say "     Though the beast has defeated you once before, you could struggle against him still, shall you? Else, you will choose to succumb to the dragon's primal will.";
	if player consents:
		say "     Immediately, you try to force yourself free of the creature's hold; however, all this succeeds in doing is irritating the creature further, pinning you to the ground more firmly and nipping you as retribution for your impudence.";
		now tempnum is 1;
	otherwise:
		say "     Resigning yourself to your fate, you calm down and allow you to be shamelessly inspected by the creature. Though he refrains from any harsher treatment at this moment, this doesn't reduce how bluntly he handles you.";
		now tempnum is 0;
	if dorrp_tv4 is 1:
		say "     Before he makes any effort to have his way with you, however, he seems intent on a bit of bestial formality, pinning you with a fore-talon whilst lifting a hind. Any meager ambiguity of the gesture is washed by the feel his hot piss hosed against your [bodydesc of player] form, the acrid, overpowering stench wafting up to assault your senses. He seems to have quite a fair amount, and exploits this to mark you thoroughly[if tempnum is 1], much in spite your protests[end if], christening you as his[if scalevalue of player < 4] little[end if] bitch. Eventually the flow recedes, and the dragon returns to the more immediate matter on his mind.";
	say "     Moving to properly position himself [if scalevalue of player < 4]over[otherwise]on top of[end if] his new victim, you quickly feel the hot, firm tip of dragon's bestial tool repeatedly prodding ";
	if dorrp_tv3 is 2:
		say "your exposed anal ring";
	otherwise:
		say "[if cunts of player > 1]one of [end if]your exposed cunt[sfn]";
	say ". It takes him a few tries to properly hit his mark, but when he does, it's immediately clear that he's not going to ease you into it. [if tempnum is 0]Resigning yourself to your fate though you may have, you can't help but[otherwise]You[end if] immediately cry out in pain as a result of this immediate and harsh penetration, ";
	if dorrp_tv3 is 2:
		say "[if scalevalue of player < 4]each progressive inch[otherwise]its entirety abruptly[end if]";
	otherwise:
		say "[if cunt length of player < 12]each progressive inch[otherwise]its entirety abruptly[end if]";
	say " forced into your [if dorrp_tv3 is 2]depths[otherwise]supple folds[end if], up to his knot, with a complete disregard for your well-being.";
	say "     Fucking you like a wild beast[if dorrp_tv4 is 1], his body's motion slicked by your urine-soaked frame[end if], you feel his claws and teeth firmly against you, his aggressive dominion inflicting further discomfort and harm to your already rough experience[if tempnum is 0], regardless of your submission[end if]. In spite of [if tempnum is 1]your better judgment[otherwise]his harsh treatment[end if], you can't but become increasingly aroused by his bestial fury, [if cocks of player > 0]erect, [cock size desc of player] dick[smn] grinding unattended against the hard ground[otherwise if cunts of player > 0 and dorrp_tv3 is 0]oozing, [cunt size desc of player] cunt squeezing against its harsh invader[otherwise]dripping, [cunt size desc of player] cunt[sfn] grinding unattended against the hard ground[end if].";
	say "     Each successive jism of pre sending tremors through your[if scalevalue of player < 4] painfully stuffed[end if] body, the lubrication is eventually enough that he manages to force his knot all the way into you[if scalevalue of player < 4], causing your body to bulge visibly in order to abide it[end if]. This is enough to set him off, gout after thick, musky gout of cum flooding your[if scalevalue of player < 4] ill-prepared[end if] [if dorrp_tv3 is 2]bowels[otherwise]womb[end if]";
	if scalevalue of player < 4:
		say ". You would doubtlessly balloon outwards as a result of such a substantial load, but the portion of the dragon's weight you're made to bear only forces it back out from whence it came--tied tightly though your hole may be[if dorrp_tv3 is 2]--and causes you to cough up a bit of his overwhelming jizz, a twisted means of subjecting you its heady flavour[end if]";
	otherwise:
		say ". Though you're large enough to abide his release, the sheer volume remains dizzying, some eventually oozing from your tied hole";
	say ". Whatever meager orgasm you can muster from the wake of this devastation is largely strained by the creature's[if scalevalue of player < 4] intense[end if] intrusion.";
	say "     The dragon takes this moment to catch his breath, laying loosely on top of you, and you briefly assume that he's[if tempnum is 1] thankfully[end if] finished; however, this quickly proves to not be the case, as he gets back up and starts up once again. In mere seconds, he's back to the pace he was at once before. The beast's stamina seems limitless, and as the hours pass he continues pumping you full of seed again and again. Your endurance, however, is not nearly so resilient, and you eventually pass out from exhaustion, through you assume that this isn't about to stop him...";
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	if dorrp_tv2 > 0:
		say "[dorrpovobss]"; 
	if dorrp_tv2 > 1:
		say "[dorrpovobss]"; 
	if dorrp_tv2 > 2:
		say "[dorrpovobss]"; 
	say "     After being subjected to this constant abuse for what seems like weeks, you [if tempnum is 1]eventually give in to your carnal desires, learning[otherwise]learn[end if] to love being his[if scalevalue of player < 4] little[end if] fucktoy, and fully succumbing to a fate of being constantly pumped full of his cum, day in and day out. [if dorrp_tv1 is 0]Such is the price of trespassing where you don't belong[otherwise]You, at the very least, ended up making an excellent trophy for the beast[end if]...";
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	say "     '...[run paragraph on][one of]Oh[or]Ah[or]Hm[at random], [dorgr], are they [one of]alright[or]OK[at random]? [one of]I hope they enjoyed this little exercise[or]I hope I wasn't too rough on them[or]I made such a mess[at random]...' Still a bit dizzy from the whole ordeal, Doran fusses over cleaning you up, eventually satisfied and setting you off once more. Funny, it feels like no time has passed at all...";

to say dorrpovobss:
	if dorrp_tv4 is 1 and (a random chance of 1 in 6 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 4 succeeds)): [WS Opener]
		say "     You are awoken from your prior lapse in consciousness to feel of a hot liquid rushing against your face. It only takes a second for the acrid stench and taste to inform you that you're being marked again by the dragon, [if tempnum is 0]meekly obliging such harsh treatment, much to his approval[otherwise]instinctively spitting it out and struggling once more to free yourself of his hold, to little avail[end if]. Satisfied with his little wake-up call, the beast continues going about the business he had planned for his little toy.";
		now dorcustv_1 is 0;
		now dorrp_tv4 is 2;
	otherwise if a random chance of 1 in 3 succeeds:  [Wake to being fucked]
		say "     Gradually, you stir awake once more, but it's soon made clear that your bestial captor is fucking you regardless of your lack of consciousness. Still sore and swollen with his seed, he's already tied to you, and in the few seconds that follow the dragon roars out once more, flooding your [if dorrp_tv3 is 2]bowels[otherwise]womb[end if] with his seed yet again, [if tempnum is 0]soon compelled to orgasm as well, you're unable to resist moaning out in approval for such wanton abuse[otherwise]groaning and struggling to try and free you once more, not that it ever seems to do much good[end if]. The dragon takes this moment to rest for a bit.";
		now dorcustv_1 is 1;
	otherwise if a random chance of 1 in 2 succeeds: [Attempting Escape]
		say "     When you awake once more. The dragon appears nowhere to be found, and it looks like you have a free shot to the exit";
		if tempnum is 0:
			say ". You choose not to exploit this opportunity, however, as even if you hadn't resigned yourself to your fate, the beast would likely find you. You're weakened groans eventually draw the beast's attention once more, and you see him return, softly nipping his captive in carnal greetings";
		otherwise:
			say "! Immediately, you pull yourself to your feet, considerably sore and swollen with cum. Nonetheless, you make a B-line for the outside... Only for the beast to immediately turn around the corner and pounce you before you can make any real distance. A low growling his regard, you're dragged back to where you were prior, nipping you as chastisement for your attempt to escape";
		say ". Now that he has returned, he takes a moment to decide what to [if tempnum is 0]do[otherwise]subject his failed escapee to[end if].";
		now dorcustv_1 is 0;
	otherwise: [Sleeping Dragon]
		say "     Roused once more from unconsciousness, you can feel the dragon on top of you, though the limp manner in which he is splayed against you and the loud snoring he makes, it's clear he's fallen asleep. It takes a second of shifting to realise that, in spite his state of rest, he's still very much aroused and impaling you through your doubtlessly very worn hole. [if tempnum is 1]Weakly, you attempt to free yourself from under him, but the activity[otherwise]Beleaguered groans and protests in being forced to abide his weight[end if] seems to stir him partially awake once more, renewed thrusts against you--initially idle and half-hearted--grow increasingly deliberate, until a groggy roar from the sordid beast punctuates another gout of his heady seed. It looks to be a sufficient wake-up call for him, anyways, and nips his[if scalevalue of player < 4] little[end if] [if dorrp_tv1 is 0]trespasser[otherwise]trophy[end if] in cheeky approval.";
		now dorcustv_1 is 1;
	if dorrp_tv4 is 1 and (a random chance of 1 in 4 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds)): [WS "Feeding"]
		if dorcustv_1 is 1:
			say "     Pulling free from you, he moves around to aim his softened and cum-dripping";
		otherwise:
			say "     He moves around to aim his partially unsheathed and perpetually-oozing";
		say " dick at your face, inching closer until he can prod your mouth with the tip. Dazed as you are, it's briefly unclear what the dragon has planned, but this is quickly clarified as, when you[if tempnum is 1] are eventually forced to[end if] oblige, you're assaulted with a stream of his painfully bitter piss. [if tempnum is 1]Immediately, you try to pull yourself free, but he keeps his cockhead firmly within your mouth, forcing you[otherwise]The taste is overwhelming, making it difficult[end if] to swallow down this continued stream. It's clear he intends to satiate any thirst you might've had prior this way, though it does little in the way of aiding that. This persists for much too long, as the continued assault and odour is enough to make you eventually black out.";
	otherwise if a random chance of 1 in 2 succeeds: [Additional Fucking]        
		if dorcustv_1 is 1:
			say "     Immediately, he starts right back up; he just won't stop! Already stretched out as you are, the dragon has no difficulty in the motion he builds once again";
		otherwise:
			say "     He chooses to take the most predictable option and climbs on top of you, mounting you once more. Already stretched out as you are, the dragon has no difficulty in hilting you";
		say ", the wet sound of his harsh, reckless thrusts filling the air. [if tempnum is 0]Moaning along with each impaling[otherwise]Weakly trying to muster up some manner of protest[end if], you're eventually struck with another flood of the creature's seed, adding a fresh coating of cum all over your behind. He continues this ritual, wracking you with orgasm after orgasm, until you pass out from exhaustion once more.";
	otherwise :["Feeding"]
		if dorcustv_1 is 1:
			say "     Pulling free from you, y";
		otherwise:
			say "     Y";
		say "ou feel his tongue caress along your significantly cum[if dorrp_tv4 is 1] and piss[end if]-stained mess of a body. Though this tongue bath might bring you a moment of some reprieve, it's clear that the creature isn't swallowing the [if dorrp_tv4 is 1]noxious cocktail[otherwise]seed[end if], and your soon met with his muzzle against your face, forcing your mouth open. Instinctively, [if tempnum is 0]you[otherwise]you refuse him, to which he lowly growls and pins his snout firmly against you until you can't help but[end if] oblige, the dragon's overpowering [if dorrp_tv4 is 1]fluids[otherwise]cum[end if] flooding your maw. It's clear he's attempting to feed you, but the smell and taste is so intense[if scalevalue of player < 4], and you're so small compared to him[end if], that this continued, prolongued ritual eventually overwhelms you, causing you to black out.";
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	if dorrp_tv4 is 2, now dorrp_tv4 is 1;
	now dorcustv_1 is 0;

to say dorrptks:
	say "     You've been called upon to deal with a dragon that's been causing trouble for the area, a charge you've eagerly set out to complete. It took a little work, but you finally track the creature to his lair, offering a low growl when he sees you approach. Cornered now, he has no choice but to face you.";
	say "     '[one of]Hmpf[or]Huf[or]Ha[at random], [one of]many have fell to me before, what makes you think you'll be any different[or]you dare challenge me in my own home[or]you think you stand a chance against me[at random]!?' A puff of smoke escaping his scaled lips in punctuation to his belligerent remark, you don't bother with a response before charging on the beast!";
	if waiterhater is 0:
		wait for any key;
		say "[line break]";
	if dorrpis is 2:
		if cocks of player is 0:
			now dorrp_tv3 is 1;
		otherwise:
			now dorrp_tv3 is 0;
		say "     After a considerable struggle, the dragon crumples into a panting heap, unable to contest your will any further. Not quite satisfied with merely defeating him, you figure it's only appropriate to subject to him who's really in charge here.";
		say "     '[one of]Don't think you've won this[or]This isn't over[or]I'm not so easily defeated[at random]! [one of]I just need a moment to catch my second wind[or]Just give me a second here[at random]...' He's clearly going to put up some protest if you try to have your way with him. Perhaps you should tie him up?";
		if player consents:
			now dorrp_tv2 is 1;
			say "     Gathering up some rope, the dragon's impotent discontent only manages to mildly inconvenience you as you bind his legs and wings together, tieing his tail with those wings in such a way that it's forcibly raised to expose his shapely ass to anyone who might see it.";
			say "     '[one of]What's this?[run paragraph on][or]Ha![run paragraph on][at random] [one of]You think some paltry rope is goin-mnffn, mmnffn[or]I won't be so easily tied do-hfnm, rfng[at random]!' His continued protests eventually subdued when you tie is maw shit, he can only pout and puff smoke in protest, otherwise leaving the dragon completely at your mercy";
		otherwise:
			now dorrp_tv2 is 0;
			say "     Getting straight to the point, you hike up his tail, exposing his shapely ass to your prying eyes";
		say ". Briefly testing his anal ring with [if scalevalue of player < 4]your hand[otherwise]a digit[end if], this is certainly a very effective means of getting him to write and twist in sharp disapproval, not that he's in any position to stop you. Once you're satisfied, you move to expose your [if dorrp_tv3 is 0][cock size desc of player] dick[smn][otherwise]'mighty lance'[end if] before querying view, making his eyes go wide.";
		say "     '[if dorrp_tv2 is 1][one of]Nmm, nmm[or]Hn hvhns nn[or]whn fhhn hnn[at random][otherwise][one of]Oh, no, no no no[or]I-I can pay you, we don't have to do this[or]Let's not get hasty here, I'm certain we can find a better solution than this[at random][end if]!' [if dorrp_tv2 is 1]Incomprehensible p[otherwise]P[end if]rotests in the wake of this twisted revelation, he's clearly not fond of what you have in store for him, further highlighted when you force the tip of [if cocks of player > 1]one of your rods[otherwise if dorrp_tv3 is 0]your rod[otherwise]the rod[end if] past his fleshy portal[if cock length of player > 17], its substantive girth causing him to groan out loudly[otherwise if scalevalue of player > 3 and dorrp_tv3 is 1], its substantive girth causing him to groan out loudly[end if]. [if cock length of player < 13]Fairly tight even for someone of your size[otherwise if scalevalue of player < 4 and dorrp_tv3 is 1]Fairly tight even for someone of your size[otherwise]Quite the tight one[end if], the dragon is clearly a total virgin to this sort of practice, making it all the more enjoyable to break him.";
		say "     [if dorrp_tv2 is 1]His struggles inhibited by the bondage[otherwise]Too exhausted to offer much to dissuade you[end if], you sink [if dorrp_tv3 is 0]your[otherwise]the[end if] tool deeper and deeper into his supple depths, until you hilt it entirely. Not inclined to offer much in the way of restraint, you don't give the beast any time to acclimate before you quickly build a motion of pounding his scaled ass, tensing with each harsh thrust.";
		say "     '[if dorrp_tv2 is 1][one of]Nff, hffn[or]Hhf, mnn[or]Hvhns sfft[at random][otherwise if dorrp_tv1 is 0][one of]A-ah, p-please stop[or]I-I'll offer you whatever you want, j-just[or]Nng, I can't take t-this[at random][otherwise][one of]Y-you won't get away with this[or]I-I'll have my vengeance[or]You'll pay for t-this indignity[at random][end if]...!' Whine though he may, he glaring, oozing arousal tells another story altogether, whether the dragon likes it or not. Further shaming and teasing him for it, your discourse quickly becomes strained by the fervour of your rising need[if scalevalue of player > 3], each successive thrust like a tremor across the whole of your captive's body as you pant[otherwise], panting[end if] audibly";
		if dorrp_tv3 is 0:
			say ". Shall you pull out just before climax?";
			if player consents:
				say "     Right at the very height of ecstasy, you free your throbbing dick from the dragon's rump, grinding against his inviting curvature to push you past the last inch. Loudly groaning, you paint the dragon's ass[if cock width of player > 12] and back[end if] with your [cum load size of player], virile fluids,[if cock width of player > 24] positively drenching the reptile with your seed and[end if] leaving him an embarrassed mess.";
			otherwise:
				say "     With one final effort, you hilt your throbbing dick into the dragon's abyssal depths,[if cockname of player is listed in infections of knotlist] tying with him and[end if] firing surge after subsequent surge of your [cum load size of player], virile fluids[if cock width of player > 24] visibly bloating the reptile with your seed[end if][if cocks of player > 2]its brothers staining the creature's crotch[otherwise if cocks of player is 2]its brother staining the creature's crotch[end if]";
				if dorrp_tv1 is 0:
					say ". The force is strong enough to set the beast off, his own load spurting impotently against the ground[if cock length of player > 17], strained by such a substantive intrusion[end if]";
				say ". It takes you a moment, but eventually you wrench yourself free of his now-leaking hole";
		otherwise:
			say ".";
			say "     With one final effort, you hilt your lewd, latex tool into the dragon's abyssal depths,[if cunts of player > 1]throbbing pussies oozing down to stain the creature's crotch[otherwise]throbbing pussy oozing down to stain the creature's crotch[end if]";
			if dorrp_tv1 is 0:
				say ". The force is strong enough to set the beast off, his load spurting impotently against the ground[if scalevalue of player > 3], strained by such a substantive intrusion[end if]";
			say ". It takes you a moment, but eventually you wrench yourself free of his now-gaping hole";
		if dorrp_tv1 is 0:
			say ". He appears marginally compliant in his presently violated state, shall you reinforce your dominion by forcing him to clean you off?";
			if player consents:
				say "     [if dorrp_tv2 is 1]Removing the bindings from his maw, y[otherwise]Y[end if]ou pull his head forward to grind it against your [if dorrp_tv3 is 0]spent cock[smn][otherwise]worn tool[end if]. He is, of course, reluctant to attend such a demand, but after a bit of prodding (And additional threats of punishment), he eventually obliges. Large tongue enveloping your crotch, you bathe in his heated breath as he's forced to deal with the mess you've made of yourself, cringing at the unfamiliar taste of your sexual fluids. Eventually, he leaves you positively spotless[if dorrp_tv2 is 1], which you reward by tieing him back up[end if]";
		say ".";
		say "     '[if dorrp_tv2 is 1][one of]Hfn, mnn[or]bfln, hff[or]Mnfn, nng[at random][otherwise if dorrp_tv1 is 0][one of]P-please don't hurt me further[or]I-I promise I won't cause anymore trouble[or]I'll be good, just let me go[at random][otherwise][one of]T-this changes nothing[or]I w-won't buckle so easily[or]I w-won't stand for your twisted abuse[at random][end if]...' [if dorrp_tv1 is 1]Barely threatening p[otherwise if dorrp_tv2 is 1]Barely audible p[otherwise]P[end if]rotests offered against you, there's no doubt that he won't be causing anybody any trouble. He's certainly learned his lesson, but he's quite the intriguing prospect. Shall you claim him as yours? Else you'll leave the dragon be.";
		if player consents:
			say "     Grinning, you grab the dragon and [if scalevalue of player > 3]haul him off[otherwise]pull him along[end if], [if dorrp_tv1 is 0]to which he meekly obliges[otherwise]much to what paltry protests he might muster up against you[end if]. When you return to your place of rest, you go through the matter of properly training the dragon as your new little slave, [if dorrp_tv1 is 0]a feat which is not all that difficult[otherwise]stubborn though he might be[end if]. Eventually, he proves to be [if dorrp_tv1 is 0]an eager, slutty[otherwise]a sufficient[end if] little 'mount' for you, and he [if dorrp_tv1 is 0]enjoys[otherwise]learns to enjoy[end if] being paraded around as a trophy of past conquests...";
		otherwise:
			say "     Deciding to let the dragon off this time, you give his rear nice firm smack before departing[if dorrp_tv2 is 1], surely it will be a while before he can free himself[end if]. As time passes, things settle down and you don't hear about the beast causing any more trouble[if dorrp_tv1 is 0], though you -do- occasionally hear the weird story here or there.[run paragraph on] Apparently, your bit of fun as had quite an effect on him, as you hear all sorts of tales about the dragon subjecting itself to all manner of lewd circumstance[end if]. All in all, a mission accomplished for you, and you look forward to the next time one of his lot causes trouble in your neighbourhood...";
		if waiterhater is 0:
			wait for any key;
			say "[line break]";
		say "     '...[run paragraph on][one of]Heh[or]Ha[or]Hm[at random], [one of]I hope [dorgr] enjoyed having their way with their dragon[or]methinks [dorgr]'s dragon had more fun than they should've, that time[or]Always a thrill to play with [dorgr][at random]!' Grinning happily to you, he goes about to clean up before letting you off, clearly satisfied with the session.";
	otherwise:
		if cunts of player is 0 or cunt length of player < 5 or dorrp_tv3 is 1:
			now dorrp_tv3 is 2;
		say "     It very quickly becomes apparent that you bit off more than you could chew this time, and the dragon eventually overpowers you, forcing you to the ground, where you're too exhausted to fight any further. As you slowly try to get to your feet, the dragon [if dorrp_tv1 is 1]can't help but laugh at your pitiful state, nudging you about to tease and torment[otherwise]firmly lashes you back to the ground with his tail, lowly growling at[end if] his failed assailant.";
		say "     '";
		if dorrp_tv1 is 1:
			say "[one of]Oh[or]Hm[or]Ah[at random], what's this? [one of]I think my new toy needs to be taught a lesson in manners[or]I was expecting more a fight than that, I barely broke a sweat[or]What an utter waste of my time[at random]...";
		otherwise:
			say "[one of]You trespass on my territory[or]You attack me[or]You waste my time[at random]... [one of]You are now my property, and[or]I should end you, but[or]You're barely worth my time, but[at random]";
		say " I think I can make a better use for you.' A grim grin emerging from his draconic visage, he pins your[if scalevalue of player < 4] smaller,[end if] [bodytype of player] form to the ground, exposing your behind before his prying eyes";
		if dorrp_tv1 is 1:
			say ". Talon briefly testing [if dorrp_tv3 is not 2 and cunts of player > 1]one of your [cunt size desc of player] cunts[otherwise if dorrp_tv3 is not 2]your [cunt size desc of player] cunt[otherwise]supple anal ring[end if], he chuckles to himself as he enjoys watching you squirm and protest against his imminent abuse. Soon enough, however, he forces it into its depths more deliberately, the dragon preparing";
		otherwise:
			say ". Immediately, you feel one of his talons force its way into [if dorrp_tv3 is not 2 and cunts of player > 1]one of your [cunt size desc of player] cunts[otherwise if dorrp_tv3 is not 2]your [cunt size desc of player] cunt[otherwise]supple anal ring[end if], causing you to cry out. He only growls in response, showing no restraint in subjecting you to this harsh treatment as the dragon prepares";
		say " his new victim.";
		say "     '[if dorrp_tv1 is 1][one of]Ha[or]Hm[or]Heh[at random], [one of]it's as I've figured[or]I should've guessed[or]it seems obvious now[at random], [one of]you're just one little slut[or]you're much better suited as a mere toy[or]you just saw to make yourself my property[at random][otherwise][one of]Hmpf[or]Tsk[at random], [one of]I suppose you'll suffice[or]this is the price for your trespass[or]you'll learn your place[at random][end if]!' Satisfied in his [if dorrp_tv1 is 1]brief[otherwise]harsh[end if] foreplay, he frees your [if dorrp_tv3 is not 2]pussy[otherwise]tailpipe[end if] of his scaled digit's influence, its slick departure echoing through the open air. You're given little time to recover before the beast [if scalevalue of player < 4]looms over[otherwise]climbs on top of[end if] you, [if dorrp_tv1 is 1]irreverent[otherwise]shameless[end if] prodding from his oozing dick. Much to you're embarrassment, you can't help but be aroused by his[if dorrp_tv1 is 0] harsh[end if] abuse, [if cocks of player > 0]unattended cock[smn] grinding against the ground[otherwise if dorrp_tv3 is not 2]portal aching to be stuffed[otherwise]unattended cunt[sfn] left exposed in the open air[end if], which [if dorrp_tv1 is 1]compels him to grin in amusement[otherwise]only compels him to snort in mind disdain[end if].";
		say "     The dragon shows [if dorrp_tv1 is 1]little[otherwise]no[end if] restrain in shoving his impressive tool into your hole, ";
		if dorrp_tv3 is not 2:
			if cunt length of player < 13:
				say "it's overwhelming size forcing you to moan in a twisted mix of pleasure and pain";
			otherwise:
				say "forcing a moan to escape your lips in twisted pleasure";
		otherwise:
			if scalevalue of player < 4:
				say "it's overwhelming size forcing you to moan in a twisted mix of pleasure and pain";
			otherwise:
				say "forcing a moan to escape your lips in twisted pleasure";
		say " as it's shoved in deeper, inch by inch, until naught remains unexposed save for his intimidating knot. Your [bodydesc of player] body rocks with every thrust as he quickly builds up a pace of rocking against your beleaguered form, [if dorrp_tv1 is 1]taunting and chastising[otherwise]nipping[end if] his new mount.";
		say "     Heated breath washing over you, the dragon begins to audibly pant in the wake of his persisting, carnal fervour, sweat-slicked motion reaching a fever pitch. Hole stretched and worn from its persisting abuse, you're suddenly assaulted by the intense sensation of the infernal beast burying it's knot into your [if dorrp_tv3 is not 2]depths[otherwise]bowels[end if], an act which strains you ";
		if dorrp_tv3 is not 2:
			if cunt length of player < 13:
				say "to your absolute limits";
			otherwise:
				say "considerably in spite your ability";
		otherwise:
			if scalevalue of player < 4:
				say "to your absolute limits";
			otherwise:
				say "considerably in spite of your scale";
		say ", his inevitable success punctuated by an ear-splitting roar of bestial ecstasy.";
		say "     [if cocks of player > 1]Unattended dicks spending their [cum load size of player] load impotently against the ground[otherwise if cocks of player > 0]Unattended dick spending it [cum load size of player] load impotently against the ground[otherwise if dorrp_tv3 is not 2]Stuffed portal squeezing against its invader[otherwise]Unattended cunt[sfn] oozing impotently to stain the ground[end if] in your own climax, it's greatly eclipsed by the dragon's, [if dorrp_tv3 is not 2]womb[otherwise]fleshy abyss[end if] flooded with wave after successive wave of the beast's seed, until what you can't contain spurts free of your tied hole. Taking a moment to catch his breath, the beast pulls his softening dick[if dorrp_tv1 is 0] harshly[end if] from you, a stream of his sexual fluids following in its wake. Satisfied though he may be, he regards you with a [if dorrp_tv1 is 1]devious grin[otherwise]low growl[end if].";
		if waiterhater is 0:
			wait for any key;
			say "[line break]";
		if dorrp_tv2 is 0:
			say "     '[if dorrp_tv1 is 1][one of]I think there's no better punishment to keep you as my toy[or]Oh, I'm certain you'll love being a toy for my amusement[or]You should have just offered yourself, being a little slut suits you better[at random][otherwise][one of]I suppose you will suffice as my toy[or]For your impudence, you will remain my property[or][at random].' From there on you're forced to spend the rest of your life as a mere hole for the dragon to fill every night, eventually growing wont to the dragon's endless exploitation. Others come to try and challenge the beast, though they too succumb to a similar fate as you, at least they offer you some company...";
		otherwise:
			say "     '[if dorrp_tv1 is 1][one of]Oh, all this work has left me very hungry[or]I think I can make some better use of my guest[or]I'm certain my new friend would like to stay for dinner[at random][otherwise][one of]Now to end this ordeal[or]Time to finish this[or]This will only end one way[at random][end if]...' Licking his lips, he lunges forward, jaws[if dorrp_tv1 is 0] firmly[end if] pulling your smaller form into the air, relinquishing you only to let gravity drop you into his slick, eager maw. Foot by foot, your body is engulfed within the dragon's supple confines, those same confines squeezing around you as his muscles plunge you deeper into his dark depths, [if dorrp_tv1 is 1]taking his time, clearly to torment you over[otherwise]showing little restraint or care in subjecting you to[end if] your ultimate fate. You're eventually given the paltry reprieve of his more abiding stomach, loudly groaning with its new and struggling occupant.";
			if dorrp_tv2 is 1:
				say "     [if dorrp_tv1 is 1]His muffled laughter the last thing you hear before[otherwise]Regarding his meal with only a partially content snort,[end if] you eventually succumb to exhaustion, blacking out entirely as your quest ends with you as a mere meal for the beast you set out to defeat, and after being so thoroughly ravaged. No doubt others will try and fail as you have, concluding in a similar, dark fate...";
			otherwise:
				say "     '[if dorrp_tv1 is 1][one of]I think I'll save you for later[or]Rest well, you'll be needing it[or]I think this is a fitting prison for my new consort[at random][otherwise][one of]Consider yourself lucky, that I let you live, for now[or]I will abide no further protests from my new consort[or]It will be better for you if accept your new home[at random][end if].' [if dorrp_tv1 is 1]Laughing with perverse pleasure[otherwise]Lowly growling in perverse satisfaction[end if], muffled from within these dark and damp, churning confines, he goes off to rest from the whole ordeal, his captive in tow. In the time that follows, you are occasionally relinquished from your confines, only to be ravaged by the dragon time and time again, stowed toy for the twisted beast. Others come to try and challenge him, failing as you do, and though they are abused all the same, you remain separated from the dragon's other victims, given 'special' treatment, and over time you eventually succumb to total obedience to his will...";
		if waiterhater is 0:
			wait for any key;
			say "[line break]";
		say "     '...[run paragraph on][one of]Wake up[or]Rise and shine[or]Up, up[at random], [dorgr]! [one of]I hope they found our little adventure satisfactory[or]I hope I didn't wear them out too much[or]I'm certain they enjoyed themselves[at random]!' Taking a moment to look you over after the session had concluded, Doran eventually lets you off once he's certain that you appear fine, allowing you to go about your business once more.";
		

Chapter 5 - Miscellaneous

[blued is an action applying to nothing.  [Developer Cheat]
understand "blue dawn" as blued.
carry out blued: 
	say "It is done.";
	now Rocky Outcropping is known;]
	
to say doranmusing: [Requires first talking to Doran]
	say "     You decide to summon Velos before a slightly confused Doran. It takes a moment for the serpent to oblige this request, and when he pulls out and sees the dragon, he immediately cries out in abject terror. Doran himself looks equally terrified at the sight of the serpent.";
	say "     'Oh--m-my eyes...! What have you subjected me t-to!' Just as quickly as he came, he retreated back once more inside you. Doran calms down, and his demeanour changes to something a bit more concerned and assertive.";
	say "     '[dorgr], I beg of them, if they have other friends, don't bring them to me.' Instinctively, you ask why, to which he reels back slightly, 'I beg once more, [dorgr], what we share must between us only.' He won't budge any further on the subject, and you're ultimately forced to leave it at that.";
	add 24 to velospostmusings;

when play ends:
	if dorfirsttalk is true and humanity of player > 10:
		say "     Oddly enough, after you were rescued, the dragon named Doran was nowhere to be found; none of the soldiers who were a part of the rescue operation saw such a creature or heard of anyone with that particular name. To this day, you wonder if he was ever even real to begin with...";

Doran ends here.
