Version 3 of Andrew by Gherod begins here.

"Adds a primarily M/M Wolf NPC named Andrew to the Flexible Survival game."

[ORIGINAL AUTHOR: Stripes]
[Version 2.2 - Another sex scene - player tops w/onlookers]
[Version 3 - Updated NPC code, gave Andrew a talk and sex menu and some talking options. Some sex scenes were edited, added to or rewritten for a better immersion and context (relative privacy for duo scenes, exhibitionist scenes for the special ones), added scenes to integrate new infection items - file taken and updated by Gherod]

[ HP of Andrew                      ]
[ 0 = Nothing                       ]
[ 1 = Talked w/him                  ]
[ 2 = Had sex once                  ]

[ lust of Andrew                    ]
[ Andrew + Demon Brute pet          ]
[ 0 = no interaction                ]
[ 1 = plan rejected (but still selectable in the menu) ]
[ 2 = demon sex show                ]
[ 3 = post demon-show talk          ]
[ 4 = redeemed demon sex show       ]
[ 5 = post redeemed demon sex show  ]
[ 100 = demon show ending           ]

Section 1 - Private Booths

Table of GameRoomIDs (continued)
Object	Name
Private Booths	"Private Booths"

Private Booths is a room. Private Booths is east of PALOMINO. Description of Private Booths is "     Looking around the shadowy, semi-private booths in this corner of the club, you spot several signs of patrons having used them for some fun. Many of the vinyl padded seats of the booths, and even some of the round tables, have large splatters of cum on them. While the booths themselves look rather new, it's clear that they've suffered a lot of wear recently, with fresh claw marks in the wood and cushions alike from mutated patrons in the throes of lustful passion.".

the scent of Private Booths is "The booths smell strongly of male lust of numerous varieties, though wolf is definitely omnipresent in the air in this area.".


Section 2 - Andrew

Table of GameCharacterIDs (continued)
object	name
Andrew	"Andrew"

Andrew is a man. Andrew is in Private Booths.
ScaleValue of Andrew is 3.
Body Weight of Andrew is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Andrew is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Andrew is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Andrew is 12. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Andrew is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Andrew is 6. [length in inches]
Breast Size of Andrew is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Andrew is 2. [count of nipples]
Asshole Depth of Andrew is 10. [inches deep for anal fucking]
Asshole Tightness of Andrew is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Andrew is 1. [number of cocks]
Cock Girth of Andrew is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Andrew is 10. [length in inches]
Ball Count of Andrew is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Andrew is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Andrew is 0. [number of cunts]
Cunt Depth of Andrew is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Andrew is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Andrew is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Andrew is false.
PlayerRomanced of Andrew is false.
PlayerFriended of Andrew is false.
PlayerControlled of Andrew is false.
PlayerFucked of Andrew is false.
OralVirgin of Andrew is false.
Virgin of Andrew is true.
AnalVirgin of Andrew is false.
PenileVirgin of Andrew is false.
SexuallyExperienced of Andrew is true.
TwistedCapacity of Andrew is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Andrew is false. [steriles can't knock people up]
MainInfection of Andrew is "Black Wolf".
Description of Andrew is "[Andrewdesc]".
Conversation of Andrew is { "Sex?" }.
The scent of Andrew is "     Andrew is saturated with the scent of male lust, both his and that of many others.".
the icon of Andrew is figure of Andrew_icon;

to say AndrewDesc:
	say "     [one of]Sitting[or]Adjusting the sizable bulge in his pants while sitting[or]Watching the guys on the dance floor while sitting[or]Sipping idly at a drink while sitting[or]Rubbing the large bulge in his black cargo pants as a particularly sexy ass walks past him while he's sitting[as decreasingly likely outcomes] in the cornermost booth, this black furred wolf bobs his head to the beat. The fellow is of average height and build, but has a considerably lupine body. His arms end in paw-like hands and his legs have become digitigrade, though his wolf tail seems longer than those of others you've seen. He's going topless, wearing only a pair of black cargo pants held up by a rainbow belt. Below that brightly colored belt is a very sizable bulge that draws your eyes before you notice you're staring and look back up at his face. Having noticed your glance, his mischievous violet eyes look you over through his shaggy headfur as his ears perk in your direction and he gives you a lupine smile while twirling a fingertip in one of the messy splatters of white goo on the table at this particularly sticky booth.";

Instead of conversing the Andrew:
	if HP of Andrew is 0:
		now HP of Andrew is 1;
		say "     The wolf's tail swishes slowly as he smiles up at you. 'Well, hey there[if Player is puremale], cute stuff[else if Player is male], sweetie[end if],' he says with a slightly effeminate voice. 'I don't think we've had a chance to talk yet. I'm Andrew,' he says, offering you his paw. Deciding to be polite, you give it a quick shake. 'I kinda work here. Strictly volunteer, you see, helping to keep everyone's morale up in these troubled times. There are so many poor guys out there with strange changes. Powerful, new urges they can't cope with. And so here I am, ready and willing to help,' he chuckles in his soft voice while spreading his arms wide, almost knocking over the last of his black beer. 'Eep! Almost lost my fine brew there,' he says, finishing it off.";
		if Player is male:
			say "     'So, care to join me in seeking a little relief from the stresses of this crazy city of ours?' he says, eyeing your crotch as he slides his long tongue along the inside of his glass to get the last few drops. He smiles mischievously as his violet eyes watch your reaction to his teasing tonguework.";
	else if lust of Andrew is 2:
		say "     The black wolf stretches, running his paws over his body. 'Oh man, that thing we did with your demon was great. Got a little out of hand there, but it was so much fun. Maybe we co...' he starts to say, but stops short when he notices Harold glaring at him from the bar. 'Uhh... I mean, we probably shouldn't do it again though. Several people went feral during the show and had to be thrown out.' He does his best to look contrite until the unicorn turns away, then flops back into his seat with a disappointed sigh.";
		say "     'Grumpy over there says he'll cut me off permanently if we try that again. Can you believe him? No more beer! Speaking of...' he adds, reaching for a half-full stein and draining it. 'Seriously though, as fun as that was, I've gotten plenty more requests for my [']personal services['] since the show. Nothing like being the center of an orgy to boost one's popularity,' he says with a happy giggle.";
		now lust of Andrew is 3; [repeat forbidden because of possible demonic escalation]
	else if lust of Andrew is 4:
		say "     The black wolf stretches, running his paws over his body. 'Oh man, that thing we did with your demon was great. Lots of audience participation too. Maybe we co...' he starts to say, but stops short when he notices Harold glaring at him from the bar. 'Uhh... I mean, we probably shouldn't do it again though. The cleanup afterwards was quite a bit of work.' He does his best to look contrite until the unicorn turns away, then flops back into his seat with a disappointed sigh.";
		say "     'Grumpy over there says he'll cut me off permanently if we try that again. Can you believe him? No more beer! Speaking of...' he adds, reaching for a half-full stein and draining it. 'Seriously though, as fun as that was, I've gotten plenty more requests for my [']personal services['] since the show. Nothing like being the center of an orgy to boost one's popularity,' he says with a happy giggle.";
		now lust of Andrew is 5; [repeat forbidden because of too much cleanup]
	else if Player is male:
		say "[randombodypart]";
		say "     [one of]'Are you having a good time?'[or]'Grab a drink from the bar and let's chat.'[or]'Looking for a little fun, sweetie?' he asks softly.[or]'Looking to snuggle with this big, bad wolf,' he teases, rubbing his crotch.[or]'Need a little stress relief, honey.'[or]'I've been hanging out at this club since before the outbreak and I like it even better now.' He leans a little closer. 'Being able to fuck here in my booth is much more fun.'[or]'Mmm... what's say you snuggle up in here beside me,' he says with his vaguely feminine voice while sliding a finger slowly through one of the sticky puddles of cum on the table before licking it away from his fingertip.[or]'Have you tried the [']Black Wolf Beer[']? I help Harold make it,' he says, rubbing his bulging crotch. 'I highly recommend it.'[or]'Look at the set of buns on that one,' he giggles. 'Mm-Mm-Mmmm...'[or]'So what have you b...' he starts to ask, but trails off as a sexy [bodyselector] with a big cock walks into view.[or]You and the wolf chat, but it constantly devolves into him commenting on the sexual prowess of the various guys around the club as he spots them and waves. Noticing your frustration at his constant distraction, he gives you a hug and a grope. 'I'm sorry, hon. It's just tough being popular sometimes,' he says with an exaggerated sigh, before giving a girlish giggle and nipping you playfully. He becomes more attentive, at least long enough to finish your conversation.[in random order]";
	else:
		say "[randombodypart]";
		say "     [one of]'Are you having a good time?'[or]'Grab a drink from the bar and let's chat.'[or]'I've been hanging out this club since before the outbreak and I like it even better now.' He leans a little closer. 'Being able to fuck here in my booth is much more fun.'[or]'You should head onto the dance floor and have some fun,' he says with his vaguely feminine voice while sliding a finger slowly through the sticky puddles of cum on the table, drawing various dicks before licking the rest from his fingertip.[or]'Have you tried the [']Black Wolf Beer[']? I help Harold make it,' he says, rubbing his bulging crotch. 'I highly recommend it.'[or]'Have you heard this song before?' he asks.[or]'Look at the set of buns on that one,' he giggles. 'Mm-Mm-Mmmm...'[or]'So what have you b...' he starts to ask, but trails off as a sexy [bodyselector] with a big cock walks into view.[or]He mumbles some vague response to you as he leans across the table, eying the guys walking around.[or]You and the wolf chat, but it constantly devolves into him commenting on the sexual prowess of the various guys around the club as he spots them and waves. He's clearly very popular.[in random order]";
	WaitLineBreak;
	say "     After exchanging a few words with the wolf, [bold type]is there anything else in particular you would like to ask?[roman type][line break]";
	say "[AndrewTalkMenu]";

to say AndrewTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the wolf to tell you a bit more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His volunteering work";
	now sortorder entry is 2;
	now description entry is "He mentioned he worked voluntarily... Ask him about that";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sexual Preferences";
	now sortorder entry is 3;
	now description entry is "Inquire him more about his preferences and orientation";
	[]
	if HP of Andrew >= 2:
		choose a blank row in table of fucking options;
		now title entry is "Ask for some of his fur";
		now sortorder entry is 4;
		now description entry is "Just ask for a bit of black wolf fur";
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
				if (nam is "Himself"):
					say "[AndrewTalkHimself]";
				if (nam is "His volunteering work"):
					say "[AndrewTalkWork]";
				if (nam is "Sexual Preferences"):
					say "[AndrewTalkSex]";
				if (nam is "Ask for some of his fur"):
					say "[AndrewTalkFur]";
				wait for any key;
				say "[AndrewTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You let Andrew resume whatever he is doing as you excuse yourself and leave him.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AndrewTalkHimself:
	say "     You ask him to tell you a bit more about himself, since he doesn't seem to talk much about that particular subject. 'You want to know more about me? Oh... Well, let's see...' he takes a moment to think 'As I've already told you, I kinda work here... Well, kinda, because it's not like I have a contract or anything, but I do get plenty of free drinks and tips for throwing in a good show. I'm quite the dancer, too... Maybe you should watch me dancing sometime, [if player is male]or... you know, join me and show everyone some man on man action[else]maybe you could learn a thing or two[end if]...' he replies with a charming wink, his naturally flirty attitude being quite obvious to you.";
	say "     'But I suppose you want to know more than that... Well, can't say I was much different before this whole craziness happened. I was always quite the club boy, loved meeting new people, have lots of fun, going to lots of parties, sucking a lot of dick...' - he adds a naughty grin at the latter - 'And now it's even better, since everyone seems more keen on getting down to business. Outside of Palomino, well... At least now it's acceptable to teach the naughties a lesson in a multitude of ways. I guess it could be worse! We all could have been turned into chastity nuns. Wouldn't that be tragic?!'";
	say "     You move on to another subject as he finishes speaking.";

to say AndrewTalkWork:
	say "     Since he mentioned he [']kinda['] worked here, you ask him to explain his [']kinda['] work. 'I help people relax, of course! Pure entertainment! Seeing a sexy black wolf doing some sexy dancing on stage is, for sure, a great way to cheer up! Especially if you have the option to offer him some additional fun...' he says[if player is male], while eyeing you from head to feet as he bites his lower lip suggestively[else] with a mischievous wink[end if] 'I can say that I help a lot of people. Almost a one percent rate of success for any hung stud who wants a good time with me. Not to brag, of course, I just happen to fully dedicate myself to my partner once it's time to get down to business, and that drastically improves things. In short, I'm a happy worker who makes people happy.'";
	say "     You thank him for his input.";

to say AndrewTalkSex:
	say "     Anyone could notice that Andrew tends to prefer the masculine kind of fellows, but you want to know more about that, so you ask him. 'Well... It's not like I don't like women, I just prefer the studs a lot more. So why should I have one if the other gets me going like crazy? When I have plenty of dudes to pick from, I don't see the point... I just can't resist the manly scent, a strong masculine body, that good hard dick and nice tight little holes...' The wolf takes a pause to adjust his bulge, very noticeably growing as he talks about this. 'Damn, I think I need another fuck.' he finishes, giggling by the end of it.";

to say AndrewTalkFur:
	say "     Knowing this isn't exactly a request anyone makes, you compliment the sexy wolf's look before following up with your intention. 'Ah, I see... You like the wolf look[if player is male], yeah? But you could also just blow me and drink my load, instead... It would have the same effect, not to mention it's much more fun... But alright[else], hmm[end if]... I suppose I could hand you some, since it grows back up nearly instantly. Give me a second.' he says, heading somewhere out of view for a couple of minutes, then returning with a tuft of his own fur in his paw. 'Here you go, sweetie. Show me the results later, alright?' he says, handing you the fur as he gives you a wink.";
	ItemGain black wolf fur by 1;

Section 3 - Sexy Times

[
demon notes:
DBCaptureQuestVar is 5
DemonBruteStatus is 0 or 1
]

to say sexwithAndrew:
	if HP of Andrew is 0:
		say "     Now that's rather forward of you. You should at least talk to the guy, first.";
	else if Player is not male:
		say "     Andrew shifts a little in his booth, his tail subconsciously moving to cover his groin. 'Oh... umm... well, I'm more of a man's man, you see? I mean, empirically speaking, I might consider it, but there's... just so many sexy guys here and they always get my motor running,' he says with a grin. 'Sorry, hon.'";
	else if lastfuck of Andrew - turns < 6:
		say "     'Mmm... I'm always up for more fun, but I promised one of the other guys some special wolf action and I don't want to disappoint him. Maybe later, hon.'";
	else if HP of Andrew is 1:
		say "     Andrew pulls you into the booth, and into relative privacy, to snuggle with him, running his black paws across your [bodydesc of Player] body, kneading at your chest. 'Mmm... I'm glad you took up my offer. I'm always eager to [']meat['] new guys,' he giggles, licking along your ear. A paw drifts down to your groin, fondling your cock as he grinds his bulging crotch against you. 'So, what did you have in mind...?'";
		say "[AndrewSexMenu]";
	else if HP of Andrew >= 2 and DBCaptureQuestVar is 5 and ( DemonBruteStatus is 0 or DemonBruteStatus is 1 ) and lust of Andrew is 0 and demon brute is listed in companionList of Player:
		say "     Andrew smiles as the topic of sex comes up, but his attention wanders over to your enslaved demon, which has been standing imposingly behind you. Noting his interest, you are tempted to ask him what he thinks of your bodyguard, but he speaks sooner. 'Wow... This... companion of yours is quite the impressive slab of meat. And I don't just mean those big muscles of his, sweetie. Would you be willing to... loan him to me for a bit? I could give him a bit of a... workout. I'm sure we could give everyone a show they won't soon forget,' he says with a grin as his eyes run over the demon's cock. The demon remains as stoic and scowly as ever, though you can see his cock stiffening and swelling at the prospect of getting some sexual relief.";
		say "     [bold type]Shall you order your demon slave to fuck Andrew? This decision will immediately lead into some action, and you should keep in mind that the demonic influence within your enslaved brute might be dangerous...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No (but you can ask him directly later if you bring your demon brute).";
		if Player consents:
			say "[AndrewDemonShow]";
		else:
			say "     Deciding it'd probably not be a good idea, you tell Andrew that, adding that";
			if player is male:
				say " you'd be more than happy to have some fun with the wolf if he's up for it. 'Oh, I see how it is. You're just looking to get some of this,' he says, rubbing if large, firm package.";
				WaitLineBreak;
				say "[AndrewSexMenu]";
			else:
				say " he should probably stick to the playing with the regular club patrons for his fun. He sighs, but nods in agreement.";
			now lust of Andrew is 1;
	else if HP of Andrew >= 2 and DBCaptureQuestVar is 7 and ( DemonBruteStatus is 0 or DemonBruteStatus is 1 ) and lust of Andrew is 0 and demon brute is listed in companionList of Player:
		say "     Andrew smiles as the topic of sex comes up, but his attention wanders over to your demon companion, who has been standing imposingly behind you. Noting his interest, you are tempted to ask him what he thinks of your bodyguard, but he speaks sooner. 'Wow... This... companion of yours is quite the impressive slab of meat. And I don't just mean those big muscles of his, sweetie. Would you be willing to... loan him to me for a bit? I could give him a bit of a... workout. I'm sure we could give everyone a show they won't soon forget,' he says with a grin as his eyes run over the demon brute's cock. Having heard the gay wolf talk about him, Brutus meanwhile is looking back at him with interest, and you can see his cock stiffening and swelling at the prospect of getting it on with the man.";
		say "     [bold type]Shall you give the OK for Brutus to fuck Andrew? This decision will immediately lead into some action...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No (but you can ask him directly later if you bring Brutus).";
		if Player consents:
			say "[AndrewBrutusShow]";
		else:
			say "     Deciding it'd probably not be a good idea, you tell Andrew that, adding that";
			if player is male:
				say " you'd be more than happy to have some fun with the wolf if he's up for it. 'Oh, I see how it is. You're just looking to get some of this,' he says, rubbing if large, firm package.";
				WaitLineBreak;
				say "[AndrewSexMenu]";
			else:
				say " he should probably stick to the playing with the regular club patrons for his fun. He sighs, but nods in agreement.";
			now lust of Andrew is 1;
	else:
		say "     Andrew pulls you into the booth, and into relative privacy, to snuggle with him, running his black paws across your [bodydesc of Player] body, kneading at your chest. 'Mmm... Is that so? Well, as long as it's with you, any time is well spent...' he giggles, licking along your ear. A paw drifts down to your groin, fondling your cock as he grinds his bulging crotch against you. 'So, what did you have in mind, this time...?'";
		say "[AndrewSexMenu]";

to say AndrewSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Have him blow you";
	now sortorder entry is 1;
	now description entry is "Allow the wolf to suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck the wolf's cock";
	now sortorder entry is 2;
	now description entry is "Offer Andrew a blowjob";
	[]
	if HP of Andrew >= 2:
		choose a blank row in table of fucking options;
		now title entry is "Milk him for some cum";
		now sortorder entry is 3;
		now description entry is "Get some bottled up cum from Andrew";
	[]
	if HP of Andrew >= 2:
		choose a blank row in table of fucking options;
		now title entry is "Get some anal action";
		now sortorder entry is 4;
		now description entry is "Fuck the wolf or get fucked";
	[]
	if HP of Andrew >= 2:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Andrew with an audience";
		now sortorder entry is 5;
		now description entry is "Take the wolf from behind with some spectators watching";
	[]
	if HP of Andrew >= 2 and player is not dominant: [this scene would definitely not fit a dominant player]
		choose a blank row in table of fucking options;
		now title entry is "Get cummed on by Andrew in public";
		now sortorder entry is 6;
		now description entry is "Tell the wolf you want him to cum all over you with an audience";
	[]
	if HP of Andrew >= 2 and player is not dominant: [this scene would definitely not fit a dominant player]
		choose a blank row in table of fucking options;
		now title entry is "Receive a bukkake";
		now sortorder entry is 7;
		now description entry is "Suggest getting some patrons to cum all over you";
	[]
	if HP of Andrew >= 2 and DBCaptureQuestVar is 5 and ( DemonBruteStatus is 0 or DemonBruteStatus is 1 ) and lust of Andrew is 1 and demon brute is listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "Lend your demon slave to Andrew";
		now sortorder entry is 99;
		now description entry is "Allow the wolf take your demon slave with him for a while";
	[]
	if HP of Andrew >= 2 and DBCaptureQuestVar is 7 and ( DemonBruteStatus is 0 or DemonBruteStatus is 1 ) and lust of Andrew is 1 and demon brute is listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "Lend Brutus to Andrew";
		now sortorder entry is 99;
		now description entry is "Allow the wolf to take Brutus with him for a while";
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
				if (nam is "Have him blow you"):
					say "[AndrewSexReceiveBlowjob]";
				if (nam is "Suck the wolf's cock"):
					say "[AndrewSexGiveBlowjob]";
				if (nam is "Milk him for some cum"):
					say "[AndrewSexMilk]";
				if (nam is "Get some anal action"):
					say "[AndrewSexAnal]";
				if (nam is "Fuck Andrew with an audience"):
					say "[AndrewSexFuck]";
				if (nam is "Get cummed on by Andrew in public"):
					say "[AndrewSexCummedOn]";
				if (nam is "Receive a bukkake"):
					say "[AndrewSexBukkake]";
				if (nam is "Lend your demon slave to Andrew"):
					say "[AndrewDemonShow]";
				if (nam is "Lend Brutus to Andrew"):
					say "[AndrewBrutusShow]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You let Andrew resume whatever he is doing as you excuse yourself and leave him.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

the fuckscene of Andrew is "[sexwithAndrew]".

to say AndrewSexReceiveBlowjob:
	say "     You decide that a simple blowjob should be enough to satisfy your current cravings, and Andrew loves hearing your suggestion, if it was not obvious by how much he likes feeling your junk with his paw.";
	if HP of Andrew is 1:
		say "     'But of course! And since this is our first time together, I think it's appropriate to let me get a taste for you...' he says, nipping at your neck";
	else:
		say "     'You want me to suck you off again? Well, I'm always down for getting a taste of you...' he says, nipping at your neck";
	say ". You moan and nod, eager to feel the playful wolf's muzzle and tongue on your dick as he continues to tease you, your erection starting to pop up quickly as his loving touch caresses you deeply and softly all around your neck, slowly and teasingly, making his way down to your chest with soft kissing, all to prepare you for a much more delightful pleasure.";
	say "     [if scalevalue of Player > 3]Shoving the table out of the way of your large body and pushing[else]Pushing[end if] you to the back of the booth, he climbs onto the seat and buries his muzzle between your legs, licking and lapping eagerly at your erection. You moan softly and run your hands through the wolf's shaggy headfur. His tongue works up and down your shaft while fondling your nuts. His warm breath washes over your crotch as he takes you into his mouth eagerly. His head bobs and his tongue works you over with considerable skill, the wolf being clearly as well-practiced as he claimed.";
	WaitLineBreak;
	say "     As he blows you, he undoes his belt and slides down his pants, freeing his large, lupine cock and heavy ballsack. His meat is a girthy ten inches with a thick knot at its base. It pulses as he strokes over it, dribbling considerable precum down over his shaft and sheath as well as onto the padded seat. Even with the sound of the club's music in the background, you start to hear the wet sounds of him sucking you off and stroking his slick cock.";
	say "     With the gay wolf working your [cock size desc of Player] [Cock of Player] cock and the added show of him playing with himself, you cum quite hard, blasting shot after shot of your hot seed down his throat. His tongue slathers over your [if Cock Length of Player > 16] shaft[else]balls[end if] as you cum. As your orgasm is finishing, he moans in pleasure and his ballsack tightens up before shooting large globs of cum from his throbbing dick. Some splatters onto you, onto him, the underside of the table and even the back of the booth beside you. Andrew sits up slowly, licks his muzzle and smiles happily. 'Mmm... very tasty. Come back for more any time, sweetie.'";
	NPCSexAftermath Andrew receives "OralCock" from Player;
	if HP of Andrew is 1:
		now HP of Andrew is 2;

to say AndrewSexGiveBlowjob:
	say "     Andrew grins at your offer and runs a paw down to the bulge in his pants. 'Mmm... You want a tasty treat, hot stuff? I've got something nice and sticky all saved up, just for you...' he says while hopping up to sit at the edge of the table. He unzips his fly and pulls out his swelling cock, running his fingers over the throbbing, lupine cock. A little precum dribbles down his pointed shaft as he slips his pants down completely. The scent of aroused wolf grows stronger and you lick your lips, longing to get a taste of that thick meat.";
	say "     Unable to resist the tantalizing offer, you bring your lips to his thick shaft and start licking and kissing at it. He moans softly and rubs his hands over your head, gently coaxing you to take it into your mouth. As he stuffs your mouth with his cock and starts thrusting into it, you work your tongue over him, excited by the taste of his precum and musky meat. You grope his heavy, enlarged balls with one hand, longing to taste their contents soon. 'Mmm... good work. Keep that up,' he says in his soft, sultry voice";
	if player is submissive: [the original scene was clearly intended towards more submissive players]
		say ". 'You love this, don't you? I bet you'd also love putting on a show for everyone to see how much you love servicing a big cock...'";
		WaitLineBreak;
		say "     Awash in your own arousal, you'd voice your agreement with him if your mouth weren't stuffed with delicious wolf-cock, wanting to be as much a man-whore as the sexy wolf you're blowing. You are quite certain others would be eager to use your every hole, and imagining all those different, sexy penises around you, being stroked, rubbing together, filling slick holes, turns you on all the more. You wiggle your rear and suck all the harder, which stimulates his cock to increase its flow of delicious precum. Grabbing his ass with your free hand, you slip a pair of fingers into his tailhole and prod at his prostate. This gets the wolf howling in pure bliss as his orgasm approaches, leaving you with a decision to make.";
	else: [a new, more neutral, variant]
		say ". 'You're really good at this... I'd love putting on a show for everyone with you sucking my big cock... Bet others would like to join, too...'";
		WaitLineBreak;
		say "     Awash in your own arousal, you'd agree with him if your mouth weren't stuffed with delicious wolf-cock, wanting to encourage the sexy wolf's boldness. You are quite certain others would be eager to join you in the action. Imagining all those different, sexy penises around him and you, being stroked, rubbing together, filling slick holes, turns you on all the more. You wiggle your rear and suck all the harder, which stimulates his cock to increase its flow of delicious precum. Grabbing his ass with your free hand, you slip a pair of fingers into his tailhole and prod at his prostate. This gets the wolf howling in pure bliss as his orgasm approaches, leaving you with a decision to make.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Swallow his cum (infectious).";
	say "     ([link]N[as]n[end link]) - Make him cum over himself.";
	if Player consents:
		Linebreak;
		say "     Committing to your decision, you leave your mouth on his cock and continue to stimulate him until the long-awaited release, and in a matter of seconds, he cums hard, blasting his thick seed into your mouth. His prodigious flow forces its way down your throat and stuffs your belly with hot semen. Just as your tummy's starting to feel full, he pushes your head back, letting the rest of his load spray onto your face, coating your head in his delicious, musky cum.";
		say "     A little dazed, but greatly aroused after your tasty meal of wolf cum, you're pushed up onto the table by Andrew. As you use your hands to wipe his seed into your mouth, he takes a hold of your throbbing [cock size desc of Player] erection[smn] and strokes you quickly. Soon enough you moan and cum as well, spraying your hot load, spurt after spurt, across yourself as your [Ball Size Adjective of Player] [Balls] are drained by his insistent stroking. 'I see you liked that.' he says, teasing you after you have gotten yourself all sticky with your own cum. 'Anytime you want some more, just come by and let me know, sweetie... This cock's always eager to have your attention.'";
		infect "Black Wolf";
	else:
		say "     Not having the intention to swallow the wolf's cum, you continue to stimulate him with your hands only, leaning his lupine dick over his belly as your mouth heads for his balls. Within a matter of seconds, he cums hard, blasting his thick seed all over himself, an especially powerful shot reaching his chest and below, with the rest of his load soaking his fur above the waist as you stroke him during the whole thing. Once it subsides, you let it rest by slowing down, then let his cock free of your grasp as he takes a moment to catch his breath.";
		say "     He grins at you, looking at you in the eyes as you stand between his legs, then pushes you onto the table. Without wasting any time, he takes a hold of your throbbing [cock size desc of Player] erection[smn] and strokes you quickly. Soon enough you moan and cum as well, spraying your hot load, spurt after spurt, across yourself as your [Ball Size Adjective of Player] [Balls] are drained by his insistent stroking. 'I see you liked that.' he says, teasing you after you have gotten yourself all sticky with your own cum. 'Anytime you want some more, just come by and let me know, sweetie... This cock's always eager to have your attention.'";
	NPCSexAftermath Player receives "OralCock" from Andrew;
	if HP of Andrew is 1:
		now HP of Andrew is 2;

to say AndrewSexMilk:
	say "     Wanting to collect some of his cum, you ask Andrew if it would be okay to milk him for some, and explain that you want to bring some of his load with you. 'So... you want to stroke me, make me explode and keep the load in a bottle afterwards...?' - he asks you, frowning his forehead, and continues - 'I didn't know you liked my cum that much... I suppose there's no problem by me. As if I would refuse an opportunity to get my dick serviced by such a sexy stud, anyway...' The wolf leans over the nearby table and slowly begins to slide down his pants, letting out the ten inches long of a lupine cock already growing to an erect state. He then locks his eyes on yours and, with a suggestive wink and a flirty tone, tells you to come to him. 'You'd better get started... I'm afraid I can't cum without touching it.'";
	say "     It seems the wolf wants you to earn your spoils, so you walk towards him and begin to give him the best of your manual abilities. Holding his cock with one hand, you start doing some generous strokes all over that red throbbing shaft, while the other hand cups his balls, gently massaging them at the same time. You figure it will be better if you take your time, teasing all his right spots and building up from there. 'Mmm... feels great... you've got good hands, stud...' he says, followed by a breathy moan as you continue to slide your hand up and down through his shaft, teasing his tip with your thumb as you move it around the sensitive surface. With enough persistence, the sexy wolf begins to leak, which helps you lubricate his whole manhood and stroke more effectively.";
	WaitLineBreak;
	say "     With his climax rapidly approaching, you ready your bottle as you begin to stroke him faster. By now, he is humping his hips against your hands, growing more desperate for that sweet release. 'It's coming right up, sweetie...' he says, and within a matter of seconds, the wolf howls in bliss, cumming hard and into the bottle you placed to gather most of his load. It takes him nearly half a minute to stop spurting, enough to fill the bottle, which you then proceed to close. After that, Andrew pulls you to him, and gives you a deep kiss that lasts for a while, all while causing your crotch to rub against his exposed meat. 'I hope you enjoy my spunk, stud. Maybe I should think about starting to save it, too...' he says, giggling in the end, then just before you are about to part ways, he adds 'You can ask me for some more anytime you want...' with a suggestive tone.";
	say "     It seems he liked it.";
	ItemGain black wolf cum by 1;
	NPCSexAftermath Andrew receives "Other" from Player;

to say AndrewSexCummedOn:
	say "[randomdesc]"; [yields 'slutname' - bottom]
	say "[randombodypart]"; [yields 'bodyselector' - top]
	while bodyselector is slutname:
		say "[randombodypart]";
	say "     Andrew grins at your offer and pulls you in for a kiss. He strokes a paw across your face and nibbles at your ear. 'Oh... You wanna get all soaked up and messy with my load while everyone else is watching? How bold... That's sexy as fuck!' he says with his faintly effeminate voice with considerable eagerness. Clearly the wolf is very turned on by the prospect of getting you nice and sticky like that while putting on a show, and the whole anticipation arouses you, beginning to set your own manhood harder by the second. Smiling, he strips you down with his playful, groping paws before unzipping his pants to release his own aroused member, and pulls you to a corner where people can watch you.";
	say "     With your hips at the edge of the nearby table and your legs spread, he moves in between them and presses his thick cock down onto yours. You can feel his warm shaft and weighty balls atop your [cock size desc of Player] man meat as his precum flows steadily, getting you both slick. He rubs his paws over them[if Cock Count of Player is 1] both[end if], sliding them against one another as he masturbates you both. The feel of his slippery cock against your [Cock of Player] member[smn] is very arousing, as you can feel every throb and pulse from his shaft against yours.";
	WaitLineBreak;
	say "     As your cocks are rubbed and stroked together, you let your hands wander over your [bodydesc of Player] body, teasing yourself. You notice several others gathered around the booth, watching the sexy show you two are putting on, so you increase your wanton display for them. To one side, you notice a [slutname] leaning over the booth to better watch the fun. Behind him is a [bodyselector] and it's quite clear that the pair have been inspired to have some fun of their own. Both pleased and aroused at having gotten the two males excited by your show, you reach over and stroke the [slutname]'s cheek, enjoying his moan as the [bodyselector] behind him thrusts firmly into him again.";
	say "     Turning your attention back to Andrew, you smile up at the wolf and lick your lips, moaning for him to cum. Judging by how wet your lower belly, crotch and cock[smn] are, he's certainly getting close. Grabbing his balls and rubbing them against yours, [if player is submissive]you beg him to spray his load all over you to show everyone what a big cock slut you are[else]you ready yourself to receive his load as you encourage him to cum all over your body for everyone to see[end if]. His lupine cock twitches at this and releases a big spurt of pre across your [bodytype of Player] chest, setting your own orgasm off.";
	WaitLineBreak;
	say "     Your [cock size desc of Player] [Cock of Player] shaft pulses beneath his, spraying your seed across your [if Cock Length of Player < 10]belly and the underside of the wolf's cock[else]chest and face[end if]. Andrew strokes and pumps your cock[smn], making sure you have a long and enjoyable orgasm. Hearing grunts and moans to your side, you can see the couple in the other booth panting hard as the [bodyselector] cums in the [slutname]'s ass. All this sets your lupine lover off with a lustful howl that sends a big blast of wolfcum into your face. More delicious globs of his semen spray across your body and face, coating you in large splatters of musky seed. As you moan and pant while recovering from your powerful orgasm, you gather up globs of his sticky seed and lick them from your fingers. You even share a sample with the [slutname] and, from the look he and Andrew share, you expect he'll be bending over for the wolf soon.";
	NPCSexAftermath Player receives "Other" from Andrew;

to say AndrewSexBukkake:
	say "[randomdesc]"; [yields 'slutname' - male 1]
	let male1type be slutname;
	say "[randombodypart]"; [yields 'bodyselector' - male 2]
	while bodyselector is slutname:
		say "[randombodypart]";
	let male2type be bodyselector;
	say "[randomdesc]"; [yields 'slutname' - male 3]
	while slutname is male1type or slutname is male2type:
		say "[randomdesc]";
	let male3type be slutname;
	say "[randombodypart]"; [yields 'bodyselector' - male 4]
	while bodyselector is male1type or bodyselector is male2type or bodyselector is male3type:
		say "[randombodypart]";
	let male4type be bodyselector;
	let randomcolorchoice be "gray ";
	let male1c be "";
	let male2c be "";
	let male3c be "";
	let male4c be "";
	sort randomcolorlist in random order; [fresh randomized set]
	if a random chance of 1 in 5 succeeds:
		now male1c is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 5 succeeds:
		now male2c is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 5 succeeds:
		now male3c is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 5 succeeds:
		now male4c is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
[		say "TEST:[line break]";
	say "male1type: [male1type][line break]";
	say "male2type: [male2type][line break]";
	say "male3type: [male3type][line break]";
	say "male4type: [male4type][line break][line break]";
	say "male1c: [male1c][line break]";
	say "male2c: [male2c][line break]";
	say "male3c: [male3c][line break]";
	say "male4c: [male4c][line break][line break]";]
	say "     Andrew grins at your offer and pulls you in for a kiss. He strokes a paw across your face and nibbles at your ear. 'Oh, fuck... You're sure you want that? Because that's a really nice idea...! And I have a few of my own to make that happen, as well...' he says with his faintly feminine voice with considerable eagerness. Clearly the wolf is very turned on by the prospect of getting you nice and sticky, full of cum by numerous other men like that. The gay wolf gives you a kiss on the cheek, whispering 'I'll be right back... Get ready while I'm gonna grab some guys to join us...' with a teasing tone as he gropes at your crotch, already hardening from the anticipation. Nodding to him, he then dashes out of the booth, committed to give you a great time.";
	say "     While you wait for him to return, you remove your clothes, stripping down naked and sitting on the edge the booth, and idly stroke your [Cock of Player] [if Cock Count of Player > 1]cocks[else]shaft[end if], already imagining the scene in your head. After a bit, you hear some excited chatter as Andrew comes back in, trailing behind him four other males. Looking at them you see that he brought a rather mixed group, and ready to go, judging by the bulges in their clothes. You beckon them closer and watch them strip off their clothes, eagerly getting naked to join the fun.";
	WaitLineBreak;
	say "     You see one a little more eager than the others, a rather endowed [male1c][male1type] walks up to you and push his leaky cock in your face. Now that one has broken the ice, the others move in closer, a [male2c][male2type] rubbing his swollen glans against your cheek. 'Mmm... put that tongue to work. Show us how well a cock-slut like you knows how to please.' Grinning widely, you eagerly start licking and kissing on his cock, slathering it with your tongue and sucking on his tip. Not to be undone, the [male2type] pushes his shaft against your mouth, making you divide your attention between the two of them. You lick and suck on first one cock, then the other, moaning softly at the taste of their cockflesh and the pre that starts to flow from them. Grabbing them with your hands, you rub and stroke on their cocks when they aren't in your mouth, pleasuring them with skill.";
	say "     After a few minutes, you hear some whispers from Andrew and the other two males. With a quick motion you suddenly have the delicious cocks pulled from your mouth. Now that the [male1type] and [male2type] have been pulled back from blocking your sight, you can see who the others Andrew found are. Standing to the side of the [male1c][male1type] is a [male3c][male3type], with a big grin on and his hand on his friend's shoulder. Between Andrew and the [male2c][male2type] is a [male4c][male4type] eagerly waiting his turn. Andrew leans in and licks your cheek, tasting some of the musky pre left there, and murring. 'How about you hop up on the table here, sweetie? Let all of us have a turn at you,' Andrew says in a lust-filled voice, patting one of the cum-stained tables.";
	say "     You eagerly agree and spring up on the table, sitting on the edge of it and pulling Andrew in close. You draw him down and give him a kiss, feeling his girthy shaft hot on your [cock size desc of Player] [if Cock Count of Player > 1]rods[else]rod[end if], taking his paws in your hands and placing them on your cocks, urging him to explore. Looking up from Andrew you crook your finger at the others, urging them in close. Reaching out you grab the erections of the [male3type] and [male4type] and you begin pumping your hands on them. You let out a moan as Andrew begins stroking his hefty meat against your [Cock of Player] [if Cock Count of Player > 1]erections[else]erection[end if], keeping a tight grip on [if Cock Count of Player > 1]all of the[else]both of your[end if] throbbing cocks, frotting against you vigorously.";
	say "     Pulling the two males you have your hands on closer, you let go of their cocks and start to lick and suck on both of them eagerly. You moan loudly to them, showing them how much you enjoy having their cocks in your face. Keeping your hands on them, you stroke them as you pleasure them. The other two come up and stand over you, starting to jerk themselves off over you, watching you lash your tongue on the other two and looking at what Andrew is doing to you as well.";
	say "     As things heat up, moans and grunts almost overpower the music in the booth, the scent of male musk filling the atmosphere as pre coats your [bodydesc of Player] body. Sloppy wet sounds add to the noise as pre and saliva flows more freely, your [Cock of Player] shaft throbbing heavily against Andrew's thick, knotted member. Your hands explore the drippy dicks, feeling their textures and veins as you try to bring the four sexy males around you to orgasm. Looking past them, you can see you've gathered an audience as others lean over from the neighboring booth or watch from the sidelines. From the expression on their faces, you can tell more than a few of them have some horny cocksucker tending to them right now.";
	say "     The first one to climax is the [male1c][male1type], voicing out a loud moan as his thick cock throbs heavily before starting to soak you and the table in cum, a few shots even hitting the other males. This sets off a chain reaction as hot jizz starts flying onto you, the other three covering your body in their seed and soaking your face and body. You moan and suck and lick on the two spurting cocks in front of you, enjoying the taste of the thick cream.";
	say "     Watching this sets Andrew off and with a howl his cock starts throbbing and blasting his cum all over you and the table you are laying on, as well as hitting the other males. The large spurts of cum he unleashes seem particularly thick and plentiful, even for him, soaking much of you in wolf semen. The feel of his cock throbbing against yours and the scents and sounds in the air, as well as the sight and feel of the cocks around you all cumming sets you off. Your [cock size desc of Player] maleness swells and then throbs as you shoot your [Cum Load Size of Player] load onto yourself, adding to the thick coating of cream on you.";
	say "     After everyone is spent, the [male1type] and [male2type] sit down in a booth of their own, cuddling and snuggling with each other. The other two sit down in the messy booth with you and Andrew, the four of you cuddling and groping one another. Andrew leans in with a smile and licks some of the mixed cum off your cheek. 'That was a lot of fun, sexy. Looks like you've turned into quite the cum-slut,' Andrew says with a smirk. 'We'll have to do this again sometime.'";
	NPCSexAftermath Player receives "OralCock" from Andrew;

to say AndrewSexFuck:
	say "     Andrew smiles at your offer, quite eager to oblige. 'Hmmm... You know... I'm usually pretty busy and can't linger for long...' he says with some seriousness as he rises from his seat. 'But for you, I'm sure I can squeeze you into my tight schedule,' he adds with a grin as he slips down his cargo pants and bends over the messy table, putting his crinkled hole on tantalizing display. Reaching back, he slips a pair of digits into his back door and spreads it open with ease. 'See. I can be very accommodating,' he giggles teasingly.";
	say "     With such an offer before you, your manhood gets harder still. Grabbing that offered ass, you run your fingers through its black fur as you get your cock lined up. As you start sliding into him, he moves his paw to instead [if CockName of Player is listed in infections of InternalCockList]cup your balls[else]steady himself on the table[end if][if Cock Length of Player > 24]. Grunting a little at your sheer size, he snatches up a half-full stein of beer and downs it. 'Ahhh- that's better. A little extra libation to help me cope with that impressive piece of yours[else]. Releasing a satisfying moan as you penetrate him, he takes a half-finished beer and drains it in a few gulps. 'Ahhh- [one of]my two favorite vices - fine drink and fine men[or]I so enjoy the pleasure of fine drink while in the company of a fine gentleman[at random][end if].'";
	say "     With your cock stuffed in the wolf's ass, you can feel his squeeze and tighten around you, milking at your cock now that it's adjusted to your presence. With a firm grip on his buttocks, you thrust firmly, drawing a soft moan from the lustful gay lupine. Knowing he can take it, you increase your pace, drilling harder and deeper into him. And true to form, he raises his ass a little higher and pushes back into every thrust.";
	say "     As the sticky sounds and moans of your fucking increase, the attention of the neighboring booths is drawn. Soon you have a few spectators admiring the show. Even while getting fucked hard and deep, the wolf is able to negotiate rendezvous with a few of the horny guys asking for a shot at his ass next. You get a few offers as well, which is quite tempting, but too much of your focus is on plowing the fine wolf you're buried in right now.";
	say "     After a good, long pounding, you feel your climax approaching. Sensing this as well, Andrew works that experienced ass with firm squeezes on your already aching cock. This sends you past your peak and you cum hard and long into his welcoming bowels. You drain your balls into him, emptying a [Cum Load Size of Player] load into him while he moans in satisfaction.";
	say "     When you're finished and have pulled out, Andrew rolls over and sits up on the table, jerking himself off quickly. He blasts his load into one of the empty beer mugs, nearly filling it. He then guzzles down his load and gives you a very sloppy and cum-filled kiss while those around watch on, many catcalling at this last show.";
	NPCSexAftermath Andrew receives "AssFuck" from Player;

to say AndrewSexAnal: [standard anal sex w/Andrew]
	say "     Andrew grins at your offer and runs his paws over your [bodydesc of Player] body with obvious lust. 'Mmm... I'm certainly up for some of that, sweetie. Now what exactly did you have in mind?' he says with his slightly feminine voice while walking a paw down to your crotch[if Player is female]. 'I'm up for either top or bottom. But if I top, I'd be taking your back door in, hon,' he says softly to make sure that'd be alright[else]. 'I'm up for either top or bottom, sweetie. What do you feel like?' he asks while nibbling your ear[end if].";
	say "     [bold type]Do you want to fuck him or get fucked?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Fuck him.";
	say "     ([link]N[as]n[end link]) - Get fucked (infectious).";
	if Player consents:
		Linebreak;
		say "     The wolf leans against the table and raises his tail, having gotten out of the cargo pants while you were deciding. His heavy balls and cock slap down onto the wood as he smiles back at you. His long tail swishes in slow invitation and you don't wait any longer. Moving in behind him, you grind your hard [Cock of Player] shaft against his rear and he moans playfully. 'Come on, honey. Show me what you can do.' Not wanting to disappoint, you line your glans up with his tight pucker and slowly sink into him. His asshole spreads with practiced ease, relaxing enough to take your [cock size desc of Player] cock into him, but staying tight enough to squeeze and tug at it nicely. He moans in pleasure as you penetrate him, then reach around to stroke his lupine cock.";
		say "     As you fuck the wolf over the table, a few others around take notice for a little while but clearly aren't surprised or upset by it. Clearly a regular appearance, especially from the black wolf, they don't interrupt your fun together. A few other couples around do start up soon after though, adding to the experience. You pound him vigorously while stroking him off, your hand very slick from the copious amounts of precum running down his dick and pooling on the table. His inner walls rub over your sensitive shaft, moving and gripping around you to eventually drive you to a powerful orgasm that sends your hot seed deep into the gay wolf's asshole. Feeling your hot load filling him[if Ball Size of Player > 4] more and more as your oversized balls drain[else if Ball Size of Player > 3] as your large balls drain[end if], he howls in pleasure and cums hard, shooting his sticky load across the table and the back of the booth in another messy display. As his last shots are firing, he starts lapping up a big puddle of it within reach. After you pull out, he gives you a slobbery kiss that's rich with the taste of his semen and pats your ass in thanks for the nice fuck.";
		NPCSexAftermath Andrew receives "AssFuck" from Player;
	else:
		Linebreak;
		say "     [if scalevalue of Player > 3]Pushing the table out of the way to make some extra space, the[else]The[end if] wolf leads you to climb into the booth with your ass up for him. His paws stroke over your rear, giving it an appreciative squeeze before he lines up his ten inch cock and slides it between your cheeks a few times. 'Mmm... I've got a nice, big dose of wolf saved up for you, [one of]sweetie[or]honey[at random],' he says, lining up his leaking glans against your pucker. He rubs it against your back entrance, letting his copious precum get you slick before slowly starting to ease into you. He takes his time at first, letting his pre soak your inner walls to ease his passage until he's finally sheathed himself into you and starts fucking you in earnest.";
		say "     As you moan beneath him each time his thick meat pushes against your prostate, Andrew slips a paw around to [if Player is female]slide a finger over your wet folds. 'Such a naughty herm you are, taking it up the ass like a slutty boytoy,' he teases before moving his paw around your cock and stroking your throbbing maleness[else]wrap around your cock and start stroking you. 'Mmm... you've got a tight, sexy ass. I can hardly wait to get my knot into it,' he moans and thrusts harder, slapping his heavy ballsack against your thighs[end if]. Despite his words, he does hold back and take his time, making sure you get a long and wonderful ride before eventually pressing his knot against your pucker, stretching it around the thick base thanks to his excessive pre. Once fully tied with you, he howls lustfully, heard by many even over the loud music, and cums hard into you. The wolf's big load gets pumped into you, shot after shot of thick hot cum that starts to swell your tummy and pushes you to orgasm loudly as well, spraying your [if Ball Size of Player > 4]huge load[else if Ball Size of Player > 3] big load[else]sticky load[end if] onto the booth below you, adding to the many musky messes left by the well hung wolf and his many lovers. After his knot goes down and his softening shaft pops free with an overflow of wolfcum from your ass, he pats your messy bottom and gives you a kiss.";
		infect "Black Wolf";
		NPCSexAftermath Player receives "AssFuck" from Andrew;


Chapter 2 - Demon Show

to say AndrewDemonShow: [evil Brutus + Andrew]
	say "     Deciding that the wolf's idea could be a lot of fun, you both conspire together on the details before he dashes off to make the arrangements. After a chat with the DJ and the dancers, the stage is cleared and the black wolf comes out for a sexy striptease show. While this gets some attention, it is not until you lead the demon on stage by a leash while heavy metal music plays that the audience truly becomes interested.";
	say "     Having found a leather belt to use as a collar, you pull on the chain attached to it and bring him center stage, tying him to one of the poles as you quietly ordering him to obey the wolf, fuck the wolf hard but not to harm him. When you step back, Andrew grabs the demon's hefty orbs and rubs them in his paws before moving to stroke his stiffening rod. His tongue plays across it, licking its ridged, bumped surface before leaning in and sucking lustfully on it. Ever the exhibitionist, the wolf makes sure to position himself so his audience gets a good view of his tonguework and the oversized phallus he's worshiping. Copious amounts of pre leak from the dark, pulsing shaft which either gets lapped up or spread across the rod to get it slick.";
	say "     After getting the demon's pole well lubed up, Andrew stretches out on a raised platform and orders the demon to fuck him. The monstrous demon, aroused and eager after the oral preparation, lunges atop the wolf, pinning him to the platform and driving his infernal rod into Andrew. The wolf howls in lustful pleasure as the demon takes him hard, driving most of his cock into that sexy ass in one go and driving the rest in on the second thrust. The black wolf's ebon cock throbs and pulses, spurting precum across himself as he's pounded into by your demon slave while a techno remix of Night on Bald Mountain plays.";
	say "     As the show goes on, the crowd becomes more and more worked up by the powerful display of raw sex. Pockets of sex start to break out, rapidly expanding into a full-on orgy with the wolf and the demon as the focus. You spot an opportunity to join in the fun and head over to one guy as he finishes sucking off another's cock."; [***]
[ You spot an opening near you if you want to join in on the orgiastic revelry.";
	if Player consents:	]
	if 1 is 1:
		say "[randomdesc]"; [yields 'slutname' - male 1]
		let male1type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 2]
		while bodyselector is slutname:
			say "[randombodypart]";
		let male2type be bodyselector;
		let randomcolorchoice be "gray ";
		let male1c be "";
		let male2c be "";
		sort randomcolorlist in random order; [fresh randomized set]
		if a random chance of 1 in 5 succeeds:
			now male1c is entry 1 of randomcolorList;
			rotate randomcolorList;
		if a random chance of 1 in 5 succeeds:
			now male2c is entry 1 of randomcolorList;
			rotate randomcolorList;
[		say "TEST:[line break]";
		say "male1c: [male1c] / male1type: [male1type][line break]";
		say "male2c: [male2c] / male2type: [male2type][line break][line break]";]
		say "     The [male1c][male1type] you approach pulls you into his arms, giving you a wet, sticky kiss that's heavily flavored by the cum of the guy he just finished blowing. You're treated to a slick mouthful of semen as his tongue pushes past your lips to play with yours. He wraps his hand around your [Cock of Player] shaft, stroking it as he pulls you into his lap. Caught up in the rush of the orgy, you eagerly lower yourself onto his prick, moaning in pleasure as it spreads your [if Player is female]pussy[else]ass[end if] open. He's rough and eager in his thrusting, pounding you hard and deep before finally cumming, filling you with his thick load. You push off him quickly and reach over for the pulsing [male2c]cock of a nearby [male2type]. Soon you're sucking him off while another unseen male mounts you and fucks your [if Player is not female]creamy [end if]asshole.";
		say "     It continues like this for quite some time, the wild orgy growing more and more heated as the demon fucks the moaning, lustful wolf over and over again in numerous positions. Not that there's much opportunity for you or anyone to watch during the debauchery, but the wolf is dripping with demon seed after having his mouth and ass filled several times. While another pair of males take turns fucking your cum-slick ass, you do get a delightful view of the wolf being held up, legs raised and spread by the upright demon as he plows into Andrew's stretched anus for anyone to see. You are passed around through several partners, fucked by [if Player is male]or fucking [end if]whomever is available, heedless of the consequences.[randomimpreg][randomimpreg]";
		randominfect;
		randominfect;
		randominfect;
		randominfect;
		SanLoss 25;
		if "Strong Psyche" is listed in feats of Player, SanBoost 5;
		if "Weak Psyche" is listed in feats of Player, SanLoss 5;
		now Libido of Player is Libido of Player / 2;
		if humanity of Player >= 10:
			say "     The orgy is called to a halt as Harold strides up to you, horn aglow with white light, and shakes you roughly until you come to your senses enough to order the demon away. Andrew, having passed out some time ago, is a mess of sticky cum and reeks of male sex, though has a grin of blissful pleasure on his muzzle. The debauchery comes to an end fairly quickly once the demon is gone, though several patrons have to be ousted by the bouncers when they won't settle down on their own. After he's wiped down, Andrew's slowly nursed back to his senses by several pints of his favorite black beer.";
			now lust of Andrew is 2;
		else:
			say "     As the orgy continues unabated, Harold strides up to you, his horn aglow with white light. He shakes you roughly, trying to pull you to your senses, but you only see him as another male you can have sex with. Pushing him to the ground, you bear him down beneath you and pull out his cock. He tries to resist you, but as you sink yourself down onto his cock, the light of his horn wavers and soon fades. Soon he's fucking you with wild abandon like the others around you in this orgy of demonic-fueled lust while Tristian takes the stage and gets fucked by the demon in the stead of the unconscious wolf. It goes on and on, well past the point when everyone should have been exhausted. The unchecked infections run rampant through the club, infecting everyone present until they lose any remaining vestiges of humanity and self-control.";
			now humanity of Player is 0;
			now DBCaptureQuestVar is 0;
			now demon brute is not tamed;
			now lust of Andrew is 100;
			if Libido of Player < 90, now Libido of Player is 90;
			trigger ending "Demon Orgy";
			end the story saying "You lose your mind to the infernal orgy you foolishly instigated.";

to say AndrewBrutusShow: [cleansed Brutus + Andrew]
	say "     Deciding that the wolf's idea could be a lot of fun, the three of you conspire together on the details before Andrew dashes off to make the arrangements. After a chat with the DJ and the dancers, the stage is cleared and the black wolf comes out for a sexy striptease show. While this gets some attention, it is not until you lead Brutus on stage by a leash while heavy metal music plays that the audience truly becomes interested.";
	say "     Having found a leather belt to use as a collar and a chain leash to clip on to that, Brutus lets himself be led out on the center stage, acting like a barely controlled demon. He does a very impressive roar and lunges towards the audience, only to stop instantly as you theatrically order him to come over to one of the dancing poles. You loudly order Brutus to fuck the black wolf hard, but not to harm him. Your demon companion gives a demonstrative snarl towards the audience, then grumbles 'Yes, master.' and lowers his head. As he moves towards the pole and you tie the leash to it, you see a broad smile on Brutus's face, as he seems to have good fun playing around on stage and obviously looks forward to fucking Andrew.";
	WaitLineBreak;
	say "     When you step back, Andrew grabs the demon's hefty orbs and rubs them in his paws before moving to stroke his stiffening rod. His tongue plays across it, licking its ridged, bumped surface before leaning in and sucking lustfully on it. Ever the exhibitionist, the wolf makes sure to position himself so his audience gets a good view of his tonguework and the oversized phallus he's worshiping. Copious amounts of pre leak from the dark, pulsing shaft which either gets lapped up or spread across the rod to get it slick.";
	say "     After getting Brutus's pole well lubed up, Andrew stretches out on a raised platform and orders the demon to fuck him. The large demon, aroused and eager after the oral preparation, lunges atop the wolf, pinning him to the platform with a large hand on his chest and lining up his infernal rod with Andrew's hole. He holds back a second as the tip of his cock stretches Andrew's pucker wide around its girth, not actually wanting to hurt people during sex anymore, then quickly gets over that hesitation as the very experienced wolf takes his manhood without problems and moans for more. Andrew howls in lustful pleasure as the redeemed demon proceeds to take him hard, driving most of his cock into that sexy ass in one go and pushing in the rest in on the second thrust. The black wolf's ebon cock throbs and pulses, spurting precum across himself as he's pounded into by your demon companion while a techno remix of Night on Bald Mountain plays.";
	WaitLineBreak;
	say "     As the show goes on, the crowd becomes more and more worked up by the powerful display of raw sex. Some members of the audience even climb on the stage themselves, throwing off pieces of clothing in front of the cheering watchers and dancing suggestively to the music. Gravitating together in groups of two, three or even four, the soon fully naked dancers start rubbing against each other, stroking and touching, then getting down to suck and fuck each other. The eyes of everyone else in the room are riveted to the show on the stage with the wolf and the demon as the focus, with many of the watchers having to open up the fronts of their trousers to relieve some pressure on their raging boners.";
	say "[randomdesc]"; [yields 'slutname' - male 1]
	let male1type be slutname;
	say "[randombodypart]"; [yields 'bodyselector' - male 2]
	while bodyselector is slutname:
		say "[randombodypart]";
	let male2type be bodyselector;
	let randomcolorchoice be "gray ";
	let male1c be "";
	let male2c be "";
	sort randomcolorlist in random order; [fresh randomized set]
	if a random chance of 1 in 5 succeeds:
		now male1c is entry 1 of randomcolorList;
		rotate randomcolorList;
	if a random chance of 1 in 5 succeeds:
		now male2c is entry 1 of randomcolorList;
		rotate randomcolorList;
	say "     With you still standing on the edge of the stage, you get approached by a naked [male1c][male1type] who pulls you into his arms, giving you a wet, sticky kiss that's heavily flavored by the cum of the guy he just finished blowing. You're treated to a slick mouthful of semen as his tongue pushes past your lips to play with yours.";
	LineBreak;
	say "     Do you want to stay in the middle of this little orgy on the stage, or extricate yourself from the grasp of this pretty randy guy and join crowd to just watch the show?";
	say "     [bold type]Do you want to stay in the orgy or leave and watch the show?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take part in the orgy.";
	say "     ([link]N[as]n[end link]) - Step away and watch the show.";
	if Player consents: [stay]
		say "     Going with the flow, you make out with the guy and move a hand to goose his ass. He wraps his hand around your [Cock of Player] shaft, stroking it as he moves to sit on the platform on which Andrew lies and pulls you into his lap. Caught up in the rush of the orgy, you eagerly lower yourself onto his prick, moaning in pleasure as it spreads your [if Player is female]pussy[else]ass[end if] open. He's rough and eager in his thrusting, pounding you hard and deep before finally cumming, filling you with his thick load. You push off him quickly and reach over for the pulsing [male2c]cock of a nearby [male2type]. Soon you're sucking him off while another unseen male mounts you and fucks your [if Player is not female]creamy [end if]asshole.";
		say "     It continues like this for quite some time, the wild bunch on the stage changing partners constantly as Brutus fucks the moaning, lustful wolf over and over again in numerous positions. The audience watching all this swells and ebbs as new people come in to watch while others pair up and leave to take care of each other's arousal in private. Soon, Andrew is literally dripping with demon seed after having his mouth and ass filled several times. While another pair of males take turns fucking your cum-slick ass, you do get a delightful view of the wolf being held up, legs raised and spread by the upright demon as he plows into Andrew's stretched anus for anyone to see. You are passed around through several partners, fucked by [if Player is male]or fucking [end if]whomever is available, heedless of the consequences.[randomimpreg][randomimpreg]";
		randominfect;
		randominfect;
		randominfect;
		randominfect;
		SanLoss 15;
		WaitLineBreak;
		say "     Quite a while later, taking a breather after your last bit of fun in the public orgy on the stage, you find yourself lying between two males, a zebra and a German shepherd who dozed off from exhaustion. Then suddenly, you feel a hand on your arm, softly shaking you to get your attention. It's Harold, the unicorn barman, who says 'You guys have had your fun, but I think it's time to cool down a bit. Some of the audience are getting too worked up. Someone'll crack and go feral on us if this keeps up.' Sitting up, you look over all the rather wet and sticky people on the stage, some of whom are still humping each other until Harold gets to them and tells them to stop. You see Brutus sprawled out on the platform, a limp but grinning Andrew just lying on his chest, his asshole still speared on the demon's now softening cock. Exhaustedly, you stand up and go get Brutus, who holds the wolf against his chest and carries him to his bunk in one of the back rooms of the club, where he puts him down to rest. After that, Brutus offers to clean you up with his forked tongue, happily licking up all the cum still on you.";
	else:
		say "     Pulling back from the randy guy, you grab a naked person who was watching you two with interest and give him a little push towards the pushy man. They embrace and grope each other, then get down to fuck as you climb off the stage. Joining the crowd of onlookers, you get handed a drink by someone and nip on it as you watch the little orgy on the stage and the demon and wolf at its center.";
		say "     It continues like this for quite some time, the wild bunch on the stage changing partners constantly as Brutus fucks the moaning, lustful wolf over and over again in numerous positions. The audience watching all this swells and ebbs as new people come in to watch while others pair up and leave to take care of each other's arousal in private. Soon, Andrew is literally dripping with demon seed after having his mouth and ass filled several times. While standing at the front and close to the stage, you do get a delightful view of the wolf being held up, legs raised and spread by the upright demon as he plows into Andrew's stretched anus for anyone to see...";
		WaitLineBreak;
		say "     Quite a while later, in a lull of the public orgy when most of the naked and sticky people on stage are taking a breather before continuing, Harold the unicorn barman walks over and gets on the stage. Stepping over all kinds of naked creatures as he makes his way across the stage, he puts his hand on those still going at it, softly shaking them till they can focus on him. He calmly says 'You guys have had your fun, but I think it's time to cool down a bit. Some of the audience are getting too worked up. Someone'll crack and go feral on us if this keeps up.' to different people a few times, which starts a slow procession of cum-dripping participants leaving the stage to go clean up. You see Brutus sprawled out on the platform, a limp but grinning Andrew just lying on his chest, his asshole still speared on the demon's now softening cock. Making your way to them, you go get Brutus, who holds the wolf against his chest and carries him to his bunk in one of the back rooms of the club, where he puts him down to rest.";
	now lust of Andrew is 4;


Section 8 - Miscellaneous Subroutines

to andrewinfect:
	[puts Black Wolf as lead monster for possible impregnation]
	setmonster "Black Wolf";
	infect "Black Wolf";

randomcolorlist is a list of text that varies.[@Tag:NotSaved] randomcolorlist is usually { "pink ", "red ", "green ", "blue ", "teal ", "yellow ", "white ", "black ", "purple ", "gray ", "maroon ", "golden ", "cyan ", "peach " }.

Section x - Not for release

andrewtesting is an action applying to nothing.

understand "andrewtest" as andrewtesting.

carry out andrewtesting:
	if 1 is 1:
		say "[randomdesc]"; [yields 'slutname' - male 1]
		let male1type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 2]
		while bodyselector is slutname:
			say "[randombodypart]";
		let male2type be bodyselector;
		say "[randomdesc]"; [yields 'slutname' - male 3]
		while slutname is male1type or slutname is male2type:
			say "[randomdesc]";
		let male3type be slutname;
		say "[randombodypart]"; [yields 'bodyselector' - male 4]
		while bodyselector is male1type or bodyselector is male2type or bodyselector is male3type:
			say "[randombodypart]";
		let male4type be bodyselector;
		let randomcolorchoice be "gray ";
		let male1c be "";
		let male2c be "";
		let male3c be "";
		let male4c be "";
		sort randomcolorlist in random order; [fresh randomized set]
		if a random chance of 1 in 5 succeeds:
			now male1c is entry 1 of randomcolorList;
			rotate randomcolorList;
		if a random chance of 1 in 5 succeeds:
			now male2c is entry 1 of randomcolorList;
			rotate randomcolorList;
		if a random chance of 1 in 5 succeeds:
			now male3c is entry 1 of randomcolorList;
			rotate randomcolorList;
		if a random chance of 1 in 5 succeeds:
			now male4c is entry 1 of randomcolorList;
			rotate randomcolorList;
		if a random chance of 1 in 10 succeeds, sort randomcolorlist in random order; [10% chance to re-randomize each time]
		say "TEST:[line break]";
		say "male1type: [male1type][line break]";
		say "male2type: [male2type][line break]";
		say "male3type: [male3type][line break]";
		say "male4type: [male4type][line break][line break]";
		say "male1c: [male1c][line break]";
		say "male2c: [male2c][line break]";
		say "male3c: [male3c][line break]";
		say "male4c: [male4c][line break][line break]";


Section 9 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Demon Orgy"	"BadEnd"	""	Demon Orgy rule	20	false

This is the Demon Orgy rule:
	if ending "Demon Orgy" is triggered:
		say "     The wild debauchery at the Palomino goes on and on, the safe haven falling into a den for the demonic orgy. It becomes a nexus of infection that spreads out and corrupts the surrounding area. During the wild sex, the demon takes the amulet from you and drapes it around Andrew's neck with a sinister grin. Your last order to the demon had been to obey Andrew, to fuck him hard and to not harm him, all of which he's done, in a dark and twisted way. Having screwed the wolf into a wild lust, Andrew is no more than a puppet for the demon, his only desire now is for the demon to keep fucking him. And remaining unharmed by the harsh pounding, the demon can screw the wolf for hours on end before he passes out. Whenever the wolf is unconscious, the demon simply switches to fucking a few of the horny supplicants in the crowd to keep the scent of infernal lust heavy in the air so the orgy never ends. The Palomino Club, briefly a safe haven from the menace of feral mutants, has become a source of them that cannot be stopped.";
		the Player is lost;

Andrew ends here.
