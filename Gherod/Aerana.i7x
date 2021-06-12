Version 2 of Aerana by Gherod begins here.

"Adds Aerana, one of Lilith's offspring with the player, to the game"

[Version 1 - Created file]
[Version 2 - An event between her, Atticus and Arad at the chapel has been added]

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

after going to Burned-Out Chapel while (Succubus Offspring Meeting is not resolved and Incubus Offspring Meeting is resolved and "Succubus Daughter Born" is listed in Traits of Lilith and Elijah is not in Burned-Out Chapel and a random chance of 2 in 3 succeeds): [Aerana exists, hasn't met the player, Atticus' intro is sorted, Elijah not in there (too complex), 66% chance]
	if player is not male:
		say "     (Note: Even though you might not have a dick right now, you are still the person who fathered Aerana. That's why she will continue to call you dad throughout all content.)";
	move Aerana to Burned-Out Chapel;
	project figure of Aerana_naked_icon;
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
	now Succubus Offspring Meeting is resolved;

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
	project figure of Aerana_naked_icon;
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

Section 3 - Aerana Events

Table of GameEventIDs (continued)
Object	Name
AAHellfire	"AAHellfire"

AAHellfire is a situation.
ResolveFunction of AAHellfire is "".
Sarea of AAHellfire is "Nowhere".

[Resolution Stages]
[ 0 - Didn't happen yet]
[ 1 - Atticus left]
[ 2 - Atticus remained and Aerana was persuaded]
[ 3 - Atticus and Player left]
[ 4 - Player left]
[ 99 - Player left before the discussion]

after going to Burned-Out Chapel while (Succubus Offspring Meeting is resolved and Incubus Offspring Meeting is resolved and Loyalty of Aerana > 0 and Loyalty of Aerana < 50 and Loyalty of Atticus > 0 and Loyalty of Atticus < 99 and Hellfire Club is known and player is male and a random chance of 1 in 2 succeeds): [Aerana and Atticus must have both been introduced and present in the game, be on good terms with the Player and Hellfire Club must be unlocked, player must be male]
	say "     As you enter the nave of the ruined chapel, you hear multiple voices, familiar ones, in what seems to be a rather lit discussion. This is an odd event, as this place is usually quite silent and calm, with only Lilith and her children occasionally conversing, if anything at all. Curiosity slides deep into your thoughts and leads you to walk into the space where you can finally see the family reunited. As the demonic sorceress herself stands in the altar, your two shared offspring, Aerana and Atticus, seem to be arguing with one another while a large crimson demon, completely naked, lies tied up and bound between them, with a hood over his head. The entire scene is, indeed, a rare sight, and as the demons see you approach, they hold their words for brief moments.";
	say "     'Oh, it is you. A timely arrival, I must admit,' says Lilith as she beckons you to come closer. 'Don't you happen to know, by any chance, why this red vermin was trespassing our territory?' she asks, with an authoritative tone which also seems slightly angry, as she points at the demon between them. You are able to identify him as a common Hellfire Demon, one of Mogdraz's lackeys. 'Since you have been there on occasion... Not that I personally mind it, but I trust that you'd know how to keep certain things in their due places... And the fact is that they grow bolder by the day, which is an odd coincidence.' Aerana turns to you after her mother has spoken, her eyes piercing yours as she opens her mouth to talk...";
	WaitLineBreak;
	say "     ...But, before she can say anything, Atticus speaks up in her place. 'Well well, daddy! Bet you've been fucking them too, right? That's rad!' he says, with an obvious smirk in his face. 'W-what do you mean, too?! Oh, you little...! So that is why they're bolder, you've been enticing them to come closer!' says his sister as she directs her wrath towards him. 'Why wouldn't I? Most of them are great fuckers! You should give it a try sometime, sis. You'd probably stop looking so grumpy all the time!' your demon son replies, which infuriates Aerana even more. 'What do you think I am, a horny mistake like you?! I... I would never do such a thing! How... Preposterous of you to even suggest that! And I'm not grumpy, I'm merely focused on my personal growth, unlike the likes of you!' your daughter shouts back, which only makes Atticus chuckle. 'But I'm also usually very focused on my... [']personal growth['], sister... That's so unfair...!' he says, winking at her with a clearly sexual innuendo in his words.";
	say "     'Enough of this! I enjoy my peace and quiet too much to allow this to continue any further.' Lilith interrupts the argument as her voice booms through the chapel, creating the silence she intended. Then, the demoness points at you before she continues. 'You handle this. They're your children as much as they're mine. And remove this... intruder from our home! If having a new subject candidate for my experiments will only create this fuss, I shall simply take them for myself, next time! Now, OUT!' After hearing Lilith's words, you gesture to Atticus and Aerana to bring the demon outside, as she requested, before the powerful demoness gets any angrier. She is usually not like this, so you can imagine for how long this discussion must have been dragged about until you arrived.";
	WaitLineBreak;
	say "     'Great, now you've angered mother! Is there anything you can do well, at all?!' Aerana asks Atticus, in a sarcastic tone. 'I could think of several things, yeah. Just ask daddy, he'd know!' he replies immediately, but this time, Aerana decides to ignore this and turns to you in a much more calm manner. 'So... Father. As you can see, mother brought this intruder and called us over, as she intended to gift him to us. Unfortunately, as you may already know, your son is an irresponsible, shameless and utterly immature little imp who just wanted to have a quick fuck with him and let him go afterwards, completely wasting the opportunity to assert our dominion over the Hellfires! So, I ask you to hand him over to me.'";
	say "     When you look over to Atticus, you see him simply shaking his head and rolling his eyes at his sister's words. This time, however, he seems to have thought of a serious answer to give. 'And you think antagonizing the Hellfire Demons is a good move? Sure, enslave one of their kind and flaunt it right in their faces, see what happens! Do you think their Lord would leave you be, knowing you're blatantly provoking them? You don't want to piss that guy off, really. Even mother would think that to be a foolish move.' - he makes a pause as he turns to you - 'All I intend to do with this sexy, red and muscly guy is to have a good time with him. I'm sure you understand that, right daddy? I'd rather make love, not war... and I'd even let you join us! That includes you, sis... since I'm generous.'";
	WaitLineBreak;
	say "     'Aaargghh! All you think about is sex! What about our legacy?! Since the Hellfires arrived, we have lost a lot of influence! Our corruption growth rates have decreased! How are we supposed to dominate the world by fucking the enemy?! We should be fucking mortals, instead! Corrupting them into good obedient demon slaves! And the crimson bastards should be put in their places!' Aerana snaps at Atticus at this point, to which he calmly replies back. 'But of course I care about our legacy! And I wouldn't want it to be one full of oppression and only mindless obedience! Look at all the fun you could be having if you simply allowed yourself to enjoy the bliss of carnal pleasures, sis! Show everyone how fun it is and they'd worship you within the blink of an eye! Willingly! Isn't that much better than forcefully breaking their will?'";
	say "     As your daughter goes to part her lips to speak in response, she finds herself at a lack of words. It is quite surprising, given her former determination to enslave the crimson demon. However, she does not seem to have been convinced. Instead, you get the feeling she is merely containing her anger, thinking her perspective is not being supported by either of you.";
	say "     [bold type]Should you intervene?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Reassure Aerana and side with her. She is absolutely right about wanting to exert dominance over the Hellfires. They should learn their place.";
	say "     [link](2)[as]2[end link] - Comfort Aerana, but try explaining to her that Atticus does have a point in what he is saying. The Hellfires should not be provoked that way.";
	say "     [link](3)[as]3[end link] - Agree with Atticus, but try calling his attention for some things that Aerana has said. You must not let your legacy be overshadowed by another demonic faction.";
	say "     [link](4)[as]4[end link] - Reassure Atticus and side with him. He has presented the most adequate course of action. You would rather make love and peace instead of creating more conflict.";
	say "     [link](5)[as]5[end link] - You want nothing to do with this. Leave them arguing over it.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to side completely with Aerana, [link]2[end link] to side with Aerana but point out important facts on Atticus['] argument, [link]3[end link] to side with Atticus but persuade him that Aerana also has a point, [link]4[end link] to side completely with Atticus or [link]5[end link] to simply leave your children be and retreat.";
	if calcnumber is 1: [Atticus leaves]
		LineBreak;
		say "     Your opinion is as simple as it can get. In agreement with your daughter, you reinforce what she just said. In order to keep your legacy living up to its standards, you must show who is the ruler of this district, and that means asserting your dominance over those who oppose you. The Hellfires must bow before you and your children. 'See? Daddy agrees with me. This proves that I'm right.' says Aerana, smirking at her brother while holding onto your arm very close to you. 'No, it doesn't, but... Aw, well, if that's your take, then I shall let you live with the consequences. I guess you're all allowed to have your wrong opinions. In the meantime, I'm gonna be having some real fun while I watch all the hellfire demons getting angry at you.'";
		say "     Despite Atticus['] snarky response, he is not too good in hiding his disappointment regarding your position. 'Whatever, I'll share my demon with daddy, it's gonna just be some father and daughter time! So we'll have a lot of fun as well!' replies Aerana, to which your son simply rolls his eyes and takes his leave, annoyed at it all. This, however, left your daughter very excited about the opportunity to spend some quality time with you and her new prize. 'His loss, right?' she continues, now looking ready to begin.";
		WaitLineBreak;
		say "[AeranaHellfireDemonScene]";
	else if calcnumber is 2: [Atticus stays]
		LineBreak;
		say "     You do understand Aerana's position and you move on to comfort her, but you also cannot ignore what Atticus just said. While it is in your and your legacy's interest to preserve your higher status among the demons in the Red Light District, it is also important to not so blindly provoke those who stand in a different faction. While she rolls her eyes at this, refusing to admit that you or Atticus might be right, she does not express any disagreement nor tries to leave. 'Sis... You really should learn to relax, sometimes! Dominating others isn't the only way to have fun!' he says, to which your daughter replies 'How else are you supposed to enjoy yourself if you can't have slaves to do things for you?! That's boring!'";
		say "     The handsome incubus comes closer to both of you with a smirk on his face, ready to put his arms around you two as he slips in between. 'Well, since we're all here together, why don't we share our big guy? Look at him! So neglected there with his dick hard and throbbing, looking at us... I suppose it's as good a time as any to bond together as a little family!' While Aerana does not look too thrilled about it, she does let her guard down and seems more willing than not to give it a go. 'Fine... I suppose he's enough for all us three,' she answers, looking ready to begin.";
		WaitLineBreak;
		say "[AeranaAtticusHellfireDemonScene]";
	else if calcnumber is 3: [Atticus leaves]
		LineBreak;
		say "     Perhaps your demon son is right in wanting to make friends with the hellfire demons, but you still think he should consider what Aerana said. While his idea could work, you should preserve your faction's supremacy. Whatever part of his argument you happened to agree on seems to be irrelevant to him, however, as he delivers his reply. 'What supremacy? I honestly just think mother's afraid of competition. That's nothing to be valued... But I supposed we'll have to agree to disagree. I'll leave you guys be, I don't wanna be near you when you anger the hellfire demons.' The incubus is already taking his leave when he says his last words, and you are left with Aerana and the captured devil.";
		say "     'Ugh, what a brat. He just can't accept that I may be right, after all! Although... You kind of agreed with him, anyway? Did you really think he had a point?' your daughter asks, and you explain that, indeed, perhaps at least a conditional alliance would be in order. 'An alliance with conditions... Hm... Doesn't sound as ridiculous as what my dear brother suggested. I suppose that'd still allow us to keep them in their places without totally angering them.... Fine, maybe he does have a tiny little point...' she admits, and a few moments of silence follow until she speaks again. 'Well, I guess I get to keep this guy. How about we share him, daddy? Are you in the mood for some fun?' she finally asks, seeming ready to begin.";
		WaitLineBreak;
		say "[AeranaHellfireDemonScene]";
	else if calcnumber is 4: [Atticus stays]
		LineBreak;
		say "     You believe that what Atticus said is, indeed, the most proper way to handle your current dilemma. Making love with the other demonic faction just solves about every problem you could have, besides being all fun for everyone. Aerana does not look happy with your take on the situation. 'Are you insane?! You too?! Daddy, that doesn't make any sense! What are we supposed to do, share all our efforts and build a demonic society based on friendliness and cooperation? Yuck!' she replies while your handsome son walks up to you both with a big smile on his face. 'Why's that, sis? Doesn't sound so ridiculous to me when you can actually show them how they should worship you the fun way. Best way to learn is by doing it, right?'";
		say "     Oddly enough, your demoness daughter seems inclined to agree. 'Maybe you aren't as dumb as I thought. And, just maybe, you may have a point, this time.' - she says, pointing her finger at him - 'With that said, and if you are so keen on following with your word, I may have the demon for myself, then!' she continues, and Atticus slips in between you both, putting his arms around your shoulders and Aerana's with a smirk on his face. 'We can all enjoy him, actually! I think this is a great opportunity to bond together as a little family!' While she does not sound too thrilled about having to share, she does not fight it. 'Fine... I suppose he's enough for all us three.' she answers, looking ready to begin.";
		WaitLineBreak;
		say "[AeranaAtticusHellfireDemonScene]";
	else if calcnumber is 5: [Skips scene entirely]
		LineBreak;
		say "     Thinking twice, you really do not want to partake in this discussion, so you bid both your children goodbye and allow them to sort themselves out on their own. 'Well, if that's so, it looks like we can solve this in a duel,' says Aerana to Atticus, and before you get dragged into this again, you take your leave. They seem to be arguing, still, but at least you will not get a headache out of it.";
		now Resolution of AAHellfire is 99;
	WaitLineBreak;

to say AeranaHellfireDemonScene:
	say "     'But first, let us remove the hood. I need him to see who's in charge.' she says, walking up to him and pulling it off his head. The revelation is mildly shocking, but not entirely surprising, as the hellfire demon winks at you when he has a clear view of you. 'Oh, hey there! Nice to be able to breathe freely, again!' he speaks, and this handsome crimson devil is, in fact, Arad, one of the twins who guard the Hellfire Club. 'Wait, you two know each other?' she asks, and you have to say that, indeed, you do. 'Well, I really couldn't forget about such a cute face... It's always a welcome sight when [SubjectPro] walks into the Club.' says Arad as he looks at you. The succubus blinks a few times, but then returns to the priority at hand.";
	say "     'Well, if you like my daddy so much...' - she moves in closer, placing her foot above his already erect penis, locking her gaze on his - 'I'm sure you'll do a fine job in servicing the both of us, if daddy's fine with it...' she directs the question to you, and you suppose you could [bold type]just watch her dominate Arad[roman type] or [bold type]join in for the fun[roman type]. As a third option, you could always just [bold type]choose to leave[roman type] your daughter with her new... slave.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Join her.";
	say "     [link](2)[as]2[end link] - Just watch.";
	say "     [link](3)[as]3[end link] - Leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to join Aerana, [link]2[end link] to just watch or [link]3[end link] to leave.";
	if calcnumber is 1:
		Linebreak;
		say "     You tell her that you would be glad to share this devil with her, and you can see that even Arad seems to be looking forward to it. 'It seems our guest is quite eager to get started...' she says, pressing her foot against his cock even harder as he lets out a soft moan. 'You like that, big boy? Getting jacked off by a succubus using only her feet, bound and helpless... You'd make such a great slave!' Aerana continues to tease the devil as she rubs his sixteen incher, throbbing under her soles. 'Fuck... this side's really fun...!' exclaims the red devil, and as you observe them, you figure that you could use Arad's mouth for your own pleasure. With this, you move over his face and bring your [cock of player] dick into your hands, then you grab Arad by his horns and lead him over to it. The demon is quick to take your length past his lips, twirling his long tongue all over your sensitive shaft.";
		say "     'How pathetic... for such a mighty looking grunt to submit so easily.' says your demoness daughter as she continues to rub her feet against Arad's very hard member, now as she hovers above him with her wings stretched open, having placed his shaft between both her soles. She occasionaly slides one of her feet over his balls, pressing against them only enough to have him release a groan, which you can feel on your cock. 'You better leave my daddy satisfied, or you'll be sorry.' she adds, giggling as she uses this opportunity to slightly stomp on his orbs, though judging by how his rod continues to throb, he must really enjoy it. Definitely, Arad does not disappoint with his oral skills as he properly stimulates every sensitive spot of your manhood with both his lips and tongue, sucking it deep and appreciating every inch you have to offer.";
		WaitLineBreak;
		say "     'Looks like someone enjoys being a shameless slut... pleasing his superiors the only way they deserve...' Aerana is definitely enjoying this, and after a while, you see her touching herself, fondling her own pussy and caressing her tits as she continues to tease the red devil, whose erection remains impressively solid. As you keep a tight grasp on both his horns, you begin to facefuck him slowly and steadily, pleased to realize he takes it like a professional. You almost think his throat is bottomless as you continue to thrust into his face[if cock length of player > 16], despite how hung you may be[end if]. As Arad remains tied up, he is powerless to anything you both do to him, but he seems to be enjoying himself and every second that passes.";
		say "     You find yourself to be pretty close to the edge under such a skillful cocksucker, and it does not help that he keeps on moaning so delightfully everytime your daughter jerks him faster, presses against his balls harder or squeezes his shaft with her soles. Though, he shifts his gaze towards you, those fiery eyes of his piercing through yours, and for brief moments, your mind remains focused on him as you look back at the crimson devil, thrusting into his throat, making him take your dick deep in his mouth... And such interaction sets your climax off as you blow your load, having Arad swallow every drop you deliver him down inside him. It was sort of unexpected for you, but your orgasm continues, only further reinforced by his tongue's skillful movements, and feeling your cum going down in him should have also contributed to the massive shot he lanches over his own abs. His spunk partially coats Aerana's feet as she, too, quivers around in her own climax, some of her juices squirting down her legs.";
		WaitLineBreak;
		say "     'Mmhh... Yes...! I really like this slave...!' she says in a lusty tone as she recovers from this. You, too, take some time to breathe as you pull your dick off his mouth, leaving with it a big smile on Arad's face. 'Fuck yeah! Can we repeat this? It was fucking fun!' he eagerly exclaims, but Aerana thinks this is not quite over. 'I see you're eager to please us some more, but for now... Just clean the mess you've made all over my beautiful toes, you insolent imp.' She then walks over to him and [']forces['] her cum-soaked toes into Arad's mouth. The red devil is happy to suck on them and swallow his own jizz down, leaving both her feet pristine clean, one at a time.";
		say "     She pays him no further mind as she begins speaking to you. 'This was quite fun, daddy... I think I may... Want to use this slave for a bit longer.' she says, and you cannot help but notice she seems to be blushing a little. 'I shall... speak to Atticus, afterwards. Perhaps I was... a little too harsh with him. Don't worry about him, I'll make sure he doesn't hold any hard feelings on you. We love you, daddy.' Your demoness daughter leans towards you to give you a kiss on the lips, all while the red devil underneath her is left to watch. 'Damn, that's hot.' he says, which quite interrupts your quiet moment. Though, she puts on a little bit of a show as she brings your hands over her sexy body, feeling her up right in front of him. You think he has got another boner as he stared at you two getting steamy with one another.";
		NPCSexAftermath Arad receives "OralCock" from Player;
		NPCSexAftermath Arad receives "Other" from Aerana;
		WaitLineBreak;
		say "     'See you later, daddy! And thank you for joining me.' You both part ways as Aerana brings Arad to a more secluded location, possibly to continue her... fun.";
		now Resolution of AAHellfire is 1;
	else if calcnumber is 2:
		Linebreak;
		say "     You tell her that you would be glad to just watch her, and you can see that even Arad seems to be looking forward to it. 'That's fine, daddy. It seems our guest is quite eager to get started, either way...' she says, pressing her foot against his cock even harder as he lets out a soft moan. 'You like that, big boy? Getting jacked off by a succubus using only her feet, bound and helpless... You'd make such a great slave!' Aerana continues to tease the devil as she rubs his sixteen incher, throbbing under her soles. 'Fuck... this side's really fun...!' exclaims the red devil, leaning his head back as he continues to have his dick jerked off.";
		say "     'How pathetic... for such a mighty looking grunt to submit so easily.' says your demoness daughter as she resumes rubbing her feet against Arad's very hard member, now as she hovers above him with her wings stretched open, having placed his shaft between both her soles. She occasionaly slides one of her feet over his balls, pressing against them only enough to have him release a groan. 'Nngh... s-so soft... f-feels so good...!' he says amidst several moans, and the succubus giggles as she uses this opportunity to slightly stomp on his orbs, though judging by how his rod continues to throb, he must really enjoy it. Definitely, Arad does not seem to mind being used by another demon, in fact only getting harder as time passes by.";
		WaitLineBreak;
		say "     'Looks like someone enjoys being a shameless slut... pleasing his mistress the only way she deserves...' Aerana is definitely enjoying this, and after a while, you see her touching herself, fondling her own pussy and caressing her tits as she continues to tease the red devil, whose erection remains impressively solid. As Arad remains tied up, he is powerless to anything she does to him, but he really seems to be enjoying himself. He keeps on moaning so delightfully everytime your daughter jerks him faster, presses against his balls harder or squeezes his shaft with her soles. 'You really like this... How shameful...! Getting... so hard just from my feet on your big, thick and hard cock...' The way your daughter says this and the tone of her voice indicates that she might be getting close, as she continues to rub herself. Arad, on the other hand, seems to have gone beyond his edging point as his balls rise, ready to shoot. A prolonged moan is all the warning you get as he cums, his spunk partially coats Aerana's feet as she, too, quivers around in her own climax, some of her juices squirting down her legs.";
		say "     'Mmhh... Yes...! I really like this slave...!' she says in a lusty tone as she recovers from this. Having had such a show for yourself left you a little hot and bothered, but you are happy to see that your daughter has enjoyed herself with her new slave friend. 'Fuck yeah! Can we repeat this? It was fucking fun!' he eagerly exclaims, but Aerana thinks this is not quite over. 'I see you're eager to please me some more, but for now... Just clean the mess you've made all over my beautiful toes, you insolent imp.' She then walks over to him and [']forces['] her cum-soaked toes into Arad's mouth. The red devil is happy to suck on them and swallow his own jizz down, leaving both her feet pristine clean, one at a time.";
		WaitLineBreak;
		say "     She pays him no further mind as she begins speaking to you. 'Daddy...' - she begins, a little embarassed - 'I think I may... Want to use this slave for a bit longer.' she says, and you cannot help but notice she seems to be blushing a little, indeed. 'I shall... speak to Atticus, afterwards. Perhaps I was... a little too harsh with him. Don't worry about him, I'll make sure he doesn't hold any hard feelings on you. We love you, daddy.' Your demoness daughter leans towards you to give you a kiss on the lips, all while the red devil underneath her is left to watch. 'Damn, that's hot.' he says, which quite interrupts your quiet moment. Though, she puts on a little bit of a show as she brings your hands over her sexy body, feeling her up right in front of him. You think he has got another boner as he stared at you two getting steamy with one another.";
		NPCSexAftermath Arad receives "Other" from Aerana;
		WaitLineBreak;
		say "     'See you later, daddy! And thank you for joining me.' You both part ways as Aerana brings Arad to a more secluded location, possibly to continue her... fun.";
		now Resolution of AAHellfire is 1;
	else if calcnumber is 3:
		LineBreak;
		say "     You thank her for the offer, but since the discussion is now solved, you tell her that you would prefer to leave her alone with the [']guest['], as you have places to be and things to do. 'Oh, is that so? Well, then... I shall get busy training my new slave... At least for the next moments. See you later, daddy.'";
		say "     She retreats to a more secluded place with Arad while you take your leave. It should not be long until he is liberated.";
		now Resolution of AAHellfire is 3;

to say AeranaAtticusHellfireDemonScene:
	say "     'But first, let us remove the hood. I need him to see who's in charge.' says Aerana as she walks up to him and pulls it off his head. The revelation is mildly shocking, but not entirely surprising, as the hellfire demon winks at you when he has a clear view of you. 'Oh, hey there! Nice to be able to breathe freely, again!' he speaks, and this handsome crimson devil is, in fact, Arad, one of the twins who guard the Hellfire Club. 'Oh, it looks like daddy has been scoring already, indeed!' Atticus comments as he throws a chuckle. 'You two know each other?' your daughter asks, and you have to say that, indeed, you do. 'Well, I really couldn't forget about such a cute face... It's always a welcome sight when [SubjectPro] walks into the Club,' says Arad as he looks at you. The succubus blinks a few times, but then urges you both to return to the priority at hand.";
	say "     'Well, if you like my daddy so much...' - she moves in closer, placing her foot above his already erect penis, locking her gaze on his - 'I'm sure you'll do a fine job in servicing the three of us, if everyone's fine with that.' she directs the question to Atticus and you. The young incubus promptly says 'I can't wait to get started!' as you are left with the decision to [bold type]only watch them[roman type] or [bold type]join in for the fun.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Join your offspring.";
	say "     [link](2)[as]2[end link] - Just watch.";
	say "     [link](3)[as]3[end link] - Leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to join Atticus and Aerana, [link]2[end link] to just watch or [link]3[end link] to leave.";
	if calcnumber is 1:
		Linebreak;
		say "     You suppose you could choose between only watching them or joining in, but the prospect of sharing a nice moment with both your son and daughter is so rare that it might seem like a good idea to enjoy this opportunity. And, of course, the fact that you are already getting hard at the idea of your three using Arad's cock and every hole to pleasure yourselves helps a lot.";
		WaitLineBreak;
		say "     With this in mind, you tell your daughter and son that you would be delighted to join them in this, and they are, of course, happy to hear. Arad seems to really be looking forward to it, once he knows you will also be part of the action. 'It seems our guest is quite eager to get started...' she says, pressing her foot against his cock even harder as he lets out a soft moan. 'You like that, big boy? Getting jacked off by a succubus using only her feet, bound and helpless... You'd make such a great boy toy!' Aerana continues to tease the devil as she rubs his sixteen incher, throbbing under her sole. Atticus moves on to his face with an erection of his own, and grabbing Arad by the horns, he sticks his own manhood past the red devil's lips as the latter eagerly takes it all in. 'Hope you like sucking dick as much as I do...!' he teases him with a wink.";
		say "     Seeing that you really have no other options left, you consider taking the crimson devil anally, so you work with Aerana to get the crimson devil into a position where he can suck your demon son's cock and take it in the ass from you, while leaving some open options for your domineering succubus offspring. 'Hey sis, you should try his dick! Look at the size!' Atticus suggests, and those words make Arad's manhood twitch in response at the same time Aerana happens to lay her eyes on it. You think she just blushed at the possibility of taking that big red meat for her personal use. 'I... Maybe... Yes, that would be... It.' she replies, and that settles things for you, as well.";
		WaitLineBreak;
		say "     Arad is a big guy, so it really is no problem finding enough space for you to crawl between his legs and lean your [cock of player] over to his soft pucker, which is warm to the touch and blinks once you poke at it, while Aerana stands on top of him with both her hands on that large dick, preparing to take a seat on it. This is your cue to begin to thrust into the red devil as your daughter, too, slowly impales herself on the thick crimson manhood. Your son is simply ecstatic from watching you both play along together and enjoying yourselves, and decides to pick up the pace and thrust into his mouth a little harder. Arad's insides feel like they are embracing your meat, pulsing around it as this all seems to excite him further.";
		say "     Aerana lets out a moan as she feels her pussy stretch around your guest's dong, and while he does, too, all the sound is muffled around Atticus['] meat as the incubus buries it deep down his throat. 'Such a hung sl-... Nhg...!' she nearly says the word, but your son follows afterwards. 'I think he likes being called slave, actually...!' You find yourself only thrusting at that ample and muscular ass, feeling your own manhood welcomed by his warm insides as you grab his thighs, his thick legs wrapped around your waist, squeezing and pulling you to him, almost as if beckoning you to fuck him deeper. You do not see why you should not oblige, so you shove your cock all the way inside him and begin to fuck him hard.";
		WaitLineBreak;
		say "     While your demoness daughter keeps bouncing on Arad's cock, building up a nice rhythm of sliding up and down on his shaft, Atticus is focused on face-fucking the red devil's brains out. This whole scene becomes a symphony of grunts and moans as you three utterly use him, taking him all as you please and leaving him no room to escape... Not that he wanted to, anyway. Though, during all this, you begin your own body to call for a release as the fucking intensifies, your balls slapping against his glutes the faster and harder you thrust, and your demonic offspring also begin to pick up their paces and become more vocal. 'I don't know about you, guys, but... I'm really close!' says the young incubus, holding onto Arad's horns with his dick buried in his throat, perhaps politely waiting for you to catch up so you could all cum together. 'I... can't hold it any longer... T-this is so good... It's such a good cock' exclaims Aerana, amidst a few moans.";
		say "     'I knew you'd like it, sis. Should keep your options open, it's way more fun that way, right? O-oh, fuck... I... Fuck, I'm gonna cum!' With a couple more thrusts into the red demon's mouth, Atticus begins to unload into him, making him swallow every spurt of his hellish seed. 'Yes...! Drink it all up! You deserve it!' As this happens, you too begin to shoot your load into Arad's ass, filling up his insides shot after shot, only further stimulated by his anal entrance quivering around your shaft. This means that he, too, reached his climax, and is currently filling your demoness daughter's womb as she takes in all that cum into herself, releasing several loud moans as she rubs herself all over. 'A-ahh... Y-yes...! More! All of it!'";
		WaitLineBreak;
		say "     With the party close to be over, you take a few minutes to catch your breaths. Aerana gets out of Arad's cock, which is still unbelievably hard, and Atticus pulls out of his mouth. You do the same, standing up before a still eager hellfire demon, despite the mess you have done on him. 'This was... uhm... Interesting.' Aerana comments, which causes Atticus to burst in a laughter. 'Interesting?! Wow, sis... You came really hard on that one, let me tell you. I think you don't get enough dick, at all!' Her face turns red at these words, and she seems quite bothered at this, not because she feels insulted, but actually quite embarrassed. 'I just... don't find proper candidates that often, that's all. Though I... Admit that daddy's... friend was quite... adequate.'";
		say "     'Look who's a size queen! Well, can't blame you. Big dicks are fun! Should take him for a ride myself, sometime.' - says Atticus before he turns to you - 'And daddy, thanks for joining us! Though I suppose we should, uhm... liberate our guest in a safer location before parting ways. See you around, we love you!' Aerana gives you a smile and a nod, making those her words as well. 'It was quite pleasant. We should... do it again, some other time.'";
		NPCSexAftermath Arad receives "OralCock" from Atticus;
		NPCSexAftermath Aerana receives "PussyFuck" from Arad;
		NPCSexAftermath Arad receives "AssFuck" from Player;
		WaitLineBreak;
		say "     It is time to retreat and leave your demonic offspring to their duties, as your job here is done.";
		now Resolution of AAHellfire is 2;
	else if calcnumber is 2:
		say "     After giving it some thought, maybe you should just let them have their fun while you simply stay and watch, keeping them company while they enjoy themselves. Besides, Arad seems to really be looking forward to giving himself to the whims and lusts of two other young demons, who happen to be your daughter and son. 'Suit yourself, daddy. I'm sure you'll enjoy the show!' your son says, while Aerana keeps pressing her foot against the crimson devil's cock even harder. 'And it seems our guest is quite eager to get started... Maybe he likes putting on a show for others, after all.' She continues this, teasing the hellfire demon as she rubs his sixteen incher, throbbing under her sole. 'You like that, big boy? Getting jacked off by a succubus using only her feet, bound and helpless... You'd make such a great boy toy!' Atticus moves on to his face with an erection of his own, and grabbing Arad by the horns, he sticks his own manhood past the red devil's lips as the latter eagerly takes it all in. 'Hope you like sucking dick as much as I do...!' he teases him with a wink.";
		say "     As they start getting into it, you remain standing nearby, observing the interaction between your offspring and the helpless red devil. 'Hey sis, you should try his dick! Look at the size!' Atticus suggests, and those words make Arad's manhood twitch in response at the same time Aerana happens to lay her eyes on it. You think she just blushed at the possibility of taking that big red meat for her personal use. 'I... Maybe... Yes, that would be... It.' she replies. Arad really is a big guy, which might suit your daughter's needs... Following this, she readjusts herself to stand on top of him with both her hands on that large dick, preparing to take a seat on it. Then, the young succubus goes to slowly impale herself on the thick crimson manhood. Your son seems quite pleased that his sister followed his advice, and decides to pick up the pace and thrust into the devil's mouth a little harder.";
		WaitLineBreak;
		say "     Aerana lets out a moan as she feels her pussy stretch around your guest's dong, and while he does, too, all the sound is muffled around Atticus['] meat as the incubus buries it deep down his throat. 'Such a hung sl-... Nhg...!' she nearly says the word, but your son follows afterwards. 'I think he likes being called slave, actually...! While your demoness daughter keeps bouncing on Arad's cock, building up a nice rhythm of sliding up and down on his shaft, Atticus is focused on face-fucking the red devil's brains out. This whole scene becomes a symphony of grunts and moans as they utterly use him, taking him all as they please and leaving him no room to escape... Not that he wanted to, anyway. Eventually, your demonic offspring begin to really pick up their paces and become more vocal.";
		say "     'I don't know about you, sis, but... I'm really close!' says the young incubus, holding onto Arad's horns with his dick buried in his throat, perhaps politely waiting for Aerana to catch up so they could all cum together. 'I... can't hold it any longer... T-this is so good... It's such a good cock' exclaims Aerana, amidst a few moans. Atticus then replies 'I knew you'd like it, sis. Should keep your options open, it's way more fun that way, right? O-oh, fuck... I... Fuck, I'm gonna cum!' With a couple more thrusts into the red demon's mouth, the incubus begins to unload into him, making him swallow every spurt of his hellish seed. 'Yes...! Drink it all up! You deserve it!' As this happens, Arad also reaches his climax, and is currently filling your demoness daughter's womb as she takes in all that cum into herself, releasing several loud moans as she rubs herself all over. 'A-ahh... Y-yes...! More! All of it!'";
		WaitLineBreak;
		say "     With the party close to be over, they take a few minutes to catch their breaths. Aerana gets out of Arad's cock, which is still unbelievably hard, and Atticus pulls out of his mouth. You simply stand up before a still eager hellfire demon, despite the mess your demonic offspring have done on him. 'This was... uhm... Interesting.' Aerana comments, which causes Atticus to burst in a laughter. 'Interesting?! Wow, sis... You came really hard on that one, let me tell you. I think you don't get enough dick, at all!' Her face turns red at these words, and she seems quite bothered at this, not because she feels insulted, but actually quite embarrassed. 'I just... don't find proper candidates that often, that's all. Though I admit that daddy's... friend was quite... adequate.'";
		say "     'Look who's a size queen! Well, can't blame you. Big dicks are fun! Should take him for a ride myself, sometime.' - says Atticus before he turns to you - 'And daddy, thanks for keeping us company! You should join us next time, though! But for now, I suppose we should, uhm... liberate our guest in a safer location before parting ways. See you around, we love you!' Aerana gives you a smile and a nod, making those her words as well. 'It was quite pleasant. We should... do it again, some other time.'";
		NPCSexAftermath Arad receives "OralCock" from Atticus;
		NPCSexAftermath Aerana receives "PussyFuck" from Arad;
		WaitLineBreak;
		say "     It is time to retreat and leave your demonic offspring to their duties, as your job here is done.";
		now Resolution of AAHellfire is 2;
	else if calcnumber is 3:
		LineBreak;
		say "     You thank them for the offer, but since the discussion is now solved, you tell your children that you would prefer to leave them alone with the [']guest['], as you have places to be and things to do. 'Oh, is that so?' Replied Aerana, followed by Atticus 'Aw... That's a shame. I was really looking forward to this, but alright. See you later, daddy! We'll make sure to tire him out before we send him away!'";
		say "     They retreat to a more secluded place with Arad while you take your leave. It should not be long until he is liberated.";
		now Resolution of AAHellfire is 4;

Aerana ends here.
