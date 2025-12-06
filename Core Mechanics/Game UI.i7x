Version 1 of Game UI by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 0 - Variables

looknow is a number that varies.[@Tag:NotSaved]
showlocale is a truth state that varies. showlocale is usually true.
calcnumber is a number that varies.[@Tag:NotSaved] [used in all sorts of multi-choice points]
freecred is a number that varies.

Part 1 - Status Bar

Chapter 1 - Wide/Narrow Version Adjustment Command

StatusBarSetting is a number that varies.

statusbarchange is an action applying to nothing.

understand "statusbarchange" as statusbarchange.

carry out statusbarchange:
	if StatusBarSetting is 0:
		now StatusBarSetting is 1;
	else if StatusBarSetting is 1:
		now StatusBarSetting is 0;

Chapter 2 - Status Bar Construction

First for constructing the status line (this is the bypass status line map rule):
	if StatusBarSetting is 0:
		fill status bar with Table of Fancy Status;
	else:
		fill status bar with Table of Narrow Status;

Table of Fancy Status
left	central	right
"Location: [Location of Player][if Location of Player is fasttravel] ([statuslink 1]Navpoint[terminate link])[end if]"	"Name: [if Player is not defaultnamed][Name of Player][else][statuslink 2]Pick one?[terminate link][end if] | Pronouns: [statuslink 3][PronounChoice of Player][terminate link] - [SubjectPro of Player]/[PosAdj of Player] | Condition: [SleepMessage], [AlcState][if hypernull is not 1] | [statuslink 4]Inventory[terminate link] | [statuslink 5]Feats[terminate link] | [statuslink 6]Allies[terminate link] | [statuslink 7]Sex Stats[terminate link][end if]"	"HP: [HP of Player]/[MaxHP of Player]"
"Date: [DateYear]-[DateMonth]-[DateDay], Time: [time of day]"	"STR: [strength of Player] | DEX: [dexterity of Player] | STA: [stamina of Player] | CHA: [Charisma of Player] | INT: [intelligence of Player] | PER: [perception of Player]"	"XP: [XP of Player]/[level up needed]"
"Evac: [if playon is 0][( turns minus targetturns ) divided by 8] d, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] h[else]UNKNOWN[end if]"	"Hunger: [hunger of Player]/100 | Thirst: [thirst of Player]/100 | Libido: [Libido of Player]/100 | Humanity: [humanity of Player]/100"	"LVL: [level of Player]"
"Freecred: [freecred]"	"[statuslink 8]Help[terminate link] | Game Version (Serial): [serial number][if NewGraphicsInteger is not 0] | Art by: [ngraphics_currentartist] ([statuslink 9]art credits[terminate link])[end if]"	"Score: [score]/[maximum score]"

[Optional Version for narrower screens]
Table of Narrow Status
left	right
"Location: [Location of Player][if Location of Player is fasttravel] ([statuslink 1]Navpoint[terminate link])[end if]"	"HP: [HP of Player]/[MaxHP of Player]"
"Date: [DateYear]-[DateMonth]-[DateDay], Time: [time of day]"	"XP: [XP of Player]/[level up needed]"
"Evac: [if playon is 0][( turns minus targetturns ) divided by 8] d, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] h[else]UNKNOWN[end if]"	"LVL: [level of Player]"
"Freecred: [freecred]"	"Score: [score]/[maximum score]"

When play begins:
	now right alignment depth is 18; [default of 14 is too small to keep maximum score from getting cut off once score exceeds 3 chars]

To say level up needed:
	say "[if Player is fastlearning][((level of Player plus 1) times 8)][else][(level of Player plus 1) times 10][end if]";

statusindex is a list of numbers that varies. [stores the hyperlink list index for every link in the status bar]
statuslinks is always {"nav", "rename", "set pronouns", "i", "FeatList", "Allies", "SexStats", "HelpBookLookup", "art credits"}.

to say statuslink (N - number):
	if number of entries in statusindex is not number of entries in statuslinks:
		change statusindex to have (number of entries in statuslinks) entries;
	if entry N of statusindex < 1 or entry N of statusindex > number of entries in hyperlink list:
		now entry N of statusindex is number of entries in hyperlink list;
	if hyperlink list is empty or entry (entry N of statusindex) of hyperlink list is not entry N of statuslinks: [probably the hyperlink list was recently cleared, so we need to add or find the link again, storing the new index]
		linkfind entry N of statuslinks;
		now entry N of statusindex is hyperindex;
	say "[set link entry N of statusindex]";

Part 2 - Command Prompt

Chapter 1 - Definitions

Definition: a direction (called D) is valid if the room D from the Location of Player is a room.


Chapter 2 - Prompt

When play begins:
	now the command prompt is "[promptsay]";

to say promptsay:
	if companionList of Player is not empty:
		repeat with y running through companionList of Player:
			if NPCObject of y is not Nullpet:
				now NPCObject of y is in location of Player;
	[invisibly attaching the carried objects to keep the rickety FS inventory system going]
	repeat through Table of Game Objects:
		if object entry is owned or (Player is in Bunker and object entry is stored):
			if object entry is nowhere, now object entry is part of Player;
		else if object entry is part of Player:
			now object entry is nowhere;
	if number of entries in invent of location of Player > 0:
		say "Visible Objects: ";
		repeat with q running through invent of location of Player:
			if q is a name listed in Table of Game Objects:
				now object entry is part of Player;
			linkfind "get [q]";
			say "[set link hyperindex][q][terminate link] ";
		if hypernull is not 1:
			linkfind "get all";
			say "[bracket][set link hyperindex]get everything[terminate link][close bracket]";
		say "[line break]";
	say "Status: ";
	if hunger of Player > 30:
		say "[promptlink 1][bracket]HUNGRY[close bracket][terminate link] ";
	if thirst of Player > 30:
		say "[promptlink 2][bracket]THIRSTY[close bracket][terminate link] ";
	if humanity of Player < 50:
		say "[promptlink 3][bracket]UNHINGED[close bracket][terminate link] ";
	say "[promptlink 4][bracket]Inv[close bracket][terminate link] ";
	if scenario is "Researcher" or nanitemeter > 0:
		say "[promptlink 5][bracket]Vial[close bracket][terminate link] ";
	say "[promptlink 6][bracket]Rest[close bracket][terminate link] ";
	if ObserveAvailable of location of Player is true:
		say "[promptlink 7][bracket]Observe[close bracket][terminate link] ";
	say "[promptlink 8][bracket]Save[close bracket][terminate link] ";
	say "[promptlink 9][bracket]Restore[close bracket][terminate link] ";
	say "[promptlink 10][bracket]Export Progress[close bracket][terminate link] ";
	say "[promptlink 11][bracket]Import Progress[close bracket][terminate link] ";
	if "Unerring Hunter" is listed in feats of Player and (there is a visible dangerous door or earea of location of Player is not "void"):
		say "[promptlink 12][bracket]Enemies[close bracket][terminate link] ";
		say "[promptlink 13][bracket]Situations[close bracket][terminate link] ";
	if NewTypeInfectionActive is true:
		linkfind "ShowEncounteredEnemies";
		say "[set link hyperindex][bracket]Enemy Stats[close bracket][terminate link]";
	say "[line break]";
	say "Exits:";
	let vdirections be a list of text; [helps sort valid directions, which can't be sorted itself because it is an inbuilt inform constant.]
	repeat with vdir running through valid directions:
		add printed name of vdir to vdirections;
	say "[compasslink vdirections]";
	if location of Player is fasttravel and earea of location of Player is "void":
		say " [bracket][promptlink 14]nav[terminate link][close bracket]";
	else if location of Player is fasttravel:
		say " [bracket][promptlink 14]nav[terminate link],";
		say " [promptlink 15]scavenge[terminate link],";
		say " [promptlink 16]explore[terminate link][close bracket]";
	else if earea of location of Player is not "void":
		say " [bracket][promptlink 16]explore[terminate link][close bracket]";
	say ", Visible Things: ";
	repeat with y running through the things in the Location of Player:
		if y is a door, next;
		if y is the player:
			say "[promptlink 17][y][terminate link] ";
			next;
		linkfind "look [y]";
		say "[set link hyperindex][y][terminate link] ";
	say "[promptlink 18]area[terminate link]";
	say "[line break]> [run paragraph on]";

promptindex is a list of numbers that varies. [stores the hyperlink list index for most of the static links in the prompt menu, but not the more conditional or variable ones]
promptlinks is always {"eat food", "drink water", "use journal", "inventory", "Vial Inventory", "rest", "observe", "save", "restore", "export progress", "import progress", "huntinglist", "situationslist", "nav", "scavenge", "explore", "look me", "look"}.

to say promptlink (N - number):
	if number of entries in promptindex is not number of entries in promptlinks:
		change promptindex to have (number of entries in promptlinks) entries;
	if entry N of promptindex < 1 or entry N of promptindex > number of entries in hyperlink list:
		now entry N of promptindex is number of entries in hyperlink list;
	if hyperlink list is empty or entry (entry N of promptindex) of hyperlink list is not entry N of promptlinks: [probably the hyperlink list was recently cleared, so we need to add or find the link again, storing the new index]
		linkfind entry N of promptlinks;
		now entry N of promptindex is hyperindex;
	say "[set link entry N of promptindex]";

compassindex is a list of numbers that varies. [stores the hyperlink list index for all of the default navigation direction links]
compasslinks is always {"west", "northwest", "north", "northeast", "east", "southeast", "south", "southwest", "up", "down", "inside", "outside"}.

to say compasslink (L - list of text):
	if number of entries in compassindex is not number of entries in compasslinks:
		change compassindex to have (number of entries in compasslinks) entries;
	repeat with x running from 1 to number of entries in compasslinks:
		if entry x of compasslinks is listed in L:
			if entry x of compassindex < 1 or entry x of compassindex > number of entries in hyperlink list:
				now entry x of compassindex is number of entries in hyperlink list;
			if hyperlink list is empty or entry (entry x of compassindex) of hyperlink list is not entry x of compasslinks:
				linkfind entry x of compasslinks;
				now entry x of compassindex is hyperindex;
			say " [set link entry x of compassindex][entry x of compasslinks in title case][terminate link]";

Chapter 3 - Automatic Actions

After going:
	try looking;
	plot;
	WalkInEvent_Check;
	now inasituation is false; [cleaning up possible open ended flags]

To Plot:
	let x be the location;
	if x is unknown:
		now x is known;
		increase score by 1;
		if x is fasttravel:
			say "You feel you could [bold type]navigate[roman type] back to here easily from other such rooms.";

Chapter 4 - Display Functions

To AttemptToWait: [use where you want a wait (which might be turned off by player settings)]
	if waiterhater is 0:
		wait for any key; [waits if waiting is active]

To AttemptToClearHyper: [use where you want a clear (which might be turned off by player settings)]
	if clearnomore is 0:
		clear the screen; [clears if clearing is active]
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}; [empties hyperlink list regardless of clear status]

To AttemptToWaitBeforeClear: [use where you want a wait, which happens directly before a separate clear]
	if clearnomore plus waiterhater is not 2: [waits if either waiting or clearing is active, only skips them if both are turned off]
		wait for any key;
	if waiterhater plus hypernull is 0:
		say "[line break]"; [adds a break after the 'more']

To AttemptToWaitAndClearHyper: [use where you want a wait and clear. Much like AttemptToWaitBeforeClear, but this includes the clear as part of it]
	if clearnomore plus waiterhater is not 2: [waits if either waiting or clearing is active, only skips them if both are turned off]
		wait for any key;
		clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}. [empties hyperlink list regardless of clear status]

Chapter 5 - Text Color


To say special-style-1: [name can be changed if desired, just adjust calls to it as well]
	say first custom style;

To say special-style-2: [name can be changed if desired, just adjust calls to it as well]
	say second custom style;
[
To say alert-style: [already used for end game text]
	(- glk_set_style(style_Alert); -)
To say header-style: [already used for game title at start]
	(- glk_set_style(style_Header); -)
To say note-style: [already used for score changes]
	(- glk_set_style(style_Note); -)
To say blockquote-style:
	(- glk_set_style(style_BlockQuote); -)
To say input-style:
	(- glk_set_style(style_Input); -)
]

Table of User Styles (continued)
style name (a special-style)	justification (a text-justification)	obliquity (an obliquity)	indentation (a number)	first-line indentation (a number)	boldness (a boldness)	fixed width (a fixity)	relative size (a number)	glulx color (a glulx color value)
special-style-1	--	--	--	--	bold-weight	--	1	g-dark-green
special-style-2	--	--	--	--	bold-weight	--	1	g-medium-red

Table of Common Color Values (continued)
glulx color value	assigned number
g-pure-blue	255		[== $0000FF]
g-bright-cyan	39423		[== $0099FF]
g-dark-green	43520		[== $00CC00]
g-pure-green	65280		[== $00FF00]
g-pure-cyan	65535		[== $00FFFF]
g-dark-red	11141120		[== $AA0000]
g-medium-red	13369344		[== $CC0000]
g-peach	15645627		[== $EEBBBB]
g-pure-yellow	16776960		[== $FFFF00]
g-pure-magenta	16711935		[== $FF00FF]
g-pure-red	16711680		[== $FF0000]
[names can be changed if desired, also need to change matching name in table below. choose color in hex, then convert to decimal for assigned number.]

[
style name	justification	obliquity	indentation	first-line indentation	boldness	fixed width	relative size	glulx color
special-style-1	--	--	--	--	bold-weight	--	1	g-dark-green
special-style-2	--	--	--	--	bold-weight	--	1	g-medium-red
blockquote-style	--	--	--	--	--	--	--	--[appears to be unused]
input-style	--	--	--	--	--	--	--	--[appears to be unused]
fixed-letter-spacing-style	--	--	--	--	--	--	--	--[appears to be unused]
alert-style	--	--	--	--	--	--	--	--[also does end game text]
header-style	--	--	--	--	--	--	--	--[also does starting title]
note-style	--	--	--	--	--	--	--	--[also does scores]
italic-style	--	--	--	--	--	--	--	--[allows redefining of italic style]
bold-style	--	--	--	--	--	--	--	--[allows redefining of bold style]
[to change style: replace -- with desired change. see Glulx Text Effects.i7x for options]
[blockquote, input, and fixed letter appear to be unused. they could be redefined as desired for more colors/formating.]
[alert, header, and note are used for a few game functions. if you wanted to change those you could]
[italics and bold are currently in a variety of places. just a few italics, but bold is all over the place. be aware if you choose to change them]
]

Part 3 - Player Information Readouts

Chapter 1 - Stats

Showstatting is an action applying to nothing.

Understand "stat" as showstatting.
Understand "stats" as showstatting.

carry out showstatting:
	showstats player;

To showstats (x - Person):
	sort Feats of Player;
	sort Traits of Player;
	say "Strength: [strength of x], Dexterity: [dexterity of x], Stamina: [stamina of x], Charisma: [Charisma of x], Intelligence: [intelligence of x], Perception: [perception of x][line break]";
	say "Humanity: [humanity of the x]/100, Morale: [morale of the x], HP: [HP of x]/[MaxHP of x], Libido: [Libido of x]/100, Hunger: [hunger of x]/100, Thirst: [thirst of x]/100[line break]";
	let z be ( level of x plus one) times 10;
	if "Fast Learner" is listed in feats of x:
		now z is ( level of x plus one) times 8;
	say "Level: [level of x], XP: [XP of x]/[z]";
	if the number of entries in feats of the x > 0:
		say ", [link]Feats[as]FeatsList[end link]";
	say ", [link]Orientation[as]adjust player orientation[end link]";
	if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 0: [more than zero children of both types combined]
		say ", [link]Offspring[as]ListOffspring[end link]";
	say ", [link]Sex Stats[as]SexStats[end link]";
	LineBreak;
	if debugactive is 1:
		say "DEBUG -> Traits: [Traits of Player][line break]";
	LineBreak;

Chapter 2 - Examination People

instead of examining a person (called x):
	if x is the player:
		follow the self examine rule;
		follow the afterexamine rules;
	else:
		say "[Description of x]";
		if hypernull is 0:
			try linkactioning x;

This is the self examine rule:
	now looknow is 1;
	showstats player;
	if name of Player is not "Player":
		say "Your name is [name of Player] and you ";
	else:
		say "You ";
	if ScaleValue of Player is:
		-- 1:
			say "are quite small, about the size of a housecat.";
		-- 2:
			say "are fairly small, about half as tall as a regular human.";
		-- 3:
			say "are about as big as a regular human.";
		-- 4:
			say "are superhumanly tall.";
		-- 5:
			say "are enormous in size, a lot larger than any regular human ever could be.";
	[ Infection Descriptions Below   ]
	if Player is FullyNewTypeInfected and NewTypeInfectionActive is true: [new infection on player and activated]
		say "Pulling out a small mirror, you check yourself over from head to toe, attempting to make sense of your current form. Your head and face resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance. [if Player is HasBeard]You have a [Hair Color of Player] [Beard Style of Player]. [end if][if Player is HasHeadHair]On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style. [end if]Inspecting your [Mouth Length Adjective of Player] mouth with both the mirror and your digits, you attempt to look past your [Tongue Length of Player] inch long, [Tongue Color of Player], [Tongue Adjective of Player] tongue and into your [Mouth Length Adjective of Player] throat. [if Player is HasHeadAdornments]Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress. [end if][line break]";
	else: [old infection]
		say "Your face is [Face of Player]. ";
	if Player is not FullyNewTypeInfected: [old infection]
		say "Looking at yourself, your body is covered in [Skin of Player] skin. ";
	if Player is FullyNewTypeInfected and NewTypeInfectionActive is true: [new infection on player and activated]
		say "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]. Your [Limbs Adjective of Player] arms are [Arms Description of Player]";
		if Arms Skin Adjective of Player is "":
			say "[if Body Hair Length of Player > 1], covered in [Arms Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Arms Color of Player] skin[end if]";
		say ". [if Player is HasBackAdornments]Your back tickles with the feeling of movement caused by [Back Adornments of Player]. [end if]";
		follow the breast descr rule;
		if Nipple Count of Player > 0:
			if Breast Size of Player is 0:
				say "Finally your attention is brought to your [Pecs Firmness Adjective of Player], [Pecs Size Adjective of Player] pecs. You have [Nipple Count of Player] [Nipple Color of Player], [Nipple Shape of Player] nipples on your [Body Adjective of Player], [Torso Adjective of Player] chest. ";
			else:
				if Nipple Count of Player > 2:
					say "Finally your attention is brought to your cleavage. You have [Nipple Count of Player] breasts on your [Body Adjective of Player], [Torso Adjective of Player] chest. Each one has [Nipple Color of Player], [Nipple Shape of Player] nipples resting at their center. The first pair looks [Breast Adjective of Player] and curves out, making it so you could easily fill a [Breast Size Description of Player]. The second pair is slightly smaller, going down a cup size. ";
				if Nipple Count of Player > 4, say "The rest of your breasts keep going down by around a cup size at least the lower they go. ";
		else:
			say "You have two breasts on your [Torso Adjective of Player] chest, curving out making it so you could easily fill a [Breast Size Description of Player]. Each one has a [Nipple Color of Player] [Nipple Shape of Player] resting at their center. ";
		say "[if Player is HasTorsoAdornments]As you continue to inspect yourself, your hand rubs across your lower stomach. You take a moment to feel your [Torso Adornments of Player]. [end if]";
	else: [old infection]
		say "Your body is [Body of Player]. ";
		follow the breast descr rule;
		if Nipple Count of Player > 0:
			if Breast Size of Player is 0:
				say "You have [Nipple Count of Player] nipples on your [Bodydesc of Player] chest. ";
			else:
				if Nipple Count of Player > 2:
					say "You have [Nipple Count of Player] breasts on your [Bodydesc of Player] chest. The first pair looks [descr] and curves out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. The second pair curves out [(Breast Size of Player times three) divided by five] inch[if ( Breast Size of Player times three ) divided by 5 is not 1]es[end if] from your chest. ";
					if Nipple Count of Player > 4, say "The rest jostle for space [Breast Size of Player divided by three] inch[if Breast Size of Player divided by 3 is not 1]es[end if] from your belly. ";
				else:
					say "You have two [descr] breasts on your [Bodydesc of Player] chest, curving out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. ";
	if Player is FullyNewTypeInfected and NewTypeInfectionActive is true: [new infection on player and activated]
		say "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]";
		if Ass Skin Adjective of Player is "":
			say "[if Body Hair Length of Player > 1], covered in [Ass Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Ass Color of Player] skin[end if]";
		say ". With a single finger you check out your [Asshole Color of Player] hole, finding it to be [Asshole Tightness Adjective of Player]. ";
		say "[if Player is HasTail]Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee. [end if]";
		say "As your inspection goes even lower, you come to the [if Player is bipedal]two [Limbs Adjective of Player] legs supporting you. They are [else if Player is quadrupedal]four [Limbs Adjective of Player] legs supporting you. They are [else if Player is octapedal]eight [Limbs Adjective of Player] legs supporting you. They are [else if Player is serpentine]long slithering tail supporting you. It is [else if Player is sliding]gelatinous mass supporting you. It is [end if][Legs Description of Player]";
		if Legs Skin Adjective of Player is "":
			say "[if Body Hair Length of Player > 1], covered in [Legs Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Legs Color of Player] skin[end if]";
		say ".";
	else: [old infection]
		if tail of Player is empty:
			say "";
		else:
			say "[tail of Player] ";
	[Pregnancy Descriptions below]
	if child is not born and gestation of child > 0:
		if gestation of child < 10:
			now looknow is 0;
			say "Your [Torso Adjective of Player] swollen belly looks ready to spill forth life at any moment. ";
			now looknow is 1;
		else if gestation of child < 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child. ";
		else if gestation of child < 30:
			say "You feel a soft subtle glow somewhere in your belly. ";
	else if heat enabled is true:
		if inheat is true:
			say "You also feel [if heatlevel is 3]an intense[else]a[end if] need to be on the receiving end of a good, hard fuck because of your presently heated state. ";
		else if heatlevel is 1 and player is impreg_able and CockName of Player is not "Human":
			say "You are thankfully spared some undo sexual yearning because you've prevented your tainted womb from going into heat. ";
		else if heatlevel is 3 and player is impreg_able and CockName of Player is not "Human":
			say "Your tainted womb is not troubling you unduly at the moment, though you're unsure when your next intensified heat may strike you. ";
	if "Angie's Mate" is listed in feats of Player:
		say "Thin lines of healed claw-marks run down your back, marking you as Angie's mate. ";
	if "Boghrim's Mark" is listed in feats of Player:
		say "Two small scars from Boghrim's tusks mark your shoulder, a reminder of the first time the big orc fucked you. ";
	if "Top Dog" is listed in feats of Player:
		say "Your back still bears the scars left by Alexandra's claws during a bout of intense mating, a reminder of your dominance over her and your status as 'Top Dog'. ";
	if "Marked - Fang" is listed in Traits of Player:
		say "Your neck bears the tooth-marks from when Fang became your alpha, marking you as a member of his pack and family. ";
	[ ^^ Infection Descriptions Done ]
	let cocktext be "";
	if Cock Description of Player is not "" and NewTypeInfectionActive is true: [new infection on player and activated] [new parts]
		follow the cock descr rule;
		if Player is male:
			if Cock Count of Player > 1:
				now cocktext is "have [Cock Count of Player] [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [one of]cocks[or]penises[or]shafts[or]manhoods[at random] that [cock Description of Player]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internalBalls]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [if ball count of Player is 1]a single[else if ball count of Player is 2][one of]a pair of[or]a set of[at random][else if ball count of Player is 4]a grouping of four[end if] [Ball Size Adjective of Player] [if Player is internalBalls and ball count of Player > 1]internal balls. [else if Player is internalBalls]internal ball. [else][Ball Description of Player]. [end if]";
			else:
				now cocktext is "have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internalBalls]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [if Ball Count of Player is 1]a single[else if Ball Count of Player is 2][one of]a pair of[or]a set of[at random][else if Ball Count of Player is 4]a grouping of four[end if] [Ball Size Adjective of Player] [if Player is internalBalls and ball count of Player > 1]internal balls. [else if Player is internalBalls]internal ball. [else][Ball Description of Player]. [end if]";
	else: [old style]
		follow the cock descr rule;
		if Player is male:
			if Cock Count of Player > 1:
				now cocktext is "have [Cock Count of Player] [Cock Size Desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internalBalls]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] balls. ";
			else:
				now cocktext is "have a [Cock Size Desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internalBalls]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] balls. ";
	let cunttext be "";
	if Cunt Description of Player is not "" and NewTypeInfectionActive is true: [new infection on player and activated]
		follow the cunt descr rule;
		if Player is female:
			if Cunt Count of Player > 1:
				now cunttext is "have [Cunt Count of Player] [Cunt Tightness Adjective of Player] [one of]cunts[or]pussies[or]vaginas[at random] that are [Cunt Description of Player]. Further probing shows them to be [Cunt Depth of Player] inches deep and [Cunt Tightness Adjective of Player]. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. You have a [Clit Size Adjective of Player] clitoris that is extremely sensitive. ";
			else:
				now cunttext is "have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]. Further probing shows it to be [Cunt Depth of Player] inches deep and [Cunt Tightness Adjective of Player]. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. You have a [Clit Size Adjective of Player] clitoris that is extremely sensitive. ";
	else: [old style]
		let cunttext be "";
		follow the cunt descr rule;
		if Player is female:
			if Cunt Count of Player > 1:
				now cunttext is "have [Cunt Count of Player] [Cunt Size Desc of Player] [one of]cunts[or]pussies[or]vaginas[at random]. Further probing shows them to be [Cunt Depth of Player] inches deep and able to stretch to about [Cunt Tightness of Player] inches in diameter. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
			else:
				now cunttext is "have a [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that looks [Cunt Size Desc of Player], and further probing shows it to be [Cunt Depth of Player] inches deep and able to stretch to [Cunt Tightness of Player] inches in diameter. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
	[displaying the texts]
	if cocktext is not "":
		if cunttext is "":
			say "A private peek shows that you [cocktext]";
		else:
			say "A private peek shows that you [cocktext]";
			say "Also, you [cunttext]";
	else if cunttext is not "":
		say "You [cunttext]";
[ ^^ Genital Descriptions Done ]
	[ Equipment Descriptions Below ]
	say "[paragraph break]";
	let slots be {"head", "eyes", "face", "neck", "body", "back", "chest", "breast", "arms", "hands", "legs", "waist", "crotch", "feet"};
	let ChestVisible be true;
	let CrotchVisible be true;
	let Barefoot be true;
	repeat with equipslot running through slots:
		if equipslot is "arms" and ChestVisible is true: [no outfit, shirt, or bra, so the actual chest is visible]
			say "Naked from the waist up, your [BodyName of Player in lower case] [if Breast Size of Player > 0]breasts are[else]chest is[end if] on full display. ";
		else if equipslot is "feet" and CrotchVisible is true: [no pants or undies, so the actual crotch is visible]
			say "Your [BodyName of Player in lower case] waist and legs are [if ChestVisible is true]also [end if]bare-ass naked, exposing your privates for everyone to see. ";
		repeat with x running through equipped owned equipment:
			if slot of x is equipslot and (placement of x is "body" or placement of x is "head" or placement of x is "neck"):
				if equipslot is "body" or equipslot is "back" or equipslot is "chest":
					now ChestVisible is false;
				else if equipslot is "breast":
					if ChestVisible is false:
						break;
					now ChestVisible is false;
				else if equipslot is "legs" or equipslot is "waist":
					now CrotchVisible is false;
				else if equipslot is "crotch":
					if CrotchVisible is false:
						break;
					now CrotchVisible is false; [no pants, so undies might be visible]
				else if equipslot is "feet":
					now Barefoot is false;
				if descmod of x is not "":
					say "[descmod of x] ";
				break;
	if Barefoot is true:
		say "You are barefoot right now. ";
	if weapon object of Player is not journal:
		say "[line break]You are carrying [a printed name of weapon object of Player] just in case of trouble. ";
		if weapon object of Player is unwieldy:
			say "Due to its comparatively [if scalevalue of Player > objsize of weapon object of Player]small[else]big[end if] size, it is [if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) > 3]very unwieldy[else if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) is 3]rather unwieldy[else]somewhat unwieldy[end if] for you to use at the moment. ";
	repeat with x running through equipped owned equipment:
		if slot of x is "shield" and placement of x is "shield":
			if descmod of x is not "":
				if weapon object of Player is journal:
					LineBreak;
				say "[descmod of x] ";
			break;
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "end":
			say "[descmod of x] ";
	[ ^^ Eqipment Descriptions Done ]
	LineBreak;
	if the player is not lonely:
		say "[line break]Accompanying you [if number of entries in CompanionList of Player is 1]is[else]are[end if] ";
		repeat with x running from 1 to number of entries in CompanionList of Player:
			say "[if x > 1 and x is number of entries in CompanionList of Player]and [end if][link][entry x of CompanionList of Player][as]look [entry x of CompanionList of Player][end link], who is level [level of (entry x of CompanionList of Player)][if x < number of entries in CompanionList of Player], [else]. [end if]";
	LineBreak;
	now looknow is 0;
	rule succeeds;

ListFollowingChildren is an action applying to nothing.
understand "ListFollowingChildren" as ListFollowingChildren.
understand "List Following Children" as ListFollowingChildren.
understand "List Offspring" as ListFollowingChildren.
understand "ListOffspring" as ListFollowingChildren.

carry out ListFollowingChildren:
	if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) is 0: [no children following]
		say "You do not have any offspring trailing after you.";
		stop the action;
	else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 1: [more than one child of both types combined]
		say "Trailing behind come your children:[line break]";
	else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) is 1: [exactly one child]
		say "Trailing behind comes your child:[line break]";
	if the number of entries in childrenfaces > 0: [player has old style children]
		if the number of entries in childrenfaces is 1:
			if ( entry 1 of childrenskins is not entry 1 of childrenbodies ) or ( entry 1 of childrenskins is not entry 1 of childrenfaces ):
				say "Your child has a [entry 1 of childrenfaces] face, and a [entry 1 of childrenbodies] body covered in [entry 1 of childrenskins] skin.";
			else:
				say "Your child is a pureblood [entry 1 of childrenfaces].";
			say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
		else:
			repeat with x running from 1 to number of entries in childrenfaces:
				if ( entry x of childrenskins is not entry x of childrenbodies ) or ( entry x of childrenskins is not entry x of childrenfaces ):
					say "One has a [entry x of childrenfaces] face, and a [entry x of childrenbodies] body covered in [entry x of childrenskins] skin.";
				else:
					say "One is a pureblood [entry x of childrenfaces].";
			say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	[new style children]
	if number of filled rows in Table of PlayerChildren > 0: [player has new style children]
		repeat through Table of PlayerChildren:
			let Childage be ((Birthturn entry - turns ) divided by 8);
			if Gender entry is "male":
				SetMalePronouns for Offspring;
			else if Gender entry is "female":
				SetFemalePronouns for Offspring;
			else:
				SetNeutralPronouns for Offspring;
			if Pureblood entry is false:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " has [a Head entry in lower case] head, [Torso entry in lower case] front and [Back entry in lower case] back. ";
				if ShowLegs entry is true:
					say "[SubjectProCap of Offspring] [if Offspring is NProN]have[else]has[end if] [Arms entry in lower case] arms, [Legs entry in lower case] legs[if ShowTail entry is false] and [a Ass entry in lower case] behind[else], [a Ass entry in lower case] behind and [a Tail entry in lower case] tail[end if]. ";
				else:
					say "[SubjectProCap of Offspring] [if Offspring is NProN]have[else]has[end if] [Arms entry in lower case] arms[if ShowTail entry is false] and [a Ass entry in lower case] behind[else], [a Ass entry in lower case] behind and [a Tail entry in lower case] tail[end if]. ";
			else:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " is a pureblood [Head entry in lower case]. ";
			if Albino entry is true:
				say "[bold type][PosAdjCap of Offspring] pigmentation is muted and almost white, except for the eyes that appear red.[roman type][line break]";
			else if Melanism entry is true:
				say "[bold type][PosAdjCap of Offspring] pigmentation is almost pure black.[roman type][line break]";
			say "You have [a PlayerRelationship entry] relationship with [ObjectPro of Offspring], and [PosAdj of Offspring] personality is rather [Personality entry].";
	if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 1: [more than one child of both types combined]
		say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) is 1: [exactly one child]
		say "[SubjectProCap of Offspring] look[if Offspring is not NProN]s[end if] as alert and human as you are, taking after you eagerly. Despite [PosAdj of Offspring] age, [SubjectPro of Offspring] [if Offspring is NProN]have[else]has[end if] already grown to young adult stature, both physically and in apparent emotional and mental development.";

Chapter 3 - Linkaction

Afterexamine rules is a rulebook.

linkactioning is an action applying to one thing.

understand "linkaction [person]" as linkactioning.

carry out linkactioning:
	linkaction noun;

[NOTE: For characters w/different action options, use a 'instead of linkactioning <name>' clause.]
to linkaction (x - Person):
	now linkcheck is x;
	say "[linkaction of x]";

linkcheck is a person that varies.[@Tag:NotSaved]
The linkaction of a person is usually "Possible Actions: [if number of entries of conversation of linkcheck > 0][link]talk[as]talk [linkcheck][end link], [end if][link]smell[as]smell [linkcheck][end link][PetdismissCheck linkcheck], [link]fuck[as]fuck [linkcheck][end link][line break]";

to say PetdismissCheck (linkcheck - a person):
	if number of entries in companionList of Player is greater than 0:
		let linkname be "";
		now linkname is printed name of linkcheck;
		repeat with companion running through companionList of Player:
			if printed name of companion exactly matches the text linkname, case insensitively:
				say ", [link]dismiss[as]dismiss [linkcheck][end link]";

instead of linkactioning Doctor Matt when HP of Doctor Matt > 0:
	say "Possible Actions: [link]talk[as]talk Doctor Matt[end link], [link]smell[as]smell Doctor Matt[end link], [link]fuck[as]fuck Doctor Matt[end link], [link]volunteer[end link][line break]";

Chapter 4 - Player Input

To get a number:
	get typed command as playerinput;
	numberfy playerinput;

to numberfy (x - a snippet):
	change the text of the player's command to x;
	if the player's command matches "[number]":
		now calcnumber is the number understood;
	else:
		now calcnumber is -1;

Game UI ends here.
