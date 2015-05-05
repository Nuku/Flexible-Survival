Version 1 of Patreon Menu by Stripes begins here.
[Version 1.1 - May 2015 ]

supersponsor is an action applying to nothing.
ssstash is a number that varies.  ssstash is usually 1.
ssgpd is a truth state that varies. ssgpd is usually false.
ssmb is a truth state that varies. ssmb is usually false.

check supersponsor:
	if Trixie is not visible, say "Only Trixie can help you with that." instead;

carry out supersponsor:
	say "     Trixie flutters in close as you whisper the password to her.  'Excellent!  This is the sponsor reward menu for our Patreon supporters.  Thanks so much for supporting us and helping the game improve.  You're super!  You're awesome!  You're wonde- Waaaaait... you better not be lying about being allowed access.  If you're trying to trick me, I'll be really pissed,' she says, sparks ringing her tiny fists as she looks you over with suspicion.";
	say "     'Alright.  I guess I can trust you.  We've got a few special fun perks for you to pick from.  A few more will show up from time to time as well.  Thanks again and enjoy!'";
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Patreon Cheats:[roman type][line break]";
		say "[if level of player < 12][link](1) Jump to lvl 12[as]1[end link] - Available[otherwise](1) Jump to lvl 12 - Inactive[end if][line break]";
		say "[link](2) Food/Drink stash[as]2[end link] - [if ssstash > 0]Available[otherwise]Empty[end if][line break]";
		say "[if ssgpd is true](3) Purple dildo club - Taken[otherwise][link](3) Purple dildo club[as]3[end link] - Available[end if][line break]";
		say "[if ssmb is true](4) Maintenance boost - Active[otherwise][link](4) Maintenance boost[as]4[end link] - Inactive[end if][line break]";
		say "[link](0) Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			otherwise:
				say "Invalid choice.  Pick from 0 to 4.";
		if calcnumber is 1:
			sslvl12;
		otherwise if calcnumber is 2:
			if ssstash > 0:
				say "     Asking Trixie about some supplies, she nods and tells you about the head librarian's secret stash.  Heading there, you open an old filing cabinet and push aside from papers to find a collection of food and drink.  'And since you've been such a nice person, you can use that an extra time for every odd level you reach.";
				say "[bold type]1 x water bottle, food, soda and chips obtained.[roman type][line break]";
				decrease ssstash by 1;
				increase carried of water bottle by 1;
				increase carried of soda by 1;
				increase carried of food by 1;
				increase carried of chips by 1;
			otherwise:
				say "     The stash is currently empty, but you'll be able to use it an additional time for every odd level you reach.";
		otherwise if calcnumber is 3:
			if ssgpd is false:
				say "     When you ask for a weapon to help you, Trixie whispers in your ear where one is hidden.  Checking there, you find a giant purple dildo.  Its handle has a good grip for swinging and it has that right mix of weight, wobble and firmness to make it both an effective and amusing club.";
				now carried of dildo club is 1;
				now ssgpd is true;
			otherwise:
				say "     You've already received this reward.";
		otherwise if calcnumber is 4:
			if ssmb is false:
				now ssmb is true;
			otherwise:
				now ssmb is false;
		otherwise:
			now trixieexit is 1;
		say "[line break]";


to sslvl12:
	if level of player >= 12:
		say "You've already reached or exceeded this boost.";
	otherwise:
		let value be 5;
		if "Fast Learner" is listed in feats of player:
			now value is 4;
		say "[bold type]You feel empowered by your support of the game.[roman type][line break]";
		now xp of player is value * 12 * 13;
		[ say "XP set to [xp of player].";	]
		decrease xp of player by value * ( level of player ) * ( level of player + 1 );
		[ say "XP decreased to [xp of player].";	]
		now value is 12 - level of player;
		[ say "Levelling up [value] times.";	]
		repeat with x running from 1 to value:
			level up;
		increase vetcheater by 1;


Table of Game Objects (continued)
name	desc	weight	object
"dildo club"	"A big, bright purple dildo.  It's about three feet long and has a handle on it for easy swinging."	5	dildo club

dildo club is an armament. It is part of the player. It has a weapon "[one of]your phallic club[or]your purple latex club[or]your dildo club with a resounding 'Wubba-!Wubba-Wubba-Thwack!' sound[or]the three-foot purple schlong[or]the floppy dildo club[or]your oversized dildo[at random]". The weapon damage of dildo club is 6. The weapon type of dildo club is "Melee". It is not temporary.  the objsize of dildo club is 4.

the scent of the dildo club is "The sex toy club smells of latex and your humiliated foes."


Patreon Menu ends here.

