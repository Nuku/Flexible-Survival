Zant by Voidsnaps begins here.

[Variable documentation provided within Wasp Hive.i7x]

Section 1 - NPC Declaration

[Zant is the hive's last drone.]
Table of GameCharacterIDs (continued)
object	name
Zant	"Zant"

Zant is a man.
ScaleValue of Zant is 3. [human sized]
Body Weight of Zant is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Zant is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Zant is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Zant is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Zant is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Zant is 5. [length in inches]
Breast Size of Zant is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Zant is 2. [count of nipples]
Asshole Depth of Zant is 9. [inches deep for anal fucking]
Asshole Tightness of Zant is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Zant is 1. [number of cocks]
Cock Girth of Zant is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Zant is 10. [length in inches]
Ball Count of Zant is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Zant is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Zant is 0. [number of cunts]
Cunt Depth of Zant is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Zant is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Zant is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Zant is false.
PlayerRomanced of Zant is false.
PlayerFriended of Zant is false.
PlayerControlled of Zant is false.
PlayerFucked of Zant is false.
OralVirgin of Zant is false.
Virgin of Zant is false.
AnalVirgin of Zant is false.
PenileVirgin of Zant is false.
SexuallyExperienced of Zant is true.
TwistedCapacity of Zant is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Zant is true. [steriles can't knock people up]
MainInfection of Zant is "Wasp Drone". [Change later. Don't feel like making an infection for him.]
Description of Zant is "[ZantDesc]".
Conversation of Zant is { "<This is nothing but a placeholder!>" }.
The scent of Zant is "[ZantScent]".
Zant is in Drone Quarters.

to say ZantScent:
	say "He smells like honey, sweet and pleasant, with an undertone of masculinity. You could almost mistake it for cologne, if not for the intense heat it causes in your lower half. Best to avoid smelling him for long unless you want to lose control.";
	LibidoBoost 5;

to say ZantDesc:
	say "Zant smirks you as you look him over, blatantly spreading his legs to show off his manhood and flexing his biceps. He jiggles just a little as he moves, and he's sure to turn around, wiggling a sturdy, thick rump at you as if to say 'Here you go, don't miss a spot if you're going to ogle me.' Annoying as his cockiness can be, you can't deny that you enoy the show.";
	LibidoBoost 5;


instead of conversing Zant:
	say "[ZantTalkMenu]";

instead of fucking Zant:
	say "[ZantFuckMenu]";

to say ZantTalkMenu:
	say "     [bold type]What do you want to talk with Zant about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Resolution of Broken but Alive is not 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask about Ziix";
		now sortorder entry is 1;
		now description entry is "Ask about Ziix. The two seem close.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask why Zant's musk is so alluring";
	now sortorder entry is 1;
	now description entry is "You can barely enter the same room as him without falling to your knees. Why does he smell so good";
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
				if (nam is "Ask why Zant's musk is so alluring"):
					say "[ZantMusk]";
				else if (nam is "Ask about Ziix"):
					say "[ZantZiixRelationship]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the perpetually horny drone, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZantFuckMenu:
	say "     [bold type]What do you do with Zant?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Zant to fuck you";
	now sortorder entry is 1;
	now description entry is "That twitching wasp cock's caught your eye. Why shouldn't you demand a piece of the drone";
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
				if (nam is "Ask Zant to fuck you"):
					if Player is female:
						say "[ZantPussyFuck]";
					else if Player is male:
						say "[ZantAssFuck]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the horny drone, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ZantMusk:
	say "     Clearing your throat, you try to catch Zan't attention, politely ignoring his incessant masturbation. Thankfully you don't have to watch him stroke himself for long. As he notices your presence, he releases his cock, letting it flop and mess up the floor beneath him as he sits in his 'bunk.' He licks his fingers as he contemplates your expression, then speaks, his voice muffled as he laps at his honey. 'Oh, welcome back. [if Resolution of Rude Awakening is 1]You looking to suck my dick again? Or is my company just that interesting?[end if]' Yawning and stretching as you speak, the lazy drone listens as you explain that you're curious about the strange, horny effect his scent brings with it. Why does he smell so good?";
	say "     'Hmm? We're the peacekeepers of the hive. It's hard to fight or bicker when you're hard. A drone must do two things. Breed our king to keep the hive growing and settle disputes by putting ourselves between the culprits. Sometimes literally. Why do you think I'm this handsome?' Puffing out his chubby, fuzzy chest, Zant smiles at your wandering gaze, his clawed fingers scratching at his swinging balls idly. You can't deny that he's right. He's hot, in a 'friend's dad' sort of way. Sloppy enough that his masculinity seems effortless. Thanking Zant for his time, you leave his presence before his musk overwhelms you. It's interesting to know that even the 'breeders' of the hive have a purpose besides being a walking sack of cum.";

to say ZantPussyFuck:
	say "     Swallowing hard as you walk up to Zant, you fix your gaze on his perpetually half-hard cock, your mouth going dry as a drip of honey-pre rolls down the head to the ground below. Trying to appear as put-together as possible, you set aside your gear, then join him in his bunk, wordlessly spreading your legs in invitation. His musk is so strong that your pussy glistens already, and you doubt you'll need extra lubrication. Thankfully, the drone's always up for a fuck, and before you open your mouth to state what you want, he's already leaning over you, nuzzling his cock against your lower lips and bathing you in that irresistible scent. He's surprisingly gentle as he stuffs himself past your lower lips, and when your mouth opens, he silences your moans with his tongue, enveloping you in a passionate embrace.";
	say "     Your eyes roll back as the experienced wasp rocks his hips, exploring your innermost depths and kissing his cockhead against your cervix. It's maddening how good he feels, and every breath you take only draws your pleasure out, melting the sensations radiating from your pussy into one continuous orgasm. You're not sure how long you lay there, accepting every slow pump, but your face settles into prominent pecs, and your nose huffs him like a drug until you feel warmth bloom deep inside you and the subtle swell of a stomach full of honey. As you lie there, wringing his cock for every drop, you feel yourself coming down from the hypnotic, musk-drunk state you'd settled into, and just as you're coming to your senses, you hear soft, husky words whisper next to your ear.";
	WaitLineBreak;
	say "     'You want a second round? Or was that enough dick?' Zant's voice says with a hint of a joking tone, breaking you out of your trance as his softened cock slurps from your pussy, basting the lips with a gush of honey-cum. He rolls over, lazily stroking himself, and offers you a seat on his shaft with a cocky grin. Shaking your head, you clear out the cobwebs and resist the urge to slap the crass wasp for ruining your strangely romantic tryst. After all, it's not his fault he's the way he is. Still, he's obscenely good at his job as a breeder, and you know you'll be coming back for a second helping, though maybe next time, you'll bring some duct tape...";
	NPCSexAftermath Player receives "PussyFuck" from Zant;

to say ZantAssFuck:
	say "     Swallowing hard as you walk up to Zant, you fix your gaze on his perpetually half-hard cock, your mouth going dry as a drip of honey-pre rolls down the head to the ground below. Trying to appear as put-together as possible, you set aside your gear, then join him in his bunk, wordlessly rolling onto your stomach and spreading your legs in invitation. His musk is so strong that your cock is rock hard beneath you and your ass twitches with need. Thankfully, the drone's always up for a fuck, and before you open your mouth to state what you want, he's already leaning over you, nuzzling his cock against your hole and bathing you in that irresistible scent as he leans over your back, resting his weight on you. He's surprisingly gentle as he stuffs himself past your tight entrance, and when your mouth opens, he silences your moans with his tongue, enveloping you in a passionate embrace.";
	say "     Your eyes roll back as the experienced wasp rocks his hips, exploring your innermost depths and kissing his cockhead against the deepest depths of your ass to deposit his sugary payload. It's maddening how good he feels, and every breath you take only draws your pleasure out, melting the sensations radiating from your prostate into one continuous orgasm. You're not sure how long you lay there, accepting every slow pump, but your face settles into your arms, and your nose huffs his cloying scent like a drug until you feel warmth bloom deep inside you and the subtle swell of a stomach full of honey. As you lie there, wringing his cock for every drop, you feel yourself coming down from the hypnotic, musk-drunk state you'd settled into, and just as you're coming to your senses, you hear soft, husky words whisper next to your ear.";
	WaitLineBreak;
	say "     'You want a second round? Or was that enough dick?' Zant's voice says with a hint of a joking tone, breaking you out of your trance as his somewhat softened cock slurps from your asshole, basting the gaped entrance and spread cheeks with a gush of honey-cum. He rolls over, lazily stroking himself, and offers you a seat on his shaft with a cocky grin. Shaking your head, you clear out the cobwebs and resist the urge to slap the crass wasp for ruining your strangely romantic tryst. After all, it's not his fault he's the way he is. Still, he's obscenely good at his job as a breeder, and you know you'll be coming back for a second helping, though maybe next time, you'll bring some duct tape...";
	NPCSexAftermath Player receives "AssFuck" from Zant;

to say ZantZiixRelationship:
	say "     Your curiosity gets the better of you, and you ask Zant about his relationship with Ziix. The two seem close, almost like brothers. If it weren't for the incestuous tone in their interactions spurred by Zant's musk, you would call them wholesome. Zant yawns and looks up at you from his perch on the edge of his bed, then chuckles. 'Ziix? We ARE brothers- the two oldest from the king's clutch. For a few days after we hatched, it was just me, him, and the king.' With a wistful expression, Zant stares past you, then shakes his head. 'Things were interesting back then. I was the only drone, so the king 'used' my services often and extensively. I can't say I was the favorite, though. Ziix is lucky I wasn't the jealous type. The king always wanted him around, showed him some of his favorite books, and let him sleep in the egg chamber. The guy wouldn't shut up about how I looked like something called a 'velvet ant' after he read those cover to cover. I was always more interested in the king's porn stash, though. Muscle Men Monthly.' Trust Zant to bring things back to sexual stuff. As he launches into vivid detail on the oiled-up men he jerked off to, you excuse yourself, shaking your head as he starts openly masturbating. What a himbo. Still, he brings up an interesting point. If you want to grow closer to them, now you know what they like- porn magazines and entomology books.";

Zant ends here.