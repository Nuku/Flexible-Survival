Rat Twins by Kernog begins here.
 "Persons and events relative to the adventurous rat twins Erin and Violet."

Section 0 - Variables

Part A - Essential

ratTwinsStatus is a number that varies.
[0 - Twins not met yet]
[1 - Twins met and helped]
[2 - Twins met again at the restaurant]

Part B - Non-Essential

isVoyeur is a number that varies. [0 no, 1 yes]
isTwinHere is a number that varies. [0 no, 1 yes]
partner1Choice is a number that varies. [1 -> ass, 2-> cock, 3-> mouth, 4-> cunt]
partner2Choice is a number that varies. [same]

Section 1 - Erin

Part A - Declaration and Description

Erin is a person.
the description of Erin is "[ErinDesc]".

to say ErinDesc:
	say "     Erin is one half of the pair of adventuring rats whom you saved from the pirate sharks. He looks fairly young, eighteen if you had to guess, and shares a lean and energetic build with his sister. His youthful face seems always alert for some mischief, azure eyes scanning the surroundings and throwing longing looks at his sister whenever their eyes meet. Like his false twin, his fur is mostly snow white, like his hair, with dark grey patches here and there. He wears a pair of army pants but no top, giving him a bad boy look. The backside of his pants have been cut open with scissors, to let his hairless tail wiggle freely behind him. Noticing that you look at him, Erin leans on a table and winks at you while he takes the pose";
instead of sniffing Erin:
	say "      Erin's fur retains the salty smell coming from the ocean.";
	
Part B - Dialogue

instead of conversing Erin:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			say "     'We are twins. False twins, to be more precise. Violet was born first, and I followed, like, twenty minutes after. And of course, she can't help but treat me as the little brother.'";
		-- 2:
			say "     'The pants? A strange coyote guy threw them at me while I was strolling the streets. He seemed in a hurry to do some kind of trick.'";
		-- 3:
			say "     'Me and my sister, we look out for each other since the whole mess started. We helped each other remaining sane. Especially when the heat was starting to take over. But I'm saying too much.'";
		-- 4:
			say "     'You like the tail sleeve? I think it looks cool. There's a cat lady holding a clothes shop at the mall. She made it for me.'";

Part C - Sex scenes



instead of fucking Erin:
	if (lastfuck of Erin - turns < 3): [he got fucked in the last 18 hours = 6 turns]
		say "     'Ho ho, hey, easy tiger! I'm all for going another round, but some other time. I have things to do.'";
	else: [ready for sex]
		say "     'That's a smile I know well,' Erin says as you come up to him. While not directly looking at you, you also notice Violet's ears perking up and trying to eavesdrop your conversation. 'What are your plans this time?'";
		WaitLineBreak;
		say "[ErinSexMenu]";

to say ErinSexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Erin";
		now sortorder entry is 1;
		now description entry is "Use the cute rat's ass. With his and his sister's permission, of course";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bottom for Erin";
	now sortorder entry is 2;
	now description entry is "Give the teenager a way to blow off some steam";
	[]
	[if isVoyeur is 1 and lastfuck of Violet - turns < 3:
		choose a blank row in table of fucking options;
		now title entry is "Threesome";
		now sortorder entry is 3;
		now description entry is "Have a threesome with his sister";]
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
				if (nam is "Fuck Erin"):
					say "[ErinFuckTop]";
				if (nam is "Bottom for Erin"):
					say "[ErinFuckBottom]";
				[if (nam is "Threesome"):
					say "[ThreesomeErin]";]
				WaitLineBreak;
			infect "Slut Rat";
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You inform Erin of your second thoughts. The rat shrugs, then turns around to check on what his sister is doing.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;	

to say ErinFuckTop:
	say "     Erin considers your proposition. [one of]'This will be a big first for me. I'm all for experimentation, but I did not to be forced into it by one of these crazies outside. Since it's you, I'm totally down with it.' [or]'One more time? Last time was rather intense. I'm totally down with it.'[stopping] The teenager rat points at the storage room behind him. 'Let's make ourselves comfortable.'";
	say "[ErinVoyeurProposal]";
	say "     [bold type]Do you agree to let Violet watch you and Erin make love?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) Sounds hot";
	say "     ([link]N[as]n[end link]) [if isVoyeur is 0]This would feel awkward[else]Not this time[end if]";
	if player consents:
		LineBreak;
		say "[ErinVoyeurOk]";
	else:
		LineBreak;
		say "[ErinVoyeurKo]";
	WaitLineBreak;
	say "      Erin and you take your time peeling each other clothes, exploring each other's body[if isTwinHere is 1] while Violet, true to her word, sits in a corner, and watches the show with eagerness[end if]. He lets you pass your fingers on his soft, grey-white fur while his own limbs run down your [body of player] back. Your two heads slowly lock with each other in a long and passioned french kiss.[if isTwinHere is 1] You can hear Violet's breath accelerate as her sibling and you get lost into your passions. When you take the time to give her a peripheral look, you notice her hands are already cupping her breasts and her crotch in an absent-minded manner.[end if] The feeling of Erin's member brushing against your [if cocks of player is 1]own [cock of player] erection[else]pack of erected penises[end if] fills you with arousal and anticipation. 'Help me get ready?' he asks softly. You nod[if isTwinHere is 1]; Violet nods as well[end if].";
	say "     Erin gets on his four limbs on the old cot in the middle of the room and lifts his tail for you, revealing his pink rosette.  [if isTwinHere is 1]As you realize that you do not have lube, you hear Violet tell you 'Catch.' and a plastic tube of the stuff lands in your hands. You thank her, which she waves off before putting her hand back in her panties[else]Realizing that you forgot the lubrication, you fumble through the small mess to find one, before finding a tube[end if]. You apply some on your fingers and tell Erin to relax. You push one finger inside. Erin gasps[first time]; you know from the tightness that it is really his first time, and take extra care[only]. 'Cold...' he moans. While his hand goes to stroke his own cock, you begin to pump your finger in his smooth butt. Once the squeeze of his anal ring relents, you slip a second digit.[if isTwinHere is 1] Mirroring your actions, Violet slips her index inside her pussy.[end if] A third one comes quickly and Erin gasps again, this time in pleasure. 'O-okay. I think I'm good,' he says.";
	WaitLineBreak;
	say "     You quickly apply the remaining lube on your fingers on your still hard cock, and stroke your [cockname of player] member[if cocks of player > 1]s[end if] a little. Once you deem yourself ready, you press yourself against Erin's rump for a moment. [if cocks of player > 1]You let your [cocks of player] cocks grind against the plump behind, tainting the clear fur with your pre, before grabbing one and lining it with the rat's hole[else]You let your [cock size desc of player] grind against the plump behind, tainting the clear fur with your pre, before grabbing it and lining it with the rat's hole[end if]. You push, slowly. [first time]Erin whines from having his sphincter stretched for the first time. You go in progressively, pushing in then pulling out, until the male is relaxed enough to let your glans slip past his anal ring without protest.[only] Erin lets out a long moan as you slowly dig in his hole and bottom out.[if isTwinHere is 1]Violet startles you as well, letting out a loud shrill as she came from watching her brother being taken. 'S-Sorry,' she pants. 'It-it was too much. So hot.' 'F-fuck, sis...' her twin groans, visibly excited as well.[end if]";
	say "     You pump Erin nice and slow, reveling into the calm, peaceful mood of the moment. [if isTwinHere is 1]Even Violet's badly covered moans, as she tries to rile herself for another climax, have eventually become part of the environment, and they do not bother you anymore. They do excite Erin terribly, however.[end if] As the teenager rat is now used to your [cock size desc of player] [cockname of player] cock, you pick up the rhytmn, and the slaps of your pelvis against Erin's butt joins the concerto of moans coming from you and [if isTwinHere is 1]both twins[else]your partner[end if].";
	WaitLineBreak;
	say "      Erin suddenly grunts. 'Oh. Oooh. C-Cumming. Aaah!' His member, that he did not stop to stroke for a single moment since you started, spurts several ropes of semen on the already cum-stained cot. The intense pressure of the tight rodent around your member have you climax in turn, and you throw your own load inside Erin[if cocks of player > 1], his thighs and the cot below[end if].[if isTwinHere is 1] Violet comes for the second time, this time from four of her fingers furiously mashing inside her pussy, while the other franctically flicks her pleasure button, and an impressive gash of fem-cum squirts out from her lower lips.[end if]";
	say "     You pant, observing the happy mess that you made. Erin reaches towards a carboax and pulls out a box of kitchen papers to wipe the fluids and prevent the cot from getting (too) dirty, with your help[if isTwinHere is 1] and his sister's[end if]. 'This was awesome,' Erin says, between two pants. 'If you want to do it again, you-I-er, you tell me. I need a litle rest, though.'";
	now isTwinHere is 0;

to say ErinFuckBottom:
	say "     Erin smiles warmly at your proposition. 'With pleasure. I will make sure the entire restaurant hears us,' he jokes, affably slapping your shoulder at your [if isVoyeur is 0]embarassed[else]flustered[end if] reaction. The teenager rat points at the storage room behind him. 'Let's make ourselves comfortable.'";
	say "[ErinVoyeurProposal]";
	say "     [bold type]Do you agree to let Violet watch you and Erin make love?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) Sounds hot";
	say "     ([link]N[as]n[end link]) [if isVoyeur is 0]This would feel awkward[else]Not this time[end if]";
	if player consents:
		LineBreak;
		say "[ErinVoyeurOk]";
	else:
		LineBreak;
		say "[ErinVoyeurKo]";
	WaitLineBreak;
	say "     Erin and you take your time peeling each other clothes, exploring each other's body[if isTwinHere is 1] while Violet, true to her word, sits in a corner, and watches the show with eagerness[end if]. He lets you pass your fingers on his soft, grey-white fur while his own limbs run down your [body of player] back. Your two heads slowly lock with each other in a long and passioned french kiss.[if isTwinHere is 1] You can hear Violet's breath accelerate as her sibling and you get lost into your passions. When you take the time to give her a peripheral look, you notice her hands are already cupping her breasts and her crotch in an absent-minded manner.[end if] The feeling of Erin's member brushing against your [if cocks of player is 1]own [cockname of player] erection[else if cocks of player > 1]pack of erected penises[else]stomach[end if] fills you with arousal and anticipation. 'Should I help you get ready?' he asks softly. You nod[if isTwinHere is 1]; Violet nods as well[end if].";
	say "     Erin helps you get on all fours, and spread your legs apart. He deflty slides under you, placing his erect cock at your level. Just as you were about to make a comment about his flexibility, Erin cuts you off by burying his muzzle into your buttcrack and giving your [if player is male or anallevel is 3]anal ring[else]cleft[end if] a longue lash of the tongue. Shivering, you bury your [face of player] head into his crotch and take his the boy's average cock into your mouth. A heated 69 unfolds[if isTwinHere is 1] under the pleased gaze of Violet[end if]. Erin goes to town on your crotch, and you return the favour in kind. [if isTwinHere is 1 and player is not male]You can hear Violet give her brother some advice: 'Don't forget her clit.' 'Bite it a little, she'll love it.' 'not so fast, bro. You'll make her cum already!'[end if] Eventually, the both of you agree that you should take it up a notch. You roll off on your back and spread your legs, and Erin gets on top of you. You can feel his cock, now wet with your saliva, grinding against your [if player is male or anallevel is 3]ass[else]pussy[end if]. [if isTwinHere is 1]'How's the view, sis?' he asks. You realize that Violet has a full view on your and Erin's crotches. 'A fucking plus,' she answers.[end if]";
	WaitLineBreak;
	say "     The pendulum movement of Erin's hips has him eventually point the tip of his cock against your [if player is male or anallevel is 3]ass[else][cunt size desc of player] pussy[end if]. Like a ram it pushes forward, parting your inner walls in one fluid movement. Erin groans in pleasure on top of you, and wastes no time pumping his pelvis into you. The room fills with the loud and rhytmic slaps of your two bodies slamming together; first distanced and wet, then rapid and dry as you wrap your legs around the rat's torso and squeeze him against your [breast size desc of player] bosom.[if isTwinHere is 1] Violet pumps her finger inside her pussy, trying to follow the more and more franctic pace of her sibling. You cannot see her from your position, but her loud moans are a testimony to her current state of arousal.[end if]";
	if tailname of player is not "human":
		say "     Erin keeps slamming into you. His tail is entangling with yours during the intercourse, and you can feel it rub against your [tail of player] tail. You reach your respective climax nearly at the same time, and your muscles clench around his virile member, as he paints your [if player is male or anallevel is 3]anal cavity[else]womb[end if] white with his seed. [if isTwinHere is 1]A long shrill tells you that Violet has cummed hard as well.";
	else:
		say "     Erin keeps slamming into you. You reach your respective climax nearly at the same time, and your muscles clench around his virile member, as he paints your [if player is male or anallevel is 3]anal cavity[else]womb[end if] white with his seed. [if isTwinHere is 1]A long shrill tells you that Violet has cummed hard as well.";
	say "     You stay there for a while, Erin and you trying to catch back your breath. Eventually, the male rat parts away from you,[if cocks of player > 0] his crotch covered with your own semen,[end if] but not before giving you a langurous kiss on the lips. 'I need some rest, but you are more than welcome if you want to do it again,' the male rodent tells you, before helping you to stand up and giving your clothes back.";
	if player is male or anallevel is 3:
		mimpregchance;
	else if (player is female or player is herm):
		fimpregchance;
	now isTwinHere is 0;

to say ErinVoyeurProposal:
	say "     Just as you are about to head inside, Violet taps your arm to get your attention. She looks flustered. [if isVoyeur is 0][one of]'H-hey. Don't get the wrong idea... No actually, totally get the wrong idea if you want. Do you mind if... If I watch you and Erin do it? I won't intrude or anything, promise. I just... Want to watch.'[or]'Say, did you consider, um, changing your mind? About me watching you and Erin?'[stopping][else]'Do you mind if I take a seat in a corner? I have the feeling you wouldn't mind, but... You know, I'd rather ask.'[end if]";

to say ErinVoyeurOk:
	if isVoyeur is 0:
		say "     'You agree?' Violet asks, surprised. You nod affirmatively and the female rodent's breath accelerates in anticipation. 'Th-that's very nice of you. It's actually kind of a kink of mine. And my brother's. But we did not want to make you uncomfortable or anything.' Erin lets out an embarassed little laugh behind you, but seems relieved that you do not seem to mind the twin's quirk. 'Well, let's get [italic type]everyone[roman type] comfortable, shall we?' he says eventually.";
		now isVoyeur is 1;
	else:
		say "     'I knew you would not refuse,' Violet says, appreciative of your open-mindness. Erin chuckles. It seems that both twins are equally excited for what is coming. 'Well, let's get [italic type]everyone[roman type] comfortable, shall we?' Erin says eventually.";
	now isTwinHere is 1;

to say ErinVoyeurKo:
	if isVoyeur is 0:
		say "     'Oh... Um... Yes, I guess,' Violet mumbles, visibly embarassed. You reassure her, and Erin too, that you do not mind the implications or the kink itself, but that you would feel uncomfortable, knowing that you are being watched. 'This was worth a try, sis,' Erin says, patting his twin's arm.";
		say "     'Yeah, I guess,' Violet replies. 'Have fun, both of you.' Erin affectuously kisses his sister on the forehead, before inviting you, once again, to enter the small storage room.";
	else:
		say "     'It's okay,' Violet reassures you. 'Even me and my brother need some privacy. From each other I mean, not... Stop it, you're making me dig even deeper'.";
		say "     'Sssh, sis, it's okay,' Erin reassures his sibling with an affectuous kiss on the forehead, before inviting you, once again, to enter the small storage room.";
		say "     'Have fun, both of you,' you can hear Violet say just before the door closes.";

[to say ErinThreeSome:
	say "     Erin and Violet's rat ears twitch with perfect synchronicity as you make your proposition.";
	say "[bold type]Do you want to top or to bottom during the threesome?[roman type]";
	say "[link]Top[as]y[end link] You want to take an active role.";
	say "[link]Bottom[as]n[end link] You want to service the two rats.";
	if player consents:
		LineBreak;
	[Threesome sex menu: what body part do you claim? -> ass, mouth, cock -> partner1Choice]
	[Violet chooses another part randomly until it is not the same as the player.]
	[Part 1 - switch on partner1Choice]
	[Part 2 - switch on partner2Choice]
	[Part 3 - finale]
	else:
		LineBreak;
	[Player select body parts for each partner (2 multiple select menu with partner1Choice and body parts taken into account)]
		say "[TwinRatsThreesomeBottom]"; [this scene is common to both variations of the threesome, and follow the previous structure] ]
	

Section 2 - Violet

Part A - Declaration and Description

Violet is a person.
the description of Violet is "[VioletDesc]".

to say VioletDesc:
	say "     Violet is one half of the pair of adventuring rats whom you saved from the pirate sharks. She looks fairly young, maybe eighteen if you had to guess, and shares a lean and energetic build with her brother. Her youthful face seems always alert for some mischief, azure eyes scanning the surroundings and throwing longing looks at her brother whenever their eyes meet. Like his false twin, his fur is mostly snow white, like her hair,  with dark grey patches here and there. Her hair are arranged in unruly dreadlocks, dyed in several neon colors, although the color looks worn out, hair dyes must be rare in these times. Violet wears a black bra, assorted to used denims. She seems also found of leather accessories: she wears a choker, a spiked wristband, and adorned her tail with bangles made of old leather belts. Noticing that you look at her, Violet grins, then flashes her breasts at you: 'Izzat what you want to see? Ha ha... Perv['].' She winks at you and pulls up her bra.";
instead of sniffing Violet:
	say "      Violet's fur smells of sea salt, despite visibly taking great care of her fur.";

Part B - Dialogue

instead of conversing Violet:
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			say "     'What about my clothes? What's the point anyway: as soon as I find something neat to wear, I get pounced on, and they get destroyed. Do you believe me if I tell you that these ones were originally a barely-used pair of yoga pants?'";
		-- 2:
			say "     'Daaamn, I'm bored. Nothing to do here except oogle at the beach goers. Then again, this orca lifeguard is one gorgeous piece of fish meat... Why are you looking at me? Did I say something stupid?' ";
		-- 3:
			say "     'Before you ask: no, this is not [']emo[']. I'm going for the punk rat look!'";
		-- 4:
			say "     'My brother may not look like it, but he has one hell of a pair, under his pants. Probably a rat thing. How do I know that? Why the fuck do you care! Fuck off!'";
	
Part C - Sex scenes

instead of fucking Erin:
	if (lastfuck of Erin - turns < 3): [he got fucked in the last 18 hours = 6 turns]
		say "     'Aren't you the pervert... I'm not in the mood right now, try again later.'";
	else: [ready for sex]
		say "     As you walk up to TemplateNPC, <positive reaction at being approached for sex>";
		WaitLineBreak;
		say "[VioletSexMenu]";
		
to say VioletSexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Violet";
		now sortorder entry is 1;
		now description entry is "Use the cute rat's bottom. With her and her brother's permission, of course.";
	[]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Strap-on";
		now sortorder entry is 2;
		now description entry is "[']Experiment['] with Violet. It's what young people are calling it nowadays, right?";
	[]
	[if isVoyeur is 1 and lastfuck of Erin - turns < 3:
		choose a blank row in table of fucking options;
		now title entry is "Threesome - bottom";
		now sortorder entry is 3;
		now description entry is "Have a threesome with her brother.";]
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
				if (nam is "Fuck Violet"):
					say "[VioletFuck]";
				if (nam is "Strap-on"):
					say "[VioletStrapOn]";
				[if (nam is "Threesome"):
					say "[ThreesomeViolet]";]
				WaitLineBreak;
			infect "Slut Rat";
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You inform Erin of your second thoughts. The rat shrugs, then turns around to check on what his sister is doing.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;	

to say VioletFuck:
	say "     Violet quietly listens your advances.[one of]' Believe it or not, but I saw it coming from a mile away. Two, perharps. I don't usually trust strangers with my body, but you know what? At this point, if it's you, it's okay.'[or] 'Became fond of your little punk rat friend, did you?'[stopping] The teenager rat points at the storage room behind him. 'Let's get it on. And by mean, I mean your dick.'";
	say "[VioletVoyeurProposal]";
	say "      [bold type]Do you agree to let Erin watch you and Violet make love?[roman type][line break]";
	say "([link]Y[as]y[end link]) You don't mind. at all.";
	say "([link]N[as]n[end link]) [if isVoyeur is 0]Uncomfortable, indeed[else]Not this time[end if].";
	if player consents:
		LineBreak;
		say "[VioletVoyeurOk]";
	else:
		LineBreak;
		say "[VioletVoyeurKo]";
	WaitLineBreak;
	say "      Violet jumps on you as soon as the door is closed and strips your [body of player] body. You peel off her own clothes while she presses against you, enjoying your naked shape, [if isTwinHere is 1] while Erin, true to her word, sits in a corner, and watches the show with eagerness[end if]. You return her hug and feel your arms sink into the soft, grey-white fur. Giving you no time to rest, Violet grabs your neck, and press your [face of player] against hers in a passionate french kiss.[if isTwinHere is 1] Erin scoffs, clearly enjoying his sibling's endaevour. The sound of pants unzipping makes your glance at him for a second, and you catch him already stroking the bulge of his underpants.[end if] The feeling of Violet's bosom brushing against your [Breast Size Desc of player] chest fills you too with arousal and anticipation. 'I can feel your [cockname of player] cock down there. Should I take care of it?' she asks, before play-biting your neck. You nod[if isTwinHere is 1]; you can also hear Erin mumble 'Yeah, totally...'[end if].";
	if cocks of player is 1:
		say "     Violet makes you lean on one of the walls, then drops down on her knees. She spends the next few minutes worshipping your crotch, licking eagerly at your [ball size ] and your [cockname of player] shaft. Eventually, as her tongue lashes reach your sensitive glans, she goes down on you. her long muzzle allows her to take most of your [cock size desc of player] without difficulty, and bob up and down, from the tip to the base and back. You groan [if isTwinHere is 1]and Erin groans for you as well[end if] under the female rat's relentless assault. At the same time, she prepares her pussy for you, slipping one then several fingers inside and pumping slowly. Once she is ready, she rises back up and whispers in your ear: 'I want you to pin me on this wall and fuck. My. Brains. Out.[if isTwinHere is 1] In front of my brother.[end if]' Her excitation reaches you, and you promptly oblige her request.";
	else:
		say "     Violet makes you lean on one of the walls, then drops down on her knees. She spends the next few minutes worshipping your crotch, licking eagerly at your [ball size] and your [cock size desc of player] shafts. Eventually, as her tongue lashes reach one of your sensitive glans, she goes down on you. her long muzzle allows her to take most of your [cock size desc of player] without difficulty, and bob up and down, from the tip to the base and back. After a moment, she pops it out and swallons another length. You groan [if isTwinHere is 1]and Erin groans for you as well[end if] under the female rat's relentless assault, especially when she attempts to take several of your cocks at once, and pretty much succeeds thanks to her rodent physiology. At the same time, she prepares her pussy for you, slipping one then several fingers inside and pumping slowly. She uses the lubrication to relax her anus as well, knowing full well that you want to make the most use of your unorthodox package, and so did she. Once she is ready, she rises back up and whispers in your ear: 'I want you to pin me on this wall and spread. My holes. Open. Both of them.[if isTwinHere is 1] I want my brother to see inside my gaping holes once you're done.[end if]' Her excitation reaches you, and you promptly oblige her request.";
	WaitLineBreak;
	if cocks of player is 1:
		say "     You turn around, pinning Violet's back against the concrete. She raises one of her legs up high, giving you access to her pussy. She parts away her pinky red lower lips, letting you guide your cock inside. You push in slowly, letting the velvety insides swallow your entire length in one go. Violet bites her lips against your [bodyname of player] shoulder while you give in to your arousal, and bottom out inside of her after several hearty rammings. Once you are completely in, you grab her other leg, and let her wrap her limbs around the small of your back. 'Come on you beast, piledrive me!' she says. You are already at it, and she has barely the time to finish her sentence before your cock slams against her crotch like a jackhammer. 'Ah! Ah fuck! Ahn! Ah!' Her moans encourage you to go harder and faster, until she tries to qualm them by forcing her tongue down your mouth into a sloppy kiss.[if isTwinHere is 1] Her brother gives you additional encouragements from his own moans, and the wet sounds of his masturbation.[end if]";
		say "     Several times, you feel her inner muscles contract, and you could swear that she had cummed each of these times, but your own explosive climax would only come after several minutes of intense sex. Your vision flashes white, and you press Violet against the wall so hard that, in a corner of your brain, you worry that you are not squeeshing her. The spasms of your cock reverberates throughout your entire body, as every single drop of your semen is dutifuly taken in by the female rat's womb.";
	else:
		say "     You turn around, pinning Violet's back against the concrete. She raises one of her legs up high, giving you access to her pussy. She parts away her pinky red lower lips, letting you guide your uppermost cock inside. You push in slowly, letting the velvety insides swallow your entire length in one go. Biting her lips, Violet then gives you access to her ass, where you slip another one. Violet gives out a long moan as her two holes get speared at the time by your [cock size desc of player] shafts. Once you are completely in in both, you grab her other leg, and let her wrap her limbs around the small of your back. 'Come on you beast, ruin me!' she says. You are already at it, and she has barely the time to finish her sentence before your cocks slam against her crotch like a jackhammer in an exciting double-penetration. 'Ah! Ah fuck! Ahn! Ah!' Her moans encourage you to go harder and faster, until she tries to qualm them by forcing her tongue down your mouth into a sloppy kiss.[if isTwinHere is 1] Her brother gives you additional encouragements from his own moans, and the wet sounds of his masturbation.[end if]";
	  if cocks of player is 3:
		say "     A twisted idea crosses your mind. you take the opportunity of a pull to line your third cock against the entrance of her pussy, then slam in again. Violet's eyes open wide as her vagina are forced to stretch even more to accomodate the second entry. 'Oh my gawd! Oh fuck! Too much! Ah! Ah! Aaah!' Her shouts only serve to fuel the sexual beast inside of you, as you give Violet a pounding for the ages[if isTwinHere is 1] with her sibling's vocal approval[end if].";
	  if cocks of player >= 4:
		say "     A twisted idea crosses your mind. you take the opportunity of a pull to line an additional cock against each entrance, then slam in again. Violet's eyes open wide as her two holes are forced to stretch even more to accomodate the second entry. 'Oh my gawd! Oh fuck! Too much! My ass! So big! Aaaah!' Her shouts only serve to fuel the sexual beast inside of you, as you give Violet a pounding for the ages[if isTwinHere is 1] with her sibling's vocal approval[end if].";
	  say "     Several times, you feel her inner muscles contract, and you could swear that she had cummed each of these times, but your own explosive climax would only come after several minutes of intense sex. Your vision flashes white, and you press Violet against the wall so hard that, in a corner of your brain, you worry that you are not squeeshing her. The spasms of your cocks reverberate throughout your entire body, as every single drop of your semen is dutifuly taken in by the female rat's womb and ass."
	WaitLineBreak;
	say "     You let Violet get off from you. Your arms are trembling a little from the effort, her legs are shaking like crazy from the pleasure. 'B-Best. Sex. Ever,' is all she has to say. [if isTwinHere is 1]Erin gives out a faint yes. He came hard too, judging by the ropes of cum which paint the floor all the way to you[end if]. Violet grabs a roll of kitchen paper, and give a couple for you to clean up. Putting a finger at her crotch, she pulls up a strand of mixed cum and vaginal fluid.[first time] 'A good thing I looted that stash of birth control pills at the drugstore' she notes.[only] 'I think I'll need some rest.[if isTwinHere is 1] Erin too, mind ya.[end if] My legs are still shaking from this one. Take care, tiger.'";
	now isTwinHere is 0;

to say VioletStrapOn:
	say "     Violet blinks when she hears what you have to say. '[first time]I [italic type]do[roman type] have a strap-on. you know, if Erin feels... Experimentative.[only] I can't say no to a nice change of pace,' she says, offering her widest rodent grin. The teenager rat points at the storage room behind him. 'Let's get it on. So to speak since... You see my point.'";
	say "[VioletVoyeurProposal]";
	say "[bold type]Do you agree to let Erin watch you and Violet make love?[roman type][line break]";
	say "([link]Y[as]y[end link]) You don't mind. at all.";
	say "([link]N[as]n[end link]) [if isVoyeur is 0]Uncomfortable, indeed[else]Not this time[end if].";
	if player consents:
		LineBreak;
		say "[VioletVoyeurOk]";
	else:
		LineBreak;
		say "[VioletVoyeurKo]";
	WaitLineBreak;
	say "     Violet comes back to you and, without giving you a moment to consider, kneels down between your leg and buries her muzzle between your thighs. Her flat, thick tongue dives in, exploring every cavity your lower body has to offer. As the suddenness and the relentlessness of the assault has you quivering and squirming, a strong slap on your buttcheeks punishes you for your unruly behaviour. 'Stay still, bitch! That's the only lube you're gonna get,' she tells you in a more assured tone.";
	if cunts of player > 1:
		say "     The rat-girl focuses her efforts on one of your pussies. She slides her tongue over and between your labia, while her left hand pinches and twists your pleasure button. Her other hand plays with your other cunts, and she seems to take great fun in turning each of them wet and ready for her. Once she deems you ready, Violet stands up, and her small hands slam on your hips. 'I'll make sure to spread [if cunts of player is 2]both of them[else]each of them[end if]' she says, before pusing her strap-on inside your main cunt.";
		say "     True to her promise, it is not lubed, and you can feel the rubbery material scraping inside you as it stretches your pussy. However, Violet goes slowly, and pulls out several times, to let your natural lubrication run down the black length of her false cock. Also, she alternates your holes, letting the other[if cunts of player > 2]s[end if] rest while she attacks another one with additional lube. Eventually, she can pump into you without difficulty, and begins to slam inside of you with slow and powerful thrusts. 'You have no idea how good the rumbling on my cock feels,' she says. The pussy the rat is currently buried in quivers as you hear her words, but she tops it of by leaning towards your ear and add: 'yes, even this one right now. Love being my bitch, don'cha?' [if isTwinHere is 1]You are half-surprised to hear Erin moan at the same time as you, as he pumps his hand up and down his cock alongside the moves of her sister.[end if]";
	else if player is male or anallevel is 3:
		say "     The rat-girl focuses her efforts on your anus. She slides her tongue around it, then in it. From time to time, she humects her fingers and prod them in with such efficiently that you wonder if she had not practiced before[if isTwinHere is 1], and if the subject of this practice is not in the same room, currently fingering his own butt, his eyes fixed on the action[end if][if cocks of player > 0]violet's other hand plays with your male bits, polishing your shaft and squeezing your [ball size] on a whim. Once she deems you ready, Violet stands up, and her small hands slam on your hips. 'Time to pop this cherry!' she says, before pusing her strap-on inside your ass.";
		say "     True to her promise, it is not lubed, and you can feel the rubbery material scraping inside you as it stretches your pussy. However, Violet goes slowly, and pulls out several times, to let the saliva coats the whole surface of the toy, to which she adds her own spit. Eventually, she can pump into you without difficulty, and begins to slam inside of you with slow and powerful thrusts. 'You have no idea how good the rumbling on my cock feels,' she says. Your stretched anal ring quivers as you hear her words, but she tops it of by leaning towards your ear and add: 'yes, even this one right now. Love being my bitch, don'cha?' [if isTwinHere is 1]You are half-surprised to hear Erin moan at the same time as you, as he pumps his hand up and down his cock alongside the moves of her sister.[end if]";
	else:
		say "     The rat-girl focuses her efforts on your pussy. She slides her tongue over and between your labia, while her left hand pinches and twists your pleasure button. [if cocks of player > 0]Her other hand plays with your male bits, polishing your shaft and squeezing your [ball size] on a whim. This turns you wet even faster. [end if] Deeming you ready, Violet stands up, and her small hands slam on your hips. 'Time to pop this cherry!' she says, before pusing her strap-on inside.";
		say "     True to her promise, it is not lubed, and you can feel the rubbery material scraping inside you as it stretches your pussy. However, Violet goes slowly, and pulls out several times, to let your natural lubrication run down the black length of her false cock. Eventually, she can pump into you without difficulty, and begins to slam inside of you with slow and powerful thrusts. 'You have no idea how good the rumbling on my cock feels,' she says. Your pussy quivers as you hear her words, but she tops it of by leaning towards your ear and add: 'yes, even this one right now. Love being my bitch, don'cha?' [if isTwinHere is 1]You are half-surprised to hear Erin moan at the same time as you, as he pumps his hand up and down his cock alongside the moves of her sister.[end if]";
	say "    Violet picks up the pace, and eventually, her thrusts are powerful enough to make the shelf, that you are leaning on, tremor each time her crotch meets with yours. At the start, you wonder if Violet liked it rough like this, or was simply not used to pegging, but a few minutes later, you are a quivering mess howling in pleasure as you cum hard around the rubber cock. You cannot tell if Violet has cum, but considering the way her soft hands are clawing into the fat of your butt, she must have, and maybe more than once. [if isTwinHere is 1]As for Erin, it is a foregone conclusion. The teenager is slumped in his corner, semen running down from his cock and on his hand.[end if]";
	say "     The both of you slump down onto the ground, tired but content. 'I should take it out more often,' Violet pants, 'only... Later. My fucking legs are shaking.' You nod in approval, as you put your clothes back.";
	now isTwinHere is 0;

to say VioletVoyeurProposal:
	say "     Just as you are about to head inside, Erin tugs on your arms to get your attention. He looks a little embarassed [if isVoyeur is 0][one of]'So, this may sound weird, but I kind of like watching my sister do it. With other people, I mean. Would that make you uncomfortable if I, er, pick a corner and stay with you?'[or]'I just wanted to check if you had a change of heart. About me playing voyeur. Would that make you uncomfortable?'[stopping][else]'How about I kick the kink up a notch for you, and keep you company?'[end if]";

to say VioletVoyeurOk:
	if isVoyeur is 0:
		say "     'I see... Wait, that means you [italic type]don't[roman type] mind?' Erin asks. You nod affirmatively and the teenager scratches his furry neck nervously. 'That's me and my sis['] dirty little secret. It's nice that you are open to it like that. But I had a hunch about this.' Violet chuckles, and leans seductively on your arms. 'Well, let's not make our audience wait,' she says, pulling you towards the storage room.";
		now isVoyeur is 1;
	else:
		say "     'I knew you would not refuse,' Violet says, appreciative of your open-mindness. Erin chuckles. It seems that both twins are equally excited for what is coming. 'Well, let's get [italic type]everyone[roman type] comfortable, shall we?' Erin says eventually.";
	now isTwinHere is 1;

to say VioletVoyeurKo:
	if isVoyeur is 0:
		say "     'It's cool, I understand' Erin mumbles; he looks ready to burrow into the nearest hole available. You reassure the twins that you do not mind the implications or the kink itself, but that you would feel uncomfortable, knowing that you are being watched. 'This was worth a try, sis,' Erin says, patting his twin's arm.";
		say "     'Yeah, I guess,' Violet replies. 'Have fun, both of you.' Erin affectuously kisses his sister on the forehead, before letting her guide you into the small storage room.";
	else:
		say "     'Wanting some privacy? Okay. Just... Don't do anything weird with my sister,' Erin says.";
		say "     'Can't be weirder than y-er, some guy I know!' his sister replies.";
		say "     'Digging yourself deepe~r,' the male rat sings, to which Violet replies with childish raspberries before pushing you in the storage room and closing the door.";

	[Ideas to implement: multicock version for both twins bottoming]
[to say VioletThreeSome:
	say "     Erin and Violet's rat ears twitch with perfect synchronicity as you make your proposition.";
	say "[bold type]Do you want to top or to bottom during the threesome?[roman type]";
	say "[link]Top[as]y[end if] You want to take an active role.";
	say "[link]Bottom[as]n[end if] You want to service the two rats.";
	if player consents:
		LineBreak;
		[Threesome sex menu: what body part do you claim? -> ass, mouth, cunt -> partner1Choice]
		[Erin chooses another part randomly until it is not the same as the player.]
		[Part 1 - switch on partner1Choice]
		[Part 2 - switch on partner2Choice]
		[Part 3 - finale]
	  else:
		LineBreak;
		[Player select body parts for each partner (2 multiple select menu with partner1Choice and body parts taken into account)]
		say "[TwinRatsThreesomeBottom]"; [this scene is common to both variations of the threesome, and follow the previous structure] ]

Section 3 - Events 

Part A - Flagging

when play begins:
	add Pirate Standoff to badspots of furry; [this badspot makes every other useless.]
	
Part B - Initial Event - Pirate Standoff

Pirate Standoff is a situation.
The sarea of Pirate Standoff is "Beach".

Instead of resolving a Pirate Standoff:
	say "     You hear a commotion in the distance, behind a dune. Curious what it may be, you climb the small hill prudently, crouching as you reach the top. On the other side, you see a pair of young-looking anthro rats, one male and the other female looking like two peas in a pod, surrounded by a gang of pirate sharks. The aquatic predators growl at the pair of rodents, who stand in the middle, back-to-back. 'Arrr, ye sea rats shouldn't [']ave been snoopin['] around,' one of the sharks says. She seems to be the [']captain['] of the group.";
	say "     'I told you, stupid,' the female rat says, ignoring the pirate. 'We should have thought twice when Smee mentioned [']pirate booties['].'";
	say "     'Har, Har! Talking [']bout these, girl?' the pirate asks, as she slaps his generous butt. 'Too bad for ye, rattie. The only bootie that'd get plundered today is your and your brother's.'";
	say "     'Whelp, this sucks, Sis,' the male rat says. 'And so will we in a moment, unless [italic type]someone[roman type] passes by and gives us some kind of distraction.'";
	say "      You suddenly realize that, during the entire conversation, this [']Bro['] person was continously glancing in your direction. Those big ears of his are not for show it seems. [bold type]Do you help the rats?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Aye. Time to make new friends.";
	say "     ([link]N[as]n[end link]) - They put themselves into trouble, now they have to face the consequences.";
	if the player consents:
		now ratTwinsStatus is 1;
		say "     You get back on your feet and, from the top of the dune, shout the first moderately witty insult that comes to mind - something about them being cheap Jack Sparrow knock-offs. Three sharks turn in your direction, and the siblings use the opportunity to charge the pirate captain. Ducking under her grasping arms, the two rodents are past the captain in a flash and run with their tails between their legs in direction of the public beach.";
		say "     'Aaarg! After them, ye pea-brained bastards!' the leader of the sharks shouts angrily. Her goons obey, and run after the young rats, while the captain turns her ire towards yourself. ";
		if Hermaphrodite is banned or Hermaphrodite is warded:
			say "'Ye freshwater pirate!' the pirate shark says. 'Praise the sea gods that we don't meet again!' And with that, she goes after the siblings as well, leaving you with the pride of having done a good deed. Just as you are about to leave, you notice a crumpled piece of paper where the male rat stood. You pick it up, and read: [italic type]Thks dude. Meet up @ food pl.[roman type]. The message has been hurriedly written, but you suppose that the food place is the restaurant upstairs.";
		else:
			say "'Ye freshwater pirate!' The pirate shark shakes her fist angrily at you, and begins to climb the hill to teach you a lesson.";
			challenge "Pirate Shark";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     'Arrr! Ye won't get away with this, ye cachinnating cockatoo!' the defeated shark says, visibly straining her repertoire of Captain Haddock curses. She makes a hasty retreat, leaving you with the pride of having done a good deed. Just as you were about to leave, you notice a crumpled piece of paper where the male rat stood. You pick it up, and read: [italic type]Thks dude. Meet up @ food pl.[roman type]. The message has been hurriedly written, but you suppose that the food place is the restaurant upstairs.";
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     'Har har! I didn' get sea rat bounty, but t'is a good consolation prize,' the victorious shark says, standing arrongantly over your body. The fish jaywalks away, leaving you defeated, but also with the pride of having done a good deed. Just as you were about to leave, you notice a crumpled piece of paper where the male rat stood. You pick it up, and read: [italic type]Thks dude. Meet up @ food pl.[roman type]. The message has been hurriedly written, but you suppose that the food place is the restaurant upstairs.";
	else:
		say "     An akward silence settles in, eventually broken as the trio of sharks laugh heartily. 'Har! What are ye goin['] about, rattie. Ain't nothing but us [']ere. And yer booties. Which we're gonna take. On board, maties!";
		if Hermaphrodite is banned or Hermaphrodite is warded or anallevel is 1:
			say "     You hurriedly take your leave, as the sounds of scuffle, then sex clamor behind you. Somehow, you feel like you missed an opportunity to something.";
		else:
			say "     You would not have called this a scuffle. More like a beating. The poor rats are knocked around, before being pinned on the ground. The herms press the tired rodents' heads in the sand, while pulling their butts up. 'Ready ta share the loot, cap'n', one of the pirates says.";
			say "     'Mmm, good, good. But [']fore we share, we should check which booty is the finest. Don't ye agree, mates?'";
			say "     And with these words, the shark captain gives each rodent a slap on the butt, making them yowl and, in the case of the girl, make her spout choice words about their captors. 'Come on, me maties! Help me.'";
			say "     After several minutes of spanking, the siblings['] buttcheeks are stinging red under the snow-white fur. And this seems to have excited them as well: The brother's cock is rock hard, while his sister is drippingly wet. 'Naughty sea rats, are ye?' the pirate shark asks. 'Bitches, give 'em a show.' The two shark goons pull each rodent into their laps, making sure that they have a nice view of their sibling's naked body, and their ass held dangerously close to a thick shark cock. At the captain's signal, the two rodents['] asses get speared by fish meat.";
			say "     'A-Ah!'";
			say "     'Ah. Such a lew rattie. Moans even louder than his sister.'";
			say "     'N-No. Erin!'";
			say "     'Yer bro is taking cock like a champ, and so do you, ya little cunt.'";
			WaitLineBreak;
			say "     The two rats gets their asses spread apart again and again, as the sharks take their sweet time fucking them. To their delight, it seems that the sight of their sibling's fate excite them very much, and the sharks accelerate the process by masturbating them. The rats squirm almost synchronously as they cum around the shark cocks buried in their asses. 'Yar! Cumming already? We havn't even got to tha serious stuff!' the sharks laugh.";
			say "     'M-Mercy.'";
			say "     'I-I'm gonna kill you. I swear!'";
			say "     'Shut yer traps,' the pirate leader says, as he plants himself between the two forced pairs. Her hands grab each sibling's head, and press them against her two genitals. 'Use 'em properly. Get to it!' Encouraged by the sharks, the two rats submit and begin to suck the shark's oddly-shaped cock and lick her moist pussy.";
			say "      After some more impromptu coitus, and the sharks' collective orgasm, the gang decides to [']share the booty['] at their hideout. They tie up the two knocked-out rats, then take them away to some grim, sex-slave fate. As you watch them leave, you feel like you somehow missed an opportunity to something.";
		now ratTwinsStatus is 99;
	now Pirate Standoff is resolved;
		

Part C - Meeting the Twins again

Rat Twins Invitation is a situation.
The sarea of Rat Twins Invitation is "Nowhere".

instead of going to Restaurant while Rat Twins Invitation is not resolved and ratTwinsStatus is 1:
	move player to Restaurant;
	say "     As you enter the restaurant, a pair of waving arms catch your attention. 'Hey, it's our good samaritan!' a familair voice says. The two rats are here, just like the message said. They seem to have made a corner of the restaurant theirs: a pair of cots are rolled up next to the table, alongside a bag of supplies, and a map of the city is sprawled on the table, held together by empty glasses and a mustard pot.";
	say "     'A good thing someone was a curious as us. Did you follow this [']pirate booty['] rumour too?' the brother says hurriedly.'";
	say "     'Maybe he'd want your name first?' his sibling asks. 'Unless you still want to be known as [']Bro Rat['] around these parts.'";
	say "     'Oh right, right. My name's Erin, and this is my sister...'";
	say "     'Violet. Don't laugh.'";
	say "     'Who'd laugh at you, sweetie. And since we're on politness... We own you a meal!'";
	say "     The restaurant's supplies had been sacked when the city fell into anarchy, and only the smell of oil and burger meat remained; but the power generator was still working, and so did the microwave oven. Erin and Violet picked a shepherd's pie, a delicacy these days, and put it in the oven. You shared the meal, alongside a can of soda, while making the acquaintance of your new friends.";
	decrease hunger of player by 12;
	decrease thirst of player by 12;
	increase humanity of player by 10;
	say "[bold type]Your hunger and thirst decreases, thanks to the meal the siblings offered. Having a normal social interaction allows you to recover some humanity.[roman type]";
	now ratTwinsStatus is 2;
	now Rat Twins Invitation is resolved;
	
	

Part D - Restaurant Events

Rat Twincest is a situation.
The sarea of Rat Twincest is "Nowhere".

instead of going to Restaurant while ratTwinsStatus is 2 and Rat Twincest is not resolved and a random chance  of 1 in 2 succeeds:
	move player to Restaurant;
	say "     As you enter the restaurant, you head towards Erin and Violet's shelter, to say hi. The siblings do not seem to be at their usual spot at the moment. However, the door to the nearby storage room, is ajar, and light peers from the opening. You approach from the door, only to hear familiar voices on the other side. 'Oh... Oh, Erin.'";
	say "     [bold type]Do you peep on the rodent twins?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - This kind of show turns you on";
	say "     ([link]N[as]n[end link]) - Not really your cup of tea";
	if player consents:
		LineBreak;
		say "      You try to close in as stealthily as you can. However, you trip on one of the siblings['] bags, and the momentum carries you towards the door, which open on Erin and Violet in the middle of a 69. The twins are lying on a makeshift bed made of old cardboxes, Violet on top of Erin. After you barge in, Erin stops eating out her sister and begins to wiggle, embarassed: 'Th-this is not what it looks like!'";
		say "     Violet instantly smothers her brother's muzzle between her thighs: 'This is totally what it looks like. Keep licking!' Wet noises are quickly heard from where Erin's head is. 'Y-yeah, like that. A-All the way in,' Violet says, before putting her brother's cock in her mouth.";
		say "     They go at it in this fashion for several minutes, with Erin meekly tring to struggle under Violet as she relentlessly sucks on his member. Eventually, she lets it pop out of her muzzle, and being to polish it, making Erin jump under her. 'What's that?' she asks. 'Being embarassed? You? What are you -uhn- embarassed of? Of being dommed by your big sis? Of -oh- letting our friend know that you have the hots for me? Is it -f...- because you are ashamed of these big, rat balls of yours?' As she asks this, she lightly squeezes the certainly oversized package of her sibling, who moan loudly in response. 'Or is it because big sis is going to make you cum -ah ahh- and -uhn- swallow it to the l-last drop?'";
		say "     Erin howls against his twin's crotch as he hears this, and his cock begins to spurt cum in the air, like a geyser. True to her word, Violet puts the head of the male rat back in her mouth and drinks everything, sucking him further to get every last milliliter. From the audible gulps, you can tell that this is a rather consequent load. Once she is done, Violet licks her chops, and give Erin's balls another squeeze. 'You're not done yet.' Once again, you can hear the rat pleasuring his sister. He only needs half-a-minute to make Violet tense up and cream his muzzle: 'F-ffffuuuck!";
		say "     She rolls on the side and looks at you: 'Liked the show? Give us a moment, would you?' You agree and give them some privacy. A few minutes later, both siblings come out. Erin gives his sister a big hug. 'You're a sadist, you know that?' he asks. Violet says nothing, and simply scratches his twin's chin affectuously.";
	else:
		LineBreak;
		say "     You walk away, and pass the time getting some rest and chatting with the regular patrons of the place. A dozen minutes or so later, the door to the storage room opens and Violet comes out. 'Hey, it's nice to you again. Don't be a stranger, come here.,' she says as she notices you. Erin is on her heels, and wrap his arms around her chest, but freezes as he sees you, and turn the embrace into an awkward hug.'";
	now Rat Twincest is resolved;
	
	
[to say VioletVoyeurFun:
	say "      As you enter the restaurant, every patron looks at the rat twins' corner, where there is some activity going on, mostly hidden by the bar and other patrons looking. You can hear Violet moan loudly. 'You're doing great, sis,' you can hear Erin say. You eavesdrop a patron next to you: '[one of]Lucky rats[or]Lucky otters[or]A drink and a live show, what's more to ask[or]They really have no shame, doing it in public[at random].'";
	say "     [bold type]Do you step forward, to watch what is going on?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - This kind of show turns you on.";
	say "     ([link]N[as]n[end link]) - Not really your cup of tea.";
	if player consents:
		LineBreak;
	else:
		LineBreak;
	
to say TwinsRoleplay:
	say "     You notice a piece of paper scotched to the door of the restaurant. You recognize Erin's hurried writing. It reads: [italic type]To ppl walking in: don't worry, everything is consensual. Enjoy the show. E & V[roman type]. You do hear a big commotion inside, that would have definitely made you barge in, if you had not read the note: 'Come on, bitch! Time to squeeze out the money, or else!' a loud voice boomed from inside the restaurant.";
	say "     [bold type]Do you go in and see what this is about?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - This kind of show turns you on.";
	say "     ([link]N[as]n[end link]) - Not really your cup of tea.";
	if player consents:
		LineBreak;
	else:
		LineBreak;]
		
Part E - Outside Events

Tied Rat Twins is a scavevent.
The sarea of Tied Rat Twins is "Outside".

instead of resolving Tied Rat Twins:
	if ratTwinsStatus >= 2:
		say "     During your exploration, you come upon what looks like an abandoned sex-shop. The place looks deserted, but there is this permanent buzzing sound coming from inside. This is odd.";
		say "     [bold type]Do you wish to investigate?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Who would use a sex toy? You are curious";
		say "     ([link]N[as]n[end link]) - You'd better give whoever it is some private time";
		if player consents:
			LineBreak;
			say "     You walk inside the shop, if only to check what is the source of all this buzzing. It is even louder when in the shop, as if several toys had been set off at once. And, more worringly, you hear several persons scream through a gag. You head towards the source of the noise, behind the counter. You stumble upon Eric and Violet. The twins seem to have been caught in the middle of their own patrol, and they have been bound together sturdily with leather cuffs and ropes. They have been forced face-to-face, a vibrating wand stuck against their conjoined crotches. As a 'bonus', Violet got her holes spread apart by dildos, while you recognize the shape of a prostate massager stuck into Erin's ass. For added humliation, their rodent muzzles have been taped to each other, having them share an embarassing kiss.";
			say "     Just as you are coming around, the twins squirm ineffecitvely against each other, they climax together, probably another of a long series. You hurriedly help them get out of their bounds, and toys. 'Thanks, pal,' Erin says weakly.  'It was one hell of an hour. I think I came enough for... Like... A whole week,' Violet comments. 'We were attacked by looters and they caught up with us as we ran away inside,' Erin says. 'Bad idea,' Violet agrees. 'Thankfully, we had stashed our loot before these fuckers get to us. Let us share something with you.'";
			say "     True to her word, Violet and Erin guide you to a bin just outside the shop, and pull out a bag of chips and an already used bottle of water. 'Watch out on the streets,' Erin says before parting with you.";
			say "[bold type]You gain 1 bag of chips.[roman type]";
			say "[bold type]You gain 1 bottle of dirty water.[roman type]";
			increase carried of chips by 1;
			increase carried of dirty water by 1;
		else:
			LineBreak;
			say "      You have better things to do. You walk away and continue your exploration";
		now Tied Rat Twins is resolved;	

Rat Twins ends here.