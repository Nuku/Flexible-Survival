Giving in by Core Mechanics begins here.
[request by The Dark Master]
[- Originally Authored By: Hellerhound -]

Table of Basic Help Options (continued)
title	description
"Giving In"	"Want to give in to the changes? Type [bold type]givein[roman type] and your character will surrender to the nanites. Make sure there is no space. Type it again to attempt to regain control."

givingup is an action applying to nothing.
understand "givein" as givingup.
understand "givein to nanites" as givingup.
understand "givein to changes" as givingup.

check givingup:
	if the humanity of Player > 99:
		say "To what? There is nothing to take control if you do.";
		stop the action;

givingupton is a number that varies.

carry out givingup:
	if givingupton is 0:
		say "Your mind begins to release its grasp on humanity, but your instincts refuse to give up immediately.";
		now givingupton is 1;
		now quitter is 1;
	else:
		say "Do you want to take control of your desires again, or not?";
		if Player consents:
			say "You pull your mind back together.";
			now givingupton is 0;
			now quitter is 0;
		else:
			now givingupton is 1;

an everyturn rule:
	if givingupton is 1:
		SanLoss 20;
		say "The nanites work inside your partially willing brain, making you more feral. ([humanity of Player]/100)";
		decrease score by 200;
		if humanity of Player < 0:
			now givingupton is 0;
			end the story saying "You gave in to your infection.";

Giving in ends here.
