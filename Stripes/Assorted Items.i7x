Version 1 of Assorted Items by Stripes begins here.
[ Version 1.0 - Libido pills ]

"A holding file for some unassigned drop items and other such stuff."


Section 1 - Nullo Wafers

[ - Project discarded for now, replaced by BlueBishop's nullification powder - ]
[
Table of Game Objects(continued)
name	desc	weight	object
"nullo wafers"	"A box of bland, dry cookies.  It's packaging proclaims [']Now with less flavour![']"	1	nullo wafers

nullo wafers is a grab object. It is temporary. It is a part of the player.

the usedesc of nullo wafers is "[nullo wafers use]";


to say nullo wafers use:
	say "     Pulling out the box of cookies, you start by planning on having just a few, but something about their bland crunchiness has you keep eating until you end up polishing off the whole box.  Maybe you were hungrier than you thought.  Your tummy gives a bit of an upset rumble and a wave of cool tingles wash through you that flows down to your loins.";
	if cunts of player > 0 and cocks of player > 0:		[HERM]
		let cockgone be false;
		let cuntgone be false;
		let cockcountdown be false;
		let cuntcountdown be false;
		decrease cock length of player by 2;
		decrease cock width of player by 1;
		decrease cunt length of player by 2;
		decrease cunt width of player by 1;
		if cock length of player >= 10:
			decrease cock length by cock length / 8;
		if cock width of player >= 10:
			decrease cock width by cock width / 8;
		if cunt length of player >= 10:
			decrease cunt length by cunt length / 8;
		if cunt width of player >= 10:
			decrease cunt width by cunt width / 8;
		if cock length of player <= 0 or cock width of player <= 0:
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
			now cockgone is true;
		if cunt length of player <= 0 or cunt width of player <= 0:
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now cuntgone is true;
		if cocks of player > 1 and a random chance of cocks of player in 5 succeeds:
			decrease cocks of player by 1;
			now cockcountdown is true;
		if cunts of player > 1 and a random chance of cunts of player in 5 succeeds:
			decrease cunts of player by 1;
			now cuntcountdown is true;
		say "     Checking on your crotch, you watch as your dual-gendered genitals start to shrink.  It is somehow a strangely arousing thing to experience and to watch";
		if cockgone is true and cuntgone is true:
			say ".  Your tiny cock and cunt shrink and shrink until, with a wet quiver, they both disappear entirely.  This leaves you completely genderless, your crotch bare but still strangely sensitive.  After a few minutes, your arousal from the unusually erotic change fades, leaving you calmer... though you now lack an outlet for release should you become sexually excited again.";
			now libido of player is libido of player / 3;
			say "[bracket]Note: A lot of game content lacks material for neuter players or will mistake them for one gender or the other. - The Mgmt[close bracket][line break]";
		otherwise if cockgone is true and cuntcountdown is true:
			say "cock gone, lost a cunt and cunt shrunk";
		otherwise if cockgone is true:
			say "cock gone, cunt shrunk";
		otherwise if cuntgone is true and cockcountdown is true:
			say "cunt gone, lost a cock and cock shrunk";
		otherwise if cuntgone is true:
			say "cunt gone, cock shrunk";
		otherwise:
			say "cock shrunk and cunt shrunk";
]

Section 2 - Libido Pill

Table of Game Objects(continued)
name	desc	weight	object
"libido pill"	"A sex-enhancement pill for getting you (or someone else) horny."	0	libido pill

libido pill is a grab object. It is temporary. It is a part of the player.

the usedesc of libido pill is "[libido pill use]".

to say libido pill use:
	say "[line break]     You pop the sex drug into your mouth and swallow it.  There's a slight medicinal taste to it, but you forget that as it quickly gets to work.  Soon you're feeling hot and aroused, your libido climbing rapidly.";
	increase libido of player by 15;
	increase libido of player by a random number between 1 and 9;
	decrease humanity of player by a random number between 1 and 3;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 3;
	if "Cold Fish" is listed in feats of player, decrease libido of player by 3;
	if libido of player > 100, now libido of player is 100;
	now heatdrive is 1;
	drive heat;

pillgiving is an action applying to one visible thing.

understand "libpill [visible person]" as pillgiving.
understand "libidopill [visible person]" as pillgiving.
understand "libpill" as libido pill.

check pillgiving someone (called x):
	if libido pill is not owned:
		say "It'd be easier to do that if you even had one.";
	otherwise if x is Trixie:
		say "     'Silly, that's not going to work on me.  I'm not really here at all,' she says in a wavering voice while waving her arms around mystically.  'OooOOooOOOOooo!'" instead;
	otherwise if x is Velos:
		say "     'Umm... I don't think that'll work on me, given my current state.  Besides, I'm kind of disturbed that you'd even offer it to me.'" instead;
	otherwise if x is Doctor Matt:
		say "     Doctor Matt looks suspiciously at the pill out offer him.  He takes a few steps towards the back wall of the room, hovering his hand over the intercom.  'You can't expect me to open my suit and take such a thing?  You're not going feral on me, are you?  Control yourself, or I'll have to call Orthas!'";
	otherwise if x is Elijah and hp of Elijah < 4:
		say "     Now is probably not a good time for that.";
	otherwise if x is Athanasia and hp of Athanasia < 5:
		say "     Now is probably not a good time for that.";
	otherwise if x is Solstice and hp of Solstice < 5:
		say "     Now is probably not a good time for that.";
	otherwise if x is Kristen and hp of Kristen > 10 and hp of Kristen < 16:
		say "     Now is probably not a good time for that.";
	otherwise if x is Onyx and hp of Onyx is 9:
		say "     Now is probably not a good time for that.";
	otherwise if x is Rod and hp of Ronda < 100:
		say "     Rod has no interest in taking those or trading for them.";
	[character specific restrictions, such as when the <lastfuck of x> variable is used for other things, would go here.]
	otherwise if x is a pet:
		if x is not tamed:
			say "Who?" instead;
		otherwise if x is not companion of player:
			say "I don't see them around right now.  You'll have to call them over first." instead;
		otherwise if fuckscene of x is empty:
			say "There's little point in giving a pill to them." instead;
	otherwise if lastfuck of the x >= 255:
		say "They're not prepared to take one of those from you at this time." instead;
	otherwise if lastfuck of the x is 254 or lastfuck of the x - turns >= 24:
		say "They're as ready as they're going to be." instead;

carry out pillgiving someone (called x):
	say "     You give the libido pill to [x], who then consumes it, their arousal and their readiness for sex increasing.";
	increase lastfuck of x by 8;
[	say "TEST: lastfuck of [x]: [lastfuck of x][line break]";	]
	if lastfuck of x >= 254:
		now lastfuck of x is 254;
		say "     They're as ready as they're going to be by this point.";
	otherwise if lastfuck of x - turns >= 24:
		say "     They're as ready as they're going to be by this point.";
	decrease carried of libido pill by 1;


when play begins:
	add { "libido pill", "libido pill" } to invent of Porn Store;
	add { "libido pill" } to invent of Entrance to the Red Light District;
	add { "libido pill" } to invent of Stables Hotel;
	add { "libido pill" } to invent of Master's Office;

Assorted Items ends here.
