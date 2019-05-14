Version 1 of Assorted Items by Stripes begins here.
[ Version 1.0 - Libido pills ]

"A holding file for some unassigned drop items and other such stuff."


Section 1 - Nullo Wafers

[ - Project discarded, replaced by BlueBishop's nullification powder - ]

Section 2 - Libido Pill

Table of Game Objects (continued)
name	desc	weight	object
"libido pill"	"A sex-enhancement pill for getting you (or someone else) horny."	0	libido pill

libido pill is a grab object. It is temporary. It is a part of the player.

the usedesc of libido pill is "[libido pill use]".

to say libido pill use:
	say "[line break]     You pop the sex drug into your mouth and swallow it. There's a slight medicinal taste to it, but you forget that as it quickly gets to work. Soon you're feeling hot and aroused, your libido climbing rapidly.";
	increase Libido of Player by 15;
	increase Libido of Player by a random number between 1 and 9;
	decrease humanity of Player by a random number between 1 and 3;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 3;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 3;
	if Libido of Player > 100, now Libido of Player is 100;
	now heatdrive is 1;
	drive heat;

pillgiving is an action applying to one visible thing.

understand "libpill [visible person]" as pillgiving.
understand "libidopill [visible person]" as pillgiving.
understand "libpill" as libido pill.

check pillgiving someone (called x):
	if libido pill is not owned:
		say "It'd be easier to do that if you even had one.";
	else if x is Trixie:
		say "     'Silly, that's not going to work on me. I'm not really here at all,' she says in a wavering voice while waving her arms around mystically. 'OooOOooOOOOooo!'" instead;
	else if x is Velos:
		say "     'Umm... I don't think that'll work on me, given my current state. Besides, I'm kind of disturbed that you'd even offer it to me.'" instead;
	else if x is Doctor Matt:
		say "     Doctor Matt looks suspiciously at the pill you offer him. He takes a few steps towards the back wall of the room, hovering his hand over the intercom. 'You can't expect me to open my suit and take such a thing? You're not going feral on me, are you? Control yourself, or I'll have to call Orthas!'";
	else if x is Elijah and HP of Elijah < 4:
		say "     Now is probably not a good time for that.";
	else if x is Anastasia and HP of Anastasia < 5:
		say "     Now is probably not a good time for that.";
	else if x is Solstice and HP of Solstice < 5:
		say "     Now is probably not a good time for that.";
	else if x is Kristen and HP of Kristen > 10 and HP of Kristen < 16:
		say "     Now is probably not a good time for that.";
	else if x is Onyx and HP of Onyx is 9:
		say "     Now is probably not a good time for that.";
	else if x is Rod Mallrat and HP of Ronda < 100:
		say "     Rod has no interest in taking those or trading for them.";
	[character specific restrictions, such as when the <lastfuck of x> variable is used for other things, would go here.]
	else if x is a pet:
		if x is not tamed:
			say "Who?" instead;
		else if x is not companion of Player:
			say "I don't see them around right now. You'll have to call them over first." instead;
		else if fuckscene of x is empty:
			say "There's little point in giving a pill to them." instead;
	else if lastfuck of the x >= 255:
		say "They're not prepared to take one of those from you at this time." instead;
	else if lastfuck of the x is 254 or lastfuck of the x - turns >= 24:
		say "They're as ready as they're going to be." instead;

carry out pillgiving someone (called x):
	say "     You give the libido pill to [x], who then consumes it, their arousal and their readiness for sex increasing.";
	increase lastfuck of x by 8;
[	say "TEST: lastfuck of [x]: [lastfuck of x][line break]";]
	if lastfuck of x >= 254:
		now lastfuck of x is 254;
		say "     They're as ready as they're going to be by this point.";
	else if lastfuck of x - turns >= 24:
		say "     They're as ready as they're going to be by this point.";
	decrease carried of libido pill by 1;


when play begins:
	add { "libido pill", "libido pill" } to invent of Porn Store;
	add { "libido pill" } to invent of Entrance to the Red Light District;
	add { "libido pill" } to invent of Stables Hotel;
	add { "libido pill" } to invent of Master's Office;

Assorted Items ends here.
