Version 1 of Dwarves by Gherod begins here.

"Adds an entire new race, the dwarves, in form of a new infection and a new roaming creature past an introductory event."

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Savage Dwarf	"Savage Dwarf"

Savage Dwarf is a situation.
The sarea of Savage Dwarf is "Forest".

Instead of resolving a Savage Dwarf:
	say "     During your exploration efforts within the forest, you come across a grassy path near the base of a cliff. A little further ahead, there is - or was - what seems to be an entrance to a tunnel right through the rocky walls. It has collapsed, though you hear a lot of agitation coming from there, namely a short burly man shouting and hitting on the debris with his stone hammer. You can't quite understand what he's saying from here, you're standing too far to be able to hear him decently, but whatever it is, it looks like the man is having an argument with the rubble, or maybe someone is on the other side? [bold type]You could risk approaching him, but there isn't a lot of hiding area if you get closer, and he might see you.[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Get closer.";
	say "     ([link]N[as]n[end link]) - Ignore the situation for now.";
	if player consents:
		LineBreak;
		say "     It might be worth your time investigating what's going on with such a peculiar figure, so you take several steps close enough to hear the little stocky guy talking. His voice is deep and mature, one that you'd expect from a middle aged man. 'Come on! We're the same, here! Why would you keep me away?!' You hear nothing in response, only the impact force of his hammer hitting the rocks, but it doesn't seem to help him open any entrance. 'We could have lots of fun fucking eachother all day, it's no fair to keep all the fun for yourselves!' The man seems to slow down the hitting and the shouting, seemingly giving up on trying to get across the collapsed tunnel. He might not be the only dwarf around here, judging by his words.";
		say "     You try to pass by unnoticed, but unfortunately, you're not able to conceal yourself well enough, as the dwarf turns around immediately when you begin moving away. 'Hah... you know what, I don't need you dorks! I've found myself someone to fuck out here!' he says, readjusting his leather belt and throwing his hammer over his shoulder in a display of strength, supporting the weight with his body as he walks towards you. 'Yeah, I'm talking to you, over there! Hope you're ready to service me when I give you the beating you deserve for spying on me like that!' Uh oh, he doesn't seem keen on letting you go without a fight! Without any further ado, the dwarf charges in your direction, ready to pummel you with his heavy-looking weapon.";
		challenge "Dwarf Scavenger";
		if fightoutcome < 20: [player won]
			say "     After your last hit, the dwarf lies defeated on the ground, and his unability to move allowed you enough time to get out of there, back to safety and away from the crazy short man.";
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     With yet another blow from his hammer, his strength proves to be higher than yours. After an intense and hard fight, your efforts fail you as the dwarf overtakes you. Bruised and defeated, you now remain at his mercy.";
			if a random chance of 1 in 2 succeeds: [player gets facefucked]
				DwarfFucksOral;
			else:
				if player is female: [has a pussy, gets knocked up]
					if a random chance of 1 in 2 succeeds:
						DwarfFucksAnal;
					else:
						DwarfFucksPussy;
				else: [no pussy]
					DwarfFucksAnal;
		else if fightoutcome is 30: [fled]
			say "     Running away as fast as you can, you manage to outrun the dwarf. It's a rather easy task, as his short legs really are not match for yours. After getting out of track, you return to relative safety.";
		say "     This is new. You don't think this dwarf will be an unique case, and you might actually encounter more like him during your stay here. Anyway, he's gone now, so you're free to return to your previous tasks.";
		now Savage Dwarf is resolved;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Dwarf Male":
				now MonsterID is y;
				now area entry is "Forest";
				now non-infectious entry is false;
				break;
	else:
		LineBreak;
		say "     Deciding you have better things to do than to listen to an old crazy short person smashing some rubble while shouting towards nothing, you turn around with a shrug, returning to your previous path.";

Section 2 - Creature Responses

to say Dwarf wins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		if HP of Player > 0: [player submits]
			say "     Looking at the short man about to force his way through, you lose the will to fight and pose no resistance towards him, getting on your knees waiting for him to come for you at a much slower and less aggressive pace. 'Seems like you learned your place quicker than I thought you would. No need to beat you until you understand, eh? Unless that's what you're into...' With a sudden move, the dwarf kicks you back on the chest, making you fall back on the ground. He keeps his dirty boot just below your neck, looking down on you with a snarky grin. 'Submitting yourself to me like this... I'm sure you'll do well in servicing me. You're gonna be here for a while, [boygirl]!' He clearly knows he has the upper hand and that you must comply to every order. The dwarf certainly has the ways to make you regret any disobedience[if player is submissive], though your submissive instincts make you so eager to be used by him that he shouldn't worry too much about it[end if].";
		else: [player loses]
			say "     Having sustained so much damage from the dwarf's heavy pommeling, you're no longer capable to hold your ground against him. Your strength fails you as you're forced on your knees in front of the short man, his face showing a snarky grin as he looks down at you. 'Beating you to submission was easier than I thought. Look at you now! In your due place, at my full mercy.' With a sudden move, he gives you a kick on the chest, throwing you off balance to the ground. He keeps his dirty boot just below your beck, looking down at you with an amused chuckle. 'Now, if you do what you're told, things will go well for you. If not, then I'll just remind you who's the boss, here...' he says while making a suggestive movement with his hammer, reminding you of how painful his strikes felt. The dwarf certainly has the ways to make you regret any disobedience[if player is submissive], though your submissive instincts make you so eager to be used by him that he shouldn't worry too much about it[end if].";
		WaitLineBreak;
		if a random chance of 1 in 2 succeeds: [player gets facefucked]
			DwarfFucksOral;
		else:
			if player is female: [has a pussy, gets knocked up]
				if a random chance of 1 in 2 succeeds:
					DwarfFucksAnal;
				else:
					DwarfFucksPussy;
			else: [no pussy]
				DwarfFucksAnal;

to DwarfFucksOral:
	say "     'Now, time to put your mouth to work. And you better do it right!' he says while positioning himself just above your head, which stands tall enough to reach his still covered bulge. The dwarf makes sure you feel his erection growing larger in his pants by pulling your face straight towards it. 'That's it, be a good [boygirl] for me and smell my junk. Bet you're liking this, aren't you?' the dwarf keeps teasing you as his tool hardens so much that it starts feeling constricted for the short man, as if begging for release out of those pants. 'I think I'm gonna love shoving this down your throat... Making you choke on it as you take it deep down... all the way...!' You sense eagerness in your burly captor's raspy voice [if player is submissive], making you want to taste his cock even more than you already did, [end if]as he starts undoing his large belt, dropping his gear on the ground followed by the pants.";
	say "     With a quick slide, the dwarf's raging boner is given its much awaited fresh air, only throbbing and reaching its prime state of hardiness a few seconds later. Now, [if player is submissive]as he has you glancing all over his meat like a dog awaiting his long deserved treat,[else]as you're taking a good look at his meat,[end if] you notice that, despite it belonging to a rather short man in height, it actually has a considerable size of nine inches, veiny and thick as a beer can. However, the stocky man doesn't let you admire it for long. Although he takes great joy in [if player is submissive]seeing you so mesmerized by his pulsing length[else]seeing you impressed with this unexpected outcome[end if], he decides to slide his thick and large hand behind your head and pull you once more towards him, forcing you to wrap your lips around his rather wide prick. 'You gotta do better than that, my [boygirl]. How else am I supposed to fuck your face?' he taunts as he forces more and more of his length inside you, slowly reaching over your throat and keeping you from breathing soon enough.";
	WaitLineBreak;
	say "     He doesn't stop there. Once he has a good grasp of your head with both his hands, he lets go a sexual grunt as he makes you swallow his cock to the very end. 'Oohh, fuck... yeah! Feels so good being balls deep on someone...!' You really begin squirming and moaning for air, but the dwarf keeps your nose buried in his curly pubes for a good while before he starts pulling out slowly. With barely a second to catch your breath, he doesn't let you rest as his tool finds itself sinking in your mouth once again. Having to open wide to contain so much dick within your mouth makes your jaw ache, and your neck bulges out everytime he thrusts in deep into your esophagus. It's not the length, but rather the thickness, that turns this into such a difficult task to handle, [if player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that... Next time I catch you here, I might... O-oh... Fuck... You're gonna make me cum down that filthy throat, you little bitch...' Holding your head tight, the short-sized man keeps jerking his hips against your face, his plump ballsac swinging back and forth and hitting your chin. His increasingly louder grunts are an indicative of his orgasm approaching, and you know you're going to have to deal with a large load. 'I'm gonna fill you up... Fuck yeah...! I'm... Cumming!!' With this said, both his hands are on each side of your head when he pushes his cock as deep inside as possible. You don't even get to taste the warm seed he's shooting directly into your stomach, but you can definitely feel his thick manhood pulsing with pleasure as the jizz leaves it with each spurt.";
	WaitLineBreak;
	say "     At some point, he pulls out of your mouth, your face flushed and released altogether as gravity wins over your strength to avoid hitting the ground with the back of your head. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock towards your face as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with a belly filled with dwarf cum for some time before you can stand up.";

to DwarfFucksPussy:
	say "     'Now I'm gonna make you bend over for me. I need a tight place to shove my cock inside, and I bet you've got just the thing.' he says while forcing you to crawl on all fours, [if player is not naked]and the burly dwarf doesn't take any ceremony in lowering your clothes to expose your rear [end if]then taking a time to stroke himself while watching your naked butt. He makes you wait[if player is submissive], your eagerness to please making you wiggle your backside at him invitingly, [end if] until his manhood stands up hard and proud, already out of his pants and ready to drill your hole deep. 'You're certainly going to feel this when I'm stretching your pussy.' he taunts you, and a look over your shoulder shows you why he's so confident. A good sized cock of about nine inches long, thick as a beer can, is going to enter your cunt and pound it without mercy.";
	say "     He slides a hand down between your legs, rubbing your already moist parts and occasionally slipping a finger inside, effectively teasing you with his surprising dexterity. 'You're leaking, down there... That's gonna be fun!' You [if player is submissive]can't help yourself but moaning at his caress, part of you wanting more[else]can't help but feel aroused at this[end if], and the dwarf understands this as a sign to keep fingering you, his meaty fingers soaking in your juices as they feel you up from inside your vulva. When he's done exploring your womanhood, you feel his thick prick finding itself between your buns, the mere warm sensation of his length rubbing across your pussy making you shiver, reminding you of what was the bulky short man's initial intention.";
	WaitLineBreak;
	say "     The dwarf releases as sexual grunt once he starts penetrating you, now grabbing you by the hips as he lets himself sink inside you. His precum mixed with your natural lubrication makes it for an easy slip, even though you feel yourself being stretched before him. 'You've got a really tight one, [boygirl]! Feels so good...!' It's not long until he buries his cock ballsdeep inside you, his entire length being pushed and pull in slow movements at first. It's not the length, but rather the thickness, that turns this into such a difficult task to withstand as he picks up the pace, [if player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that...' he teases you, holding you with a tight grip, thrusting into you faster and faster. You hear his hips hitting your buttcheeks with a loud flesh clashing sound each time he goes in deep, and his plumb ballsac swinging back and forth. Being pounded by this horny short man feels like getting fucked by a strong and powerful beast, and it only gets worse as he fucks you harder and deeper... 'How do you like that dick, [boygirl]? I bet you're enjoying it like the filthy whore you are.' His taunts are a constant as you're reminded of your place, [if player is submissive]that you're gladly earning, [end if]feeling your womanhood being claimed by the dwarf for the next few minutes.";
	WaitLineBreak;
	say "     It is when he leans himself more over you that you know he's about to hit his climax. 'O-oh... Fuck... You're gonna make me breed your cunt, you dirty bitch!' Maintaining the pace as much as he can, the burly man's cock throbs inside you, and it's not long until a warm liquid begins filling your insides. 'Take it all, my [boygirl]! Oohh yeah!' He keeps grunting and moaning as his entire load is deposited inside your womb, which he keeps fucking until the end of his orgasm. You can't help but reach the point of no return yourself, his dick filling up so well that your body begs for a release, an intense wave of pleasure suddenly bursting through you, making you squirm in lust until it subsides.";
	say "     At some point, he pulls out of your pussy, your face flushed as you're released to collapse on the ground, exhausted. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock, which lands on your back, as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with your insides filled with dwarf cum for some time before you can stand up.";

to DwarfFucksAnal:
	say "     'Now I'm gonna make you bend over for me. I need a tight hole to shove my cock inside, and it's gonna be your asshole.' he says while forcing you to crawl on all fours, [if player is not naked]and the burly dwarf doesn't take any ceremony in lowering your clothes to expose your rear [end if]then taking a time to stroke himself while watching your naked butt. He makes you wait[if player is submissive], your eagerness to please making you wiggle your backside at him invitingly, [end if] until his manhood stands up hard and proud, already out of his pants and ready to drill your hole deep. 'You're certainly going to feel this when I'm stretching your bitch hole.' he taunts you, and a look over your shoulder shows you why he's so confident. A good sized cock of about nine inches long, thick as a beer can, is going to enter your ass and pound it without mercy.";
	say "     Once he has a good grasp of your ass, you feel his warm length griding between your buttocks, pulsing with need, eager to penetrate your hole. The mere sensation of his tip rubbing across your anus makes you shiver, reminding you that you're about to feel a wide cock throbbing inside you. The dwarf releases as sexual grunt once he starts penetrating you, now grabbing you by the hips as he lets himself sink inside you. His precum is the only lube you get as you're stretched before him. 'You've got a really tight one, [boygirl]! Feels so good...!' It's not long until he buries his cock ballsdeep inside you, his entire length being pushed and pull in slow movements at first. It's not the length, but rather the thickness, that turns this into such a difficult task to withstand as he picks up the pace, [if player is submissive]but you do your best to please the muscular dwarf with all your ability, only to hear him praise your efforts, which fills you with excitement[else]but you attempt to endure it as much as you can, your efforts not going unnoticed[end if].";
	WaitLineBreak;
	say "     'Ahh... who's a good [boygirl]? Taking my cock so well like that...' he teases you, holding your ass with a tight grip, thrusting into you faster and faster. You hear his hips hitting your buttcheeks with a loud flesh clashing sound each time he goes in deep, and his plumb ballsac swinging back and forth. Being pounded by this horny short man feels like getting fucked by a strong and powerful beast, and it only gets worse as he fucks you harder and deeper... 'How do you like that dick, [boygirl]? I bet you're enjoying it like the filthy whore you are.' His taunts are a constant as you're reminded of your place, [if player is submissive]that you're gladly earning, [end if]feeling your ass being claimed by the dwarf for the next few minutes.";
	say "     It is when he leans himself more over you that you know he's about to hit his climax. 'O-oh... Fuck... You're gonna make me cum inside your ass, you dirty bitch!' Maintaining the pace as much as he can, the burly man's cock throbs inside you, and it's not long until a warm liquid begins filling your insides. 'Take it all, my [boygirl]! Oohh yeah!' He keeps grunting and moaning as his entire load is deposited inside your ass, which he keeps fucking until the end of his orgasm. You can't help but reach the point of no return yourself, his dick filling up so well that your body begs for a release, [if player is male]and so you burst your own load right after his, leaving a trail on the ground below[else]an intense wave of pleasure suddenly bursting through you, making you squirm in lust until it subsides.[end if]";
	WaitLineBreak;
	say "     At some point, he pulls out of your asshole, your face flushed as you're released to collapse on the ground, exhausted. Standing and looking down at you is the dwarf with his still half-hard length, shaking any leftovers of his cum still oozing down his cock, which lands on your back, as he lets out a mischievous chuckle. 'Damn... I would keep you... but you know... I have no place of my own and I don't wanna share you with anyone else who ends up passing by, so... I'll let you go. You can always come back for me by yourself, ain't that right?' Laughing, he gets ready to leave by shoving his wide cock out of view back into his underwear, pulling his pants back up and tightening the belt, all this while eyeing you from above. 'See you later, bitch [boygirl]!' he shouts, carrying his stone hammer by his shoulder and walking away.";
	say "     You're left lying on the ground with your insides filled with dwarf cum for some time before you can stand up.";

to say Dwarf loses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say "     With one last attack, you manage to bring down the hostile dwarf, who falls down bruised and unable to move. 'Ungh! Y-you're tougher than you look... Alright fine. I... won't bother you anymore. No need to get feisty, alright?' Though you hear what seems to be a plea for mercy, albeit barely so, you do have the short stocky man right there, without a chance to offer any resistance. You could do anything you wanted to him and he'd have no chance to do anything against it. [bold type]How shall you proceed with the defeated dwarf?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Blow him";
		now sortorder entry is 1;
		now description entry is "Wrap your lips around that cock";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Facefuck the dwarf";
			now sortorder entry is 2;
			now description entry is "Grab the short man's head and pound his throat";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck his ass";
			now sortorder entry is 3;
			now description entry is "Strip the dwarf and get between his hairy buns";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Ride his cock";
			now sortorder entry is 4;
			now description entry is "Milk his meaty prick with your ass";
		[]
			choose a blank row in table of fucking options;
			now title entry is "Walk Away";
			now sortorder entry is 5;
			now description entry is "Leave the dwarf behind and walk away";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
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
					if (nam is "Blow him"):
						say "[DwarfBJ]";
					if (nam is "Facefuck the dwarf"):
						say "[DwarfFacefuck]";
					if (nam is "Fuck his ass"):
						say "[DwarfAssFuck]";
					if (nam is "Ride his cock"):
						say "[DwarfRide]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You have done enough to the poor little man, so you decide to leave him alone with his bruises and return to your previous tasks.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say DwarfBJ:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his cock in your mouth, despite his requests to leave him alone. He sees you approaching him with and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you caressing his crotch, causing him to release a light moan as he watches you. 'Oh... That feels nice... Uh, if that's all you want from me, I... guess...' he hesitantly replies to your touch, but you can feel him getting harder underneath his pants. With enough care, you undo his thick belt before pulling down his pants, releasing the previously constrained meat out in fresh air, still growing in your hands. The thick nine inch-long of a prick throbs with need as you eye it all over, teasing the dwarf with slow strokings.";
	say "     'You're driving me crazy with all that touching...' he says, his gaze gleaming with hope that you'd suck on his cock, but you don't intend to give that to him just now. Instead, your hand slides up and down through his length while you give his balls a nice squeeze with the other, giving him just about enough stimulation to stay rock solid. Stealing another moan from the short burly man, you then decide to focus your attention on the pre-soaked tip with your thumb, and eventually, leaning down over his dick, ready to give it some tongue. With enough dedication, you manage to make the dwarf jerk his hips, forcing you to hold him down as you start taking his entire manhood in your mouth, to which he grunts. 'I wanna fuck that mouth so bad...'";
	WaitLineBreak;
	say "     As you're giving the dwarf a treat of your own, there's a need in you to also please yourself, so you reach over your bits and caress yourself with one hand while the other is kept either stroking the large dick or fondling his plump ballsac. With this, you're doing your best to orally please the dwarf scavenger, soon able to take most of his length down inside, keeping a steady pace with your vertical motions while twisting your head slightly with each movement. Making sure every inch of his organ is thoroughly stimulated for a good time, there's nothing stopping you from picking up the rhythm, going down at it faster and faster... 'Oh fuck... if I knew you'd be this good, I wouldn't have fought you... I'd just let you do that all day!'";
	say "     Hearing the stocky man praise your efforts [if player is submissive]fills you with joy, and you even feel tempted to let him take charge for a while, but now is not the time for that[else]gives you the sign you're looking for[end if], as you feel he's actually getting closer to orgasm. You resolve that it'd be fun to slow down a bit and edge him, to make sure his load comes out as hard as possible, even though it creates great frustration on the poor dwarf, who's already grunting and begging you to don't stop. 'Please! I just need to cum... I'm not able to hold much longer...' he exclaims in a plea, but you give him a deaf ear, continuing this process for the next few minutes. 'Fuuck... P-please... I need to...!' but he tries yet again to convince you to make him blow, so you know he's on the verge of hitting his limit.";
	say "     With all that you made him endure by now, it's probably enough to get him burst hard. Are you going to test this theory by [bold type]letting him blow is load out, or will you swallow it all?[roman type][line break]";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Let it blow!";
	say "     ([link]N[as]n[end link]) - Drink all of that dwarf cum.";
	if player consents:
		LineBreak;
		say "     That's just going to be such a great and powerful load that you can't allow it to go unseen. With this in mind, you get a good grip of the dwarf's cock and stroke it even faster, an evident gesture that you intend to make him cum. 'Fuck... Yes! FINALLY!' You've got the short man moaning about as his meat pulses in antecipation, then just a few seconds later, you're rewarded with the powerful geyser of jizz that he makes, shooting his seed upwards and having it all landing back on him. 'Fuuuuck... That felt... fucking amazing...' he tells you, looking at you dazed with pleasure, his dong still oozing more of that thick seed of his.";
		say "     After drenching the burly dwarf in his own load, you squeeze his dick for the last few drops of cum. The mere touch now makes him squirm in slight agony, as his cock got much more sensitive after that rough treatment. 'Uuh... Well... now that we're done with this, does that mean we're good? Can I go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";
	else:
		LineBreak;
		say "     He's probably going to cum so much that you need to get a taste. With this in mind, you get a good grip of the dwarf's cock and stroke it even faster, an evident gesture that you intend to make him cum. 'Fuck... Yes! FINALLY!' You've got the short man moaning about as his meat pulses in antecipation, then just a few seconds later, as you slide the meat back inside your mouth, you're rewarded with the strong and sweet cum he shoots down your throat. You do your best to swallow every drop of his load until the last, a steady gush of jizz giving you a mouthful of the stuff. 'Fuuuuck... That felt... fucking amazing...' he tells you, looking at you dazed with pleasure, and as you carefully pull his dong out from between your lips, a drop of thick seed is still oozing from the tip.";
		say "     After drenching the burly dwarf in his own load, you squeeze his dick for the last few drops of cum. The mere touch now makes him squirm in slight agony, as his cock got much more sensitive after that rough treatment. 'Uuh... Well... now that we're done with this, does that mean we're good? Can I go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say DwarfFacefuck:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his mouth for your pleasure. With your clearly now superior strength, thanks to the fact you bruised him good, it should be easy to make such a short, weakened man to suck your cock. He sees you approaching him decidedly and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you pulling his head to meet your crotch. He doesn't seem to fight it as much as his attitude would suggest, even sliding a hand over your thigh in appreciation. You find this a sign of his submission as [if player is naked]your hardening length reacts to his touch[else]you begin getting hard in your pants, obliging you to take off your gear and free up your growing erection[end if], knowing it's time to get serious.";
	say "     Though you're not quite happy with just having him take your dick, you order him to work your junk all over. He doesn't limit his oral reach to your shaft, often giving your balls a nice tongue bath and tugging them between his lips. The fuzziness of his beard rubbing all across your groin gives you a funny feeling, though you can't shake off the apparent surprising skill the burly man shows at pleasing you. Grabbing him by the hair, you guide him by your shaft to get his mouth wherever you want, all this before going for your initial intention. When you're finally satisfied with the warm-up, you begin sliding your cock between the dwarf's lips as he looks at you with dazed eyes. To your pleasure, he eagerly obliges, taking in as much as your length as he can.";
	WaitLineBreak;
	say "     As you hold his head in your gasp, you thrust once... then the second time... and as you keep fucking his mouth, you realize the muscular dwarf seems to take it quite well! Both of his meaty hands are placed just a little above your thighs, not offering resistance, but actually caressing you and helping you jerk your hips to keep up the pace. Without any further ado, you give your best, [if cock length of player <= 12]shoving your entire manhood down his throat until your balls land right on his bearded chin, and[else]shoving what you can of your huge dick down his throat, causing the dwarf scavenger to struggle for the first time with your considerable size, but[end if] he responds with utmost dedication, doing what he can to take you in the best way he's able.";
	say "     Feeling his skillful tongue all over your prick as you're still shoving it all the way through makes you feel incredibly horny, and soon you begin feeling yourself getting closer to orgasm. While you're trying to hold off as much as you're able, the burly short man just brings the task several levels harder as you sense his dexterous touch around your ballsac, giving your testes a gentle squeeze and inviting you to shoot your load in him. Unable to resist the urge, you push the dwarf back to fall back on the ground - with your dick still in his mouth as you carefully follow - just hovering above of him with your hand on the back of his head. As he's absolutely at the mercy of your facefucking, the sensations are too much to allow you to hold control of your body...";
	WaitLineBreak;
	say "     Drilling his bearded face, as horny as you are, you don't think too much about it as your cock pulses with desire, but the dwarf's naughtiness doesn't end here. He slips a thick finger between your buns, giving your hole a really pleasant rubbing while you're taking his mouth, which immediately sets you off. Soon enough, your virile seed is shot right down his throat. You force him to swallow every single drop of your load as you keep thrusting back and forth, physically unable to offer any resistance to your primal need to fill him full of your cum. As your orgasm subsides, you pull out, feeling yet again his rough hand squeezing your cock out of the last drops of juice, which he gladly drinks away.";
	say "     'Love myself a good drink! I should try to fill a bottle with your cum next time I see you. I clearly have the motivation now!' he says, still licking his lips in great satisfaction. Sounds like he really didn't learn a whole lot with his defeat! 'I appreciate your generosity, but now that we're done, maybe it's time for you to let me go, yeah?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say DwarfAssFuck:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his ass for your pleasure. With your clearly now superior strength, thanks to the fact you bruised him good, it should be easy to make such a short, weakened man to bend over for you. He sees you approaching him decidedly and yet he begs 'Come on... I swear I'll let you be!' You leave him no answer as you're looking down towards him. Crouching, now at the same eye level, you let him know your intentions before forcing him to flip over, his compact ass held tight within his brown leather pants. You can see how firm and solid it is just by looking at the shape, which only reminded you of how great this is going to feel.";
	say "     Reaching over your crotch, you give yourself some pleasure as you're visualizing the whole thing. The stocky dwarf looks at you over his shoulder, enticing you further with his booty moves, openly inviting you to assault him from behind. Seems like he's getting into the idea, despite his initial fear of what you'd do to him. Without further ado, [if player is naked]you give your hardening length a few more strokes[else]you take your gear off and give your length a few more strokes[end if] before heading for his, providing a treat to the short man with a soft grabbing on his crotch as you undo the thick belt around his waist, only to slide off the pants just enough to see those hairy buns out in the air.";
	WaitLineBreak;
	say "     Sliding a finger over his pink hole, you hear the dwarf moan 'Ah... yeah, that feels amazing...' as soon as he feels you rubbing it. A little pressure just slowly sinking your index in it arouses him further, and you by sequence. Having his butt so in reach, as he's lying on the ground with his back arched, you could perhaps show him some tonguework. After all, he's really cooperating in this one, and you can't pass the chance to get a taste of that sweet ass. You lean over, kissing your way there through his fuzzy glutes, then spreading them as you let out a drop of spit fall on his anus, which winks back at you as if greedily sucking it up to lubricate itself. Eager as it looks, you proceed to plant your lips there, followed by your tongue as you press in deeper through the moist, fleshy tunnel.";
	say "     'Oooohh fuck... it's been a while since someone has done that...' The dwarf wiggles his butt over your face, as if begging for more attention centered on his hole, inviting you to press in even deeper, and soon you find yourself tonguefucking the short burly man. All the action makes him more loose and relaxed, you nearly don't have to do anything to sink inside his hole, an indicative that he's ready for your cock. With this in mind, you get up and rub your length across his butt cheeks as the dwarf humps back at you. 'I knew you couldn't resist it...' he teases you, as you feel the tip of your cock already oozing pre-cum as his hole kisses it back and forth. Eventually, you decide to press against it, slowly shoving yourself inside the dwarf's ass.";
	WaitLineBreak;
	say "     'Bet you like that, don't you? Never you thought a dwarf could have such a nice ass, yeah?' Though he keeps teasing you, [if cock length of player >= 12]he really struggles to take your huge size, but does his best to take as much as he can of you inside him[else]you make sure you bury your entire manhood inside him, until your balls are hitting his skin,[end if] without any complaints. You've got him moaning and grunting as you keep fucking his ass doggy style, slowly at first, but steadily. The way your meat feels inside the dwarf as he moves his ass together with your pounding only excites you even further, giving you an urge to go at it faster and deeper. 'Ohh [boygirl]! You're really hitting the spot!'";
	say "     As you keep the dwarf moaning with his deep raspy voice, you just want to go as hard as you can, and soon you find yourself on the verge of orgasm. Though you're not the only one, as the scavenger is also stroking his nine inch-long prick with vigor. 'I'm fucking close... Don't stop...!' he begs you, and you don't intend to, your dick reaching its peak of hardiness and starting to throb in antecipation. It doesn't take long for your seed to begin traveling through the insides of your reproductive system, and you don't even have time to pull out of his amazing ass... but it doesn't seem like that's what the dwarf wanted. Whenever you're not moving, he compensates your stiffness by thrusting back, as if he was milking your cock by himself.";
	WaitLineBreak;
	say "     Your cum fills the muscular shortie until the very end of your climax, throwing you out of breath by the time it subsides. Not long after you, the dwarf also blows his load over the ground while he feels you pulsing inside him, leaving a trail ot jizz ahead of you both. 'Fuuck... yes! That was a great fuck!' he shouts, completely dazed in his own orgasm. You two take some time to breathe, as you pull out of his ass and squeeze your dick off any cum drops left. You both gear up after you clean yourselves, the dwarf only having to pull his pants back on while still lying down on the ground, facing you this time. 'I hate to say goodbye to such a catch, but I believe we're sorted here, huh? I have places to be... Will you let me go now?' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say DwarfRide:
	say "     Looking over the defeated dwarf, you find in yourself the whim to take his cock, despite his requests to leave him alone. He sees you approaching him with and yet he begs 'Come on... I swear I'll let you be! I won't b-' before he's suddenly interrupted by you caressing his crotch, causing him to release a light moan as he watches you. 'Oh... That feels nice... Uh, if that's all you want from me, I... guess...' he hesitantly replies to your touch, but you can feel him getting harder underneath his pants. With enough care, you undo his thick belt before pulling down his pants, releasing the previously constrained meat out in fresh air, still growing in your hands. The thick nine inch-long of a prick throbs with need as you eye it all over, teasing the dwarf with slow strokings.";
	say "     'You're driving me crazy with all that touching...' he says, his gaze gleaming with hope that you'd suck on his cock, but you don't intend to give that to him just now. Instead, your hand slides up and down through his length while you give his balls a nice squeeze with the other, giving him just about enough stimulation to stay rock solid. Stealing another moan from the short burly man, you then decide to focus your attention on the pre-soaked tip with your thumb, and eventually, leaning down over his dick, ready to give it some tongue. With enough dedication, you manage to make the dwarf jerk his hips, forcing you to hold him down as you start taking his entire manhood in your mouth, to which he grunts. 'I wanna fuck that mouth so bad...'";
	WaitLineBreak;
	say "     But it won't be your mouth that he's going to fuck. With a loud popping sound, you pull his dick out from between your lips and [if player is naked]immediately climb on top of him[else]slide down your lower gear completely so you can climb on top of him[end if], and you're ready to tease him by putting his meat right between your buns, giving him a nice rub all the way down and back up. Since you gave him a good warm-up with your saliva, his dick stands ready to penetrate your eager hole. The burly dwarf eyes you anxiously, not out of fear, but of excitement as you lower down your backside on the top of his dong, then slowly pressing further down as it begins stretching the entrance to your ass. 'You're tight... fuck... I'm surprised you wanted to do this... It's exactly what I had in mind!'";
	say "     Pleased to know that your foe is enjoying your treat, you take as much as you can of his thick cock, albeit slowly as you manage to accomodate its considerable girth. In fact, it's not the length at all that makes this a hard task to endure, but the thickness of his meat that seems to stretch you from the inside so much, yet feeling like it's filling you completely. Once you're comfortable with it, you begin humping up and down, effectively riding him as he looks at you go with a smile on his face. 'Fuck yeah! Damn! That's just what I needed!' he shouts - or grunts - as his breathing gets deeper as well as his dick inside you. Not limiting yourself to simple vertical movements, you also jerk your hips around to bring out most of the sensations you can provide to the short man, and the meat inside you really seems to respond well to it, by throbbing with desire.";
	WaitLineBreak;
	say "     You keep this up steadily for a while, often jumping on his lap suddenly faster and harder, alternating between both rhythms. Though at some point, you feel like you just want to go along with the lust claiming both of your minds, giving your best at milking his dick with your ass. 'Oh, fuck... if you keep this up, I'll... fucking cum in you.' Feeling the dwarf's warm cum filling you up as you're on top of him is really what's going to happen if you don't stop riding him. With the inevitable result so close, there's really no point in stopping at all, so you just go faster on him, jumping on his cock until the sounds of skin clashing against eachother are loud and clear.";
	say "     'Damn, I'm gonna cum...!' Despite his warnings, you don't remove yourself from his dick, and are keen on accepting his load inside you. Soon, you feel it pulsing, quickly followed by a warm liquid gushing into you, coating your fleshy tunnel for a good while as the dwarf keeps shooting. His almost beastly grunts only calm down when his orgasm subsides, but your own happens while [if player is male]his rock-hard meat is still ramming hard against your prostate. Your cock bursts in a joyful blast of cum that lands on all over the short burly man, some even getting stuck in his beard![else]his rock-hard meat is still filling you in. Your body just trembles all over as a strong wave of pleasure overtakes you![end if] The dwarf smiles at you once things slow down, and you look at him as his dick slowly slides out of your pucker, a long stream of cum oozing out of your used asshole.";
	WaitLineBreak;
	say "     'Fuck damn wow! That was amazing! Makes up for having lost against you, though next time things won't be so easy for you!' he chuckles as he taunts you. With a little legwork, you manage to stand up and gather your things. 'So... I guess I can go now, right? As much as it pities me... but I have places to be!' he asks you, reminding you that he's still just one defeated foe at your mercy. But as you're finished with whatever you had in mind, there's no reason to keep him. You grab your things and leave the dwarf behind, returning to your previous affairs.";

to say Dwarf Desc:
	setmongender 3;
	say "     In front of you is a short middle-aged man, burly and muscular, wearing some kind of leather armor and armed with a stone hammer. Scratching his long full beard, which contrasts with his short dark brown hair adorning the top of his head, he gives you a snarky look before throwing a taunt at you:[line break]";
	if BodyName of Player is "Dwarf" and FaceName of Player is "Dwarf": [player looks like a dwarf]
		say "     'Did you get exiled from the underground dwarves? Or are you just another like me? Heh, no matter... I'll show you a good time once I'm done beating you up.' With that, he rushes at you.";
	else:
		say "     'Time for you to experience what's it like to get beaten by a dwarf. You'll be on your knees and at my mercy!' With that, he rushes at you.";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dwarf";
	add "Dwarf Male" to infections of HumanList;
	add "Dwarf Male" to infections of HistoricalList;
	add "Dwarf Male" to infections of MaleList;
	add "Dwarf Male" to infections of BipedalList;
	now Name entry is "Dwarf Male";
	now enemy title entry is "Dwarf Scavenger"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Yodgrak"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He charges towards you and gives you a dirty low kick.[or]He swings his stone hammer around, hitting you with staggering force.[or]Throwing a handful of dirt into your face, the short dwarf manages to smack you with his hammer's pommel as you're off guard, knocking you back with great strength.[at random]";
	now defeated entry is "[Dwarf loses]";
	now victory entry is "[Dwarf wins]";
	now desc entry is "[Dwarf Desc]";
	now face entry is "a weathered middle-aged man's, rugged and long-bearded, with short and shaggy dark brown hair hugging the top of your head";
	now body entry is "that of a short and burly man, musclebound and covered in hair. Your legs are fairly shorter than an average human's, making you stand half one's height";
	now skin entry is "peach toned and rough"; [ format as "You have (your text) skin"]
	now tail entry is "You have a hairy, compact muscled butt"; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a weathered male visage, rugged features and a long full beard growing out of your jaw and chin. Your hair becomes very short and dyed in a dark brown color"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a that of a middle-aged man, with a stocky and muscular build. Looking down, you notice your legs being much shorter than the rest of your body, making you standing half the height of an average human"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it gets rougher, becoming hairy and peach toned"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets tight and fuzzy, with compact muscled glutes"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 21;
	now dex entry is 15;
	now sta entry is 20;
	now per entry is 13;
	now int entry is 10;
	now cha entry is 11;
	now sex entry is "Male";
	now HP entry is 65;
	now lev entry is 8;
	now wdam entry is 12;
	now area entry is "Nowhere";         [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "dwarven ale";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "stocky"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "dwarf";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"dwarven ale"	"a kanteen bottle with some sort of strong alcoholic beverage inside. It's obviously dwarven in origin."	1	dwarven ale

dwarven ale is a grab object.

dwarven ale is infectious. The strain of dwarven ale is "Dwarf Male".

the usedesc of dwarven ale is "You bring the kanteen bottle to your mouth and chug its contents down, the drink tasting like a very strong beer that nearly burns down your throat.";

instead of sniffing dwarven ale:
	say "This beverage smells a lot like alcohol. It must be very strong.";

Section 4 - Endings

Dwarves ends here.
