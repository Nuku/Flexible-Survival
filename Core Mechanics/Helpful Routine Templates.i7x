Helpful Routine Templates by Core Mechanics begins here.
[NOTE: DO NOT COMPILE THIS WITH GAME. The purpose of this extension is to provide useful routine templates]
[ - Originally Made by Blue Bishop - ]

Section 1 - Basic Routines

to malemonstersex: [This is the most basic version of player loss routines for male creatures]
	if HP of player > 0:
		say "     This is an 'opener' for players who submitted, rather than lost. It's great for adjusting context, but not entirely necessary.";
	else:
		say "     This version is for player loss. Ideally, the player should act less compliant than if they had submitted.";
	if anallevel > 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
		say "     This is for anal catching. It checks to see if the player has 'less anal' first, then checks to see that the player doesn't have a better hole (or, if they do, they have 'more anal'), before rolling a 1 in 2 to see if it happens and rolling again if they have more.";
		say "     Remember to end the scene with a male pregnancy 'to say' command.[mimpregchance]";
	else if cunts of player > 0 and a random chance of 1 in 2 succeeds:
		say "     This is for cunt-particular sex. If you want to cut corners, you can use the same scene as the above, except with different references for what is penetrated. It's certainly a shortcut, but players won't mind as long as the scene is good enough on its own merits.";
		say "     One thing to be mindful of is cock-particular references in your scene. If you wrote the anal first, you might make a passing reference to player genitalia. Obviously, the female genital references have to be tweaked to account for the penetration (or partial penetration, if they have multiple), but you may want male anatomy to take priority, to further qualify hermaphrodite players.";
		say "     Similarly, end this with a standard pregnancy command.[impregchance]";
	else:
		say "     This is usually reserved for scenes where the player orally attends the monster. Really, it can be anything, so long as it doesn't require any sort of player genital configuration -- though you may references them, just be sure to have something for neuters. It's also a nice source of scene variation.";

to malebreedersex: [This is a variation of be above, for monsters who are strictly into reproduction]
	if cunts of player > 0:
		say "     Normally, you don't check female genitalia first so as to give everyone anal access, but in a strict 'breeder' build, you can get away with ignoring it.";
		say "     We generally avoid strict breeders, but this is more due to a history of male-snubbing and not anything to do with the build itself.";
		say "     You can add 'and player is impreg_able' if you only want the monster to attempt impregnation if it's possible.[impregchance]";
	else if anallevel > 1 and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds) or player is mpreg_ok):
		say "     This anal scene is guaranteed if they have 'mpreg', but otherwise adheres to standard rolls.";
		say "     If you're absolutely against m/m content, you can get away with cutting this, but it's generally ill-advised. Regardless, you MUST have the final scene option.[mimpregchance]";
	else:
		say "     A monster needs to have something for all players, even if it doesn't fall in line with their 'breeder' goal. It's easy to snub the player if they fail to meet specific criteria, but that's always frowned upon. There's nothing worse than being turned down for arbitrary reasons.";
		say "     Though less bad, it's also not a good idea to create a context of the monster 'conceding' to this scene and deliberately pointing out the 'shortcomings' of the player. There's no reason to 'point players in the right direction'; there's no progression associated with your monster; they're not a door, so you don't need to tell the player they're missing the right 'key'. In the end it just annoys players by having the writer tell them they're playing their character wrong.";

to femalemonstersex: [This is the most basic version of player loss routines for female creatures]
	if cocks of player > 0 and a random chance of 1 in 2 succeeds:
		say "     This if for cunt sex with the player pitching. You may want to consider size restriction, if your monster is particularly small.";
		say "     For 'Breeder' Variations, you simply remove the roll.";
	else:
		say "     Like males, there needs to be a scene for players which lack the necessary anatomy.";
		say "     Otherwise, females are generally 'easier' to writer for, since they normally only run two scenes, barring special gimmickry or additionally butt stuff.";

to hermmonstersex: [This is a 'robust' version of player loss routines for herm creatures]
	if anallevel > 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
		say "     Due to the dominant nature of the scenes, herms behave more or less like males, since penetrative sex is more dominant than scenes where the monster is catching.[mimpregchance]";
	else if cunts of player > 0 and a random chance of 1 in 2 succeeds:
		say "     Second verse, same as the first.[impregchance]";
	else if cocks of player > 1 and a random chance of 1 in 2 succeeds:
		say "     This is a scene with the monster catching the player's cock. If you're not into anal, you can remove that and have this instead, though having all of it is prefereable. You can, of course, cut this instead, if you don't like the idea of your monster 'power bottoming'.";
	else:
		say "     As always, you need something in case the player fails to meet all anatomy criteria.";


Section 2 - Intermediate Routines

to staticmenu: [A basic, static menu that's easily expandible, but otherwise cannot change dynamically in size]
	now calcnumber is -1;
	say "     This is a static menu with listed interactions.";
	let menuexit be 0;
	while menuexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [link]Choice 1[as]1[end link][line break]";
		LineBreak;
		say "(0) [link]Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-1)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 1:
				break;
			else:
				say "Invalid Selection.";
		if calcnumber is 1:
			if MISSING REQUIREMENTS: [An example of how you might handle pre-requisites such as anatomy or attributes]
				say "     [bracket]Invalid Interaction: You don't meet the requirements[close bracket][line break]";
			else:
				say "     You make Choice 1.";
				now menuexit is 1;
		else:
			say "     You abort.";
			now menuexit is 1;

to itemmenue: [This template is used to create a dynamic menu that goes through all player-owned items and lists them for consumption based on an attribute]
	blank out the whole of table of itemselection;
	repeat with Q running through owned TEMPLATE grab objects: [Replace TEMPLATE with an attribute held by grab objects]
		choose a blank row in table of itemselection;
		now object entry is Q;
		now holding entry is carried of Q;
		now objname entry is printed name of Q;
	if there is no object in row 1 of table of itemselection:
		say "     You lack the required object.";
	else:
		let tappeditem be pocketknife;
		if the number of filled rows in table of itemselection is 1: [If there is only one relevant item]
			choose row 1 in table of itemselection;
			now tappeditem is object entry;
			say "     Having only one relevant item, you choose [tappeditem].";
		else:
			sort table of itemselection in object order;
			say "[bold type]Choices:[roman type][line break]";
			say "[bracket]The effect is the same regardless of choice[close bracket][line break]";
			repeat with y running from 1 to number of filled rows in table of itemselection:
				choose row y from the table of itemselection;
				say "([y]) [link][objname entry][as][y][end link] [bold type]([holding entry])[roman type][line break]";
			LineBreak;
			say "(0) [link]Abort[as]0[end link][line break]";
			while tappeditem is pocketknife:
				say "Choice? (0-[number of filled rows in table of itemselection])> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= number of filled rows in table of itemselection:
					choose row calcnumber in table of itemselection;
					now tappeditem is object entry;
					say "     You choose [tappeditem].";
				else if calcnumber is 0:
					now tappeditem is journal;
		if tappeditem is not journal:
			say "     Are you sure?";
			if player consents:
				say "     You use the item.";
				delete tappeditem;


Helpful Routine Templates ends here.
