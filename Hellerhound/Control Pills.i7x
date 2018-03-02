Control Pills by Hellerhound begins here.

Table of Game Objects(continued)
name	desc	weight	object
"birth control pill"	"A small red pill, supposed to prevent accidental conception. It says 'lasts for 30 days', but with the nanites around, it's probably more like 3..."	1	birth control pill
"fertile pill"	"A small blue pill, with the words 'Fertile 9h' on it. You've never seen the like before."	1	fertile pill



birth control pill is a grab object. It is a part of the player. The usedesc of birth control pill is "You pop the pill into your mouth, and swallow.[controlpilluse]".
fertile pill is a grab object. It is a part of the player. The usedesc of fertile pill is "You pop the odd pill into your mouth, and swallow.[fertilepilluse]".

[
the scent of birth control pill is "".
the scent of fertile pill is "".
]


understand "Control" and "Birth" and "Pill" as birth control pill.
understand "Fertile" and "Pill" as fertile pill.


fertiletime is a number that varies.
wasfertilef is a number that varies.
wassterilef is a number that varies.

to say fertilepilluse:
	increase fertiletime by 9;
	if child is not born and gestation of child > 0:
		decrease the gestation of child by 4;
		say "Your pregnant belly feels odd as it expands quickly. Looks like the child will be coming a little sooner.";
	if inheat is true:[extend heat]
		decrease turns in heat by 8;
		say "Your cunt seems to be getting even wetter, and the heat more intense. Looks like it'll last a bit longer now.";
	if "Fertile" is listed in the feats of the player:
		now wasfertile is 1;
		remove "Fertile" from the feats of the player;
	else:
		now wasfertile is 0;
	if "Sterile" is listed in the feats of the player:
		now wassterile is 1;
		remove "Sterile" from the feats of the player;
	else:
		now wassterile is 0;
	add "Fertile" to the feats of the player;


steriletime is a number that varies.
wasfertile is a number that varies.
wassterile is a number that varies.

to say controlpilluse:
	increase steriletime by 24;
	if child is not born and gestation of child > 0:
		now child is born;
		now gestation of child is 0;
		say "Your pregnant belly feels odd, and something slushes out of your hole, melting into mush. Looks like the pill aborted you. You feel lighter as your belly shrinks back to its original size.";
	if inheat is True:
		now inheat is false;
		say "Your heat ends abruptly.";
	if "Fertile" is listed in the feats of the player:
		now wasfertile is 1;
		remove "Fertile" from the feats of the player;
	else:
		now wasfertile is 0;
	if "Sterile" is listed in the feats of the player:
		now wassterile is 1;
		remove "Sterile" from the feats of the player;
	else:
		now wassterile is 0;
	add "Sterile" to the feats of the player;

an everyturn rule:
	if steriletime > 0:
		decrease steriletime by 3;
		if steriletime > 0:
			say "You feel odd, the nanites fighting your birth control.";
		else:
			say "Your odd feeling goes away, and you realize that you are no longer protected by the pill.";
			if wassterile is 0:
				remove "Sterile" from the feats of the player;
			if wasfertile is 1:
				add "Fertile" to the feats of the player;
	if fertiletime > 0:
		decrease fertiletime by 3;
		if fertiletime > 0:
			say "You feel ready for a mate, and a mental pressure urging for sex distracts you.";
			if the libido of the player < 96:
				increase the libido of the player by 5;
		else:
			say "Your mating desire fades, and you realize the fertility pill has worn off.";
			if wassterile is 1:
				add "Sterile" to the feats of the player;
			if wasfertile is 0:
				remove "Fertile" from the feats of the player;



the invent of Porn Store is {"birth control pill", "fertile pill"}.


Control Pills ends here.
