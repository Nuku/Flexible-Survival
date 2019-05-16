Version 1 of Patreon Menu by Stripes begins here.
[Version 1.7 - Nov 2015 ]

supersponsor is an action applying to nothing.
ssstash is a number that varies. ssstash is usually 1.
ssgpd is a truth state that varies. ssgpd is usually false.
ssbpg is a truth state that varies. ssbpg is usually false.
ssmb is a truth state that varies. ssmb is usually false.
sshh is a truth state that varies. sshh is usually false.
ssos is a truth state that varies. ssos is usually false.
ssxpa is a truth state that varies. ssxpa is usually false.
ssgbii is a truth state that varies. ssgbii is usually false.

check supersponsor:
	if Trixie is not visible, say "Only Trixie can help you with that." instead;

carry out supersponsor:
	say "     Trixie flutters in close as you whisper the password to her. 'Excellent! This is the sponsor reward menu for our Patreon supporters. Thanks so much for supporting us and helping the game improve. You're super! You're awesome! You're wonde- Waaaaait... you better not be lying about being allowed access. If you're trying to trick me, I'll be really pissed,' she says, sparks ringing her tiny fists as she looks you over with suspicion.";
	say "     'Alright. I guess I can trust you. We've got a few special fun perks for you to pick from. A few more will show up from time to time as well. Thanks again and enjoy!'";
	let Trixieexit be 0;
	let weaponsmaster be "Weaponsmaster";
	while Trixieexit is 0:
		let sanitysave be 0;
		if "Sanity Saver" is listed in feats of Player, now sanitysave is 1;
		say "[bold type]Patreon Cheats:[roman type][line break]";
		say "- Improvements -[line break]";
		say "[if level of Player < 12][link](1) Jump to lvl 12[as]1[end link] - Available[else](1) Jump to lvl 12 - Inactive[end if][line break]";
		say "[if ssmb is true](2) Maintenance boost - Active[else][link](2) Maintenance boost[as]2[end link] - Inactive[end if][line break]";
		say "[link](3) Pet trainer[as]3[end link] - Reusable[line break]";
		say "[if ssxpa is true](4) Experience accelerator - Active[else][link](4) Experience accelerator[as]4[end link] - Inactive[end if][line break]";
		say "- Stuff -[line break]";
		say "[link](5) Food/Drink stash[as]5[end link] - [if ssstash > 0]Available[else]Empty[end if][line break]";
		say "[if ssgbii is true](6) Grab bag - Taken[else][link](6) Grab bag[as]6[end link] of infected items - Available[end if][line break]";
		say "[if ssgpd is true](7) Purple dildo club - Taken[else][link](7) Purple dildo club[as]7[end link] - Available[end if][line break]";
		say "[if ssbpg is true](8) Banana peel gun - Taken[else][link](8) Banana peel gun[as]8[end link] - Available[end if][line break]";
		say "[if sshh is true](9) Hard hat - Taken[else][link](9) Hard hat[as]9[end link] - Available[end if][line break]";
		say "[if ssos is true](10) Orange shield - Taken[else][link](10) Orange shield[as]10[end link] - Available[end if][line break]";
		say "[if sanitysave is 1][link](11) Sanity Saver - Taken[as]11[end link][else][link](11) Sanity Saver[as]11[end link] - Available[end if][line break]";
		say "[link](12) Claim all the pets![as]12[end link][line break]";
		say "[link](13) Revel in being awesome[as]13[end link][line break]";
		say "[link](14) Return to humanity[as]14[end link][line break]";
		say "[link](0) Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-14)> ";
			get a number;
			if calcnumber >= 0 and calcnumber <= 14:
				break;
			else:
				say "Invalid choice. Pick from 0 to 14.";
		if calcnumber is 1:
			sslvl12;
		else if calcnumber is 2:
			if ssmb is false:
				now ssmb is true;
			else:
				now ssmb is false;
			say "     The maintenance boost improves the effectiveness of medkits and using the journal by 50%. It is now [if ssmb is true]active[else]inactive[end if]";
		else if calcnumber is 3:
			if companion of Player is nullpet:
				say "     'How do you expect to train one of your pets if you don't have them here with you?' Trixie asks.";
			else if level of companion of Player >= level of Player - 3:
				say "     'The pet trainer can only train a pet until they're three levels below your own. This one's already reached that point,' Trixie explains.";
			else:
				say "     During your conversation with Trixie, the [companion of Player] has been confused and concerned as you talk to apparently no one. Trixie waggles here fingers in their direction and they fall into a trance. A set of VR goggles and headphones are magicked onto their head and start to play. They absorb the information from the VR session, auto-magically training them in mere minutes. Once the training session is over, the equipment disappears and your companion comes out of their trance with increased skill.";
				let nn be ( level of Player - level of companion of Player ) - 3;
				let XPfactor be 5;
				if "Good Teacher" is listed in feats of Player:
					now XPfactor is 3;
				increase XP of companion of Player by ( ( level of companion of Player * 2 ) + ( nn - 1 ) ) * nn * XPfactor;
				repeat with x running from 1 to nn:
					pet level up;
		else if calcnumber is 4:
			if ssxpa is false:
				now ssxpa is true;
			else:
				now ssxpa is false;
			say "     The experience accelerator increases XP gain from combat victory by 33%. It is now [if ssxpa is true]active[else]inactive[end if]";
		else if calcnumber is 5:
			if ssstash > 0:
				say "     Asking Trixie about some supplies, she nods and tells you about the head librarian's secret stash. Heading there, you open an old filing cabinet and push aside from papers to find a collection of food and drink. 'And since you've been such a nice person, you can use that an extra time for every odd level you reach.'";
				say "[bold type]1 x water bottle, food, soda and chips obtained.[roman type][line break]";
				decrease ssstash by 1;
				increase carried of water bottle by 1;
				increase carried of soda by 1;
				increase carried of food by 1;
				increase carried of chips by 1;
			else:
				say "     The stash is currently empty, but you'll be able to use it an additional time for every odd level you reach.";
		else if calcnumber is 6:
			if ssgbii is false:
				say "     Mentioning that you'd like some infected items, Trixie nods. 'Yeah, I've got some of those around here somewhere.' Leading the way, she flies into one of the side rooms and points out a small backpack behind a chair. 'While you were hiding out in the bunker, some other survivor ended up camping out in here. It seems they were collecting these things for some reason, so somebody out there probably wants at least some of these. But their last owner got a little too over-excited about testing them and ended up a horny hybrid. You should be careful about that - unless you're into that kind of thing, that is.'";
				say "     Opening it up, you find an eclectic collection of fluids and goo, all conveniently labelled. Isn't that handy?";
				say "     You got: ";
				if furry is not banned:
					let liststarted be false;
					if hermaphrodite is not banned:
						now liststarted is true;
						increase carried of motel key by 1;
						increase carried of gryphon milk by 1;
						say "motel key, gryphon milk";
						if humorous is not banned:
							increase carried of chocolate milk by 1;
							say ", chocolate milk";
					if girl is not banned:
						increase carried of tiger patch by 1;
						increase carried of cheetah milk by 1;
						if liststarted is true:
							say ", ";
						else:
							now liststarted is true;
						say "tiger patch, cheetah milk";
					if guy is not banned:
						increase carried of rhino cum by 1;
						increase carried of eagle feather by 1;
						if liststarted is true:
							say ", ";
						else:
							now liststarted is true;
						say "rhino cum, eagle feather";
				else:
					increase carried of dirty water by 1;
					say "dirty water";
				if girl is not banned:
					increase carried of glob of goo by 1;
					increase carried of centaur hair by 1;
					say ", glob of goo, centaur hair";
				if guy is not banned:
					increase carried of centaur cum by 1;
					say ", centaur cum";
				if hellspawn is not banned and guy is not banned:
					increase carried of demon seed by 1;
					say ", demon seed";
				if feral is not banned:
					increase carried of wyvern goop by 1;
					say ", wyvern goop";
				say ".";
				now ssgbii is true;
			else:
				say "     You've already received this reward.";
		else if calcnumber is 7:
			if ssgpd is false:
				say "     When you ask for a weapon to help you, Trixie whispers in your ear where one is hidden. Checking there, you find a giant purple dildo. Its handle has a good grip for swinging and it has that right mix of weight, wobble and firmness to make it both an effective and amusing club.";
				now carried of dildo club is 1;
				now ssgpd is true;
			else:
				say "     You've already received this reward.";
		else if calcnumber is 8:
			if ssbpg is false:
				say "     Asking Trixie if there's anything around to keep the monster of the city from getting at you, she giggles and tells you to check the 'Lost and Found' box. Digging around in it, all you find of interest is a plastic toy gun. Not quite what you were hoping for, you feel. Still, needing a little levity, you aim the toy at a 'READ!' poster on the wall. But rather than a spray of water or a foam dart, a slimy yellow banana peel splatters onto the cartoony owl's face. You decide to hang onto the odd gun. While probably not a particularly effective weapon, the peels might make your foes off balance if they get hit.";
				now carried of banana peel gun is 1;
				now ssbpg is true;
			else:
				say "     You've already received this reward.";
		else if calcnumber is 9:
			if sshh is false:
				say "     Worried about some creature cracking your skull or a zombie munching on your brain, you ask if there's anything around to protect yourself. Trixie leads you to a janitorial closet. Among the odds and ends in there, you find a hard hat. According to her, it was forgotten by some contractors the last time some renovations were done. You put the yellow construction helmet on, glad to have something to defend your brain meats from zombies.";
				now carried of hard hat is 1;
				now sshh is true;
			else:
				say "     You've already received this reward.";
		else if calcnumber is 10:
			if ssos is false:
				say "     When you say you need some protection if you're going back out there, Trixie points you towards the history section. Mounted on the wall in that disused corner of the library, you find a round shield of bronze mounted on the wall. It is emblazoned with a red-orange 'P' in a ring on its face. How did you never notice it there before now? Taking it down, you find it quite real and in very good shape. The leather straps are solid and the shield itself seems strong enough to take a beating.";
				now carried of orange shield is 1;
				now ssos is true;
			else:
				say "     You've already received this reward.";
		else if calcnumber is 11:
			if "Sanity Saver" is not listed in feats of Player:
				say "     You shield your sanity from all harm.";
				add "Sanity Saver" to feats of Player;
			else:
				say "     You release the iron clad defense of your mind.";
				remove "Sanity Saver" from feats of Player;
		else if calcnumber is 12:
			repeat with petget running through pets:
				now petget is tamed;
				if "Tamed" is not listed in Traits of petget:
					add "Tamed" to Traits of petget;
			say "They are all now yours! (Warning, the code for some pets may react oddly. They are all set as battle-summonable though.)[line break]";
		else if calcnumber is 13:
			now carried of Smug Confidence is 1;
			say "Ah, there it is. Don't forget to use it.";
		else if calcnumber is 14:
			Now bodydesc of Player is "[one of]average[or]normal[or]unchanged[at random]";
			Now bodytype of Player is "Human";
			Now skin of Player is "smooth";
			Now cock of Player is "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]";
			Now face of Player is "Human";
			Now tail of Player is "Human";
			Now body of Player is "Human";
			Now bodyname of Player is "Human";
			Now facename of Player is "Human";
			Now skinname of Player is "Human";
			Now Cockname of Player is "Human";
			Now Tailname of Player is "Human";
		else:
			now Trixieexit is 1;
		LineBreak;


to sslvl12:
	if level of Player >= 12:
		say "You've already reached or exceeded this boost.";
	else:
		let val be 5;
		if "Fast Learner" is listed in feats of Player:
			now val is 4;
		say "[bold type]You feel empowered by your support of the game.[roman type][line break]";
		now XP of Player is val * 12 * 13;
		[ say "XP set to [XP of Player].";]
		decrease XP of Player by val * ( level of Player ) * ( level of Player + 1 );
		[ say "XP decreased to [XP of Player].";]
		now val is 12 - level of Player;
		[ say "Levelling up [value] times.";]
		repeat with x running from 1 to val:
			level up;
		increase vetcheater by 1;



Table of Game Objects (continued)
name	desc	weight	object
"smug confidence"	"As if anything could hurt you! You're one of the better ones out there."	1	smug confidence

Smug Confidence is equipment.
Smug Confidence is not temporary.
The AC of Smug Confidence is 5.
The effectiveness of Smug Confidence is 20.
The placement of Smug Confidence is "face".
The descmod of Smug Confidence is "You walk with a renewed confidence.".
The slot of Smug Confidence is "head".

Instead of smelling Smug Confidence:
	say "It smells a bit like victory! Thanks for supporting us.";

Table of Game Objects (continued)
name	desc	weight	object
"dildo club"	"A big, bright purple dildo. It's about three feet long and has a handle on it for easy swinging."	5	dildo club
"banana peel gun"	"A colorful toy gun made of plastic. But rather than fire foam darts or shoot water, it's able to launch banana peels without ever needing to be reloaded."	2	banana peel gun
"orange shield"	"A round shield made of burnished bronze with a red-orange 'P' emblem on it."	6	orange shield
"hard hat"	"A yellow construction hard hat you've found to help protect your noggin."	2	hard hat

[Dildo Club]
dildo club is an armament. It is part of the player. It has a weapon "[one of]your phallic club[or]your purple latex club[or]your dildo club with a resounding 'Wubba-Wubba-Wubba-Thwack!' sound[or]the three-foot purple schlong[or]the floppy dildo club[or]your oversized dildo[at random]". The weapon damage of dildo club is 6. The weapon type of dildo club is "Melee". It is not temporary. the objsize of dildo club is 4.

the scent of the dildo club is "The sex toy club smells of latex and your humiliated foes."

[Banana Peel Gun]
banana peel gun is an armament. It is part of the player. It has a weapon "[one of]your[or]the[purely at random] [one of]strange gun[or]colorful gun[or]plastic gun[or]odd toy gun[or]plantain pistol[or]banana blaster[or]banana peel gun[or]banana peel launcher[at random], [one of]striking your foe in the face[or]tripping up your foe with a messy peel[or]causing your foe to slide into something[or]making your foe stumble and twist themselves painfully[or]causing a comedic pratfall[at random][bananerred]". The weapon damage of banana peel gun is 4. It is not temporary. It is ranged. The objsize of banana peel gun is 3.

the scent of the banana peel gun is "The odd toy gun smells unsurprisingly like banana pudding. Unfortunately, none can be found inside."

bananapeeled is a number that varies.

to say bananerred:
	now bananapeeled is 2;

[Orange Shield]
orange shield is equipment. It is not temporary.
The AC of orange shield is 50.
The effectiveness of orange shield is 50.
The placement of orange shield is "body".
The descmod of orange shield is "You carry a round shield made of bronze. Its burnished face is emblazoned with a red-orange 'P' in a ring.".
The slot of orange shield is "shield".

the scent of orange shield is "The shiny shield smells clean and freshly polished - because you deserve it.".

[Hard Hat]
hard hat is equipment. It is not temporary. The AC of hard hat is 22. The effectiveness of hard hat is 50.
The placement of hard hat is "face".
The descmod of hard hat is "You're wearing a yellow hard hat atop your head.".
The slot of hard hat is "head".

Patreon Menu ends here.
