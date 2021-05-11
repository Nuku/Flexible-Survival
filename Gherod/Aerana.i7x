Version 1 of Aerana by Gherod begins here.

"Adds Aerana, one of Lilith's offspring with the player, to the game"

[Version 1 - Created file]

[ Loyalty of Aerana ]
[ 0 - Nothing yet ]
[ 1 - NEUTRAL - Opened up with a fatherly moment, so she's quite tame in her advances ]
[ 50 - DOMINANT - Her urge to dominate the player is immense ]
[ 99 - COLD - She has no interest in the player ]

[ Libido of Aerana ]
[ 0 - Nothing yet]
[ 1 - Applied to DOMINANT scenes. Had it the first time with the player ]
[ Increments of 1 - Counting her sex interactions ]
[ ... ]

Section 1 - Pre-event

Table of GameEventIDs (continued)
Object	Name
Succubus Offspring Meeting	"Succubus Offspring Meeting"

Succubus Offspring Meeting is a situation.
ResolveFunction of Succubus Offspring Meeting is "".
Sarea of Succubus Offspring Meeting is "Nowhere".

when play begins:
	add Succubus Offspring Meeting to BadSpots of FemaleList;
	add Succubus Offspring Meeting to badspots of IncestList;

to say LilithTalkAerana:
	say "     With all due respect for the lady demoness['] hard work at giving birth to her offspring, you ask if it would be possible to bring a female child out to the world, if you kept on providing the [italic type]required deposits[roman type]. Lilith chuckles at your words, as if she was amused by your request, but eventually gives out a reply. 'We are vastly more complex than your definitions of gender, but I understand the meaning of your request.' she says, leaving a smile across her flawless face. 'Very well, you may have a daughter the next time we bed together. Though I hope you know what you are asking.' she finishes speaking, leaving a quite cryptic warning in the end that you will only understand when you see it. Probably.";
	TraitGain "Succubus Daughter Wanted" for Lilith;

after going to Burned-Out Chapel while (Succubus Offspring Meeting is not resolved and Incubus Offspring Meeting is resolved and "Succubus Daughter Born" is listed in Traits of Lilith and Elijah is not in Burned-Out Chapel and a random chance of 1 in 3 succeeds): [Aerana exists, hasn't met the player, Atticus' intro is sorted, Elijah not in there (too complex), 33% chance]
	if player is not male:
		say "     (Note: Even though you might not have a dick right now, you are still the person who fathered Aerana. That's why she will continue to call you dad throughout all content.)";
	move Aerana to Burned-Out Chapel;
	say "     As you enter the nave of the ruined chapel, you are presented with a situation you are much familiar with, since you have seen something similar before. You still remember the first time you saw your incubus son, trying to aim his cumshots at candles in a fashion anyone would think... slightly odd. But, this time, it is not Atticus, and not even a male demon. In front of and with you in the room, you see a feminine shape, fully grown and illuminated by a similar set of candles, putting her svelte and sexy body with flawless rose-colored skin on display. She is one beautiful woman, much alike Lilith, with long black hair flowing softly around her shoulders to her back. Additionally, two small horns bend upwards from her forehead, dark red in color just like the bat-like wings on her back and the thin spaded tail slowly swinging around her legs.";
	say "     This fully naked succubus demoness must be the daughter Lilith promised you. She notices your presence, but rather than greeting you directly, she simply makes sure you see her and waits for you to approach, twirling strands of her silky hair around her fingers while eyeing you seductively. When you come close, within reach, after having slowly walked towards her, she shows you a smile, flickering her long eyelashes across her purple eyes, which gaze is locked on yours. 'Hello, daddy. Mother already told me everything about you... I knew you'd be looking forward to meet me, so I made sure you could see your favorite new daughter in all the splendor she deserves.' she says, her soft pitched voice stroking your ears like a gentle breeze, yet sounding as seductive as you would expect from a demoness of lust.";
	WaitLineBreak;
	say "     Something about her just captures you in ways you would not foresee as possible. She is truly and remarkably beautiful, flaunting her breasts of just the right size, D-cups that are neither too small nor too big, complementing her sensual curves in near perfection. With how close you are standing to her, you have a feeling you could touch her... But she never lets you, snapping your hand away if she has to. 'Now that you've seen me, I'm sure you're ready to do everything I want, right? Me being your special daughter and all...' says the young woman as she bites her lip, clearly with mischief in mind. You have a feeling that she will require special attention at all times, and it will only get worse if you give in.";
	Linebreak;
	say "     [bold type]How do you want to deal with her approach?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Promise to spoil her with anything she wants.";
	say "     [link](2)[as]2[end link] - Hug and tell the succubus you will care for her as your beloved daughter.";
	say "     [link](3)[as]3[end link] - Berate her for trying to manipulate you like a spoiled brat.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to assure her she will get whatever she wants, [link]2[end link] to hug her lovingly or [link]3[end link] to disapprove of her behavior.";
	if calcnumber is 1:
		say "     You nod in absolute concordance, that you will do everything she asks and will give her the best time she could ever ask for, anytime, anywhere... 'Oh, really...? What an eager and attentive daddy... I'll like you a lot, I can tell!' she replies, obviously pleased with your reaction. She even reaches for your hand and pulls it to her body, letting you feel her up all you want for a few seconds before she gently pushes you away from her. 'My name is Aerana. Looking forward to spending time with you, daddy. There'll be plenty of fun moments, I'm sure...!' your demoness daughter finishes speaking and continues to tease you with enticing smiles.";
		now Loyalty of Aerana is 50; [She will try every chance to have the player do whatever she pleases - DOMINANT]
	else if calcnumber is 2:
		say "     Moving closer to the attractive young demoness, you go on ahead and draw her into a fatherly embrace. Taking care to just lay your arms around her chest and shoulders without touching her in any sexual way, you hold her tight and tell your new daughter that she will be well taken care of by you, and you will love spending time with her. She lets out a surprised interjection and remains frozen in place, unsure of what to do. 'I, uh... That was... unexpected!' she exclaims, after you let go off her seconds later. 'My... I have quite a loving daddy, don't I? How lucky I am! I... totally expected a different outcome, but I'm quite liking you, so far!' It seems your actions have quite pleased the succubus, who looks quite happy that you have approached her in such a way, though she does not drop her sensual posing and movements, still keen on visually teasing you.";
		say "     'Maybe we could get to know each other a little better. I'm Aerana, by the way. Looking forward for our times together, daddy.' she finishes, smiling at you.";
		now Loyalty of Aerana is 1; [She won't be overly manipulative nor distant - ONLY OPPORTUNITY - NEUTRAL]
	else if calcnumber is 3:
		say "     You are not very pleased with what she just said, and you let her know that. She is the one who is supposed to respect you and do as you say, you tell her, and the succubus really does not like hearing that. 'So you're one of those. What a turn-off...' she replies, flipping her hair and turning her face away in annoyance, dropping any form of sensuality and teasing right there. It seems she completely lost her interest in you. 'My name's Aerana, by the way. Thought you should know that, at least.' your demoness daughter finishes speaking as she simply walks away from you.";
		now Loyalty of Aerana is 99; [She won't be interested in the player and will always seem distant - COLD]

Section 2 - Aerana NPC

Table of GameCharacterIDs (continued)
object	name
Aerana	"Aerana"

Aerana is a woman.
ScaleValue of Aerana is 3. [normal sized]
Body Weight of Aerana is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Aerana is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Aerana is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Aerana is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Aerana is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Aerana is 5. [length in inches]
Breast Size of Aerana is 4. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Aerana is 2. [count of nipples]
Asshole Depth of Aerana is 8. [inches deep for anal fucking]
Asshole Tightness of Aerana is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Aerana is 0. [number of cocks]
Cock Girth of Aerana is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Aerana is 0. [length in inches]
Ball Count of Aerana is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Aerana is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Aerana is 1. [number of cunts]
Cunt Depth of Aerana is 12. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Aerana is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Aerana is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Aerana is false.
PlayerRomanced of Aerana is false.
PlayerFriended of Aerana is false.
PlayerControlled of Aerana is false.
PlayerFucked of Aerana is false.
OralVirgin of Aerana is false.
Virgin of Aerana is false.
AnalVirgin of Aerana is false.
PenileVirgin of Aerana is false.
SexuallyExperienced of Aerana is true.
TwistedCapacity of Aerana is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Aerana is false. [steriles can't knock people up]
MainInfection of Aerana is "Succubus".
Description of Aerana is "[AeranaDesc]".
Conversation of Aerana is { "<This is nothing but a placeholder!>" }.
The scent of Aerana is "     She has as sweet and feminine scent to her body, with a demonic essence that draws those nearby in an almost hypnotic way.".

to say AeranaDesc:
	if debugactive is 1:
		say "DEBUG -> Loyalty of Aerana: [Loyalty of Aerana] <- DEBUG[line break]";
	say "     Aerana looks like an eighteen-year old young woman with quite a supermodel body, wearing nothing to hide her sensual nudity from outside eyes. She has a long and silky black hair falling down through her shoulders and back, and her beautiful facial features are complemented by a pair of small and sharp horns curving up from her forehead. Her wings are vast, bat-like and dark red, half-unfolded and moving slightly as she walks about. A long and thin tail with a spaded tip swings between her legs like a cautious snake, completing the image of an attractive succubus.";
	if Loyalty of Aerana > 0 and Loyalty of Aerana < 50: [neutral]
		say "     As she notices you approaching, her purple eyes turn towards you and flicker with interest as she gives you a joyful smile.";
	else if Loyalty of Aerana > 49 and Loyalty of Aerana < 99: [dominant]
		say "     As she notices you approaching, her purple eyes turn towards you subtly as she becomes aware of your presence, beginning to entice you by playing with her hair and making sure you get a good view of her sexy body.";
	else if Loyalty of Aerana > 98: [cold]
		say "     As she notices you approaching, her purple eyes avert their gaze from you as she turns her attention to something else in clear uninterest for your presence.";

Section 2-1 - Aerana Talk Menu

AeranaDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Aerana:
	say "     Approaching your succubus daughter with the intention to converse with her, she acknowledges your presence and turns towards you before you even have to announce yourself.";
	if Loyalty of Aerana > 0 and Loyalty of Aerana < 50: [neutral]
		say "     'My favorite dad! Came for a little chat?' she asks with a broad and sweet smile on her beautiful face.";
	else if Loyalty of Aerana > 49 and Loyalty of Aerana < 99: [dominant]
		say "     'I hope daddy brought me a gift. I see no other reason for coming to talk to me.' she says, followed by a mischievous giggle.";
	else if Loyalty of Aerana > 98: [cold]
		say "     'What do you want? I have other important things to do.' she says, with the coldest tone she could muster.";
	say "[AeranaTalkMenu]";

to say AeranaTalkMenu:
	now AeranaDoneTalking is false;
	say "     [bold type]What do you want to talk about with Aerana?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Herself";
	now sortorder entry is 1;
	now description entry is "Ask Aerana to tell you about herself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lilith";
	now sortorder entry is 2;
	now description entry is "Ask her about how she feels regading her mother";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Atticus";
	now sortorder entry is 3;
	now description entry is "What about her brother? Ask her about her feelings towards him";
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
				if (nam is "Herself"):
					say "[AeranaTalkHerself]";
				else if (nam is "Lilith"):
					say "[AeranaTalkLilith]";
				else if (nam is "Atticus"):
					say "[AeranaTalkAtticus]";
				wait for any key;
				if AeranaDoneTalking is false:
					say "[AeranaTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you take your leave, finishing any pending subjects with Aerana.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AeranaTalkHerself:
	say "     Aerana looks over to you as you ask her about herself, all while she twirls her finger around several trands of silky black hair, tilting her head to the side and shifting her gaze away, as if thinking of what to say";
	if Loyalty of Aerana > 98: [cold]
		say ". 'Hm... Wouldn't you like to know...' she replies, but leaves you hanging as her attention turns to something else. You get a feeling she does not like you much.";
	else:
		say ". 'Oh...! Wouldn't you like to know...!' she replies, making a pause as she gestures you to come closer to her. 'Well, there's always something to do in this world... Mother taught me many ways to corrupt it just a little more. It's quite fun to see the chaos we can do with just a little teasing... or magic...'";
		if Loyalty of Aerana > 49 and Loyalty of Aerana < 98: [dominant]
			say "     Her hand brushes against yours before she pulls it to her, bringing your body really close to hers. You can even feel the warmth of her presence, and everything else seems to draw you in ways unfamiliar to you. 'Would love to show my daddy more of what I can do...' says your demon daughter as she grins with mischief, pushing you away all too early, leaving you with a sensation of loss and frustration. 'I promise it's all fun if you spoil me well...' Her words end here, followed by a giggle.";
		else if Loyalty of Aerana > 0 and Loyalty of Aerana < 50: [neutral]
			say "     [one of]'Have you ever had a bunch of hulking brutes fighting each other to see who could have you? That is the most delightful feeling, their wrath and lust taking over as all they see in their minds is me and the privilege to serve their demon queen. I love messing with especially brawny males who are all more muscle and cock, rather than brain. I can get them to do anything I want so easily[or]'I dream of commanding an army of demons, just like my mother. She is absolutely gorgeous, isn't she? Such a great succubus with so much power... I yearn to learn more from her[or]'Did you know there is a way to control the minds of others? I really want that spell. Would you let me use it on you? Hah... Just kidding! I'd never do that... Or would I? Hm, maybe on Atticus, perhaps, so he gets to do all the chores for me[or]'My... have you met the Hellfires? Mother really dislikes them, and I can see why. Their Lord holds great power, and that is one scary thought. Imagine living close to someone who can compete with you! What a nightmare, having to fight for servants and territory... Though I have to admit, they'd make good slaves, themselves[or]'I've seen quite an odd angel lurking around... He was really big, too! I didn't know they made them that large in Heaven. Maybe it isn't such a bad place, after all? Love my men big and subservient[at random]'. She then regales you with a quite graphic description of her adventures and desires, clearly enjoying herself a lot as she lays it all out for you.";

to say AeranaTalkLilith:
	say "     Clearly noticing her close relationship with Lilith, you ask her what she thinks of her own mother, to which she does not hesitate in replying. 'I think that she's amazing and the best. Like, ever. That is the only opinion I accept about her, because that's the absolute truth.'";
	if Loyalty of Aerana > 0 and Loyalty of Aerana < 50: [neutral]
		say "     Though she doesn't end it there. 'She teaches me a lot of cool stuff, and she knows so much about the world! While my dear brother focuses more on fucking everything he sees, I'd rather understand how things work around me... And exploit them, if possible. Nonetheless, she's a great teacher and invaluable to me. Anyone who dares to cross her, and yes that includes you, daddy... Well, won't have me on their side, that is certain.'";
	else if Loyalty of Aerana > 49 and Loyalty of Aerana < 99: [dominant]
		say "     She then adds 'I know what you saw in her. You like letting powerful women in charge, isn't that right, daddy?' followed by a teasing giggle. 'One day I'll be just like her, and I shall take you as my personal servant. Wouldn't it be lovely?'";
	else if Loyalty of Aerana > 98: [cold]
		say "     She then adds 'Unlike someone else, here.' before she turns her face away.";

to say AeranaTalkAtticus:
	say "     She being the young sibling, born after Atticus, you decide to ask Aerana how she feels about him and if they get along, at all. 'Oh, sure we do. Wonderfully. Why wouldn't we?' she answers, though her eyes hint at something more than what she just said.";
	if Loyalty of Aerana > 0 and Loyalty of Aerana < 50: [neutral]
		say "     'We couldn't be any more different than each other. While he takes a sexual interest over everything, even oysters, apparently... I prefer to learn and amass as much knowledge as I possibly can. One day, I shall follow my mother's footsteps into world corruption and domination, and guess who she's going to pick as her successor? Well, it better not be him, or I'll be kicking him into the void.' Though, after saying that, she seems to get a few second thoughts. 'Oh, well... I suppose I do like him. A little bit. Don't tell him I said that, though, or he'll never shut up about it.'";
	else if Loyalty of Aerana > 49 and Loyalty of Aerana < 99: [dominant]
		say "     'What's funny is... you and him share several similarities. Sure, Atticus is very unruly, but when you promise him a good time, he just tends to do what he's told without questioning it too much. You both have that in common...'";
	else if Loyalty of Aerana > 98: [cold]
		say "     'He's as unruly as you. A big turn-off, I don't even know how mother can put up with it.'";

Section 2-2 - Aerana Sex Menu

instead of fucking Aerana:
	if player is not male:
		say "<< AUTHOR'S NOTE: You need to at least have a cock in order to have sex with Aerana, for now. May change in the future. >>";
		stop the action;
	if Loyalty of Aerana > 0 and Loyalty of Aerana < 50: [neutral]
		if lastfuck of Aerana - turns < 4:
			say "     As you approach your succubus daughter, she gives you a look as if she knew what you were coming for. 'Oh, you know I love you, dad... But it hasn't been long since our last time and I've got other things I want to get done. Maybe later, if you're still around?' she replies with a chuckle.";
		else:
			say "     As you approach your succubus daughter, she gives you a look as if she knew what you were coming for. 'Hm... I'm sensing that you're looking for some intimate time with your best daughter... Why don't you tell me all about it?' says Aerana as she pulls you to her, gently.";
			say "[AeranaSexMenu]";
	else if Loyalty of Aerana > 49 and Loyalty of Aerana < 99: [dominant]
		if lastfuck of Aerana - turns < 6:
			say "     As you approach your succubus daughter, she gives you a look as if she knew what you were coming for. 'Oh, daddy... I appreciate your subservience, but sadly, I'm not in the mood, right now... Why don't you come back later?' she replies with a mischievous giggle.";
		else:
			say "     As you approach your succubus daughter, she gives you a look as if she knew what you were coming for. 'You really can't resist a good time with your favorite daughter, isn't that right? Hm... So many options... what shall I do to you?' she replies, giggling to herself as she considers what ways she has to use you for her own pleasure.";
			say "[AeranaDomSexRoll]";
	else if Loyalty of Aerana > 98: [cold]
		if lastfuck of Aerana - turns < 8:
			say "     As you approach your succubus daughter, she gives you a very cold look. 'Don't even think about it. I'm definitely not in the mood.' she replies, dismissing you entirely.";
		else:
			say "     As you approach your succubus daughter, she gives you a very cold look. 'What's this? You dare to disrespect your lovely daughter and expect her to want to get close to you?! You mortals are all the same...' she exclaims, though part of her seems slightly interested in this, as she is still observing you from the corner of her eye. 'You're a terrible dad. I think you'd have to try really hard to make up for it.'";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Deeply apologize to her and do whatever she asks.";
			say "     ([link]N[as]n[end link]) - There's no way you'll take this behavior from her.";
			if player consents:
				now Loyalty of Aerana is 50; [back to DOMINANT]
				say "     Swallowing all your pride, and perhaps your dignity, you fall to your knees and beg her to forgive you for your transgressions, admitting that you have been a terrible dad to her and that you want to make it all better. A slight grin begins to form at the corner of her mouth while she hears and sees you. 'Is that all because you want to have sex with me? Oh, my... I almost feel pity for you. Actually, I do feel pity.' she replies, though not without using the opportunity that you are already on your knees, placing her foot in front of your face. 'Maybe... There is a way.'";
				WaitLineBreak;
				say "[AeranaSexApology]";
			else:
				say "     You decide to tell her off from being a selfish and manipulative demoness, and you do not tolerate any disrespect towards you, either. She seems to feel very indifferent towards your words. 'It's your loss, [italic type]daddy[roman type]. There's enough people who like it around this world, I don't need you at all.' she replies, and does not listen to anything else you say.";
				say "     Things between you two are not going too well, are they?";
				now lastfuck of Aerana is turns;

to say AeranaSexApology:
	say "     As she says this, you feel her push you to the ground as you fall on your back, facing the demoness as she walks forward, looking down on you. 'I just have to remind you of how you should treat your favorite daughter...' her words are followed by her foot on your face, as she demands you to worship her. 'Now, be a good daddy and worship me... As you should have from the beginning.' A smile forms across her beautiful face, of amusement, perhaps, as she enjoys the sight of you under her feet. You give her nothing but a good and obedient kiss across her sole as your lips rub along the sides of her soft-skinned foot. She gives you a look of approval while moving her foot herself, slowly leaning it towards your mouth before pushing her toes into it, slowly.";
	say "     You welcome them with your tongue, licking them all over, one by one, as she silently but quite obviously directs. 'Hm... you're really putting on the effort, aren't you daddy?' she teases you, giggling with mischief as she continues to press it down onto your face. By now, you are practically sucking on her foot, rubbing and massaging it all over with both your hands, as well, and the succubus looks very pleased. Though, enough is enough, and she pulls it away once she is satisfied with your work.";
	WaitLineBreak;
	say "     'That's enough.' she says as she walks away from you, though still facing your direction. 'I hope this gave you enough to think about. Come back to me later to pay your tribute... I mean, to spoil your lovely daughter with more fatherly love, of course!' she finishes speaking, giggling at the end of it all. You are then left to yourself as she turns her attention to other matters.";
	NPCSexAftermath Player receives "Other" from Aerana;

to say AeranaDomSexRoll:
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     She thinks... and then seems to be decided on something. 'You know what... I'm feeling very generous today, and I've decided that I should show my daddy how much I love him, hm? What do you say, wanna see how a demoness handles a cock properly? Bet you do, daddy...' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust. One caress on your crotch is enough to turn you on and stay ready for it.";
			WaitLineBreak; [For this one, WaitLineBreak is necessary]
			AeranaSexOralCock;
		-- 2:
			if a random chance of 1 in 2 succeeds:
				say "     She thinks... and then seems to be decided on something. 'Hm, I'm feeling quite lazy today. Why don't we just hug and fuck? I'm sure you'd love that.' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust. One caress on your crotch is enough to turn you on and stay ready for it.";
				AeranaSexFuckMissionary;
			else:
				say "     She thinks... and then seems to be decided on something. 'Hm, how about you lie down and let me take the lead? You must like the idea of having me ride you, I bet...' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust. One caress on your crotch is enough to turn you on and stay ready for it.";
				AeranaSexFuckRiding;
		-- 3:
			say "     She thinks... and then seems to be decided on something. 'I feel like edging my daddy, this time. Gotta make sure they know their place... Isn't that right?' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust. One caress on your crotch is enough to turn you on and stay ready for it.";
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1:
					AeranaSexEdgingHandjob;
				-- 2:
					AeranaSexEdgingFootjob;
				-- 3:
					AeranaSexEdgingTailjob;

to say AeranaSexMenu: [only open when Aerana's personality is NEUTRAL]
	say "     [bold type]What would you like to do with Aerana?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have her give you a blowjob";
		now sortorder entry is 1;
		now description entry is "Offer her some treat of your own";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Make love with her";
		now sortorder entry is 2;
		now description entry is "Offer to fuck her lovingly";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Offer yourself for an edging session";
		now sortorder entry is 3;
		now description entry is "Let her edge you how she sees fit";
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
				if (nam is "Have her give you a blowjob"):
					say "[AeranaSexBlowjob]";
				else if (nam is "Make love with her"):
					say "[AeranaSexFuck]";
				else if (nam is "Offer yourself for an edging session"):
					say "[AeranaSexEdging]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young succubus, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AeranaSexBlowjob: [a standard blowjob]
	say "     Thinking about spending a good time with your succubus offspring, you decide to ask her if she would mind taking care of her daddy in that one way, gently brushing her silky hair as the young demoness eyes you with an amused expression. 'Such a daring request...! You're some devil, yourself.' she replies, giggling as her hands run over your chest and lower, her mere touch feeling like a tease that sends sweet shivers down your spine and blood flowing south. 'I happen to be in a good mood, today, so I definitely wouldn't mind showing my dear daddy how much I love him.' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust.";
	AeranaSexOralCock;

to AeranaSexOralCock:
	say "     When you look down, you find her hand slipping underneath your crotch, causing your erection to immediately rise to its peak. With all the desire building within you, [if player is naked]your [cock of player] cock simply stands firm and rock hard[else]your clothes come off right afterwards, leaving your naked body and hard cock exposed[end if] before the succubus['] beautiful face. 'Someone's excited...! I'm glad I have that effect on you, daddy...' she comments, before taking your penis into her hands and bringing her soft lips to a kiss on your shaft. At first, her motions are teases along your throbbing member, only rubbing them across your meat's length up and down while it pulses only more and more.";
	WaitLineBreak;
	say "     It is a matter of brief seconds until you begin to leak some precum, which she comes for a taste with no hesitation, sliding her tongue towards your sensitive cock's head and licking it around, leaving you in a delightful ecstacy and, of course, causing your cock to ooze more of it. Your balls feel heavy, like they were carrying so much within them that you could explode anytime, and the feeling only gets more intense the more she fondles them with her free hand, cupping your orbs gently and massaging them in ways that make you want to moan loudly. As she eventually becomes satisfied with how much she built your antecipation, she begins to take your meatlog past her lips, welcoming it with plenty of tonguing all over your sensitive flesh.";
	say "     She does it like a true expert, knowing exactly what to do give you just the right amount of pleasure, never forgetting about your balls, either. You are given at least one of the best blowjobs you have ever gotten in your life, one able to keep your cock throbbing and rock-hard as it is pulled deep inside her mouth, deepthroating you with absolutely no problem, all while looking absolutely gorgeous, locking her purple eyes on yours. You can see the confidence in them, even as your mind drifts away in a bliss. Your cock throbs everytime it hits the back of her mouth, going in and out of her throat, then back outside as she puts her tongue working all over your shaft and glans with movement twists of great expertise...";
	WaitLineBreak;
	say "     With someone as good as she, you do not think you would last any longer without wanting to unload your balls into her. She then picks up the pace, sucking you and stroking you faster and faster, until you feel your climax beginning to surge. It is a matter of seconds until your dick begins to throb intensely as a warning, and she then puts it all the way down her mouth, draining you of every drop of cum you deliver directly into her throat. You feel her swallowing motions quivering around your shaft, pulling in your entire load down inside of her. This orgasm seems to last longer than your usual, and it is so good that you feel like your legs wanting to give away their strength, nearly throwing you into a delirious state.";
	say "     She lets out a pleased hum as she pulls away, her lips tightly wrapped around your shaft all the way to the tip, releasing it with a loud popping sound. 'Delicious... The taste of pleasure, hm... I hope you enjoyed it, daddy.' says the young succubus as she stands up to stroke your cheek with loving affection. 'Now, be sure to repay the favor once you're back... It is only fair, right?' You smile back to her as you nod, promising her that you will, which leads her to giggle in a bit of a joy.";
	NPCSexAftermath Aerana receives "OralCock" from Player;

to say AeranaSexFuck: [let her pick or suggest, missionary or riding]
	say "     Thinking about spending a good time with your succubus offspring, you decide to ask her if she would mind bending over of her daddy, gently brushing her silky hair as the young demoness eyes you with an amused expression. 'Such a daring request...! You're some devil, yourself.' she replies, giggling as her hands run over your chest and lower, her mere touch feeling like a tease that sends sweet shivers down your spine and blood flowing south. 'And did you have anything in mind, or are you letting your beloved daughter pick whatever she likes?' she asks, putting an obvious emphasis on the last part of her question, which leads you to believe she really wants to pick something, but the decision is ultimately yours... You think.";
	Linebreak;
	say "     [bold type]How do you want to fuck her?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Go for a loving missionary sex.";
	say "     [link](2)[as]2[end link] - Have her ride you.";
	say "     [link](3)[as]3[end link] - Let her pick.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to fuck her in missionary, [link]2[end link] to have her ride you or [link]3[end link] to let her pick whatever she wants.";
	if calcnumber is 1:
		say "     After considering your possibilities, you inform the young succubus that you would love to fuck her yourself in the old missionary style. She gives it some thought, but then joyfully replies. 'I happen to be in a good mood, today, so I definitely wouldn't mind showing my dear daddy how much I love him by doing what he wants, this time.' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust.";
		AeranaSexFuckMissionary;
	else if calcnumber is 2:
		say "     After considering your possibilities, you inform the young succubus that you would love to have her on top of you, riding your dick as she sees fit. She gives it some thought, but then joyfully replies. 'I happen to be in a good mood, today, so I definitely wouldn't mind showing my dear daddy how much I love him by doing what he wants, this time.' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust.";
		AeranaSexFuckRiding;
	else if calcnumber is 3:
		say "     You let her know that you would prefer to have her pick whatever she wants, and the succubus gives you an immediate glare of joy. 'I'm so glad daddy's trusting his girl to pick the best option!' she replies, giggling to herself.";
		if a random chance of 1 in 2 succeeds:
			say "     'Let's put your hips to work, then. I want to feel how hard you can fuck me...' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust.";
			AeranaSexFuckMissionary;
		else:
			say "     'Relax, then. Let me get on top of you and... be prepared for some good hot pleasure...' Her feminine and seductive voice almost echoes in your ears as she utters these words, leaving you in a near trance of lust.";
			AeranaSexFuckRiding;

to AeranaSexFuckMissionary:
	WaitLineBreak;
	say "     With how hard you are by now, clothes are redundant. You simply move to pin her down with both of your bodies naked and exposed as she wraps her legs around your waist. With the air around you so hot and boiling with desire, all that goes in your mind is your willingness to fuck this succubus as hard as you possibly can. She makes sure your interest is fomented as you both kiss, her soft lips and tongue intertwined with yours, turning this into a steamy make out session. Her hands run over your back while your skins rub against each other, and your erection only grows harder and stronger. The demoness takes initiative by slipping her hand between your legs and grabbing your cock, then pointing it at her own womanhood after she stops kissing you... Only to give you a suggestive smile.";
	say "     As you are now about to enter her wet curls, your dick throbs in her grasp, eager to feel her moist labia stretch all around your girth, and that is exactly what you feel once you begin to thrust into her. The warmth of her pussy spreads throughout your shaft the deeper you go in as she lets out a soft moan, feeling your meat filling her sex more with each passing second, until yours is fully buried in. She [if cock length of player < 16]takes the entirety of it with no issue whatsoever[else]takes what she physically can inside, delighted with how [italic type]very[roman type] hung you are[end if]. 'Mmh... yes! Give it all you've got, daddy...' she says, her voice sounding as lusty as you feel, both your states of desire meeting one another and only inviting you to keep pounding the demoness.";
	WaitLineBreak;
	say "     And that is what you do, putting all your might into your thrusts as you begin to fuck her, starting slow but deep and intense, which you know she loves. Her arms wrap themselves around your neck with her hands on your back as you lean down for some more kissing, figuring that the time to increase the rhythm draws near as you both get settled. You can even feel her breathy moans against your mouth as you both share your tongues, which builds some burning adrenaline within you, the impulse to thrust with even more force taking over you soon. Eventually, there is no way to resist it any further, so you start really ramming your cock inside of her as deep as you can, faster than before and more intensely.";
	say "     You feel ecstactic, her flawless and smooth skin rubbing against yours as she delights you with her demonic kisses, the air around you feeling hotter with each passing moment, the insides of her pussy feeling like no other would, as if it was all made to your measure. Her moaning keeps encouraging you, invigorating your thrusts as you pound her harder and harder, her sweet scent filling your nostrils and causing your mind to drift away in an almost primal kind of lust, causing your sexual instincts to rise at their peak. In your mind, you only want to fuck and breed the young succubus until she cannot even walk anymore. 'Yes...! Fuck me harder, daddy... blow it inside me...' Aerana moans and whispers into your ear at one of the rare times when you are not making out with each other.";
	WaitLineBreak;
	say "     Such words do have an effect on you as your balls start to almost ache, yearning for a release as they begin to feel very, very heavy. Your erection is as hard as it could ever be, throbbing and leaking with every pulsing desire flowing through your whole body, and your succubus daughter's sweet and seductive voice leaves this lingering desire burn even brighter. 'You're gonna give me that big load, daddy...?' she teasingly asks, most of her words delivered in a breathy tone, and that is enough to make you want to explode inside her. When you feel your hard [cock of player] penis tremble and throb, you know you have passed the point of no return as a burst of cum comes raising through your manhood, shot directly into the demoness['] womb.";
	say "     'Yes, daddy! Give it all to me...!' the succubus loudly moans these words as every drop of your cum is dropped inside of her, that warm and wet pussy feeling like it is milking you until your nuts go completely empty. Your orgasm lasts for longer than usual, taking a toll on your overall strength as your arms, legs, and then your entire body give signs of wanting to give away. She takes you for an embrace as she lets you fall softly on top of her, cuddling with you and allowing you to retribute her affection as your cock remains stationed tightly in her womanhood, depositing its last drops, left to soften at its own pace.";
	WaitLineBreak;
	say "     'Oh, daddy... that was amazing... Bet you need some rest after fucking your favorite daughter that good, hm?' she playfully says with a giggle. You both stay there, lying down for a moment, until it is time to clean yourselves up and return to your normal lives.";
	NPCSexAftermath Aerana receives "PussyFuck" from Player;

to AeranaSexFuckRiding:
	WaitLineBreak;
	say "     With how hard you are by now, clothes are redundant. You simply move to lie down on the floor as she sets herself right on top of you. With the air around you so hot and boiling with desire, all that goes in your mind is your willingness to fuck this succubus as hard as you possibly can. She makes sure your interest is fomented as you both kiss, her soft lips and tongue intertwined with yours, turning this into a steamy make out session. Her hands run over your chest as your erection only grows harder and stronger, and as she locks gaze with you, she grabs your cock and adjusts herself so that her labia can reach your meat. Showing a suggestive smile to you, she slowly lowers her rear and lets your throbbing member enter her, letting out a moan of delight.";
	say "     All you feel is that sweet sensation of her wet insides stretching all around the girth of your [cock of player] penis, and not too soon she begins to bounce on it, giving you a show with her D-cups fully exposed before your eyes just slightly swinging along with her teasing movements. 'Hope daddy likes the view!' she comments with a wink as she allows you go deeper, filling you with pleasure as her tightness makes you yearn for more. She [if cock length of player < 16]takes the entirety of it with no issue whatsoever[else]takes what she physically can inside, delighted with how [italic type]very[roman type] hung you are[end if]. 'I know something that could make this a lot more interesting for you...' adds the young succubus with a devious smile, and even amidst all the bliss you are feeling, you cannot help but stop to wonder what she means...";
	WaitLineBreak;
	say "     Then, suddenly, you feel something poking at your butt. Your eyes widen at this fact, unaware of what is going on as the demoness continues to slowly milk your cock with her pussy and giving you no chance to move away from this strange addition. She then moves to lean over you as this thing begins to press against your hole... 'Relax, daddy. That's just my tail. It'll feel really good... I promise.' she lets you know, as her pointy tip forces its entry into your insides with surprising strength. It really looks like she knows what she is doing, as this whole feeling just makes you throb even more, her deviless['] tail going straight for your prostate so good that you feel like moaning yourself.";
	say "     'Hope you like it, daddy...' Aerana does not really sound sincere, even if there was a chance you would dislike this, but she knows you love it. It is only something a sex demon expert could do with such mastery, and it keeps on making you pulsing inside of her. She bounces up and down on your manhood, her warm cunt squeezing your shaft as it goes up and down in such a mesmerizing pace, tempting your balls to rise and prepare for the unloading, but she wants this to last a little longer than that. She keeps you at the peak of pleasure for a good long while, letting your cock go in her deeply but slowly, and even grabs your hands and lets you feel her smooth and flawless body all over, especially her bouncing tits, filling your palms so nicely and heavily that you feel you could keep them there, feeling them up, for ages.";
	WaitLineBreak;
	say "     The demoness bits her lip as she picks up the pace, enjoying the feeling of her boobs being gently squeezed and played with as your dick throbs inside her, and you cannot help but feel an ecstactic pleasure, with her tail pounding and wiggling at your prostate, as you only slightly move your hips to feel your member rub against the walls within her soaking pussy. You two are not going to last much longer, as her moaning intensifies, only leading your balls to really begin to want to let it all go into her. This time, she does not stop you, continuing her motions until you finally cum, shooting so hard into her that you doubt she have not felt that. 'Oh, daddy! Yes!' she moands loudly as, at the same time, her whole sex quivers around your throbbing manhood, only further augmenting both your climaxes.";
	say "     You fill her up as her womanhood milks you for more, all that spunk going straight into her womb until the very last drop. Her own orgasm lasts even beyond yours, really draining your strength besides your cum, and you cannot help but feel really tired of this whole ordeal. She smiles to herself as she leans down to kiss you, her perfect and soft skin rubbing against yours as your lips touch, going into another make out time as your cock remains inside her, softening at its own pace.";
	WaitLineBreak;
	say "     'Oh, daddy... that was amazing... Bet you need some rest after fucking your favorite daughter that good, hm?' she playfully says with a giggle. You both stay there, lying down for a moment, until it is time to clean yourselves up and return to your normal lives.";
	NPCSexAftermath Aerana receives "PussyFuck" from Player;

to say AeranaSexEdging: [let her pick or suggest, 'hand/foot/tail'job]
	say "     Thinking about spending a good time with your succubus offspring, you decide to ask her if she would to take the lead and have some fun with you for an edging session. She loves hearing this and her eyes shine with joy. 'My, that's one lovely idea! So many possibilities... Do you have any preference, daddy?' she asks, giggling as her hands run over your chest and lower, her mere touch feeling like a tease that sends sweet shivers down your spine and blood flowing south.'";
	Linebreak;
	say "     [bold type]How would you prefer to have her edging you?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Handjob.";
	say "     [link](2)[as]2[end link] - Footjob!";
	say "     [link](3)[as]3[end link] - Tailjob?";
	say "     [link](4)[as]4[end link] - Let her pick.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to let her edge you with her hands, [link]2[end link] to have use her feet, [link]3[end link] to allow her to get her tail around your member or [link]4[end link] to simply let her pick";
	if calcnumber is 1:
		say "     You let her know that you would love to see her use her hands alone to keep you on edge. While it seems like something quite ordinary, the young succubus is not opposed to the suggestion. 'Very well, then! I do have soft hands and a masterful touch... it should be easy to torture you- I mean... Give you all the pleasure you never asked for.' she replies with a mischievous giggle, ready to put her hands on you.";
		AeranaSexEdgingHandjob;
	else if calcnumber is 2:
		say "     You let her know that you would love to see her use her feet alone to keep you on edge. Such a daring request really gets the young succubus['] attention, as she smiles with joy. 'Ohh... I see how it is. Someone's got a kink, hm?' she replies with a mischievous giggle, ready to put her soft soles to work on you.";
		AeranaSexEdgingFootjob;
	else if calcnumber is 3:
		say "     You let her know that you would love to see her use her tail alone to keep you on edge. It is a very quaint request, but one she does not shy away from. 'I can do a lot of things with my tail, and that is one of them, definitely... I like the way you think, daddy.' she replies with a mischievous giggle, ready to put her deviless['] special to work on you.";
		AeranaSexEdgingTailjob;
	else if calcnumber is 4:
		say "     You let her know that you would like her to pick, and she loves to receive the power of making decisions for you. 'That's alright, then... Let's leave it as a surprise. I won't have to tell you about it once you see what I'm doing to you, right?' she replies with a mischievous giggle, ready to get to work on you.";
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1:
				AeranaSexEdgingHandjob;
			-- 2:
				AeranaSexEdgingFootjob;
			-- 3:
				AeranaSexEdgingTailjob;

to AeranaSexEdgingHandjob:
	WaitLineBreak;
	say "     With this, she requests that you lie down on a comfortable position and do as she says, or rather, just patiently wait and observe her actions as she prepares for what is ahead, which really means [if player is not naked]removing your clothes[else]admiring your already exposed self[end if] as she considers what to do. The young succubus smiles to you as she reaches for your chest with her nimble and soft hand, and knowing she is in control, she is willing to make you wait for the best as long as she can, you can tell. 'I want to see my daddy squirming in this one... begging me for more... Because that excites me.' she adds with a giggle, trailing the forms of your muscles with her fingers which send you into an odd arousal, so powerful that you have to take a deep breath as your blood begins to flow down south.";
	say "     Slowly moving lower and lower, you begin to feel your [cock of player] cock raising, hardening and throbbing the closer she gets to it, and within a matter of, perhaps, a minute, she has gone through your waist and pelvis at a nearly torturous pace, simply sliding her hand lower towards your man parts. 'We're just at the start...! And you are already finding it difficult to endure my touch? This is gonna be lots of fun...!' comments the demoness before she goes for your nuts, grabbing and caressing them gently as your cock only gets harder. You feel a temptation to put your own hand around your member and jerk it, but something is keeping your body paralyzed. Your demoness daughter grins as she notices you realized it.";
	WaitLineBreak;
	say "     'Can't have you moving around so freely, daddy... It's just a little magic. That's just gonna make it feel a lot better, I promise.' she explains, still giggling to herself as she continues to give your cum factories a lot of petting and fondling. You are definitely starting to feel how powerless you are, unable to move nor to have any influence over this situation, simply set to endure whatever the deviless wants to do to you... which does not really sound that bad, at all. The way her hands move around your man parts is simply mesmerizing, her masterful touch sending your erection into blissful throbs that make your toes curl. It is then that she decides to take hold of your shaft and slowly jerk it, much to your relief, but never too fast...";
	say "     Slow strokes and barely moving along your shaft, her hands keep you hard and in place, though her fingers find themselves in the most sensitive area of your penis, right below the glans at the front. Just a little rubbing there is enough to send you to places you never thought you would see in your mind, but all good, nonetheless. Your involuntary quivering puts a smile on the succubus['] face, and she increases the pace just a bit, jerking you a tad faster than before. Now, one of her hands are holding your cock at the base while the other is stroking it, and she haves it twist around with a loose grip once it reaches your tip, in order to provide more stimulation as her palm rubs around your cock's sensitive head.";
	WaitLineBreak;
	say "     She clearly knows what she is doing, as you are brought closer to the edge not long after. 'Daddy really likes this, hm? Though I'm not really done... You'll have to wait a little longer.' she says, giggling mischievously as she starts to slow down the closer you get, and then you know that you are going to be edged until your frustration grows too massive to hide. Right now, it stopped being about you, and it is all about your demoness daughter's joy of making you suffer with pleasure. Her torturous stroking continues, never enough to truly satisfy you, but enough to keep you yearning for more. It really frustrates you once you realize you cannot even move your hips, anymore, the paralyzing spell having taken over more of your body.";
	say "     'You're so hard, right now... I really could make you cum this instant, if I wanted to...' the deviless teases, taking delight in your helplessness. 'Maybe if you tell me how much you adore me... I'll consider! Though you gotta look at me in the eyes when you say it.' she says, and as you go on about turning your face to hers, you realize that even your neck is paralyzed. You cannot even tell her what she wants to hear in order to buy your so needed release, and all you get is just not enough stroking around your throbbing cock, those soft hands of hers blatantly holding your climax hostage all while they rub around your whole manhood, giving you only that sweet tingling pleasure.";
	WaitLineBreak;
	if Loyalty of Aerana > 49 and Loyalty of Aerana < 99 and a random chance of 1 in 2 succeeds: [She's Dom, so she has a chance to walk away and leave the player alone]
		say "     You are not likely to give up, but your neck simply does not allow you to do any more turning than nothing. 'So you don't adore me, daddy? Aw... Maybe the next few hours will be enough for you to reconsider that?' she says with a fake sadness, because you can definitely hear her giggle in the end of her words. However, to your shock, she lets go of your member, sticking upwards in all its rock solidness, and starts to walk away. 'I'm done playing, daddy. You may go once the spell wears off.'";
		say "     Yes, she leaves you there, paralyzed, with the hardest hard-on ever, without letting you cum... Or, at least, that was the idea, probably. Your lust grows so intense that, somehow, you are thrown into a spontaneous orgasm that makes your cock shoot all over yourself, giving your own body a sort of humiliating cum bath as it lingers there, left to dry, exposed to anyone who would pass by at that moment. The worst part is... It felt like it was not enough, a relief so small that you do not feel sated at all, and the spell still holds you down for several minutes more until you can get up and regain control of your movements.";
	else:
		say "     You are not likely to give up, and for some miracle, you are able to look at her and tell her what she wants to hear... But you somehow feel like you could only do that because she allowed you to. Nonetheless, your words put a joyful smile on her face, and she looks back at you with those beautiful purple eyes of hers. 'Hmm... Is that so?' she replies, and you can feel her slowly starting to pick up the pace, your cock being stroked at a faster rate and so well that you nearly feel you were inside a tight hole, fucking someone so hard and so deep that your balls begin to raise with every thrust. You can finally move your hips, joining her jerking efforts as your abs contract, your eyes close and you grit your teeth... 'Almost there, daddy...'";
		say "     And then... your cock explodes in a blissful orgasm that could nearly hit the ceiling, covering your own body in a cum bath that you definitely asked for. She does not let go of your cock until the last drop has oozed through, keeping you cumming for a good while in such an intense way that you almost run out of breath. 'Wow...! That was a really good one! Hope you enjoyed yourself...!' she says, as she starts to walk away, leaving your body drenched on your own spunk as the spell slowly wears off. 'It won't take long, now. Hope we can do this again, hm?'";
		say "     It takes almost a minute until you can regain control of your movements completely.";
	NPCSexAftermath Player receives "Other" from Aerana;

to AeranaSexEdgingFootjob:
	WaitLineBreak;
	say "     With this, she requests that you lie down on a comfortable position and do as she says, or rather, just patiently wait and observe her actions as she prepares for what is ahead, which really means [if player is not naked]removing your clothes[else]admiring your already exposed self[end if] as she considers what to do. The young succubus smiles to you as she seems to hover above you with her bat wings unfolded to each side, and reaches for your chest with her delicate and soft foot. Knowing she is in control, she is willing to make you wait for the best as long as she can, you can tell. 'I want to see my daddy squirming in this one... begging me for more... Because that excites me.' she adds with a giggle, trailing the forms of your muscles with her toes which send you into an odd arousal, so powerful that you have to take a deep breath as your blood begins to flow down south.";
	say "     Slowly moving lower and lower, you begin to feel your [cock of player] cock raising, hardening and throbbing the closer she gets to it, and within a matter of, perhaps, a minute, she has gone through your waist and pelvis at a nearly torturous pace, simply sliding her foot lower towards your man parts. 'We're just at the start...! And you are already finding it difficult to endure my touch? This is gonna be lots of fun...!' comments the demoness before she goes for your nuts, rubbing the top of her foot on them gently, causing your cock to only get harder. You feel a temptation to put your own hand around your member and jerk it, but something is keeping your body paralyzed. Your demoness daughter grins as she notices you realized it.";
	WaitLineBreak;
	say "     'Can't have you moving around so freely, daddy... It's just a little magic. That's just gonna make it feel a lot better, I promise.' she explains, still giggling to herself as she continues to give your cum factories some soft and painless kicking, with the occasional petting with her big toe. You are definitely starting to feel how powerless you are, unable to move nor to have any influence over this situation, simply set to endure whatever the deviless wants to do to you... which does not really sound that bad, at all. The way her feet move around your man parts is simply mesmerizing, her masterful touch sending your erection into blissful throbs that make your own toes curl. It is then that she decides to take hold of your shaft, putting it between her soles, and slowly jerk it, much to your relief, but never too fast...";
	say "     Slow strokes and barely moving along your shaft, her feet keep you hard and in place, though her toes find themselves in the most sensitive area of your penis, right below the glans at the front. Just a little rubbing there is enough to send you to places you never thought you would see in your mind, but all good, nonetheless. Your involuntary quivering puts a smile on the succubus['] face, and she increases the pace just a bit, jerking you a tad faster than before. The way she hovers over you is unnatural, as if she was hanging over an invisible rope with full control of gravity, and it allows her to use some momentum to stroke your cock as it stands between both her soles, feet going up and down along your length.";
	WaitLineBreak;
	say "     She clearly knows what she is doing, as you are brought closer to the edge not long after. 'Daddy really likes this, hm? Though I'm not really done... You'll have to wait a little longer.' she says, giggling mischievously as she starts to slow down the closer you get, and then you know that you are going to be edged until your frustration grows too massive to hide. Right now, it stopped being about you, and it is all about your demoness daughter's joy of making you suffer with pleasure. Her torturous stroking continues, never enough to truly satisfy you, but enough to keep you yearning for more. It really frustrates you once you realize you cannot even move your hips, anymore, the paralyzing spell having taken over more of your body.";
	say "     'You're so hard, right now... I really could make you cum this instant, if I wanted to...' the deviless teases, taking delight in your helplessness. 'Maybe if you tell me how much you adore me... I'll consider! Though you gotta look at me in the eyes when you say it.' she says, and as you go on about turning your face to hers, you realize that even your neck is paralyzed. You cannot even tell her what she wants to hear in order to buy your so needed release, and all you get is just not enough stroking around your throbbing cock, those perfect feet of hers blatantly holding your climax hostage all while they rub around your whole manhood, giving you only that sweet tingling pleasure.";
	WaitLineBreak;
	if Loyalty of Aerana > 49 and Loyalty of Aerana < 99 and a random chance of 1 in 2 succeeds: [She's Dom, so she has a chance to walk away and leave the player alone]
		say "     You are not likely to give up, but your neck simply does not allow you to do any more turning than nothing. 'So you don't adore me, daddy? Aw... Maybe the next few hours will be enough for you to reconsider that?' she says with a fake sadness, because you can definitely hear her giggle in the end of her words. However, to your shock, she lets go of your member, sticking upwards in all its rock solidness, and starts to walk away. 'I'm done playing, daddy. You may go once the spell wears off.'";
		say "     Yes, she leaves you there, paralyzed, with the hardest hard-on ever, without letting you cum... Or, at least, that was the idea, probably. Your lust grows so intense that, somehow, you are thrown into a spontaneous orgasm that makes your cock shoot all over yourself, giving your own body a sort of humiliating cum bath as it lingers there, left to dry, exposed to anyone who would pass by at that moment. The worst part is... It felt like it was not enough, a relief so small that you do not feel sated at all, and the spell still holds you down for several minutes more until you can get up and regain control of your movements.";
	else:
		say "     You are not likely to give up, and for some miracle, you are able to look at her and tell her what she wants to hear... But you somehow feel like you could only do that because she allowed you to. Nonetheless, your words put a joyful smile on her face, and she looks back at you with those beautiful purple eyes of hers. 'Hmm... Is that so?' she replies, and you can feel her slowly starting to pick up the pace, your cock being stroked at a faster rate and so well that you nearly feel you were inside a tight hole, fucking someone so hard and so deep that your balls begin to raise with every thrust. You can finally move your hips, joining her jerking efforts as your abs contract, your eyes close and you grit your teeth... 'Almost there, daddy...'";
		say "     And then... your cock explodes in a blissful orgasm that could nearly hit the ceiling, covering your own body in a cum bath that you definitely asked for. She does not let go of your cock until the last drop has oozed through, keeping you cumming for a good while in such an intense way that you almost run out of breath. 'Wow...! That was a really good one! Hope you enjoyed yourself...!' she says, as she starts to walk away, leaving your body drenched on your own spunk as the spell slowly wears off. 'It won't take long, now. Hope we can do this again, hm?'";
		say "     It takes almost a minute until you can regain control of your movements completely.";
	NPCSexAftermath Player receives "Other" from Aerana;

to AeranaSexEdgingTailjob:
	WaitLineBreak;
	say "     With this, she requests that you lie down on a comfortable position and do as she says, or rather, just patiently wait and observe her actions as she prepares for what is ahead, which really means [if player is not naked]removing your clothes[else]admiring your already exposed self[end if] as she considers what to do. The young succubus smiles to you as she reaches for your chest with her nimble and soft hand, and knowing she is in control, she is willing to make you wait for the best as long as she can, you can tell. 'I want to see my daddy squirming in this one... begging me for more... Because that excites me.' she adds with a giggle, trailing the forms of your muscles with her fingers which send you into an odd arousal, so powerful that you have to take a deep breath as your blood begins to flow down south.";
	say "     As you begin to feel your [cock of player] cock raising, hardening and throbbing, you notice she is not moving her hands any lower. Instead, something else comes closer to your crotch, and within a matter of, perhaps, a minute, she has gone through your waist and pelvis at a nearly torturous pace while her own tail takes the lead, finding its place around your manhood. 'We're just at the start...! And you are already finding it difficult to endure my touch? This is gonna be lots of fun...!' comments the demoness before she goes for your nuts, tickling them gently as your cock only gets harder. You feel a temptation to put your own hand around your member and jerk it, but something is keeping your body paralyzed. Your demoness daughter grins as she notices you realized it.";
	WaitLineBreak;
	say "     'Can't have you moving around so freely, daddy... It's just a little magic. That's just gonna make it feel a lot better, I promise.' she explains, still giggling to herself as she continues to give your cum factories some rubbing with her spade tip tail. You are definitely starting to feel how powerless you are, unable to move nor to have any influence over this situation, simply set to endure whatever the deviless wants to do to you... which does not really sound that bad, at all. The way her tail move around your man parts is simply mesmerizing, her masterful touch sending your erection into blissful throbs that make your toes curl. It is then that she decides to wrap her tail around your cock and slowly jerk it, much to your relief, but never too fast...";
	say "     Slow strokes and barely moving along your shaft, that tail keeps you hard and in place, though you feel it still extending towards somewhere else as its whole length rubs across your girth. The tip of her tail seems to have returned to your balls, but it does not want anything with them, instead heading even lower, across your taint and in between your asscheeks... Your involuntary quivering puts a smile on the succubus['] face, and she increases the pace just a bit, jerking you a tad faster than before and now poking at your anus with its spaded tip. 'Let's see about giving you a little extra stimulation...' she adds, and soon after, you feel her tail forcing entry into your ass, pushing through with a surprising strength and coming to bump against your prostate, with the [']body['] of her tail still wrapped around your dick like a snake.";
	WaitLineBreak;
	say "     She clearly knows what she is doing, as you are brought closer to the edge not long after. 'Daddy really likes this, hm? Though I'm not really done... You'll have to wait a little longer.' she says, giggling mischievously as she starts to slow down the closer you get, and then you know that you are going to be edged until your frustration grows too massive to hide. Right now, it stopped being about you, and it is all about your demoness daughter's joy of making you suffer with pleasure. Her torturous stroking and prostate bumping continues, never enough to truly satisfy you, but enough to keep you yearning for more. It really frustrates you once you realize you cannot even move your hips, anymore, the paralyzing spell having taken over more of your body.";
	say "     'You're so hard, right now... I really could make you cum this instant, if I wanted to...' the deviless teases, taking delight in your helplessness. 'Maybe if you tell me how much you adore me... I'll consider! Though you gotta look at me in the eyes when you say it.' she says, and as you go on about turning your face to hers, you realize that even your neck is paralyzed. You cannot even tell her what she wants to hear in order to buy your so needed release, and all you get is just not enough stroking nor nearly enough stimulation, that skillful tail of hers holding your climax hostage all while its thin yet nimble length continues to move around your whole manhood, coupled with your prostate being poked at, giving you only that sweet tingling pleasure deep within you.";
	WaitLineBreak;
	if Loyalty of Aerana > 49 and Loyalty of Aerana < 99 and a random chance of 1 in 2 succeeds: [She's Dom, so she has a chance to walk away and leave the player alone]
		say "     You are not likely to give up, but your neck simply does not allow you to do any more turning than nothing. 'So you don't adore me, daddy? Aw... Maybe the next few hours will be enough for you to reconsider that?' she says with a fake sadness, because you can definitely hear her giggle in the end of her words. However, to your shock, she lets go of your member, sticking upwards in all its rock solidness, and pulls her tail out of your ass before she starts to walk away. 'I'm done playing, daddy. You may go once the spell wears off.'";
		say "     Yes, she leaves you there, paralyzed, with the hardest hard-on ever, without letting you cum... Or, at least, that was the idea, probably. Your lust grows so intense that, somehow, you are thrown into a spontaneous orgasm that makes your cock shoot all over yourself, giving your own body a sort of humiliating cum bath as it lingers there, left to dry, exposed to anyone who would pass by at that moment. The worst part is... It felt like it was not enough, a relief so small that you do not feel sated at all, and the spell still holds you down for several minutes more until you can get up and regain control of your movements.";
	else:
		say "     You are not likely to give up, and for some miracle, you are able to look at her and tell her what she wants to hear... But you somehow feel like you could only do that because she allowed you to. Nonetheless, your words put a joyful smile on her face, and she looks back at you with those beautiful purple eyes of hers. 'Hmm... Is that so?' she replies, and you can feel her slowly starting to pick up the pace, your ass fucked with her tail more vigorously and your cock being stroked at a faster rate, so well that you nearly feel you were inside a tight hole, fucking someone so hard and so deep that your balls begin to raise with every thrust. You can finally move your hips, joining her jerking efforts as your abs contract, your eyes close and you grit your teeth... 'Almost there, daddy...'";
		say "     And then... your cock explodes in a blissful orgasm that could nearly hit the ceiling, covering your own body in a cum bath that you definitely asked for. She does not let go of your cock until the last drop has oozed through, keeping you cumming for a good while in such an intense way that you almost run out of breath. 'Wow...! That was a really good one! Hope you enjoyed yourself...!' she says, as she starts to walk away, leaving your body drenched on your own spunk as the spell slowly wears off. 'It won't take long, now. Hope we can do this again, hm?'";
		say "     It takes almost a minute until you can regain control of your movements completely.";
	NPCSexAftermath Player receives "Other" from Aerana;

Aerana ends here.
