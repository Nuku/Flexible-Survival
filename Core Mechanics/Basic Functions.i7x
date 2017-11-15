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

to say NonCombatError:
	say "ERROR! This is a noncombat creature that you should never see in a fight. Please report how you saw this on the FS Discord or Forum.";

Basic Functions ends here.
