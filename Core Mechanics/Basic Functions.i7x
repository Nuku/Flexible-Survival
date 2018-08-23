Version 1 of Basic Functions by Core Mechanics begins here.
[Version 1 - Pulled Together into its own file]
"Basic Functions of the Flexible Survival game"

To change the current menu to (X - table name):
	now the current menu is x;

to clear the screen and hyperlink list:
	clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {};
[This must remain whole or errors from cleared hyperlinks can occur!]

To say row of (N - number) spaces: (- spaces {N}; -).

To decide what indexed text is (orig - text) formatted to (len - number) characters:
	let T be an indexed text;
	now T is orig;
	let N be the number of characters in T;
	if N < len:
		repeat with Z running from 1 to len - N:
			now T is "[T] ";
	else if N > len:
		replace the regular expression ".{[N - len]}$" in T with "";
	decide on T.

To keypause:
	(- KeyPause(); -)

To say a/an (T - text):
	let Txt be indexed text;
	let Txt be T;
	if Txt matches the regular expression "^<aeiouAEIOU>":
		say "an ";
	else:
		say "a ";
	say T.

Instead of sniffing something (called x):
	if the scent of x is empty:
		say "It smells pretty normal for a/an [x].";
	else:
		say "[scent of x][line break]";

To wait for any key:
	if hypernull is 0:
		say "[link]more[as] [end link][run paragraph on][line break]";
	keypause;
	if hypernull is 0:
		LineBreak;

to say WaitLineBreak: [little bit of often used code]
	if waiterhater is 0: [skips waiting if it's not wanted]
		wait for any key;
		if hypernull is 0, LineBreak; [adds a break after the 'more']
	else:
		LineBreak; [people who don't want to wait at least get a break]

to WaitLineBreak: [little bit of often used code]
	if waiterhater is 0: [skips waiting if it's not wanted]
		wait for any key;
		if hypernull is 0, LineBreak; [adds a break after the 'more']
	else:
		LineBreak; [people who don't want to wait at least get a break]

to LineBreak:
	say "[line break]";

to HungerReset:
	LineBreak;
	say "[bold type]Your hunger is gone![roman type][line break]";
	now hunger of player is 0;

to PlayerEat (N - number):
	LineBreak;
	say "[bold type]Your hunger is reduced by [N]![roman type][line break]";
	decrease hunger of player by N;
	if hunger of player < 0:
		now hunger of player is 0;

to PlayerHunger (N - number):
	LineBreak;
	say "[bold type]Your hunger has increased by [N]![roman type][line break]";
	decrease hunger of player by N;
	if hunger of player < 0:
		now hunger of player is 0;

to ThirstReset:
	LineBreak;
	say "[bold type]Your thirst is gone![roman type][line break]";
	now thirst of player is 0;

to PlayerDrink (N - number):
	LineBreak;
	say "[bold type]Your thirst is reduced by [N]![roman type][line break]";
	decrease thirst of player by N;
	if thirst of player < 0:
		now thirst of player is 0;

to PlayerThirst (N - number):
	LineBreak;
	say "[bold type]Your thirst has increased by [N]![roman type][line break]";
	increase thirst of player by N;

to PlayerMaxHeal:
	LineBreak;
	say "[bold type]Your hitpoints are completely restored![roman type][line break]";
	now HP of player is maxHP of player;

to PlayerHealed (N - number):
	LineBreak;
	say "[bold type]Your hitpoints increase by [N]![roman type][line break]";
	increase HP of player by N;
	if HP of player > maxHP of player:
		now HP of player is maxHP of player;

to PlayerWounded (N - number): [wounded, not killed - this won't kill a player]
	LineBreak;
	say "[bold type]Your hitpoints are reduced by [N]![roman type][line break]";
	decrease HP of player by N;
	if HP of player < 0:
		now HP of player is 0;

to SanLoss (N - number):
	LineBreak;
	say "[bold type]Your sanity has decreased by [N]![roman type][line break]";
	decrease humanity of player by N;

to SanBoost (N - number):
	LineBreak;
	say "[bold type]Your sanity has increased by [N]![roman type][line break]";
	increase humanity of player by N;
	if humanity of player > 100:
		now humanity of player is 100;

to SanReset:
	LineBreak;
	say "[bold type]Your sanity is completely restored![roman type][line break]";
	now humanity of player is 100;

to LibidoLoss (N - number):
	LineBreak;
	say "[bold type]Your libido has decreased by [N]![roman type][line break]";
	decrease libido of player by N;
	if libido of player < 0:
		now libido of player is 0;

to LibidoBoost (N - number):
	LineBreak;
	say "[bold type]Your libido has increased by [N]![roman type][line break]";
	increase libido of player by N;
	if libido of player > 100:
		now libido of player is 100;

to LibidoReset:
	LineBreak;
	say "[bold type]Your libido is completely gone![roman type][line break]";
	now libido of player is 0;

to ScoreLoss (N - number):
	LineBreak;
	say "[bold type]Your score has decreased by [N]![roman type][line break]";
	decrease the score by N;

to ScoreGain (N - number):
	LineBreak;
	say "[bold type]Your score has increased by [N]![roman type][line break]";
	increase the score by N;

to CreditLoss (N - number):
	LineBreak;
	say "[bold type][N] freecred [if N is 1]has[else]have[end if] been deducted from your Zephyr account![roman type][line break]";
	decrease freecred by N;

to CreditGain (N - number):
	LineBreak;
	say "[bold type][N] freecred [if N is 1]has[else]have[end if] been added to your Zephyr account![roman type][line break]";
	increase freecred by N;

to FeatLoss (Featname - text):
	LineBreak;
	if Featname is listed in feats of player:
		say "[bold type][Featname] has been removed from your feats![roman type][line break]";
		remove Featname from feats of player;
	else if debugactive is 1:
		say "ERROR: Trying to remove [Featname], which the player does not have.";

to FeatGain (Featname - text):
	LineBreak;
	if Featname is not listed in feats of player:
		say "[bold type][Featname] has been added to your feats![roman type][line break]";
		add Featname to feats of player;
		sort feats of player;
	else if debugactive is 1:
		say "ERROR: Trying to add [Featname], which the player already has.";

to MoraleLoss (N - number):
	LineBreak;
	say "[bold type]Your morale has decreased by [N]![roman type][line break]";
	decrease morale of player by N;

to MoraleBoost (N - number):
	LineBreak;
	say "[bold type]Your morale has increased by [N]![roman type][line break]";
	increase morale of player by N;
	if humanity of player > 100:
		now morale of player is 100;


to StatChange (Statname - a text) using (Value - a number):
	if Value is 0:
		say "ERROR: You just got a 0 point stat change. Please report on the FS Discord how you saw this.";
	now Statname is Statname in lower case;
	say "[bold type]Your [statname] has [if Value > 0]in[else]de[end if]creased by [value]![roman type][line break]";
	if Statname is:
		-- "strength":
			increase strength of player by Value;
		-- "dexterity":
			increase dexterity of player by Value;
		-- "stamina":
			increase stamina of player by Value;
		-- "charisma":
			increase charisma of player by Value;
		-- "intelligence":
			increase intelligence of player by Value;
		-- "perception":
			increase perception of player by Value;
[
understand "teststatgain" as StatGainAction.

StatGainAction is an action applying to one topic.

carry out StatGainAction:
	say "StatChange 'Strength' using 2[line break]";
	StatChange "Strength" using 2;

understand "teststatloss" as StatLossAction.

StatLossAction is an action applying to one topic.

carry out StatLossAction:
	say "StatChange 'Strength' using -2[line break]";
	StatChange "Strength" using -2;
]
to say NonCombatError:
	say "ERROR! This is a noncombat creature that you should never see in a fight. Please report how you saw this on the FS Discord or Forum.";

understand "rename [text]" as PlayerRenaming.

PlayerRenaming is an action applying to one topic.

carry out PlayerRenaming:
	now name of player is the topic understood;

HighestPlayerStat is a text that varies.

to FindHighestPlayerStat:
	let CurrentStat be 0;
	if Strength of player > CurrentStat:
		now CurrentStat is Strength of player;
		now HighestPlayerStat is "strength";
	if Dexterity of player > CurrentStat:
		now CurrentStat is Dexterity of player;
		now HighestPlayerStat is "dexterity";
	if Stamina of player > CurrentStat:
		now CurrentStat is Stamina of player;
		now HighestPlayerStat is "stamina";
	if Charisma of player > CurrentStat:
		now CurrentStat is Charisma of player;
		now HighestPlayerStat is "charisma";
	if Intelligence of player > CurrentStat:
		now CurrentStat is Intelligence of player;
		now HighestPlayerStat is "intelligence";
	if Perception of player > CurrentStat:
		now CurrentStat is Perception of player;
		now HighestPlayerStat is "perception";

Section 2 - Stripping

understand "teststripcrotch" as StripCrotchAction.

StripCrotchAction is an action applying to one topic.

carry out StripCrotchAction:
	say "[StripCrotch]";

[
Example Use:
say "     Korvin [StripCrotch], then grins eagerly.";
]

to say StripCrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "strokes over your bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "pulls down your [CrotchItem] and bares your crotch";
	else if WaistItem is not journal and CrotchItem is journal:
		say "pulls down your [WaistItem] and bares your crotch";
	else if WaistItem is not journal and CrotchItem is not journal:
		say "pulls down your [Waistitem] and [CrotchItem], baring your crotch";


understand "zTSelfStripCrotch" as SSCRAction.

SSCRAction is an action applying to nothing.

carry out SSCRAction:
	say "[SelfStripCrotch]";

[
Example Use:
say "     You [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
]

to say SelfStripCrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "stroke over your bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "pull down your [CrotchItem] and bare your crotch";
	else if WaistItem is not journal and CrotchItem is journal:
		say "pull down your [WaistItem] and bare your crotch";
	else if WaistItem is not journal and CrotchItem is not journal:
		say "pull down your [Waistitem] and [CrotchItem], baring your crotch";

understand "zTSelfDressCrotch" as SDCRAction.

SDCRAction is an action applying to nothing.

carry out SDCRAction:
	say "[SelfDressCrotch]";

[
Example Use:
say "     You [SelfDressCrotch], then get ready to move out again.";
]

to say SelfDressCrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "casually stroke over your bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "collect and put your [CrotchItem] back on";
	else if WaistItem is not journal and CrotchItem is journal:
		say "collect and put your [WaistItem] back on";
	else if WaistItem is not journal and CrotchItem is not journal:
		say "collect your [CrotchItem] and [Waistitem] to put them back on";



understand "zTStripChest" as SCAction.

SCAction is an action applying to nothing.

carry out SCAction:
	say "[StripChest]";

[
Example Use:
say "     Korvin [StripChest], then grins eagerly.";
]

to say StripChest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "strokes over your bare chest";
	else if ChestItem is journal and BodyItem is not journal:
		say "pulls off your [BodyItem] and bares your chest";
	else if ChestItem is not journal and BodyItem is journal:
		say "pulls off your [ChestItem] and bares your chest";
	else if ChestItem is not journal and BodyItem is not journal:
		say "pulls off your [ChestItem] and [BodyItem], baring your chest";


understand "zTSelfStripChest" as SSCAction.

SSCAction is an action applying to nothing.

carry out SSCAction:
	say "[SelfStripChest]";

[
Example Use:
say "     You [SelfStripChest], then grin eagerly.";
]

to say SelfStripChest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "casually stroke over your bare chest";
	else if ChestItem is journal and BodyItem is not journal:
		say "pull off your [BodyItem] and bare your chest";
	else if ChestItem is not journal and BodyItem is journal:
		say "pull off your [ChestItem] and bare your chest";
	else if ChestItem is not journal and BodyItem is not journal:
		say "pull off your [ChestItem] and [BodyItem], baring your chest";


understand "zTSelfDressChest" as SDCAction.

SDCAction is an action applying to nothing.

carry out SDCAction:
	say "[SelfDressChest]";

[
Example Use:
say "     You [SelfDressChest], then get ready to move out again.";
]

to say SelfDressChest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "casually stroke over your bare chest";
	else if ChestItem is journal and BodyItem is not journal:
		say "collect and put your [BodyItem] back on";
	else if ChestItem is not journal and BodyItem is journal:
		say "collect and put your [ChestItem] back on";
	else if ChestItem is not journal and BodyItem is not journal:
		say "collect your [ChestItem] and [BodyItem] to put them back on";

To MultiInfect (x - text) repeats (repeatCount - number):
	if scenario is "Researcher" and researchbypass is 0:
		vialchance x;
		continue the action;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry exactly matches the text x, case insensitively:
			now monster is y;
			let reset be 0;
			if researchbypass is 1 and non-infectious entry is true:
				now reset is 1;
				now non-infectious entry is false;
			let repeatVar be 0;
			while repeatVar < repeatCount:
				infect;
				increase repeatVar by 1;
			if reset is 1:
				now non-infectious entry is true;
			break;

Basic Functions ends here.