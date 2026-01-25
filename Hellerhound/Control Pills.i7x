Control Pills by Hellerhound begins here.

Table of Game Objects (continued)
name	desc	weight	object
"birth control pill"	"A small red pill, supposed to prevent accidental conception. It says 'lasts for 30 days', but with the nanites around, it's probably more like 3..."	1	birth control pill
"fertile pill"	"A small blue pill, with the words 'Fertile 9h' on it. You've never seen the like before."	1	fertile pill

birth control pill is a grab object. Usedesc of birth control pill is "     You pop the pill into your mouth, and swallow.[line break][controlpilluse]".
fertile pill is a grab object. Usedesc of fertile pill is "     You pop the odd pill into your mouth, and swallow.[line break][fertilepilluse]".

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
	if child is not born and gestation of child > 0:
		decrease the gestation of child by 4;
		say "     Your pregnant belly feels odd as it expands quickly. Looks like the child will be coming a little sooner.";
	if inheat is true:[extend heat]
		decrease turns in heat by 8;
		say "     Your [if heatform is 0]cunt[else]anus[end if] seems to be getting even [if heatform is 0]wetter[else]looser[end if], and the heat more intense. Looks like it'll last a bit longer now.";
	if fertiletime is 0:
		if "Fertile" is listed in the feats of Player:
			now wasfertilef is 1;
			remove "Fertile" from the feats of Player;
		else:
			now wasfertilef is 0;
	if steriletime is 0:
		if "Sterile" is listed in the feats of Player:
			now wassterilef is 1;
			remove "Sterile" from the feats of Player;
			now Sterile of Player is false;
		else:
			now wassterilef is 0;
	increase fertiletime by 9;
	add "Fertile" to the feats of Player, if absent;

steriletime is a number that varies.
wasfertile is a number that varies.
wassterile is a number that varies.

to say controlpilluse:
	if child is not born and gestation of child > 0:
		say "     Your pregnant belly feels odd, and something slushes out of your hole, melting into mush. Looks like the pill aborted you[if gestation of child < 20]. You feel lighter as your belly shrinks back to its original size[end if].";
		now gestation of child is 0;
	if inheat is True:
		now turns in heat is 0;
		say "     Your heat ends abruptly.";
		follow the check heat rule;
	if fertiletime is 0:
		if "Fertile" is listed in the feats of Player:
			now wasfertile is 1;
			remove "Fertile" from the feats of Player;
		else:
			now wasfertile is 0;
	if steriletime is 0:
		if "Sterile" is listed in the feats of Player:
			now wassterile is 1;
			remove "Sterile" from the feats of Player;
			now Sterile of Player is false;
		else:
			now wassterile is 0;
	increase steriletime by 24;
	add "Sterile" to the feats of Player, if absent;
	now Sterile of Player is true;

an everyturn rule:
	if steriletime > 0:
		decrease steriletime by 3;
		LineBreak;
		if steriletime > 0:
			say "You feel odd, the nanites fighting your birth control.";
		else:
			say "Your odd feeling goes away, and you realize that you are no longer protected by the pill.";
			if wassterile is 0:
				remove "Sterile" from the feats of Player;
				now Sterile of Player is false;
			if wasfertile is 1:
				add "Fertile" to the feats of Player;
				now wasfertile is 0;
			now steriletime is 0;
	if fertiletime > 0:
		decrease fertiletime by 3;
		LineBreak;
		if fertiletime > 0:
			say "You feel ready for a mate, and a mental pressure urging for sex distracts you.";
			raise Player Libido by 5;
		else:
			say "Your mating desire fades, and you realize the fertility pill has worn off.";
			if wasfertilef is 0:
				remove "Fertile" from the feats of Player;
			if wassterilef is 1:
				add "Sterile" to the feats of Player;
				now Sterile of Player is true;
				now wassterilef is 1;
			now fertiletime is 0;

Control Pills ends here.
