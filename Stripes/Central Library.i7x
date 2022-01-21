Version 2 of Central Library by Stripes begins here.
[ Version 2.2 - Added additional valid bribery weapons ]

"Adds the Central Library to the Flexible Survival game"

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Central Library	"Central Library"

Central Library is a situation.
ResolveFunction of Central Library is "[ResolveEvent Central Library]". The level of Central Library is 6.
Sarea of Central Library is "High".
centrallib is a number that varies.
libfight is a number that varies.
harpyfight is a number that varies.
jamesfed is a number that varies.
jamessex is a number that varies.
libstealth is a number that varies.
bookcollection is a list of numbers that varies.
bookfound is a number that varies.
mattintel is a number that varies.
mouseintel is a number that varies.
hyenaintel is a number that varies.
when play begins:
	add Central Library to BadSpots of MaleList;
	add Central Library to BadSpots of FemaleList;
	add Central Library to BadSpots of FurryList;

to say ResolveEvent Central Library:
	if centrallib is 0:
		now centrallib is 1;
		say "     You find your way to the city's Central Library, once an impressive stone building that has been suffering due to neglect by the city. And the recent crisis has not helped at all. You can see signs of a fire on one side, blackened with soot. As you get closer, about to cross the street to approach the entrance, you spot a burly security guard on the steps between the stone lions. A large, muscled fellow covered in dark fur and battered jacket. It is one of those crazed wolverines you've seen in the area guarding with manic obsession and great violence.";
		project the figure of James_icon;
		WaitLineBreak;
		say "     Spotting you, the wolverine does not immediately attack, but seems to be struggling with himself. He seems not to have fully succumbed to the viciousness that the others like him possess. 'Just... just stay back,' he calls over, warning you off. 'This place is sealed. Just go away and I won't have to hurt you.'";
		say "     Keeping your distance, you manage to talk to him. It seems he's done a good job keeping the area clear, so you're able to talk to him from across the street without worry about attracting attention. 'My name is... James. It's James, dammit,' he growls, struggling to hang onto it. 'I live nearby and walked over to come on duty early in the morning. I guess I didn't notice what was happening in the city since it was so early and the sun hadn't come up yet. Or maybe I was already changing and was too focused on getting to work. I remember being really gung-ho about guarding the library from the moment I put on my coat and went out the door. Didn't matter that it wasn't even 5 a.m. that morning.' He paces up and down the steps, looking down both sides of the deserted street and takes a deep breath to relax and refocus, letting you cross the street to join him on the steps.";
		say "     'Well, I started changing once I got here, slowly turning into the burly creature I am now. I... it probably should have upset me, but I help feeling that it would only help me guard the library better. And now I'm so young and strong. Only problem's been that I can't leave my post because my replacement hasn't come to take his shift. Can't leave it unguarded. So many crazy creatures around now,' he says, growling a little in his throat. 'Gotta keep watch. There's been no chance to sleep and only what little food the librarians might give me while I'm patrolling inside the library. It's been getting harder and harder to keep it together. Haven't slept since that morning. Can't. Gotta protect the library. Gotta...' he trails off.";
		say "     It seems that the library's gone undisturbed thanks to his unending vigil. You find yourself wondering what you could find within to help you. You consider some options on how to get past the guard.";
	else:
		project the figure of James_icon;
		say "     Finding yourself in the vicinity of the Central Library, you approach again, being cautious to let the wolverine guard notice you at a distance. He's initially put on edge, but when you reassure him that it's just you returning, he relaxes and lets you approach. 'It's nice to see you again. Good to have someone who hasn't gone completely over the edge yet to talk to.'";
		say "     It seems that the library is still safe thanks to his unending vigil. You find yourself wondering what you could find within to help you and ponder ways to get past the guard.";
	WaitLineBreak;
	say "[libraryentrance]";


Section 2 - Conversation options

to say libraryentrance:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
[	now title entry is "Come back later";
	now sortorder entry is 99;
	now description entry is "Do you wish to leave and return later?";
	choose a blank row in table of fucking options;
	now title entry is "Nevermind";
	now sortorder entry is 100;
	now description entry is "Shall you give up on this plan entirely";]
	if centrallib is 1 or ( centrallib is 2 and BodyName of Player is "Wolverine Guard" ):
		choose a blank row in table of fucking options;
		now title entry is "Offer to take over";
		now sortorder entry is 1;
		now description entry is "Do you want to offer to take over for him for a few hours";
	let foodfound be 0;
	let waterfound be 0;
	if ( carried of water bottle > 1 and carried of food > 1 ) or jamesfed is 1:
		choose a blank row in table of fucking options;
		now title entry is "Bribe";
		now sortorder entry is 2;
		if jamesfed is 0:
			now description entry is "Will you try bribing him with some supplies";
		else:
			now description entry is "Will you discuss a weapon trade";
	choose a blank row in table of fucking options;
	now title entry is "Fight!";
	now sortorder entry is 3;
	now description entry is "Do you fight your way past him";
	if jamessex is 0 or ( jamessex is 1 and player is female ) or ( jamessex is 2 and BodyName of Player is "Wolverine Guard" ):
		choose a blank row in table of fucking options;
		now title entry is "Sex him up";
		now sortorder entry is 4;
		now description entry is "Will you try sexing him up to gain entry";
	if "Stealthy" is listed in feats of Player:
		choose a blank row in table of fucking options;
		now title entry is "Sneak in";
		now sortorder entry is 5;
		now description entry is "Do you pretend to leave and try sneaking in another way";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]99 - Come back later[as]99[end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Offer to take over":
					say "[libguard1]";
				else if nam is "Bribe":
					say "[libguard2]";
				else if nam is "Fight!":
					say "[libguard3]";
				else if nam is "Sex him up":
					say "[libguard4]";
				else if nam is "Sneak in":
					say "[libguard5]";
		else if calcnumber is 99:
			say "Do you wish to leave and return later?";
			if Player consents:
				now sextablerun is 1;
				say "     You bid adieu to the wolverine security guard, wishing him well. You tell him that you may stop by again later to check up on him. He smiles and nods, saying that talking to you has helped him remember himself a little. As you walk off, you look back, seeing him resuming his unending protection of the library.";
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 99/100 to exit.";
		else if calcnumber is 0:
			say "Shall you give up on this plan entirely?";
			if Player consents:
				now sextablerun is 1;
				say "     You bid adieu to the wolverine security guard, wishing him well. Deciding not to risk further contact with the volatile guard, you make a mental note to avoid the vicinity in the future. Left to his own devices, the guard resumes his unending protection of the library.";
				now Central Library is resolved;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 99/100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;


[ Centrallib - gaining entry/posing as guard  ]
[ 0 - Not been to library                     ]
[ 1 - Talked to James                         ]
[ 2 - Offered to take over w/o Wolverine      ]
[ 3 - Failed to take over as Wolverine        ]
[ 4 - Gained entry as guard                   ]
[ 5 - Event over, gained positive entry       ]
[ 6 - Event over, gained negative entry       ]
[ 7 - Event over, lost to harpies             ]

[ libfight - gaining entry w/fighting         ]
[ 0 - No attempt to fight                     ]
[ 1 - Fight started                           ]
[ 2 - Fight lost/fled                         ]
[ 3 - Fight won                               ]

[ jamesfed - gaining entry w/bribery          ]
[ 0 - No bribe given                          ]
[ 1 - Bribed w/food                           ]
[ 2 - Bribed w/weapon                         ]

[ jamessex - gaining entry w/sex              ]
[ 0 - No sex attempted                        ]
[ 1 - Failed - male                           ]
[ 2 - Failed - not wolverine                  ]
[ 3 - Sex                                     ]

[ libstealth - snuck in                       ]
[ 0 - Did not attempt                         ]
[ 1 - Snuck in                                ]


to say libguard1:						[Bluff]
	if BodyName of Player is "Wolverine Guard":
		say "     You offer to take over for him, telling James that you're here to relieve him for a few hours. The wolverine says he doesn't recall you being on the team earlier and you quickly say that you were recently hired. You can see him infection-confused mind struggling to deal with the conflicts of his new instincts and his old memories and quickly try to convince him";
		let bonus be ( charisma of Player minus 10 ) divided by 2;
		if FaceName of Player is "Wolverine Guard" and SkinName of Player is "Wolverine Guard":
			increase bonus by 3;
			say ". You certainly look the part now, at least";
		say ".";
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus].";
		if bonus + dice >= 14:
			say "     You manage to convince James that you're here as special relief. 'But only for a few hours,' you emphasize again. Glancing at your watch, you add that it's almost time for you to start. 'Thanks, pal,' he says, getting up and heading to the doors. 'I think I'll head off to the staff lounge and catch forty-winks on the couch in there. I don't want to leave the library entirely if you're just going to swap out for a while, but I could really use the nap. If you've got to patrol inside, be sure to keep it quiet. The librarians don't like to be disturbed and they're not quite right now. Probably spent too much time in the mythology section or something.' With that cryptic comment, he passes you the keys and slips inside, watching you lock up before heading further in. You give him a little bit to make sure he's bedded down and then unlock the door and slip inside[if humanity of Player < 30]. There is a slight twinge from your wolverine instincts for leaving your post, but you manage to fight it down[end if].";
			now centrallib is 4;
			WaitLineBreak;
			now Resolution of Central Library is 1; [Successful Bluff]
			say "[libraryexplore]";
		else:
			say "     He just doesn't seem convinced that you're his replacement, as you're not the regular guy. 'I would really need to get confirmation from HQ about something like this and I haven't been able to reach them since I went on duty. I could really use a break, but we gotta follow procedure, especially during a situation. Especially you, you could get fired easily since you just started.' Well, that plan went bust. You'll have to consider other options.";
			now centrallib is 3;
			WaitLineBreak;
			now Resolution of Central Library is 2; [Wolverine, Failed Bluff]
			say "[libraryentrance]"; [Back to menu]
	else:
		say "     You offer to take over for him for a while, saying you're here to give him a break. His infection-confused mind mulls over the offer, trying to deal with the conflicts of his new instincts and his old memories. 'Well, I don't really know if I can trust you. Everyone from the company's supposed to come on duty in uniform. I should probably just stay on duty,' he says, shaking his head.";
		now centrallib is 2;
		WaitLineBreak;
		now Resolution of Central Library is 3; [Not Wolverine, No Bluff allowed]
		say "[libraryentrance]"; [Back to menu]


to say libguard2:						[Bribe]
	if jamesfed is 0:
		say "     Recalling what James said about his poor diet because he can't leave, you offer to help him out with that. 'That would be right neighborly of you,' he replies. 'I could certainly use a meal or two and a couple of drinks.' Do you want to try giving him two meals worth of food and two bottles of water?";
		if Player consents:
			now jamesfed is 1;
			ItemLoss food by 2;
			ItemLoss water bottle by 2;
			say "     James smiles and takes the food from you, offering you a seat beside him on the steps. He goes through almost all of it in rather short order, but does manage to save a little for later. After having eaten, he stretches to get back up. 'You should probably head off now. I got to get back to work.'";
			say "     Not wanting to lose your opportunity, you reengage him in conversation, asking about how hard it has been to watch the place and how he must find it tough. 'I've done alright. This new body's very good for that. Nothing's been too tough for me to beat. And if things get really bad...' he says, brushing aside his jacket to show a hidden holster. 'I don't want to have to use it though. Even on those creatures. It'd be nice to have another weapon I could use. My fists are good and I'm much stronger now, but something to smack them with would help.'";
			say "[libweaponoffer]";
		else:
			say "     Not wanting to give up that much from your supplies, you act like you've got none, instead saying that you're out looking some. He nods. 'Just be sure to keep me in mind, since I can't go off duty to find some. You should get going though. I can feel my guarding instincts making me edgy about you hanging around and I should do another patrol as well. You'd best be moving along before I end up getting forceful about it.";
			WaitLineBreak;
	else if jamesfed is 1:
		say "     James smiles as you bring up the topic of weapons again, his large paws clenching in anticipation of holding a big, blunt weapon to beat away any crooks trying to get into his library.";
		say "[libweaponoffer]";

to say libweaponoffer:
	let weaponpick be 0;
	let x be the number of owned armaments;
	if weapon object of Player is journal, increase x by 1;
	if x is 0 or x is 1:
		say "     Having no spare weapons, you are unable to offer one to him. You try to come with a new approach, but he seems fixated on getting back to guarding and you have to let him send you on your way for the moment. He does ask that you stop by again if you do come across something he might be interested in.";
		WaitLineBreak;
	if x > 1:							[spare weapon(s)]
		if nightstick is owned and weapon object of Player is not nightstick:
			now weaponpick is 1;
		else if medium sledge is owned and weapon object of Player is not medium sledge:
			now weaponpick is 5;
		else if crowbar is owned and weapon object of Player is not crowbar:
			now weaponpick is 2;
		else if tire iron is owned and weapon object of Player is not tire iron:
			now weaponpick is 3;
		else if flotsam club is owned and weapon object of Player is not flotsam club:
			now weaponpick is 4;
		else if mallet is owned and weapon object of Player is not mallet:
			now weaponpick is 6;
		if weaponpick is 0:
			say "     You wonder if you've got a suitable weapon to satisfy his needs and show him several of the ones you're not using. Unfortunately, none in your pack that strikes his fancy. Unable to offer him one he'd like, he sends you on your way for the moment. He does ask that you stop by again if you do come across something he might be interested in.";
			WaitLineBreak;
		else:
			say "     You wonder if you've got a suitable weapon to satisfy his needs, showing him a few of those you've got. He ends up taking an interest in your [if weaponpick is 1]nightstick[else if weaponpick is 2]crowbar[else if weaponpick is 3]tire iron[else if weaponpick is 4]flotsam club[else if weaponpick is 5]medium sledge[else if weaponpick is 6]mallet[end if]. He takes up the weapon and gives it a few experimental swings, grinning as he does.";
			say "     Will you offer it to him in trade for entry?";
			if Player consents:
				say "     You tell him he can have it if he'll let you go in for a bit";
				if journal is owned:
					say ". You flash your journal quickly, claiming you need to drop the book off and want to look for another";
				else:
					say ". You flash the corner of a notepad, claiming you need to write a report and need to check a book out from the library for it";
				say ". He seems a little reluctant, but agrees. 'Well, I guess that'd be okay. You've been a good pal and this is a fine gift,' he says, hefting his new, blunt instrument around with a rather wild look in his eyes. 'This'll really help me guard my post. And it is a public library, so go quick and watch out for the librarians. I think they spent a little too long in the mythology section or something. They're not quite right anymore,' he adds cryptically as he pushes you in and closes the door behind you.";
				now jamesfed is 2;
				if weaponpick is 1:
					ItemLoss nightstick by 1;
				else if weaponpick is 2:
					ItemLoss crowbar by 1;
				else if weaponpick is 3:
					ItemLoss tire iron by 1;
				else if weaponpick is 4:
					ItemLoss flotsam club by 1;
				else if weaponpick is 5:
					ItemLoss medium sledge by 1;
				else if weaponpick is 6:
					ItemLoss mallet by 1;
				WaitLineBreak;
				now Resolution of Central Library is 4; [Gave weapon]
				say "[libraryexplore]";
			else:
				say "     You tell him that you don't want to part with the weapon. James nods and says, 'I can certainly understand that. You want to be able to protect yourself. It's dangerous out there.' It does take a few polite requests to get the big wolverine to hand the [if weaponpick is 1]nightstick[else if weaponpick is 2]crowbar[else if weaponpick is 3]tire iron[else if weaponpick is 4]flotsam club[else if weaponpick is 5]medium sledge[else if weaponpick is 6]mallet[end if] back to you. You try to offer him something else or another weapon, but he's decided that one's the best for him. Needing to get back on duty, he shuffles you on your way. He does add that he hopes you'll come back if you decide to part with the weapon[if weaponpick > 1] or find an even better one for him[end if] in the future.";
				WaitLineBreak;

to say libguard3:
	say "     Deciding to opt for the direct approach, you decide to attack the wolverine.";
	now libfight is 1;
	now wolvfightresult is 3;
	challenge "Wolverine Guard";
	if wolvfightresult is 1:
		say "     James, beaten by your sudden attack, collapses onto the stairs in a heap. Passed out after the fight, it looks like you've finally made him take his much-needed rest. Quickly grabbing his keys, you unlock the library door and slip inside.";
		now libfight is 3;
		WaitLineBreak;
		now Resolution of Central Library is 5; [Fought James, Won]
		say "[libraryexplore]";
	else if wolvfightresult is 2:
		say "     The wolverine growls and tosses you roughly into the street. As you're getting up, James brushes open his jacket and rests his large paw firmly on a holster hidden there. 'You need to move along and not come back,' he says with a firm growl. Even with the increased healing from the infection, you're not sure how you'd fare against a gun and are quite certain it wouldn't be pleasant even if you survived. You'll have to give up on getting in here and look elsewhere.";
		now libfight is 2;
		now Central Library is resolved;
		now Resolution of Central Library is 6; [Fought James, Lost]
		WaitLineBreak;
	else:
		say "     Making a run for it from the crazed wolverine, you can hear him yelling at you from the steps. 'And don't you come back, or I'll give you some of this,' James yells, waving a gun in the air. Even with the increased healing from the infection, you're not sure how you'd fare against a gun and are quite certain it wouldn't be pleasant even if you survived. You'll have to give up on getting in here and look elsewhere.";
		now libfight is 2;
		now Central Library is resolved;
		now Resolution of Central Library is 7; [Fought James, Fled]
		WaitLineBreak;
	now wolvfightresult is 0;

to say libguard4:
	setmonster "Wolverine Guard";
	if Player is not female:
		say "     James seems a little flustered by your offer. 'Uh... well, not that I'm not flattered, but despite this big, young body, I'm an old-fashioned man with old-fashioned values. Ain't nothing wrong with it, mind you. It's just not for me.' He wrings his big paws and looks around a little, then seems to realize he should be on duty and snaps back to attention. 'Umm... you should maybe be moving along. You can stop by again. Having someone to chat with helps me keep my head on straight - Ah! Didn't mean nothing by that! - I mean, against this crazy animal thing.' It seems you've startled the poor wolverine back into guard mode and you'd best be moving along for now. Perhaps the fairer sex would have more luck with him.";
		now jamessex is 1;
		now Resolution of Central Library is 8; [Male, Tried to seduce.]
		WaitLineBreak;
	else if BodyName of Player is not "Wolverine Guard" or FaceName of Player is not "Wolverine Guard":
		say "     James clearly seems tempted by the offer, but manages to resist. 'I... I should really stay on duty,' he rumbles. Clearly there's some lust buried there. Perhaps if you were a little more appealing to him. Since he hasn't sent you off, you can always try another approach as well.";
		WaitLineBreak;
		now Resolution of Central Library is 9; [Female, Not Wolverine]
		say "[libraryentrance]"; [Back to menu]
		now jamessex is 2;
	else:
		now jamessex is 3;
		say "     James is clearly tempted by the offer. Quite torn between his animal urges and his strong duty to guard this place. You slide up beside him and run a big paw down his body to give his groin a squeeze. You nibble his ear and suggest he take you right here, on the steps, part of you succumbing to the urge to mate this big, strong, devoted male. You whisper that he can guard the access while screwing you. Growling in his throat, he throws you down roughly and jumps atop you. Within moments, you have your clothes and pack off while the wolverine growls and nips at your neck and shoulder. You growl loudly in response and push him back, rolling onto all fours. He pounces back atop your wolverine body and grinds his throbbing cock against you.";
		say "     'Oh, I haven't felt this horny in years,' he growls as he drives his throbbing cock into you, making you growl and claw at the stone beneath you. His large cock throbs inside you, pulsing with virility as he thrusts it into you again and again. He fucks you like a wild animal and you revel in it, just what your wolverine body needs. He nips and bites at you, only exciting you further. Bracing yourself, you support his weight atop you while his big paws fondle your breasts[if Player is male] and even make a few strokes at your cock[end if] while his large balls slap against you. He pumps hard and fast into you, driving himself in deep before unleashing his hot load into you with a triumphant roar. You roar as well as you feel his semen pumping into you, flowing into your womb and overflowing around his thick shaft.";
		say "     But it doesn't stop there, the big wolverine rolls you onto your back and climbs atop you again. After licking and kissing at your breasts for a while and playing with your pussy, he climbs atop you and starts mating again. It is another wild, animalistic romp after another until you both collapse panting on the steps, reeking of sex and thoroughly satisfied. You are so wonderfully full to the point of overflowing with this strong, diligent wolverine's cum and your new instincts love it.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Wolvering Guard";
		infect "Wolverine Guard";
		SanLoss 20;
		if "Strong Psyche" is listed in feats of Player, SanBoost 5;
		if humanity of Player < 10:
			setmonster "Wolverine Guard" silently;
			turn the Player into a "Wolverine Guard" silently; [NOTE: Avoid attributeinfect output in a game over (@Stadler#3007)]
			say "     Losing yourself in the lustful mating, you and James descend further into your wild, wolverine instincts until you both lose yourselves completely.";
			end the story saying "You have become another wolverine guard watching over the Central Library.";
			WaitLineBreak;
			follow the turnpass rule;
			stop the action;
		else:
			say "     You feel a strong urge to stay with him, to protect the library, but you manage to pull yourself out of it. Still feeling quite drawn to him at the moment, you snuggle up beside him and scritch his manly chest. He is quite relaxed now and you should be able to get what you came for. You lean over and kiss his cheek. You tell him, quite truthfully, how wonderful that was and he rumbles happily. You keep sweet talking him while running your strong paws over his body. After a little of this, you roll over, letting him get a good view of your leaking pussy and cum-soaked crotch and ask him to let you pop inside for a bit so you can freshen up. He smiles and brushes your hip, passing you the keys. 'Just be quiet. Don't want you disturbing the librarians,' he says before stretching back on the steps, looking quite pleased with himself.";
			now Libido of Player is Libido of Player / 5;
			now jamessex is 3;
			WaitLineBreak;
			now Resolution of Central Library is 10; [Female, Seduced James]
			say "[libraryexplore]";


to say libguard5:
	say "     You chat with him a little long, looking over the front of the building for any other possible entry points. Finding none there, you say farewell to the wolverine security guard, wishing him well. Remaining nonchalant, you walk away and turn a corner, then double-back around the library. Sneaking around, you start casing the joint from behind. Eventually, you are rewarded, finding an open window on the second floor close to a dumpster. You push it a meter over, climb up and leap up to grab the window ledge. Soon enough, you are inside - easy peasy.";
	now libstealth is 1;
	WaitLineBreak;
	now Resolution of Central Library is 11; [Snuck Inside]
	say "[libraryexplore]";


Section 3 - Inside the Central Library

to say libraryexplore:
	say "     Inside the library, you start looking around quickly, passing through the stacks. You spot a few signs of transformed victims - clothes and cum stains mostly - but not many. Clearly only a few people were here when the outbreak started. You scan through the stacks, looking for anything that might be helpful to your situation.";
	WaitLineBreak;
	let randomlist be a list of numbers;
	if 1 is not listed in bookcollection, add 1 to randomList;
	if 2 is not listed in bookcollection, add 2 to randomList;
	if 3 is not listed in bookcollection, add 3 to randomList;
	if 4 is not listed in bookcollection, add 4 to randomList;
	if 5 is not listed in bookcollection, add 5 to randomList;
	if 6 is not listed in bookcollection, add 6 to randomList;
	if 7 is not listed in bookcollection, add 7 to randomList;
	sort randomlist in random order;
	if randomlist is empty:
		say "     Perusing the books, you find nothing of interest in the nearby shelves. You are about to move to the next section when you spot a bottle of water and some chips someone must have set down on the shelf. From the pile of clothes and sticky mess on the floor, it's likely they won't be coming back for them any time soon. You grab them and stuff them into your pack for later consumption.";
		say "     Water bottle and chips obtained.";
		increase score by 5;
		now bookfound is 0;
	else if entry 1 of randomlist is 1:
		say "[libbook1]"; [martial arts]
		increase score by 15;
		now bookfound is 1;
	else if entry 1 of randomlist is 2:
		say "[libbook2]"; [riddles/jokes/pranks]
		increase score by 15;
		now bookfound is 2;
	else if entry 1 of randomlist is 3:
		say "[libbook3]"; [animals]
		increase score by 15;
		now bookfound is 3;
	else if entry 1 of randomlist is 4:
		say "[libbook4]"; [animal mating habits]
		increase score by 15;
		now bookfound is 4;
	else if entry 1 of randomlist is 5:
		say "[libbook5]"; [military reconnaissance]
		now bookfound is 5;
	else if entry 1 of randomlist is 6:
		say "[libbook6]"; [first aid manual]
		now bookfound is 6;
	else if entry 1 of randomlist is 7:
		say "[libbook7]"; [animal handling]
		now bookfound is 7;
	WaitLineBreak;
	if XP of Player > ( level of Player plus one ) times 10:
		level up;
	else if "Fast Learner" is listed in feats of Player and XP of Player > ( level of Player plus one ) times 8:
		level up;
	say "     You turn back to the stacks, but bump the shelf behind you with your pack, sending several tomes onto the floor. Their thumps on the stone floor reverberate through the quiet library. Before the sound has a chance to fade, you start to hear a loud [']Shhh!['] from somewhere in the distance, then another, and another. The sound of flapping fills the air as the shushing sounds start to travel around the room. You try to make your way back to your exit, but a pair of taloned feet swoop in. You manage to dodge to the side, getting pushed into the open reading area. You quickly note that this area is overlooked by all the floors above and that you are not alone here.";
	say "     You find yourself surrounded by harpies whirling around in the air and swooping down to attack you. The one who chased you out from the stacks is similar to the others you've seen outside, but with her gray hair in a tight bun and a pair of reading glasses dangling on a chain. Her eyes are wild with anger at the disturbance to her library.";
	now harpyfight is 3;
	LineBreak;
	challenge "Harpy";
	if harpyfight is 1 or harpyfight is 3:
		if harpyfight is 1, say "     With the assault of the first one ended, another is upon you. This one is younger and has managed to keep a low-cut top and skirt despite her radical changes. She wears glasses as well, giving you a naughty librarian look before leaping at you.";
		if harpyfight is 3, say "     Diving under one of the long reading tables as the harpy swoops in, you hear her thump against it. You scurry quickly between two chairs and try to make a break for it, but another is upon you. This one is younger and has managed to keep a low-cut top and skirt despite her radical changes. She wears glasses as well, giving you a naughty librarian look before leaping at you.";
		now harpyfight is 3;
		LineBreak;
		challenge "Harpy";
		if harpyfight is 1 or harpyfight is 3:
			say "     Having [if harpyfight is 1]beaten[else]evaded[end if] the second one, you continue to try reaching the exit, but are cut off at every turn. You dodge around one of the small tables with more of the winged librarians shrieking [']Shhhh!['] at you when in charges James";
			if centrallib is 4 or jamesfed is 2 or jamessex is 3:		[positive entry]
				say ". The big wolverine manages to drive off the harpies long enough for you to get outside, then backs himself out. 'I told you to watch out for them,' he grumbles, rushing you down the steps. He rubs the back of his head. 'Look, I'm grateful and everything, but I can't have anyone getting them riled up. You should probably stick clear of here or they may try dropping a big rock or a bookcase on you. Did that to the last guy who upset them.'";
				say "     You nod and head on your way, deciding to steer clear of the area from now on. As you head away, you [if bookfound > 0]flip through your new book, pleased with your find[else]are glad that you at least made it out of there with a little something[end if].";
				increase score by 10;
				now harpyfight is 0;
				now centrallib is 5;
				WaitLineBreak;
				now Central Library is resolved;
			else:									[negative entry]
				say ". The big wolverine growls angrily at finding you inside, and fighting the harpies to make matters worse. He bellows in rage and charges at you, pulling out a gun from under his coat. You dive for cover under a table and hustle as quickly as you can through the chaos. Thankfully, his arrival distracted the harpies enough that you're able to try getting past them. You dodge a few close calls and have to dive under a second table before you can make a rush for the front door. You push yourself free and leap down the steps three at a time. A gunshot rings out, chipping one of the stone lions as you run past it. You charge into an alley across the street, then make your way to cover.";
				say "     You're fairly certain that James won't follow, but the librarian harpies might. The angry wolverine may even tell them to go after you. You certainly can't go back there. Even with your enhanced healing, you don't want to be at the wrong end of a gun. Stuck in your temporary hideout for a while, you [if bookfound > 0]spend the time flipping through your new book[else]are glad that you at least made it out of there with a little something, if at all[end if].";
				increase score by 10;
				now harpyfight is 0;
				now centrallib is 6;
				WaitLineBreak;
				now Central Library is resolved;
	if harpyfight is 2:
		say "     The harpies swoop in around you and grab you, carrying you aloft in their talons. With each of your limbs gripped in their strong talons, you cannot struggle, especially as they fly up several stories in the large, central area. James, drawn by the commotion, comes running in and spots you being carried off[if centrallib is 4 or jamesfed is 2 or jamessex is 3]. He shakes his fist at the harpies and growls. 'I told you not to upset them. I'm sorry, but they won't let me up there.' With no hope of rescue from him, you[else]. He growls and shakes his fist. 'Serves you right! I told you this library is closed!' You[end if] are carried up to the top floor and dropped onto a large nest made of books. Looking to the stairwell for an exit, you see that this is where the fire occurred and that several bookshelves have been knocked over to bury the only way down. You are trapped with them and at their mercy.";
		say "     The librarian harpies lick, kiss, claw and fondle you incessantly, playing with your body with quiet whispers of pleasure. You are made to nurse from the breasts of those heavy with eggs while a young and sultry librarian plays with you, [if Player is male]licking and sucking at your cock[else]licking at your pussy while fingering you with her taloned hand[end if]. Trapped as you are in there nest, there is no escape from it and they make use of your body as they please until you are fully transformed and lose yourself to become one of them.";
		[puts harpy as lead monster for infection and impregnation]
		setmonster "Harpy" silently;
		turn the Player into a "Harpy" silently; [NOTE: Avoid attributeinfect output in a game over (@Stadler#3007)]
		if hellHoundLevel is 0:
			if "Male Preferred" is not listed in feats of Player and "Herm Preferred" is not listed in feats of Player and "One Way" is not listed in feats of Player and "Always Cocky" is not listed in feats of Player:
				now Cock Count of Player is 0;
				now Cock Length of Player is 0;
				now Ball Size of Player is 0;
			if "Male Preferred" is not listed in feats of Player:
				if Player is not female, now Cunt Count of Player is 1;
				if Cunt Depth of Player < 6, now Cunt Depth of Player is 6;
				if Cunt Tightness of Player < 4, now Cunt Tightness of Player is 4;
				if Nipple Count of Player is 0, now Nipple Count of Player is 2;
				if Breast Size of Player < 3, now Breast Size of Player is 3;
		WaitLineBreak;
		if Libido of Player < 60, now Libido of Player is 60;
		now humanity of Player is 0;
		end the story saying "You have joined the librarian harpies in their home at the Central Library.";
		now battleground is "void";
		WaitLineBreak;
		follow the turnpass rule;
		stop the action;


Section 4 - Books

to say libbook1:
	say "     You come across a book on martial arts with several photos and illustrations of techniques. While reading a book is no replacement for proper training, you should be able to learn a few things to help improve as an unarmed fighter. Enhanced by the infection, your mind picks up many details from a quick perusal of the book[if Player is in Grey Abbey Library]. Taking a seat in the library, you read through the book and make sure to absorb the details[else]. You slip it into your pack for a more thorough reading later, to make sure the information sticks[end if].";
	add 1 to bookcollection;
	if "Martial Artist" is listed in feats of Player:
		XPGain 50;
	else:
		FeatGain "Martial Artist";
	if Player is in Grey Abbey Library, follow the turnpass rule;


to say libbook2:
	say "     You come across a book on riddles, brainteasers and practical jokes. You flip through it, wondering if this could somehow be helpful. Not all the material seems to be geared towards children and several of the riddles are very clever. Your infected mind starts seeing ways to alter the pranks, replacing water, glue, flour and others with more potent monster fluids[if Player is in Grey Abbey Library]. Taking a seat in the library, you read through the book and make sure to absorb the details[else]. You slip it into your pack for a more thorough reading later, to make sure the information sticks[end if].";
	add 2 to bookcollection;
	say "     You have gained a [bold type]+2 bonus[roman type] in situations dealing with [bold type]jokes, riddles and pranks[roman type].";
	if Player is in Grey Abbey Library, follow the turnpass rule;


to say libbook3:
	say "     You come across a book on animals with plenty of photos to help you identify the various creatures you may encounter in the city. The book has many details on the habits, abilities and hunting/defensive techniques of the creatures as well. It is a veritable font of knowledge, giving your altered mind lots of scattered information that may improve your chances dealing with the hordes out there[if Player is in Grey Abbey Library]. Taking a seat in the library, you read through the book and make sure to absorb the details[else]. You slip it into your pack for a more thorough reading later, to make sure the information sticks[end if].";
	add 3 to bookcollection;
	XPGain 50;
	if Player is in Grey Abbey Library, follow the turnpass rule;


to say libbook4:
	say "     You come across a book on animals and their mating habits, colorfully titled [']Wild Animals[']. The book has many details and covers a wide gamut of creatures and even has numerous photos of their genitalia or of them in coitus. With a quick perusal, you are able to pick up a better understanding of some of the creatures out there, slightly improving your ability to deal with them. You decide to take the book with you, only partially for the information. While the information in the book may be a little dry and analytical, you also find it strangely arousing. You hang onto it for some [']personal['] reading later.";
	add 4 to bookcollection;
	ItemGain Wild Animals by 1;
	XPGain 25;


to say libbook5:
	say "     You find a book on military tactics and reconnaissance. The book seems to have originally been published for internal military use only. Being rather old, perhaps it became outdated and was declassified years ago. Regardless, it has considerable information on the subject, ranging from the means to gather this information, what information is needed, how to relay it and how it can then eventually be used effectively. On the whole, it seems like a very useful book. You find yourself wondering if it might be possible for you to gather intel while in the city and pass this along to others who might use it[if Player is in Grey Abbey Library]. Taking a seat in the library, you read through the book and make sure to absorb the details so you may be able to make use of it later[else]. You slip it into your pack for a more thorough reading later, to make sure the information sticks[end if].";
	add 5 to bookcollection;
	say "     You can now gain a [bold type]time bonus[roman type] by offering to gather information for certain people on the state of the city and its creatures.";
	if Player is in Grey Abbey Library, follow the turnpass rule;


to say libbook6:
	say "     You find a book on first aid which might be of use to you. The small pocket-sized book seems to cover most common injuries and how to treat them. While certainly no match for proper training, it should still help you deal with any unfortunate injuries and help you heal faster through proper care and treatment. You put it in your pack and remind yourself to consult it should you get hurt out in the city or when trying to use a medkit.";
	add 6 to bookcollection;
	say "     While the manual is in your possession, you will regain health at the rate of 1 faster each turn and recover 2 more HP when using a healing item (unless superseded by the Expert Medic feat).";
	ItemGain First Aid Manual by 1;


to say libbook7:
	say "     You find a book on animal training. The book deals with many of the principles involved and covers a variety of animals, not just dogs. The sections on guard animals are particularly interesting, finding several techniques you might use with any pets you acquire to help in their training. Enhanced by the infection, your mind picks up many details from a quick perusal of the book[if Player is in Grey Abbey Library]. Taking a seat in the library, you read through the book and make sure to absorb the details[else]. You slip it into your pack for a more thorough reading later, to make sure the information sticks[end if].";
	add 7 to bookcollection;
	if "Good Teacher" is listed in feats of Player:
		repeat with z running through pets:
			increase XP of z by ( level of Player + 1 ) * 3;
			say "     You have gained [bold type]10 XP[roman type] from reading the book and your pets have all gained XP as well.";
			increase XP of Player by 10;
	else:
		FeatGain "Good Teacher";
	if Player is in Grey Abbey Library, follow the turnpass rule;


Table of library books
title	booknum	subtable	bookcode
"martial arts"	1	--	"796.81.C345j"
"jokes"	2	--	"808.882.D172p"
"animals"	3	--	"591.1.G311a"
"animal mating"	4	--	"591.069.T724w"
"military"	5	--	"355.72.U523m"
"first aid"	6	--	"616.0252.S031f"
"animal training"	7	--	"636.088.P498a"

deweying is an action applying to one topic.

understand "dewey [text]" as deweying.

check deweying:
	if the player is not in the Grey Abbey Library:
		say "You can't do that here." instead;

carry out deweying:
	let found be 0;
	repeat with x running from 1 to number of filled rows in table of library books:
		choose row x from table of library books;
		if bookcode entry matches the text topic understood, case insensitively:
			now found is x;
			break;
	if found is listed in bookcollection:
		say "     You already possess a copy of that book.";
	else if found is 1:
		say "[libbook1]";
	else if found is 2:
		say "[libbook2]";
	else if found is 3:
		say "[libbook3]";
	else if found is 4:
		say "[libbook4]";
	else if found is 5:
		say "[libbook5]";
	else if found is 6:
		say "[libbook6]";
	else if found is 7:
		say "[libbook7]";
	else:
		say "     You look among the stacks, but don't find any books of interest.";


Table of Game Objects (continued)
name	desc	weight	object
"Wild Animals"	"A book on the mating habits of animals that you retrieved from the library. You could use it for a little [']personal['] reading if you'd like to get yourself excited."	2	Wild Animals
"First Aid Manual"	"A guide to proper first aid that should be handy to hang onto."	1	First Aid Manual

Wild Animals is a grab object. It is not temporary.

instead of using Wild Animals:
	say "     You pull out the book and flip through it, letting yourself become excited by the photos and scenes of wild, animal sex described within. You feel hornier after reading it, but also a little less human, having sunk further into the infection's untamed desires.";
	increase Libido of Player by 12;
	decrease humanity of Player by a random number between 2 and 5;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 2;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 2;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 2;
	if Libido of Player > 100, now Libido of Player is 100;
	now heatdrive is 1;
	drive heat;

the scent of Wild Animals is "     It smells like an old book, though there's a faintly arousing scent lingering around it as well.".

First Aid Manual is a grab object. It is not temporary.

instead of using First Aid Manual:
	say "     You pull out the book and flip through it, scanning through its procedures for dealing with various injuries. It should be handy if you get hurt out in the city.";
	say "     Keeping this book in your possession will increase your healing rate by 1 each turn and by 2 when using a healing item (unless superseded by the 'Expert Medic' feat).";

the scent of First Aid Manual is "     It smells like an old book.".

Instead of conversing the Doctor Matt while 5 is listed in bookcollection and mattintel is 0 and ( HP of Doctor Matt > 0 and HP of Doctor Matt < 100 ):
	say "     As you're about to talk to Dr. Matt, you consider passing along intel on the creatures in the city, which he can then relay to the military to help in their planning. With your knowledge from the book, you know which information is most likely to cause them to rethink and delay their plans. This would then buy you more time in the infected city, possibly buying you and Dr Matt more time to investigate what's happening, or just so you can do as you please in this fallen city.";
	say "     [bold type]Shall you relay this intelligence to the military?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		say "     Showing Dr Matt the book, you suggest to him that you can act as reconnaissance for the military. You tell him that since you've been facing the creatures out there, you can provide information on their strengths, weaknesses, number and tactics. You add that having this information will help the soldiers be better prepared for the strains they'll encounter as well as probably get him more time to work while the military holds back to better prepare. With the promise of greater opportunity to investigate this outbreak, he accepts, telling you to prepare reports that can then be transmitted to the military forces.";
		extend game by 24;
		increase score by 30;
		now mattintel is 1;
	else:
		say "     Deciding not to help the military in this way, you take a moment to reorganize your thoughts before speaking to Dr Matt on other matters.";
		now mattintel is 100;

Instead of conversing the Doctor Mouse while 5 is listed in bookcollection and mouseintel is 0:
	say "     As you're about to talk with Dr. Mouse further, you recall your book on military intelligence. As he's receiving assistance from the hospital staff in gathering samples, perhaps your information may be of benefit to them. If the teams he sends out were better informed, they'd likely be more successful, thereby helping the mouse with his research.";
	say "     [bold type]Shall you make the offer to him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		say "     Showing Dr. Mouse the book, you suggest to him that you can act as reconnaissance for him. You tell him that since you're been facing the creatures and finding where they're located, it may help his gathering of samples. The mouse's eyes flash and he grins widely at this offer. 'Oh yes! That would be a great boon indeed. Thank you very much for the offer. Please write up any information you can provide on the creatures. Be sure to include any details about the military as well. We don't want to run into trouble with them. Accidentally bump into them and have a problem.' You nod and provide the information to the delighted mouse, filling a stack of papers with notes, maps and more.";
		extend game by 24;
		increase score by 30;
		now mouseintel is 1;
	else:
		say "     Deciding against helping the white mouse and the creatures of the hospital, you take a moment to reorganize your thoughts before speaking to Dr Mouse on other matters.";
		now mouseintel is 100;

Instead of conversing the Gina while 5 is listed in bookcollection and hyenaintel is 0:
	project the Figure of Gina_face_icon;
	say "     As you're about to talk to Gina, you recall your book on military reconnaissance. You could use what you've learned from it to possibly help the hyena gang. Knowledge about the other creatures and the other factions that are starting to form could be of use to them. While they probably have many sources of information thanks to their numbers, the more analytical methods of intelligence gathering you've learned could still be of use.";
	say "     [bold type]Shall you provide this information to the hyenas?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		say "     Telling Gina about your plan, she's very pleased with your idea. 'I'm really getting sick of some of these reports and stories I'm getting from the others out there. Useless stuff like [']Oh Gina, there was a bunch of dog-things out by the 7-11. You know, the one with the bad Slurpee machine. Well anyway, I saw them there a couple of days ago. Thought you should know.['] Got that one today. It took me ten minutes to get what little useful stuff she knew out of her, and even then, it probably won't amount to anything. Some quality reporting would help a lot";
		if matriarchowned is 1:
			say ". As the matriarch, you could even show the scouts what information you want and order them to give it properly. I'm sure several of them will shape up if you give them clear orders. That'll give us a real intelligence gathering squad.'";
			say "     You nod and she sets that up quickly, ordering hyenas around to set up the meeting with you and the scouts. You drill into their heads what kind of information helps the most, how to get it and how to deliver it to Gina, your lieutenant. It seems to sink in with most of them and you chew out the few who don't, making sure they know that you want it that way even if they don't understand it. Gina promises to give the same meeting to the other scouts when they come back. The gang will surely grow and become a stronger force to be reckoned with out in the city now. They should delay the military further as well.";
			extend game by 24;
			increase score by 30;
			now hyenaintel is 2;
		else:
			say ". I'm sure the matriarch will be pleased with your reports,' she adds. Your recon information will help the hyena gang become a little stronger, opposing the other forces out in the city and delaying the military.";
			extend game by 12;
			increase score by 10;
			now hyenaintel is 1;
	else:
		say "     Deciding against helping the hyena gang further, you take a moment to reorganize your thoughts before speaking to Gina on other matters.";
		now hyenaintel is 100;


Central Library ends here.
