Version 1 of Richard by Rikaeus begins here.
[Version 1 - Creation of Richard the npc]

Section 1 - Basic Setup for Richard

An everyturn rule:
	if daytimer is night:
		remove Richard from play;
	else if daytimer is day:
		move Richard to Richard's Room;

Richard is a man.
The description of Richard is "[RichardDesc]".
The conversation of Richard is { "<This is nothing but a placeholder!>" }.
The scent of Richard is "     Richard smells like sex and musk, something that you expected from a randy satyr like him. However, beneath that scent you can smell... chocolate?".

to say RichardDesc:
	say "     The satyr boy is wearing a loose, short-sleeved t-shirt with the college's logo on it as well as a pair of camo cargo pants. The virile male is currently sitting at his computer, tapping away at the keys with an open book to his left. Upon closer examination you see that he is writing what looks to be an essay, huh. Apparently even with the nanite apocalypse, school still goes on. It's not long until Richard feels your eyes on him, causing him to turn and wave at you, a happy smile on his face.";

Section 2 - Talking with Richard

instead of conversing the Richard:
	if SatyrFratRichardRelationship < 4: [should be not yet available]
		say "     ERROR: Richard shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [SatyrFratRichardRelationship]";
	else:
		say "     As you walk up to Richard who's on his computer he turns to you with a smile. 'What's up?' he asks you, turning his chair to face you.";
		wait for any key;
		say "[RichardTalkMenu]";

to say RichardTalkMenu:
	LineBreak;
	say "What do you wish to talk about with the satyr?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Satyr Life";
	now sortorder entry is 1;
	now description entry is "Ask him what he thinks about his new looks";
	[]
	choose a blank row in table of fucking options;
	now title entry is "College";
	now sortorder entry is 2;
	now description entry is "Ask him about his college life.";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Satyr Life"):
					say "[RichardSatyr]";
				if (nam is "College"):
					say "[RichardCollege]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You shake your head, causing a confused look to form on Richard's face. He shrugs before getting back to work on his essay.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RichardSatyr:
	say "     As soon as you mention his satyr body his smile widens big time. 'Oh, I absolutely love it!' Richard says excitedly, running a hand through his goatee. When he says that though he moves to palm the bulge of his pants. 'I was already above average before the transformation but now I'm much bigger!' the guy says, a hint of lust in his voice. To your disappointment though, he pulls his hand waway before he can start getting hard. However, your frown is wiped off your face when he pulls you into a rough kiss. 'I'm thankful that you gave me this gift,' the male says before winking at you and turning back to his essay";

to say RichardCollege:
	say "     Richard quirks eyebrow at you when you mention college. 'Well, you know that I like spending my night time at the fraternity....' he trails off. You nod at him but ask him what he does during the day time. The satyr boy gives you an odd look and gestures to his computer. 'As you can see, I go to class in the day time. Right now I'm working on my chemistry paper.' The male tells you. Richard chuckles when he notices the confused look on your face. 'You're probably wondering why I'm still going to college during the apocalypse. Well, I still want to graduate, and the people here are still offering that, at a severely reduced price too!' He laughs. What does he mean by that exactly? 'Well, instead of money, they want food or water now. Which I can get easier than cash.' Is his reply. Noticing that you've distracted him from his essay he apologizes and tells you he needs to get back to work. You tell him it's no problem and step away.";

Section 3 - Sex

instead of fucking Richard:
	if (lastfuck of Richard - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     The satyr chuckles at you before waving you off. 'Down [if player is female]girl[else]boy[end if]! I need time to rest.' He jokingly tells you.";
	else:
		say "     While Richard is tapping away at his keyboard, you think of how you can use that body of his.";
		wait for any key;
		say "[RichardSexMenu]";

to say RichardSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck him with the dildo";
	now sortorder entry is 1;
	now description entry is "Use the dildo on Richard";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Richard off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the satyr's hard shaft";
	[]
	if player is male: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the goat boy";
		now sortorder entry is 3;
		now description entry is "Take Richard's ass for a ride";
	[
	if player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Richard's shaft in your pussy";
		now sortorder entry is 4;
		now description entry is "Take Richard's cock for a ride";
	]
	choose a blank row in table of fucking options;
	now title entry is "Take Richard's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Take Richard's cock for a ride";
	[]
	Sort the table of fucking options in sortorder order;
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck him with the dildo"):
					say "[RichardSex1]";
				if (nam is "Suck Richard off"):
					say "[RichardSex2]";
				if (nam is "Fuck the goat boy"):
					say "[RichardSex3]";
				if (nam is "Take Richard's shaft in your pussy"):
					say "[RichardSex4]";
				if (nam is "Take Richard's shaft in your ass"):
					say "[RichardSex5]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You shake your head and decide against sexing up the satyr boy.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RichardSex1:
	say "     Spotting the dildo on the floor you pick it up and hide it behind your back. You walk up to Richard and get on your knees. The satyr boy looks down at you with a curious glance. 'Come on stop it, I need to finish my essay,' he whines. You ignore him rather easily and unbutton his cargo shorts revealing that he goes commando, his dick popping out and hitting you in the face. With your hot breath on his hard cock it makes it more and more difficult for the male to focus on his homework. With a mischievous idea, you promptly swallow the tip of his manhood into your mouth. As soon as you do this you can smell his manly musk[if player is female], making your pussy wet[else if player is male], making your cock rock hard[end if]. You inhale the scent and moan loudly on his cock.";
	say "     Poor Richard is trying very hard to ignore your wonderful blowjob skills but you can tell that he is failing by the fact that the tappity tap tap of his keyboard has slowed down significantly. Seeing your chance you pull his shorts the rest of the way down and position a finger at his pucker. Before the satyr can protest, you penetrate his anal ring with your digit. The gesture makes him utter a moan and you swear he has slammed his hand on his keyboard. Simultaneously you give him a blowjob and finger him, quickly adding a second digit to his hole. It doesn't take you long to find his prostate, when appears to make him thrust deeper into your mouth. However, this is not what you had planned so you promptly remove your fingers and take your hidden surprise from behind your back.";
	WaitLineBreak;
	say "     Instantly you shove the dildo up his ass, making him bleat with pleasure. By now he is only able to focus on the sensations of you sucking his cock and fucking him with the toy. You make sure to angle your thrusts with the phallic shaped instrument so that you hit his prostate every time. Briefly you look up and see Richard leaned back in his chair, eyes rolled up and tongue lolling out in pleasure as you fuck him silly with the dildo. On top of that you make sure to deep throat his cock as much as you can, inhaling his manly musk the entire time. By now, the satyr boy is spilling copious amounts of precum into your gullet, something that makes you moan in ecstasy. It doesn't take long for the both of you to reach your climax.";
	say "     Richard's orgasm is rather instantaneous, shooting his jizz down your throat. However, you make sure to pull back to let some of it pool in your mouth. You on the other hand, feel a lot of pleasure shoot through your lower half[if player is female], causing you to orgasm violently, juices spilling from your pussy[else if player is male], causing your rock hard cock to cum violently, spilling your seed on the satyr's carpet[end if]. In his post-coitus bliss, the male pulls you up quickly and kisses you roughly, making sure to taste some of his own sperm. About a minute later the two of you pull back, a trail of cum linking your mouths together. Wiping it off, he smiles and thanks you. 'You were pretty damn good and I loved the use of my favorite toy,' he says, winking seductively at you. He then apologizes and tells you that he really needs to get back to work. Shrugging your shoulders you leave him be.";
	now lastfuck of Richard is turns;

to say RichardSex2:
	say "     With an idea in mind you move over to Richard and kneel down to crawl under his desk. The satyr gives you a curious look, confused as to why you are down there. 'What are you doing? Please don't try to distract me,' he says, his tone having an undercurrent of begging. You pointedly ignore his pleading and unbutton his trousers. You let out a brief moan of pleasure when the giant goat dick hits you in the face. Richard lets out a whine of protest when you trail your tongue up his hardening shaft. Despite his inability to focus, he manages to get back to typing his essay. Feeling a bit miffed at him not paying attention to you, you deepthroat his cock fully. You smile on his cock when the satyr lets out groan of pleasure.";
	say "     Suddenly however, you hear the sound of Richard's door opening and someone talking. 'Hey Rich! There's another party tonight are you coming?' The voice, a male by the sound of it, asks. When your satyr friend speaks you can tell that he's having trouble keeping his composure. 'S-sure. I-I might be l-laaaaaate,' he says, groaning the last part out in pleasure from you sucking rather hard on his dick. You're pretty sure that the goat's friend is giving him an odd stare. But by briefly looking up, you can see that he waves his friend away. Quickly after that the door closes and you are left alone with Richard, his manhood deep in your mouth.";
	WaitLineBreak;
	say "     Instantly Richard moves his chair back and grasps a hold of your hair. Quite quickly after that he starts rapidly fucking your face, driving his cock in and out of your mouth. 'You want this dick, well you're fucking going to get it,' he swears at you, grunting as his balls start to slap against your chin. [if player is female]You reach down and start to finger your pussy, moaning on his dick. [else if player is male]You start to masturbate your cock furiously, groaning on his dick. [end if]The taste of the satyr's manhood and the smell of his manly musk is turning you on greatly as well as the wet sounds of Richard throat fucking you that fill the room. The both of you are lost in the bliss of oral sex you two going at it for a good ten minutes.";
	say "     Once that amount of time is up, the two of you reach your peak. The virile pulls back and out of your mouth before furiously masturbating his cock. Seconds later his load explodes out of his mahood and onto your face, coating you with cum. [if player is female]That sets you off, making your orgasm hit you hard, your juices spilling onto the floor. [else if player is male]The debauchery makes you orgasm hard, spilling your load onto your hand, something that you quickly lick up. [end if]The goat boy then promptly pulls you up to him and licks all his sperm off your face before kissing you and sharing the jizz between the two of you. Once done, he pulls back and gives you a derpy smile, happiness oozing off of him. 'That was amazing.' He murmurs, giving you another kiss. 'But... now I really need to finish my essay,' he tells you, turning his attention back to his computer, his cock still hanging out of his pants. Shrugging your shoulders you crawl out from under and back away from him.";
	now lastfuck of Richard is turns;

to say RichardSex3:
	say "     The idea that pops into your head requires you to get a bit rough with Richard. Quickly you grab his hand and yank him out of his chair. He lets out a yelp as you drag him onto his bed. 'Wha- What are you doing?' he asks, utterly confused. However, you promptly silence him by latching your lips onto his, feeling his goatee brush against your chin. The male moans and groans under your rough kiss. You let your tongue explore his oral cavity, relishing in the taste, which you swear is chocolate. Wanting to go a bit further, you remove his shirt, revealing his perky nipples, which you tweak with your hands. The pain appears to make Richard let out a gasp of pleasure, writhing under your actions.";
	say "     Sadly for the satyr boy, his nipples don't hold your attention for long. Rather you immediately yank his shorts down to reveal his pert butt and large cock. By now Richard is too into it to protest, so you join him in being naked by stripping yourself of your clothing. Although as soon as you do this, you are shown that your partner isn't [italic type]that[roman type] out of it when he hands you a bottle of lube. You uncap it and pour some of it on your fingers, quickly moving them to his pucker. You start with one finger, pushing it into his hole before adding another to scissor his entrance open. Wanting to make it pleasurable for your friend you try your best to find his prostate. It actually doesn't take long, as evidenced by Richard arching his back and moaning loudly in pleasure.";
	WaitLineBreak;
	say "     Figuring that you've opened him enough, you position your hard cock at his entrance before thrusting in, balls deep. Richard takes it perfectly, groaning both in pain and pleasure. You let him get used to you before pulling out and slamming back in. It is by this time that you set a rapid pace to fucking your stayr friend's tight hole. Taken over completely by the feeling of bliss, he is now masturbating his own cock as he thrusts back against your own dick. Both of you are having the time of your lives, the sound of your balls slapping against Richard's ass cheeks. The tightness of the male's hole pushes you to the edge as well your friend.";
	say "     With a loud groan you slam yourself balls deep and release your load into the satyr. This sets him off as his sperm explodes out of his cock and onto one of the posters above his bed. Giving him a happy smile you cuddle up to him and nuzzle his neck, trailing kisses against it. Richard lets out a sigh of contentment, happy to let you do so. However, he doesn't just lay there, rather he directs your mouth to his own and begins to make out with you. After a few minutes of kissing you go back to cuddling, slowly falling asleep in each others['] arms. Hours later the two of you wake up, both smiling at each other. 'That was amazing, we should do it again sometime,' he says with a happy tone. You nod before extracting yourself from him and getting dressed. Once Richard has done the same he gives you a quick kiss before going back to his computer to work. As you look at him you can only think of your cum leaking out of his hole. But you quickly shake your head, not wanting to get hard again.";
	now lastfuck of Richard is turns;

to say RichardSex4:
	say "     Insert scene of vaginal sex with Richard";
	now lastfuck of Richard is turns;

to say RichardSex5:
	say "     You decide to have your fun with his cock, walking over to him and stripping yourself of your own clothing before spinning his chair so that he's facing you. Before he can say anything, you instantly crawl ontop of his lap and push your lips against his own. Doing that appears to successfully distract Richard from his homework. Even moreso when you start to grind your ass against his clothed crotch. While managing to still keep your mouth on his, you reach down, unbutton his shorts, and unzip them, revealing his large cock which smacks against your cheeks. As soon as this happens, your male friend wraps one arm around you and grabs a hold of his own dick. He positions it at your entrance and teases your pucker with the tip, causing you to break the kiss and bury your face into his neck, groaning. 'Come on, tell me you want this dick.' He murmurs into your ear.";
	say "     Unable to resist you beg him to fuck you hard, your lust spiking big time. Thankfully Richard doesn't let you stew, rather he takes your pleading and thrusts deep into you, his copious amount of precum acting as lube. When he's balls deep, both of you moan loudly, quickly resuming your passionate make-out session. While you were expecting the satyr to be a bit passive, you're severely proved wrong when he begins to rapidly fuck your ass. The sounds of his virile sack slapping against your cheeks as well as the slurping of his cock going in and out of your hole fill the room. The lewd noises make both of you even hornier, putting you two into a frenzy. It doesn't take that long for the two of you to reach your peak.";
	WaitLineBreak;
	say "     With a roar, Richard slams into you one last time before letting loose his heavy load into the bowels of your ass. [if player is female]This sets you off, causing you to yell out loud too, your juices spilling from your pussy. [else if player is male]You loudly grunt, the sensation of being filled with your satyr friend's seed making you cum hard, spilling your own jizz on his stomach. [end if]The both of you ride out your orgasms, cuddling each other closely, as best as you can in a chair. During this your partner gives you a sloppy kiss before smiling at you. 'As always you're fucking brilliant my friend,' he says, his tone filled with bliss. You tell him he's not bad either, which just makes him smirk at you. Ten minutes later the both of you get dressed and Richard apologizes, saying he really does need to finish the essay. So, you step back and let him get to work, enjoying the feeling of his cum leaking out of your ass.";
	now lastfuck of Richard is turns;

Richard ends here.
