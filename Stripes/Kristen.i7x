Version 1 of Kristen by Stripes begins here.
[Version 1 - Intro, basics and setup ]
"Adds an Arctic Fox named Kristen to the Flexible Survival game."

Section 1 - Event

FindingKristen is a situation.
The sarea of FindingKristen is "Outside";
when play begins:
	add FindingKristen to badspots of girl;
	add FindingKristen to badspots of furry;

Instead of resolving FindingKristen:
	if hp of Kristen is not 0:
		say "ERROR-Kristen-[hp of Kristen]E: This event should already be resolved!";
	otherwise:
		say "     While travelling through the city, you hear a bit of commotion coming from down a side street.  At first you're going to just let it go, but you catch sight of a rather human-looking woman rush past the far end of the alleyway, soon followed by an eager ewe.  You wonder if your eyes are playing tricks on you or if she might have an infection that's passably human at first glance.  Shall you charge to the rescue and hope for the best?";
		if the player consents:
			say "     Moving quickly, you follow after the pair.  Fortunately, you catch up to them as they reach a dead end.  The woman's struggling to climb over a wooden barrier at the end of alleyway.  The ewe's got the back of her jeans and is trying to pull her down by them.  You're momentarily distracted by the glimpse you get of her pantied ass, but shake it off when the girl slips down a foot and the sheep grabs her by the ponytail.  The woman cries out and she starts to lose her grip, so you rush in to deal with the horny ewe.";
			say "     Grabbing the ewe, you try to pull her back, but end up dragging down the woman as well.  She drops onto some cardboard boxes with her pants half off.  At this point, the lustful sheep turns to face you, knowing she's got to deal with you before she can claim her intended prize.  You also can hear the sounds of growing activity as more mutants are attracted to the sounds of her lustful baaing.";
			challenge "ewe";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     When you've dealt with the ewe, you look back to see the poor woman still a little dazed from her fall, but starting to rise.  You're about to go help her when another ewe rushes forward in search of companionship.  The noise of approaching sheep grows louder.  If you don't manage to get out of here soon, it sounds like there'll be far more mutton than you can handle here very soon.";
				challenge "ewe";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "     After your victory, you turn to check on the woman find the mound of crushed boxes empty.  Looking up, you can see her atop the wooden wall, looking down at you";
					if bodyname of player is "human" and player is pure and ( breast size of player < 10 and cock length of player < 12 and cock width of player < 16 ) and breasts of player <= 2 and ( breast size of player < 2 and cock length of player < 6 ):
						say ".  Without further hesitation, she reaches out to grab your hand to help a fellow human.  Helping you up and over the well, you run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					otherwise if player is bodily human and player is facially human and player is skintone human and tail of player is not "":
						say ".  She hesitates momentarily, you looking human enough at first glance, but your altered sexuality causing her to pause briefly.  It lasts only a moment though before she reaches out with her hand to help you up and over the wooden wall to make your escape with her.  You run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					otherwise:
						say ".  She hesitates for a few moments, staring at your mutated body.  It is only when the sound of the approaching mob catches her attention does she reach out to take your hand.  Helping you up and over the wall, you run off together for several blocks, only slowing your pace as the sound of the mob fades into the distance.";
					say "     Clearly having a destination in mind, she sneaks through alleys and behind buildings, trying her best to remain out of sight from the more randy creatures around.";
					say "     'I really want to thank you for helping me out back there.  I don't think I would have made it without your help.  I'm Kristen, by the way.'";
					say "     As you introduce yourselves, you're able to take in her appearance.  The Caucasian woman stands about 5 foot 10 inches.  She has fair skin with only a light tan, leading you to suspect that she's been hiding indoors a lot lately or using quite a bit of sunscreen.  She's got shoulder-length dirty blonde hair in a ponytail, which is now partially undone by the rough handling earlier.  Her eyes are a very pretty blue and she's got a silver stud earring on each ear.";
					say "     'We're getting close to the place I've been hiding out.  I guess I can trust you, so I'll show you.  It's not great, but I've been safe enough.  If I hadn't gone out to lo- well, if I'd stayed here, I'd not have gotten into that mess earlier.'";
					say "     She's leading you along the rear of a stretch of two-story shops.  Several of them have been damaged by the rampage of some creature.  She slips into the lower floor of a half-ruined travel agency and grabs the extension ladder stashed inside.  Carrying it a few buildings over, she uses it to climb up to the second story of one of them and go through an open window.  After you follow her up, the pulls the ladder inside, cutting off the means of entry.";
					now hp of Kristen is 2;
					move player to Kristen's Hideout;
					now Kristen's Hideout is known;
					now battleground is "void";
					increase score by 20;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     The ewe's assault leaves you too weak and dazed to prevent her from grabbing onto the woman and dragging her back down the alley.  You can hear the lustful cries of mob of sheep get louder when the poor human's dragged into their midst.  Still having enough sense to realize that you very well could be next, you struggle your way up and over the wooden fence and make a run for it.";
				now hp of Kristen is 1;
			otherwise if fightoutcome >= 30:
				say "     Hearing the mob getting closer, you know you need to make your escape before they get here.  You sidestep the ewe as she makes a grab for you, sending her crashing right into the woman as she tries to get up.  Finding herself atop an unchanged human, the sheep's attention immediately turns to groping and kissing her.  With a running start, you use her woolly back as a springboard to hop up onto the wooden wall and climb over it to get away before things get out of hand.";
				now hp of Kristen is 1;
		otherwise:
			say "     Counting yourself lucky that it's not you being chased for a change, you slip off in the opposite direction as the sound starts to draw the interest of more infected mutants.";
			now hp of Kristen is 1;
	now FindingKristen is resolved;


Section 2 - Kristen's Hideout

Kristen's Hideout is a room. It is fasttravel. It is private.
The description of Kristen's Hideout is "[krishideoutdesc]";

the scent of Kristen's Hideout is "[krishideoutscent]";

to say krishideoutscent:
[	if hp of Kristen < 12:	]
	if 1 is 1:
		say "This place smells of potpourri and cleaners, probably to help mask her human scent from any creatures nosing around.";
	otherwise:
		say "***";

to say krishideoutdesc:
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]R: You should be able to get here!  Get out!";
		move player to Grey Abbey Library;
		now Kristen's Hideout is unknown;
	otherwise:
		say "     This second floor apartment is above a ruined coffee shop.  It is fairly small, with a small living room, kitchen, bathroom and bedroom.  Despite the modest size, the accommodations are very well maintained and the furnishings seem quite expensive.  The furniture is of high quality, is well padded and rests upon hardwood floors.  There rooms are decorated with lovely vases and paintings.  It's clear that this place belonged to someone who liked living in the lap of luxury.  The place has been kept quite clean given the circumstances.  The ladder Kristen uses to get in and out (and to let you in) rests along one wall.";


Section 2 - Kristen

Kristen is a woman.  Kristen is in Kristen's Hideout.
The description of Kristen is "[kristendesc]";
The conversation of Kristen is { "Thanks." }.
kristenmsg1 is a truth state that varies.  kristenmsg1 is usually false.	[K mentioned J]
kristenmsg2 is a truth state that varies.  kristenmsg2 is usually false.	[general info]
kristenmsg3 is a truth state that varies.  kristenmsg3 is usually false.	[J mentioned K]
kristenmsg4 is a truth state that varies.  kristenmsg4 is usually false.	[K told about J]

the scent of Kristen is "[kristenscent]";

to say kristenscent:
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]S: You should be able to find me yet.";
	otherwise:
		say "     Kristen smells [if humanity of player < 33]tantalizingly[otherwise]pleasantly[end if] human.";

to say kristendesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";		
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]L: You should be able to find me yet.";
	otherwise:
		say "     Still apparently unchanged, this Caucasian woman stands about 5 foot 10 inches.  She has a slender figure with just the right amount of sexy curves to give her feminine allure.  She's wearing a white cotton shirt and black jeans.  She has fair skin with only a light tan, partially from staying hidden indoors a lot lately as well as her frequent use of sunscreen.  She's got shoulder-length dirty blonde hair which she wears in a ponytail.  Her eyes are a very pretty blue and she's got a silver stud earring on each ear.";


Section 3 - Conversation Tree

Instead of conversing the Kristen:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";		
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]T: You should be able to find me yet.";
	otherwise if hp of Kristen is 2:
		say "     'Welcome to my place.  Well, it's not really my place.  It belongs to my friend, but it doesn't look like she's coming back by this point.'  After an awkward pause, she affects some excitement in her voice and forces a smile.";
		say "     'I was on my way to come see her when things went nutso-bonkers.  It was all happening too fast - the power outage, the electronics failure, the quake, people turning into monsters...  Madness!  I rushed here through that chaos, got inside with her spare key and hid here overnight.  I could hear the rampage growing outside.  There's a club a few buildings over and the people inside must've turned into something big and destructive.  A lot of the buildings along this stretch are wrecked because of it.  Even the staircase up here was taken out, trapping me inside.";
		say "     'Which turned out to be a good thing, as it meant those mutant monsters couldn't get up here and find me.  At first, I hoped to just wait for someone to come rescue me, but it eventually became clear we're on our own for a while.  After that, I had to find a way down.  I could see that ladder a few buildings over, but it was out of my reach.  I made a rope out of some sheets,' she says, pointing to where that improvised rope still sits in one corner, 'and used it to get down so I could snag the latter.  As long as I'm careful not to be seen, I can get in and out and nothing else will stumble its way into my hideout.  I've still got to stay out of sight in case any of those flyers spot me or I ended up besieged, but it's otherwise safe.'";
		now hp of Kristen is 3;
	otherwise if hp of Kristen < 10 and kristenmsg1 is false and a random chance of 1 in 3 succeeds:
		say "     'Once I'd managed to work out a means to get in and out, I went off to look for my friend.  I knew it was a long shot, but it wasn't that far and I had to try.  I was on the phone with Janice when the network went down, so I knew she had been at this club where I used to work - the Palomino.  I snuck my way over there, but I found it overrun with mutants.  I couldn't even get close before one spotted me and a bunch rushed after me.  I managed to evade them, but after that close call, I held off on looking for... well, there just didn't seem to be much hope.'";
		now kristenmsg1 is true;
		if kristenmsg3 is true:
			say "     Realizing that she must be the Kristen that Janice spoke about, you tell her that you've met her friend.  She's almost in tears as you tell her about the vixen, so happy to hear that her friend's happy and safe.  'That sounds so like her.  She's always been a little vain and loving luxury.  Please let her know that I'm safe at her place.'";
			now kristenmsg4 is true;
		otherwise if janicetalk > 0:
			say "     Realizing that Janice might very well be the arctic fox femme you met at the dance club, you tell Kristen about her.  She's almost in tears as you tell her about the vixen, so happy to hear that her friend's happy and safe.  'That sounds so like her.  She's always been a little vain and loving luxury.  Please let her know that I'm safe at her place.'";
			now kristenmsg4 is true;
	otherwise if hp of Kristen < 12 and kristenmsg1 is true and kristenmsg2 is false and a random chance of 1 in 3 succeeds:
		say "     'I'm not really sure what's going on, but I have noticed a few things.  I feel in better shape than I've ever been and I heal really quickly now.  I'm also a lot hornier these days.  I'm guessing whatever is behind all this has affected everyone, including myself.  I've just managed to avoid running into anything to set off a mutation.  Like, my friend Janice has a collection of fur shawls in her closet that I don't dare get anywhere near.'";
		now kristenmsg2 is true;
	otherwise if hp of Kristen is 10:
		say "     Even as you pull out the blouse, Kristen recognizes it right away and quickly takes it from you.  She holds it up to look it over carefully before clutching it to her chest.  'Oh, this is Janice's.  I'd recognize it anywhere";
		if kristenmsg4 is false:
			say ".  Where did you get it?'";
			say "     You tell Kristen about Janice and how you met her friend.  She's almost in tears as you tell her about the vixen, having to dab her eyes with the blouse she's so happy to hear the news.  'That sounds so like her.  She's always been a little vain and loving luxury.  It's so nice of her to give me this to reassure me.  I always a little jealous about her having one and she'd tease me about it,' she laughs.  'Please thank her for me for the lovely gift.'";
			now kristenmsg4 is true;
		otherwise:
			say ".  That means it's really her.";
			say "     Kristen has to dab her eyes a little with the blouse she's so happy to hear the news.  'It's so nice of her to give me this to reassure me.  I always a little jealous about her having one and she'd tease me about it,' she laughs.  'Please thank her for me for the lovely gift.'";
		now hp of Kristen is 11;
	otherwise:
		say "     [one of]'I've been raiding my friend's pantry and gathered what I can from the nearby shops, so I'm okay for now.'[or]'I'm glad I decided to trust you.  It's good to have someone to talk to after all this.'[or]'I'm lucky I've managed to stay human for now, but I've got to be careful.'[or]'You need to be careful about what you come into contact with.  From what I've seen, lots of stuff - even random objects - can prompt a mutation.  There was one guy while I was trying to get here who turned into a cougar just because that was the kind of car he was driving.'[or]'Ever since this started, I've been really horny.  I'm sometimes tempted to just give up on all this hiding and throw myself into the arms of one of those sexy creatures I see from the windows.  I'm guessing that's how they get you.'[or]'Thanks again for helping me out back there.  I don't think I would have made it out of there without your help.  That ewe was cute and all, but I've never been a sheep to just follow the herd.'[or]'Stuck here on my own, I can't help but sometimes think everyone whose lives have been destroyed by this mess.  So many dead or driven mad.  It's a disaster when you really think about it.'[in random order]";
		if hp of Kristen is 12:
			say "[bracket]***More content to come soon. - The Mgmt[close bracket][line break]";


Section 4 - Sex with Kristen

the fuckscene of Kristen is "[sexwithKristen]".

to say sexwithKristen:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Kristen], Libido: [libido of Kristen], Msg 1: [if kristenmsg1 is true]Y[otherwise]N[end if], Msg 2: [if kristenmsg2 is true]Y[otherwise]N[end if], Msg 3: [if kristenmsg3 is true]Y[otherwise]N[end if], Msg 4: [if kristenmsg4 is true]Y[otherwise]N[end if] <- DEBUG[line break]";		
	if hp of Kristen < 2:
		say "ERROR-Kristen-[hp of Kristen]F: You should be able to find me yet.";
	otherwise if hp of Kristen is 2:
		say "     That's awfully forward of you.  Perhaps you should talk to her a little first.";
	otherwise if lastfuck of Kristen - turns < 6:
		say "     'I need a little more time to recover, hon.'";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to play with her right now.";
	otherwise:
		say "[bracket]***Sorry, sex content is coming soon. - The Mgmt[close bracket][line break]";
[		now lastfuck of Kristen is turns;	]


Section 8 - Variable Charts

[	hp of Kristen         ]
[ 0 = not encountered     ]
[ 1 = not saved           ]
[ 2 = saved				  ]
[ 3 = talked to her		  ]
[ ...                     ]
[ 8 = player told Kristen ]
[ 9 = player told both    ]
[ 10 = player gets item   ]
[ 11 = item given         ]
[ 12 = infected, step 1   ]
[...                      ]

[   libido of Kristen     ]
[  personality tracker    ]
[ 0 = no change           ]
[ 1 = sexed up as human   ]
[ ...                     ]


Section 9 - Endings

[to come later]

Kristen ends here.