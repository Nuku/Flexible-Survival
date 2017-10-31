Version 1 of Oliver by Rikaeus begins here.
[Version 1 - Creation of Daddy Ocelot]

[ OliverRelationship                                                    ]
[   0: Have not encountered Oliver or said little kitty to little ocelot]
[   1: Have said little kitty to ocelot                                 ]
[   2: Have met Oliver in an event in the High Rise District            ]
[   3: Have met Oliver and has talked to him the first time             ]
[   99: Has said Big Kitty to Little Ocelot                             ]
[   100: Permanantly locked out of Oliver                               ]

Section 1 - Event encountering Oliver

OliverRelationship is a number that varies.

Leather Daddy Kitty is a situation. The level of Leather Daddy Kitty is 2.
The sarea of Leather Daddy Kitty is "high".
when play begins:
	add Leather Daddy Kitty to badspots of guy; [Oliver is a male kitty]
	add Leather Daddy Kitty to badspots of furry; [Oliver is a kitty]

Instead of resolving a Leather Daddy Kitty:
	if OliverRelationship is 1 or player is submissive:
		say "     While exploring the high rise district you are suddenly tackled to the ground by a rotund shape. Upon closer inspection, it is a large, pudgy ocelot, standing at six feet tall and probably over three hundred pounds. He is wearing a leather harness, fingerless gloves, a cod piece covering his rather large bulge, and a cap with the same material as the harness. You are quickly distracted from his looks when you notice that the male is nuzzling your face. 'Mmmm you must be the little kitty my sub was talking about. I sure can smell him on you.' The ocelot says, inhaling your scent. Little ocelot? You hurriedly recall a submissive kitty that had asked you if you liked to be the big kitty or little one before sexing you up. 'I see that you remember him. I sure did punish him for having sex with you without my permission. But now I think it was unwarranted, you are a delectable little catch,' he purrs at you.";
		say "     With a sigh, the chubby yet fit kitty gets off of you. 'As much as I'd like to take you here and now, you need to learn that you must come to me.' The ocelot says, starting to walk away. However, before he leaves your line of sight, the male turns towards you and smiles. 'Two things you need to know. One, your soon-to-be master's name is Oliver, I give you permission to call me by that. Two, if you wish to explore this further, make your way to the Kitty Sex Dungeon.' The dominant guy informs, winking at you before he leaves you there to muse on the brand new information you have.";
		change northeast exit of (Entrance to the High Rise District) to Kitty Sex Dungeon;
		change southwest exit of Kitty Sex Dungeon to (Entrance to the High Rise District);
		now OliverRelationship is 2;
		now Leather Daddy Kitty is resolved;
		move Oliver to Kitty Sex Dungeon;
	else if OliverRelationship is 99 or player is not submissive:
		say "     While exploring the high rise district you are suddenly picked and sort of cuddled into a hug. Ignoring the warmth that shoots through your body, you take a closer look at your hugger. As soon as you do, a memory comes up of a tiny little kitty that had asked you a question before sexing you. However, this cat looks nothing like the other one besides the fur design. The one hugging you is a rather large and rotund yet fit kitty, standing at six foot tall and possibly over three hundred pounds. He's wearing a black leather harness, a cod piece that covers his rather large bulge, fingerless gloves, and a dark coloured cap. The large feline is smiling at you, with a slight predatory look to his gleam. 'You must be that big kitty that my little sub told me about.' He purs, nuzzling your neck. 'I'm sure that you like being a nice dom kitty but how about you let me break you in?' The male asks you in a husky voice.";
		say "     That's a tempting offer, what do you want to do? Agree to be a sub to this kitty ([link]Y[as]y[end link]) or refuse ([link]N[as]n[end link])?";
		if player consents:
			say "     You nod your head at the big ocelot, causing him to pur happily before giving you a rough kiss on the lips. It sends shots of pleasure throughout you and makes you whine when the male stops and sets you down. 'Don't worry my little kitty, there'll be more where that came from later,' he whispers huskily in your ear, sending shivers down your spine. The big guy sets you down and starts to walk away. However, he stops just shy of leaving your sights and turns to you. 'My name is Oliver, little kitty, something that I give you permission to call me. Lastly, if you wish to continue, come see me at my Kitty Sex Dungeon.' Your soon to be dom informs you before leaving";
			change northeast exit of (Entrance to the High Rise District) to Kitty Sex Dungeon;
			change southwest exit of Kitty Sex Dungeon to (Entrance to the High Rise District);
			now OliverRelationship is 2;
			now Leather Daddy Kitty is resolved;
			move Oliver to Kitty Sex Dungeon;
		else:
			say "     The big kitty sets you down and sighs at you before turning away. 'Alright then, I won't bother you anymore,' he says before walking away from you. You muse inwardly that had you said otherwise it might have been the start of something interesting but... you're not one to relent to another dominant. So, instead, you turn and head in the opposite direction to the one that the big kitty had left in.";
			now OliverRelationship is 100;
			now Leather Daddy Kitty is resolved;

Section 2 - Declaring the Room and Oliver

Kitty Sex Dungeon is a room. It is private.
The description of Kitty Sex Dungeon is "[DungeonDesc]"

to say DungeonDesc:
	say "     The room is a stereotypical sex dungeon. There is a sex bench in the middle of the room, stocks against the wall, sex toys on shelves and so much more. On top of that, the entire place smells of sex and sweat, something that fills you with warmth as you think of the many things that have happened in this area. Interesting enough, there are no items for punsihment via pain like flogs or whips. Perhaps Oliver punishes with pleasure rather than pain? [if cunts of player > 0 or cocks of player > 0]You shudder at the thought of being denied orgasm.[end if]";

Oliver is a man.
The description of Oliver is "[OliverDesc]".
The conversation of Oliver is { "<this is nothing but a placeholder!>" }.
The scent of Oliver is "The big kitty smells heavily of male musk as well as sex, something that makes you moan out loud, making him smirk at you.".

to say OliverDesc:
	say "     The dom kitty is a large, rotund male, with a matching big cock hidden behind a cod piece. Rather than being naked, Oliver is wearing a black leather harness that hugs rather nicely to his pudgy body. Characteristics-wise he looks much like the little ocelot, in the fact that his arms and legs are covered in black spots and a slightly dark tone of fur, whereas the body is a lighter tone. On his head is a nice looking leather cap that seems to eccenuate his dominant-personality. The big cat appears to be reading a sex toy magazine catered to doms and subs. When your dom looks at you he sends a smirk your way that sends shivers of pleasure down your spine.";

Section 3 - Speaking to your dom

instead of conversing the Oliver:
	if OliverRelationship < 2: [should not be available yet]
		say "     ERROR: Oliver shouldn't be where a player can see him yet and said player should not be able to be in the Sex Dungeon! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [OliverRelationship]";
	else if OliverRelationship is 2:
		say "     Your new dom looks pretty excited to see you, as he drops the magazine in hand and pulls you into a large hug. He nuzzles your neck before pulling back and smiling at you. 'I'm glad you've decided to visit me, I'll be sure to make you scream in pleasure quite often. However, I must lay down some ground rules.' Oliver tells you. Interested, you cuddle up to him and listen to the male speak. 'First and foremost, all of this must be willing. If something I do goes too far, then just say the safeword, which is milk.' He informs. You let out a rumble of agreement to the first rule. 'Secondly, I do not punish with pain. Rather, if you do something bad I will simply deny you orgasm[if cocks of player < 1 and cunts of player < 1]. In your case though, I will stop fucking you until you repent[end if],' he tells you. You nod and he continues. 'Lastly I will always take care of you, I am not one of those doms who think their orgasm is the only one that matters,' Oliver informs you.";
		say "     You let out a statement of agreement, which seems to make your dom pur in happiness. 'Perfect, if you wish to start, just let me know and I'll let you choose what you want to do,' he gleefully says before kissing you then setting you down. Oliver then returns to his magazine. You make a mental note to let your big kitty know when you're ready.";
	else if OliverRelationship is 3:
		say "     When you approach your dom he smiles at you, yanks you into a hug and gives you a rough kiss before pulling back and asking you what you want.";
		wait for any key;
		say "[OliverTalkMenu]";

to say OliverTalkMenu:
	say "[line break]";
	say "What do you want to talk with Oliver about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Oliver's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Little Ocelot";
	now sortorder entry is 2;
	now description entry is "Talk to him about his sub.";
	[]
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
				if (nam is "Himself"):
					say "[OliverTalk1]";
				if (nam is "Little Ocelot"):
					say "[OliverTalk2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the big kitty who smirks at you and laughs. 'So my little sub just wanted a kiss eh? Could've just said so.' He chuckles before turning his attention to the magazine he has in hand.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say OliverTalk1:
	say "     'Me? Aw, does my little sub want to know more about his dom?' He purs. You nod happily at him, cuddling into his furry chest. Your big kitty rumbles gleefuly at your joy. 'Well, before the apocalypse I ran a sex club, hence this room. People would come to me to be dominated and I would oblige them.' Oliver tells you. 'Now, you must understand that I was quite the arrogant dom before the apocalypse. You may wonder what changed me.' The male feline asks you. You nod your head as you're rather curious as to why he isn't like that now. The big guy chuckles at you and explains. 'Well, it's kind of sad but when I changed, I had accidentally killed one of my subs.' Oliver sadly says. You give a kiss to his cheek and then nuzzle his neck.";
	say "     Your dom smiles happily at you before giving you another kiss, clearly soothed by your actions. 'Thanks my little kitty. I don't think of it much, but it has coloured my future interactions with my subs.' He rumbles happily. The big cat sets you down shortly after that before patting you on the head. 'I think that's enough about me for now... run along my sub.' Oliver tells you before getting back to his magazine.";

to say OliverTalk2:
	say "     Your dom tilts his head at you, curious. 'Oh you're interested in your fellow sub?' he asks in interest. After nodding your head, your big kitty replies. 'Well, I found him a short while after the infection apocalypse, possibly about the day after it happened.' Oliver muses. Humming, you ask him about whether or not the ocelot will mind you being his sub. That makes the larger male chuckle at you and shake his head. 'Not at all, in fact he's happy about it cause, it means he's gained a new dom.' The dom iforms you, which in turn causes you to have a confused look on your face. Seeing that, he explains further. 'The little guy is the complete sub in our group, if we ever have fun with him, you'll be topping him while bottoming me.' Oliver tells you. He then sets you down on the ground before patting you on the ass. 'Now run along my kitty, unless you want to have some fun.' The big cat says, wagging his eyebrows.";

Section 4 - Having the frickle frackle with your Dom

instead of fucking the Oliver:
	if (lastfuck of Oliver - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     Your dom shakes his head at you. 'Not so fast my little kitty, both of us need time to rest since our last session,' he tells you, giving you a kiss on the cheek.";
	else:
		say "     Oliver sets down the magazine and gives you a curious look. 'So, my little sub, what do you want to do?' he asks you, groping at his bulge.";
		wait for any key;
		say "[OliverSexMenu]";

to say OliverSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Sex Toys";
		now sortorder entry is 1;
		now description entry is "Take one of the many sex toys in your ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Oliver off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the cat's hard shaft";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Oliver's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Take Oliver's cock for a ride";
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
				if (nam is "Sex Toys"):
					say "[OliverSex1]";
				if (nam is "Suck Oliver off"):
					say "[OliverSex2]";
				if (nam is "Take Oliver's shaft in your ass"):
					say "[OliverSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step away but thankfully yor dom doesn't look disappointed. 'If you want me, you know where to find me my little kitty,' he purrs at you, making you smile.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say OliverSex1:
	say "     You shyly ask your big kitty if you could play with one of the sex toys. Oliver smiles widely at you when you say that. 'Of course my little sub, anything for you. Now then... get up on the table baby,' he tells you. Shivers run up your spine as he speaks those words, you then eagerly laying back first on the table. You watch as the large cat walks over to the shelf of sex toys before grabbing a knotted dildo. He then heads over to you and hands it to you. 'How about you get that ready while I get you ready my small kitty?' He kindly asks you. Quite happily you take the dildo and slip it into your mouth, starting to slurp on it already. You accidentally shove it a bit too far down your throat when you feel a wet tongue at your entrance. Shortly following that you hear a chuckle from your nether regions. 'I'm sorry there my sub.' He laughs before licking again at your pucker, having divested you of your clothing.";
	say "     The room is filled with the sounds of you sucking on the doggy-dildo, moans filling the room, and your dom eating you out rather eagerly. Oliver starts out by tracing the outside of your hole with his tongue, practically testing the field. About half a minute into that, he penetrates your entrance. That prompts many moans from your mouth, something that makes your big kitty smile, if the feelings on your ass cheeks says anything. [if cunts of player > 0]Oliver doesn't just focus on your hole, rather he also rubs the pads of his finger over your labia. [else if cocks of player > 0]Oliver doesn't just focus on your hole, rather he starts to masturbate your cock. [end if]The large cat soon pulls away from your hole and starts to finger you with two of his digits. Using them he begins scissoring you open, so that you can easily take the toy. A minute later, he pulls them out and asks you for the doggy dong.";
	WaitLineBreak;
	say "     Happily handing the toy to your dom, he takes it and positions it at your pucker. With a careful ease that makes you smile, the big kitty pushes the dildo into your ass. You groan out in pleasure, enjoying the sensations of the fake cock stretching your insides. Oliver starts to thrust it in and out at a rather quick pace, something that makes your body light up with happiness.[if cocks of player > 0]Your cock is throbbing painfully due to the large amount of pleasure, leaking a bountiful amount of precum from the tip.[end if] The large cat sees you getting closer and closer to climax and decides to finally push the dildo in all the way. It's not long after, that the toy knots with your hole.";
	say "     The feeling is too much causing you to gasp out loud. [if cunts of player > 0]You ride out your orgasm, juices leaking from your pussy. [else if cocks of player > 0]You orgasm hard, shooting ropes of cum in large amounts that coat your face. [end if]Suddenly after that you hear a grunt and realize that Oliver has been masturbating as well, which is rather obvious when you feel your ass get coated in a liquid. However, it appears that the large feline does really want to take of you, as he promptly licks all of his cum off your butt. [if cocks of player > 0 and cunts of player < 0]Even more so, your dom moves himself up to your head and collects your release off your face. [end if]He then pulls you into a hug and proceeds to cuddle with you for the next half hour or so. When the time is up, he unwraps his arms from you and pats you on the head. 'That was wonderful my little kitty. Come to me again if you want to have some fun,' he purrs at you before grabbing his magazine which appears unscathed.";
	now lastfuck of Oliver is turns;

to say OliverSex2:
	say "     Upon mentioning that you'd love to get his cock in your mouth, the dominant kitty smiles at you before sitting on the table. 'How about you remove my codpiece,' he says to you. Eagerly you scramble up to him, so that his crotch is in your face. Even though you know you don't have to, you unbutton the piece of leather protecting his dick with your mouth. Quickly after that you are hit on the cheek with the large cat's huge cock, something that leaves trails of precum on said area of your face. You quite happily rub yourself up against your dom's virile penis, the nubs on it adding a nice sensation. It appears that this makes Oliver happy as he purrs out in pleasure. 'Come on my little kitty, how about you start licking my nice big dick,' he huskily says.";
	say "     Quite happy to please your big kitty, you start trailing your tongue alongside his length, moaning out loud at the wonderful taste. You make sure to also suck in one of your dom's balls, swirling your fleshy organ around the one you capture in your mouth. However, it appears that while the large cat is a very kind dominant, he still can get impatient. He moves your head up to the tip and asks you to start sucking. You're quite eager to comply as you swallow the tip into your oral cavity. Just like with his virile balls you move your tongue around the tip, licking up any precum that leaks from the tip. When you feel your dom's paws on your head, rubbing it softly, you hum in happiness, which prompts a groan from the big kitty. 'Mmm you're really good at this, aren't you my little sub?' He murmurs.";
	WaitLineBreak;
	say "     Shortly after that, he speaks up once more. 'Would you mind if I make this go a bit faster my kitty?' he asks you. Knowing that your dom is asking you if you'd let him fuck your face, you nod your head yes. When he smiles widely at you, you can feel warmth pool in your stomach. The male grabs both sides of your head before thrusting deep in your gullet, surprised when you don't gag. This encourages him to start rapidly fucking your mouth, moaning and groaning at the sensation of your throat clamping around his dick. Quickly though he gets off the table, pulls out, and then asks you to lay on the table, your head hanging off. Wanting to please your kitty, you do so and are once more presented with his cock. He lowers himself into your mouth and down your throat, before proceeding to fuck it roughly.";
	say "     The sounds of his balls slapping against your nose fill the room as well as the slurping noises of his dick going in and out of your oral cavity. By now the two of you are rapidly reaching your climaxes[if cunts of player > 0] with you fingering your pussy[else if cocks of player > 0] with you masturbating your own cock rather furiously[end if]. Quite soon, Oliver reaches his peak, making him slam into your throat one last time. He releases rope after rope of cum into your belly, something that ends up setting you off as well. [if cunts of player > 0]With a loud groan you orgasm, your female juices leaking out of your pussy. [else if cocks of player > 0]With a loud moan you bring your hand down one last time before shooting your sperm all over yourself. [end if]Once the two of you come down from your sexual high, your dom pulls out of your throat and picks you up so he's carrying you. 'You did wonderful my little kitty. I may have to try your mouth again some time.' He murmurs happily. Oliver then proceeds to cuddle with you for half an hour before setting you on the floor and saying goodbye, returning to his sex toy magazine.";
	now lastfuck of Oliver is turns;

to say OliverSex3:
	say "     You eagerly ask him if he'd fuck your ass, your dom's tail starts to wag happily, despite the fact he is a feline. He pulls you into a hug and kisses before pulling back. 'I'd love to my little kitty,' he says, nuzziling your neck. To your surprise, he lets you down and lays himself on his back on the gestures for you to climb on. You don't question it though, and happily get on top of him after stripping yourself of clothing. You rub your ass against his dick, hot dogging it between your cheeks. While you do this, Oliver cuddles you close, pulling you into a make-out session. The two of your tongues battle for dominance but you quickly subscede your control to your big kitty, moaning into the kiss.";
	say "     While still kissing you, the large cat reaches back and pushes one of his padded fingers into the entrance of your hole. You groan into his lips, relishing both the pain and pleasure that come from him slowly opening you with his digits. When this is happening, you inwardly muse that everything feels perfect. Your dom's big body acts as a large pillow that practically cushions you softly. His lips on yours is heavenly, as if you're partaking in the ambrosia of the gods. You're quickly drawn out of your thoughts when he both chuckles and adds another finger to your entrance. 'Is my little sub in bliss?' he asks as he pulls back out of the kiss. Shyly you nod at him, causing him to smile and nuzzle your neck. 'I'm glad then, because if you're happy then I am too,' he tells you before starting to make out with you again. While he does this, he begins to scissor your pucker open, making sure to loosen you up enough for him.";
	WaitLineBreak;
	say "     Not soon after that he pulls his fingers out and positions himself at your entrance. With a gentle push, he begins to inch himself into your hole. [if cunts of player > 0]The nubs on his cock make you groan in pleasure, your pussy throb in pleasure. [else if cocks of player > 0]The nubs on his cock make you shiver in pleasure, your cock now throbbing hard. [end if]Your big kitty sets a rapid pace once he knows that you are used to his size. While he's quickly fucking you, he continues to make-out and cuddle you, something that gets you going even more. On top of that the fast in and out movement of the bumps on his dick make you moan out loud. The whole process brings both of you closer and closer to your peaks.";
	say "     Those climaxes quickly approach, as evidenced when your dom slams into you one last time before releasing his cum into your tight hole. The amount of jizz coming from his dick is so much that it starts leaking out of your ass. [if cunts of player > 0]With you being filled so much by Oliver you groan out loud before orgasming yourself, your juices spilling from your pussy. [else if cocks of player > 0]The feeling of beeing filled so much by your dominant makes you orgasm hard, spilling your seed all over Oliver. [end if]The two of you ride out your bliss, still making out and cuddling. When it does disappear, your big kitty pulls out, making the cum pour out from your hole. He then picks you up and lays you down before surprisingly cleaning you up. When he's done he helps you get dressed and then gives you a kiss. 'That was wonderful my little kitty,' he tells you, saying afterwards that you two should try again later. He then goes back to his magazine.";
	now lastfuck of Oliver is turns;

Oliver ends here.
