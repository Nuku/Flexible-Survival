Version 1 of Basic Functions by Core Mechanics begins here.
[Version 1 - Pulled Together into its own file]
"Basic Functions of the Flexible Survival game"

To change the current menu to (X - table name):
	now the current menu is x;

to clear the screen and hyperlink list:
	clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}.
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
		say "[link]more[as] [end link][run paragraph on]";
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

to PlayerEat (N - number):
	LineBreak;
	say "[bold type]Your hunger is reduced by [N]![roman type][line break]";
	decrease hunger of player by N;
	if hunger of player < 0:
		now hunger of player is 0;

to PlayerDrink (N - number):
	LineBreak;
	say "[bold type]Your thirst is reduced by [N]![roman type][line break]";
	decrease thirst of player by N;
	if thirst of player < 0:
		now thirst of player is 0;

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

to ScoreLoss (N - number):
	LineBreak;
	say "[bold type]Your score decreases by [N]![roman type][line break]";
	increase the score by N;

to ScoreGain (N - number):
	LineBreak;
	say "[bold type]Your score rises by [N]![roman type][line break]";
	increase the score by N;

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
	let CrotchItem be a grab object;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is nothing and CrotchItem is nothing: [already naked]
		say "strokes over your bare crotch";
	else if WaistItem is nothing and CrotchItem is not nothing:
		say "pulls down your [CrotchItem] and bares your crotch";
	else if WaistItem is not nothing and CrotchItem is nothing:
		say "pulls down your [WaistItem] and bares your crotch";
	else if WaistItem is not nothing and CrotchItem is not nothing:
		say "pulls down your [Waistitem] and [CrotchItem], baring your crotch";


understand "testselfstripcrotch" as SelfStripCrotchAction.

SelfStripCrotchAction is an action applying to one topic.

carry out SelfStripCrotchAction:
	say "[SelfStripCrotch]";

[
Example Use:
say "     You [SelfStripCrotch], then wrap your hand around your [cock of player] shaft.";
]

to say SelfStripCrotch:
	let WaistItem be a grab object;
	let CrotchItem be a grab object;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is nothing and CrotchItem is nothing: [already naked]
		say "stroke over your bare crotch";
	else if WaistItem is nothing and CrotchItem is not nothing:
		say "pull down your [CrotchItem] and bare your crotch";
	else if WaistItem is not nothing and CrotchItem is nothing:
		say "pull down your [WaistItem] and bare your crotch";
	else if WaistItem is not nothing and CrotchItem is not nothing:
		say "pull down your [Waistitem] and [CrotchItem], baring your crotch";

understand "testselfdresscrotch" as SelfDressCrotchAction.

SelfDressCrotchAction is an action applying to one topic.

carry out SelfDressCrotchAction:
	say "[SelfDressCrotch]";

[
Example Use:
say "     You [SelfDressCrotch], then get ready to move out again.";
]

to say SelfDressCrotch:
	let WaistItem be a grab object;
	let CrotchItem be a grab object;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is nothing and CrotchItem is nothing: [already naked]
		say "casually stroke over your bare crotch";
	else if WaistItem is nothing and CrotchItem is not nothing:
		say "collect and put your [CrotchItem] back on";
	else if WaistItem is not nothing and CrotchItem is nothing:
		say "collect and put your [WaistItem] back on";
	else if WaistItem is not nothing and CrotchItem is not nothing:
		say "collect your [CrotchItem] and [Waistitem] to put them back on";



understand "teststripchest" as StripChestAction.

StripChestAction is an action applying to one topic.

carry out StripChestAction:
	say "[StripChest]";

[
Example Use:
say "     Korvin [StripChest], then grins eagerly.";
]

to say StripChest:
	let ChestItem be a grab object;
	let BodyItem be a grab object;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is nothing and BodyItem is nothing: [already naked]
		say "strokes over your bare chest";
	else if ChestItem is nothing and BodyItem is not nothing:
		say "pulls off your [ChestItem] and bares your chest";
	else if ChestItem is not nothing and BodyItem is nothing:
		say "pulls off your [ChestItem] and bares your chest";
	else if ChestItem is not nothing and BodyItem is not nothing:
		say "pulls off your [ChestItem] and [BodyItem], baring your chest";

Basic Functions ends here.
