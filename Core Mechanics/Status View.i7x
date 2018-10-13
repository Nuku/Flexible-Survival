Version 1 of Status View by Core Mechanics begins here.
[Written by Speedlover]

StatusSay is an action applying to nothing.
understand "look status" as StatusSay.
understand "look at status" as StatusSay.
understand "view status" as StatusSay.
understand "check status" as StatusSay.

carry out StatusSay:
	repeat through Table of Fancy Status: [Fancy status table defined in story.ni]
		say "     [left entry]          [central entry]          [right entry]";
		LineBreak;

[Ideal display:
Location: Bunker			Time: Pre dawn					HP: 29/29
Freecred: 0					Hunger: 0 Thirst: 0				Score: 10/2500
Sanity: 100/100				Evac: 30 days					XP: 0/10]

Status View ends here.
