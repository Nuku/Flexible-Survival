Version 1 of Glory by Wahn begins here.
[Version 1 - New Character]

Section 1 - Events

Refugee Mare is a situation. Refugee Mare is resolved.
The sarea of Refugee Mare is "Smith Haven".

when play begins:
	add Refugee Mare to badspots of furry;

Instead of resolving a Refugee Mare:
	say "     As you make your way through the hallways of the mall, checking out what goes on in the expansive building, you eventually do a circuit through the food court. The typical thick crowd of people is milling around inside, with countless species and hybrids in appearance, busy eating or just hanging out together. Letting your gaze sweep over the crowd, your attention soon is drawn by a somewhat bedraggled-looking human-horsewoman hybrid just outside the glass entry doors to the mall. From what you can see at a distance, she has fully equine legs, hooves and a tail, while her upper body is still overwhelmingly human. She is talking to [if LoganCommand > 0]Logan, the bad apple of a wolverine guard banished outside to guard the exterior approaches[else]a wolverine guard[end if]. He quickly waves her through, but as she pulls the door open for herself, the guy steps up and slaps her ass with a lecherous grin on his face.";
	say "     The slap has quite an effect on the young woman, as she yelps in shock and bolts away from him, running forwards into the building. She dashes through the gaps between people, brushing right past you in her haste, until her path makes her collide headlong with the back of a tall man, bringing her to a full stop. The towering guy she ran into (a Clydesdale stud horseman, dressed in nothing more than a pair of somewhat threadbare jeans) turns around and grumbles in annoyance, which creates an extreme reaction from the frightened woman. She screams and backs away from him, stumbling as she does so and falling to the ground. The horseman looks in puzzlement to the distraught hybrid woman, then shrugs and continues on his way. This leaves the young woman behind all alone, huddled up on the floor and sobbing.";
	say "     [bold type]Do you want to do something about this?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, go and talk to her.";
	say "     ([link]N[as]n[end link]) - Not your problem.";
	if player consents:
		LineBreak;
		say "     Slowly walking up to the young woman, as not to freak her out even more, you crouch down next to her and ask if she is alright. Her sobs slow down a little and she looks up to you with tear-filled eyes. 'No, I'm not! This all is such a nightmare! I just want it to end!' With carefully chosen words, you manage to get her off the ground and into one of the somewhat out of the way sitting booths in a corner of the food court. There, you gently ask her to tell you what happened. Taking a minute to collect her thoughts and calm down, the part-equine woman says, 'He - he reminded me of what happened. With... with my brother. His name is - or maybe was, I really don't know anymore - Isaac. And I'm Glory. He had given me a weekend of riding at the 'Stables Hotel' for my birthday, with a really nice room and all. Drove me there himself when we both had the time and he wanted to stay to keep me company, so he got the room next to mine, with a connecting door.'";
		say "     Having arrived at that part of the story, Glory wraps her arms around herself and rocks back and forth a little, then eventually says in a halting voice, 'On the morning of the second day, I was woken up by someone pushing into me! A second later, he was thrusting away inside me, and yet somehow I didn't mind! I just felt my body react to him, and even... enjoyed it in that moment! Even though he wasn't even human, but something half horse - and worse, I recognized Isaac in that stallion humping away at me and I still didn't care! The sex continued till we both had come a bunch of times and were really exhausted, then dozed off. But when I came back to, everything that had happened came into focus and I realized what he - what we - had done!' Stomping the floor with one hoof, she looks down at herself, frowning at the hybrid body she now has.";
		WaitLineBreak;
		say "     'I'm sure we'll both go to hell for it. And my shame is obvious for everyone to see too! While that beast was still asleep, I fled out into the city. I didn't want to talk to him, because what fucked me that day wasn't my brother anymore. It can't have been!' Glory's despair audibly built back up during the last few sentences, and she is sobbing openly as she continues, 'Everything since has just been further horror! The things that go on out there! I eventually heard that the mall was supposed to be safe, but with that guy at the entrance there and horsemen on the inside, I've got my doubts about that too!' Tears start running down Glory's cheeks as she sobs out, 'I don't think I can deal with this much longer - the constant danger and running from monsters in the streets, then even my own body betraying me to become a constant reminder of my sin! I just want it to end! Can't the police or someone - anyone - just protect us?'";
		say "[GloryChoices]";
	else:
		LineBreak;
		say "     Doing the same as just about everyone else around, you keep your distance and do not look at the woman, then quietly walk away.";
		now GloryFate is 100; [ignored by the player]
	now Refugee Mare is resolved;

to say GloryChoices:
	LineBreak;
	say "     What do you want to do now?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Console her yourself";
	now sortorder entry is 1;
	now description entry is "Try to strengthen her resolve and say that the military will save all of you eventually";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring her to Santa Claws";
	now sortorder entry is 2;
	now description entry is "The Christmas Village should be safe and allow her to forget";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take her to Moreau";
	now sortorder entry is 3;
	now description entry is "Some naga hypnotherapy might work wonders";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring her to Tobias";
	now sortorder entry is 4;
	now description entry is "He'll surely protect her, in his own way";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Console her yourself"):
					say "[GloryChoice1]";
				if (nam is "Bring her to Santa Claws"):
					say "[GloryChoice2]";
				if (nam is "Take her to Moreau"):
					say "[GloryChoice3]";
				if (nam is "Bring her to Tobias"):
					say "[GloryChoice4]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     As you just stand up and leave, you can hear her sobbing behind you until it is drowned out by the murmur of the mall crowd.";
				now GloryFate is 90; [abandoned by the player]
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say GloryChoice1:
	say "     ...";

to say GloryChoice2:
	say "     ...";

to say GloryChoice3: 
	say "     ..."; [Moreau might calm her down and soothe her troubled mind, then offer her a job]
	say "     'My assistants are obedient, but just a bit empty-headed,' the naga says, lightly tapping the head of the nearest mannequin. 'I could use someone to count the profits. If you work well, I'm sure you'll be able to affort a... different body than that equine one soon.'";

to say GloryChoice4:
	say "     ...";

Glory ends here.