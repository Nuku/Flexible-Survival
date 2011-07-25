State Fair by Sarokcat begins here.

"Adds an adventuring area to Flexible Survival with a unhappy lion and a game."

Section 1- State Fair enviornment

State fair is a room. It is fasttravel. 

The description of State fair is "The entrance to the state fair, colourful banners and signs plaster the large open area. Numerous food shops and game booths are set up near the large ticket booth. The fair entrance seems relatively deserted, and the ticketing area is wide open, allowing people to come and go as they please. While most of the shops and booths are closed up, one of the nearby game booths seems to still be open for buisness, with an automatic prize dispensing system set up, it looks like the prizes have been somewhat mixed up though. In contrast to the eerie emptiness of the fair entry, you can see some signs of activity and hear some fair noises coming from off to the west down the midway.";

Midway is a door. "The midway stretches to the west.". It is dangerous.

West of State fair is Midway.

The marea of Midway is “Midway”.

boristalk is a number that varies.
Lastborisfucked is a number that varies. Lastborisfucked is usually 250.
borisfucked is a number that varies. borisfucked is usually 0.

Boris the lion is a man.
The description of Boris the lion is "Standing over by the side of the deserted ticket booth is a person dressed up as a very recognizable cartoon character that is always used to promote the fair.  Even you recognize that the person is dressed up as  the (semi)famous boris the lion suit.  Moving closer to the familiar face, you realize as he turns to look at you that the suit is far more realistic then any you suit you have ever seen before, a closer look shows there is no loose areas of skin on the costume, and no signs of seams anywhere. You come to the conclusion that whatever it may have once been, it isn[apostrophe]t a suit anymore, its Boris the lion!";
Boris the lion is in State fair.

The conversation of Boris the lion is { "[boristalking]" };

To say boristalking:
	if boristalk is 0:
		say “'Hey there and welcome to the... oh who am I kidding,' the lion costumed man says with a sigh, before raising one of his overlarge paws to rub at his face. 'Look I don[apostrophe]t know who you are, or what you are doing here, but trust me, you probably don[apostrophe]t want to be here. Heck I don[apostrophe]t really want to be here anymore, but its not like I can just leave.'  Seeing your slightly confused look he sighs and explains. 'Look it[apostrophe]s like this, you see me?' he gestures at his plush furred form. 'I showed up for work early the other day, put on the costume, and now well. This is what I am, I can[apostrophe]t even really remember my old name anymore, and I have a strange desire to hunt down that bastard Arthur the Antelope,' He growls for a minute, staring off into space, before seeming to come back to himself. [line break]";
		say "'Gah see? I know and you know that there isn[apostrophe]t really an Arthur the antelope out there for me to hunt down, but It still gets to me.' the lion sighs heavily, 'So yeah you might as well just call me Boris now, seems more appropriate then anything else these days.' He pauses for a minute in thought, before shaking himself and continuing. 'So yeah, if you think this is strange, you really don[apostrophe]t want to see what the rest of the fair is like.  Things have gotten wild in there, I swear I saw some sort of latex creatures hanging out near the house of wax, the funhouse was taken over by some kind of crazy animalistic clowns,' Boris pauses for a minute to shudder at the thought of clowns, 'And to top it all off some of the fair prizes are running around on their own attacking people. Giant stuffed animals running around and jumping on people is definitely one of the weirder things I ever saw, course the fact that the people turned into more stuffed animals as well is pretty  damn weird too if you ask me.'  Boris pauses for a second, before shaking his overlarge furred head, 'Just trust me on this, you really don't want to go out there.' His warning delivered, Boris the lion returns to leaning against the ticket booth and staring off into space, occasionally sighing.”;
		increase boristalk by 1;
		stop the action;
	if boristalk is 1:
		say “[one of]'Back again? don[apostrophe]t say I didn[apostrophe]t warn you.'[or]Seeming startled out of some inner fantasy, Boris looks around for a second before his eyes manage to focus on you, 'Hey kid, you seen an evil antelope go by here? Name of Arthur?'[or]'Heeey there! I[apostrophe]m Boris the lion! How can I help you today!'[or]'Hey there and welcome to the fair, please enjoy your stay with us.' he says absentmindedly.[or]'There[apostrophe]s  poachers in the pridelands again!'[or]'Strangely enough, it[apostrophe]s cooler out here in fur then it was when it was a damn suit'[or]'I knew I should have quit this job last month when I had the chance....'[or]'Watch out for the stuffed prizes, well unless you have some strange fantasy about being a plush toy,' Boris warns, 'If you do though... well you came to the right place,'[or]'You know, it[apostrophe]s funny,' Boris says with a thoughtful expression 'I can[apostrophe]t really remember the last time the fair was this busy.'[or]'There[apostrophe]s plenty of food and stuff lying around in the fair' Boris comments, waving a half eaten hot dog at you, 'Just stay away from the cotton candy if you know what[apostrophe]s good for you.'[or]'If you find a way out of this place, mind letting me know?' Boris says with a sigh, 'Got to be plenty of places that could use a new mascot out there.'[or] 'Pride life is the best!' Boris exclaims, before catching himself and sighing.[or]'Suffering Savannah!'[or]'Man I wish someone had been wearing the Christy the lioness suit the other day...' he mutters to himself, before blushing and looking embarrassed.[or]'You aren[apostrophe]t a poacher are you? I hate poachers' Boris says with a growl.[at random]”;



borisfucking is an action applying to nothing.

Understand "fuck boris the lion" as borisfucking;
Understand "fuck boris" as borisfucking;

check borisfucking:
	if boris is not visible, say "who?" instead;



To borisfucked:
	say "'Sorry hun, it[apostrophe]s not that I might not want to, but well, you see this WAS intended to be a family friendly fair.' Boris says with a sigh, 'And since we couldn't have the kiddies asking questions about things like that... well lets just say I[apostrophe]m currently ill equipped to do much of anything with you.' he says with a sad gesture to his featureless furred crotch.";
	stop the action;



Lastgameplay is a number that varies. Lastgameplay is usually 250.
gameplay is a number that varies. gameplay is usually 0.

gameplay is an action applying to nothing.

understand "use game" as gameplay;
understand "try game" as gameplay;
understand "play game" as gameplay;
understand "win prize" as gameplay;


To gameplay:
	if lastgameplay - turns is less than 4:
		say "stepping up to the game booth, you hit the button to activate the contest game, only to sigh when nothing happens, the game must not have reset yet, you should try again later..";
		stop the action;
		now lastgameplay is turns;
	otherwise:
		say "Stepping up to the gaming booth, you hit the button and all sorts of targets pop up and go whizzing around the booth as happy music plays. Quickly you snatch up the fake gun attached to the booth and shoot for all your worth!";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:	
			say “Your swift reflexes are the death of all little cardboard targets! They will learn to fear your awesome might! Oh and hey you won a prize too!”;
			let prizegift be a random number from 1 to number of filled rows in the table of random critters;
			choose row prizegift from the table of random critters;
			if there is a loot entry:
				if loot entry is not “ “:
					add loot entry to invent of player;
					say “you acquired 1 [loot entry]”;
				otherwise:
					add "dirty water" to invent of player;
					say “you acquired some dirty water!”;
			otherwise:
				add "food" to invent of player;
				say “You acquired some carnival food!”;	
		otherwise:
			say “The game buzzes at you derisively, as you lower your plastic weapon in defeat, the evil cardboard and plastic menaces will apparently live to see another day, though you resolve to come back and try again later as you walk away.”;






State Fair ends here.
