Version 1 of Ryan by Fuxi begins here.
[Character originally by Mizu]
[Coding Assistance by Prometheus]


Section 1 - NPC Declaration

Ryan is a man.
ScaleValue of Ryan is 3. [X sized]
Body Weight of Ryan is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ryan is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ryan is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ryan is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ryan is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ryan is 8. [length in inches]
Breast Size of Ryan is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ryan is 2. [count of nipples]
Asshole Depth of Ryan is 12. [inches deep for anal fucking]
Asshole Tightness of Ryan is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ryan is 0. [number of cocks]
Cock Girth of Ryan is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ryan is 0. [Length in Inches]
Ball Count of Ryan is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ryan is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ryan is 1. [number of cunts]
Cunt Depth of Ryan is 12. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ryan is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ryan is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ryan is false.
PlayerRomanced of Ryan is false.
PlayerFriended of Ryan is false.
PlayerControlled of Ryan is false.
PlayerFucked of Ryan is false.
OralVirgin of Ryan is false.
Virgin of Ryan is false.
AnalVirgin of Ryan is false.
PenileVirgin of Ryan is true.
SexuallyExperienced of Ryan is true.
TwistedCapacity of Ryan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ryan is false. [steriles can't knock people up]
MainInfection of Ryan is "Fennec".
Description of Ryan is "[RyanDesc]".
Conversation of Ryan is { "Sir?" }.
The scent of Ryan is "Ryan smells of sex, heat, and fruit."

to say RyanDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Jerome: [HP of Jerome], Libido of Jerome: [Libido of Jerome] <- DEBUG[line break]";
	say "     Looking Ryan up and down, you take in the lithe for looking Ryan up and down, you take in the lithe fox's features. Currently lounging on your bed, your lovely fennec is covered head to paw in silky golden fur that nicely complements his ocean-blue eyes. Despite Ryan's timidity, he wears only flimsy black lace panties that do scantly anything to hide his heated pussy or curvy bum. Noticing your attention, Ryan smiles at you. 'Is there anything you need, sir?'";


Section 2 - Talking

instead of conversing the Ryan:
	say "[RyanTalkMenu]";

to say RyanTalkMenu:
	say "     What do you wish to talk about with the fennec fox?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ryan's Past";
	now sortorder entry is 1;
	now description entry is "Ask him about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Space and Cleanliness";
	now sortorder entry is 2;
	now description entry is "Ask about his need for space and cleanliness";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 3;
	now description entry is "Boop his snoot!";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sexual Experience";
	now sortorder entry is 4;
	now description entry is "Ask about his increased skill in the bedroom";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Beach Date";
	now sortorder entry is 5;
	now description entry is "Invite Ryan out for a day at the beach";
	[]
	if (carried of Food > 0 and carried of Water Bottle > 0):
		choose a blank row in table of fucking options;
		now title entry is "Share Meal";
		now sortorder entry is 6;
		now description entry is "Share a can of food and a bottle of water with the fox";
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
				if (nam is "Ryan's Past"):
					say "[RyanTalk1]";
				if (nam is "Space and Cleanliness"):
					say "[RyanTalk2]";
				if (nam is "Boop"):
					say "[RyanTalk3]";
				if (nam is "Sexual Experience"):
					say "[RyanTalk4]";
				if (nam is "Beach Date"):
					say "[RyanTalk5]";
				if (nam is "Share Meal"):
					say "[RyanTalk6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Ryan looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RyanTalk1:
	say "     'You want to hear more about myself, sir? There's not much else to tell you, but I'm happy to remind you about anything you may have forgotten.' Smiling gently at you, Ryan grabs your hand to pull you onto the bed to lay with him before he begins. 'I grew up in a ritzy suburb. My parents weren't around much, and I was also rather shy, so I didn't make many friends. I came to this city for college, hoping I could come out of my shell, and it went wonderfully for a time before all of this happened,' the vulpine gestures at his body desparingly. 'I was out shopping when people started transforming. I got lucky and avoided the initial transformation, but a couple of fennecs caught me and gave me my new form.' Ryan sighs shakily as he remembers his attackers. Trying to calm the desert fox, you give his ears some gentle scratches and rubs and are rewarded with a murmur of pleasure as he nestles closer to you.";
	say "     'I wandered through the city for several weeks, somehow managing to evade any other threats until I stumbled upon the Shag Shack. I was desperate for a place to stay, so I begged Jerome to let me work there. He took me in and told me my smell and heat would bring him a profit.' Ryan's ears go flush as he reminisces. 'I didn't even know I was in heat or what that entailed. I was a mess before you came. You were my first client, the first to quench my heat, my first anything besides the other fennecs.' The gentle fox deflates a bit as he remembers his time at the Shag Shack but cheers up as he turns to you, hugging you tightly. 'And the rest is history. You put a kit in me and brought me to this library, sir. Thank you.'";

to say RyanTalk2:
	say "     Ryan goes to hold your hand and frowns as you question him on his need for hygiene and space. 'I suppose it's partly because of my upbringing and time at the Shag Shack. I grew up in a very prim household. Things like manners and cleanliness mattered greatly to my parents, and you've been inside the Shag Shack. I'm sure you noticed just how filthy it was inside, not to mention cramped, stuffed to the brim with whores, customers, and beds.' The short fox tenses up as he remembers the Shack. 'It disturbs me to think that I almost accepted that as my home, where my children would grow, where I would stay for the rest of my life.' Ryan shudders in revulsion and squeezes your hand to comfort himself. 'I can't thank you enough for allowing me to be more than that, Sir, for seeing more than a whore in me.'";

to say RyanTalk3:
	say "     The way Ryan adorably focuses on you, paired with the unbridled affection in his eyes, is too lovely to resist, and you can't stop yourself from giving him a quick boop. Giggling a bit, Ryan smiles and boops you back. 'I'm glad to have met you, sir.'";

to say RyanTalk4:
	say "     After fucking Ryan for a while, you've noticed your cute fox has progressed quite a bit from the whore you first met, who didn't even understand how his heats worked. Carefully you question your fox on his increased skill and knowledge regarding sex. Ryan, unsurprisingly, is somewhat reluctant to share his past experiences. Still, you gently coax your fox into speaking, reassuring him you won't be upset or think less of him for anything he tells you as you fluff his tail. 'I'm sure I don't need to tell you where I learned, sir. There weren't many good things about the Shag Shack, but... but I admit I enjoyed the sex,' Ryan's ears go red as he looks up at you anxiously. Petting Ryan, you smile comfortingly and nod for him to continue. 'I didn't know there were so many ways to please people and so many things to enjoy if you'd like to, sir. P-perhaps we can experiment, and I can show you some of the things I've learned?' Ryan mumbles the last bit. Humming noncommittally at his nervous question, you thank Ryan and give a couple of gentle parting pets.";

to say RyanTalk5:
	if strength of Ryan is 1:
		say "     Briefly, the thought of trying to go on another date flicks through your mind again, but you quickly sour on it — the humiliating and depressing incident with the orca ruining any enjoyment the idea may have brought you. You daren't even try to bring up the idea of another outing to Ryan and put your poor fennec under any more distress.";
	else if daytimer is not day:
		say "     It'd be best to wait for the sun to rise before you invite Ryan on a date. You're sure your lovely fox will enjoy himself more in the warm daylight, but a romantic moonlit walk along the beach is a tempting idea.";
	else:
		say "     As you ask your question, Ryan looks up at you, worried. 'A trip to the beach, sir? Are you sure it'll be safe? I'd love to go with you, but the city isn't a place I want to wander around,' he frets anxiously. Stroking the fearful fennec's head and gently rubbing his ears, you assure him that the beach is safe and that you'll protect him during the journey. Ryan hesitates a bit more, torn between his usual caution and fear and his excitement toward the prospect of a beach date with you before finally he nervously agrees. 'A-alright, sir, you lead the way.' Grinning at him, you grab Ryan's hand and lead him out of the library with you. It's a relatively peaceful trip right up until the final stretch. You're only a couple blocks away from the promenade when a large orca decides to ambush you and your fox. Diving out of an alleyway, he breathes in deeply, taking in the scent of Ryan's heat, and rushes at you! Yelling at Ryan to get behind you and hide, you hurry to confront your attacker.";
		now inasituation is true;
		challenge "Killer Whale";
		if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
			if fightoutcome is 22: [submitted]
				say "[RyanBeachDateSubmit]";
			else: [lost]
				say "[RyanBeachDateLoss]";
		else if fightoutcome > 30: [fled]
			say "[RyanBeachDateFlee]";
		else if fightoutcome < 20: [player won]
			say "[RyanBeachDateVictory]";
		now inasituation is false;

to say RyanBeachDateSubmit:
	say "     The thought of submitting crosses your mind momentarily, but you quickly beat the idea from your mind knowing that the orca will show neither you nor Ryan any mercy. Unfortunately, your indecision seems to give your foe time to recover.";
	now inasituation is true;
	challenge "Killer Whale";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if fightoutcome is 22: [submitted]
			say "[RyanBeachDateSubmit]";
		else: [lost]
			say "[RyanBeachDateLoss]";
	else if fightoutcome > 30: [fled]
		say "[RyanBeachDateFlee]";
	else if fightoutcome < 20: [player won]
		say "[RyanBeachDateVictory]";
	now inasituation is false;

to say RyanBeachDateLoss:
	say "     Seeing an opening, the orca relieves you of your leg's support by sweeping them away with his thick and powerful tail. With you now on the ground and too weak to continue, the killer whale pulls you onto your knees, displaying a clear view of the beast's long, curving cock as it commences the ritual of emerging from its watertight home. 'Suck!' He orders you in a deep, rumbling command. Thrusting into your mouth at a slow and deliberate pace, you're made to slick his cetacean rod with your saliva while it becomes fully engorged. Eventually, you feel its immense length depart from your abused orifice before he indicates to you that he will be claiming another. He slides over you, his massive form pinning you against the cold concrete as his muscular tail spreads and otherwise prepares your legs for his eager intrusion. With a sharp jab, you feel the flexible member invade your ass, worming itself deeper into you like some meaty tentacle as he proceeds to pound your vulnerable hole.";
	say "     Influenced by the whale's perverse hold on you, you're soon unable to refuse the pleasure of such a wriggling intrusion. Slickly sliding across the supple walls of your [bodytype of Player] anus, the orca-man's impressive shaft probes the depths of your fleshy labyrinth, and it's not long before your hole is sufficiently stretched to accommodate the whole of his cock within your confines. Writhing in pleasure against the wet sand, this strange sensation is enough to drive you to climax, and - like clockwork - the beast's own release is made apparent as his thick, virile cum floods the confines of your stomach. Visibly bloated by such an impressive release, you feel the writhing organ soften before the whale pulls himself free of your tight hole. Satisfied with what he has wrought upon you, he departs, leaving you to lay across the concrete in a dizzy stupor.";
	WaitLineBreak;
	say "     While you lie on the ground recovering, you hear a panicked screech as the orca comes back, and you feel your heart sink as you realize what the sound was. Struggling in the orca's arms is Ryan frantically trying to escape. 'Sir, help, please!' he screams for you, but desperately as you might want to assist your mate, after your brutal beating and fucking, you can't even stand, much less stop the orca. You're only able to give a pathetic whine in protest as the killer whale pins Ryan down on the concrete to lie in front of you, rips off his panties, and pushes his legs up. Lying where you are, you have a perfect view of Ryan's puffy canine spade, which means that you also have a perfect view to watch the strong cetacean's glossy cock part your lover's heated folds. You hear Ryan give a strained grunt as the beast's girthy shaft is pushed into him. 'W-wait!' he stammers, but of course, the brute shows no restraint cramming inch after inch of cock into the small vulpine, visibly bulging Ryan's stomach. He begins to thrust.";
	say "     You can only watch impotently as the feral whale ravishes your lover, your shame and embarrassment only growing as Ryan's pleasure rises, moans and squeals of pleasure replacing their earlier groans of discomfort and pain as the orca's shaft begins to glisten with his feminine juices. It's not like you haven't watched Ryan get fucked before, but then you and he had control. It was something you both wanted! Now you're helpless, forced to listen to the raunchy wet sounds of your fennec's pussy getting pounded. Turning to see you watching him and seeing the obvious pain and embarrassment on your face snaps Ryan out of his enjoyment for a moment. 'I'm so sorry, sir!' he sobs out to you, but despite his sorrow judging by his panting and increasingly loud moaning, your fox is edging ever closer to climax. You don't begrudge Ryan at all for his enjoyment, considering his heat and your own stolen orgasm under the orca. You're quickly proved right. A couple of rough thrusts later, your fox howls and shakes in pleasure, soaking the killer whale's shaft. The orca doesn't stop fucking Ryan for a moment slamming into the cuntboy's pussy and slinging his femcum across the ground with each withdrawal from your fox's sopping wet cunny.";
	WaitLineBreak;
	say "     Regardless of the humiliating situation that you find yourself in, you can't help but grow aroused at the sweet pheromones from Ryan's orgasm. But, it's not you who reaches orgasm with the beautiful fox but rather the strong killer whale triumphantly bellowing as he floods your mate's wet snatch with his virile seed. Withdrawing slowly from Ryan, the cruel cetacean wanders off, satisfied by his two orgasms leaving you to watch his cum slowly flow out of your lover's abused pussy. You both lie down defeated, but eventually, you recover physically from the beating and the fucking you got and mentally from the agonizing humiliation of watching Ryan get raped while you could do nothing to stop it. Not wanting anything else to hurt either of you, you stumble to your fear and pick up your dazed fox while the orca's cum still leaks from his pussy, some splashing on you. Currently in no state to return to the library, you rest in an abandoned store.";
	say "     Already feeling wretched, your despair only grows as Ryan begins to weep, 'I'm so sorry, sir! I'm so sorry... I didn't do anything to help you fight. I couldn't stop him from-' A loud, hiccuped sob rolls through Ryan preventing him from finishing his sentence. 'The worst part is that I even started to enjoy it. I'm such a worthless whore! Oh God, you're even hurt still!' Noticing a couple of fading claw marks on your body Ryan starts hyperventilating as you rush forward to calm him. Hugging Ryan tightly, he cries into your shoulder, whimpering apologies while you assure him he has no reason to be your own feelings of guilt rise. After all, you were the one that wanted to go on this trip and promised to protect him, then failed. Eventually, managing to soothe Ryan, you begin the long walk home. The both of you are utterly miserable as you enter the library and go down to your bed; flopping down on it, emotional exhaustion pulls you both into a dreamless sleep as you mutually hope to forget this horrible day.";
	CreatureSexAftermath "Player" receives "OralCock" from "Killer Whale";
	CreatureSexAftermath "Player" receives "AssFuck" from "Killer Whale";
	CreatureSexAftermath "Ryan" receives "PussyFuck" from "Killer Whale";
	now strength of Ryan is 1;

to say RyanBeachDateFlee:
	say "     Realizing you're in a losing battle, you turn and run. Scooping up Ryan, you flee as fast as you can while pursued momentarily by your orca attacker, but your desperation gives you the edge. Winding through alleyways, you quickly manage to shake off the feral brute. Panting for breath, you and Ryan fall to the floor to recover energy before journeying to the library. Through your fatigue, you apologize for your failure to properly recognize the threats at the beach and your inability to fight them off, but Ryan's fretting cuts you off, 'You've nothing to be sorry for, sir. At least you tried your even bleeding still! I couldn't do anything at all to help,' your lover says worried and quite ashamed of himself as he looks over your wounds. Assuring Ryan you're okay, you begin the walk back to the library, relieved he's not upset with you and that you avoided any more threats. Back home, you go down to your bed and lay your tired fox down, apologizing for your failure one last time. You promise to grow stronger and let Ryan enjoy a proper day at the beach someday.";

to say RyanBeachDateVictory:
	say "     Defeating the orca. You give him a few vengeful farewell kicks and leave him knocked out on the cold concrete, then call out to Ryan and enter the Beach Plaza. Ryan seems amazed by the relative peace and normality around him as street hawkers sell clothes, brushes, soaps, and food while all kinds of infected go about their daily lives, chatting calmly or enjoying treats from a nearby cafe under parasols. 'It's amazing, sir. I didn't think anything like this could exist anymore,' Ryan whispers. Smiling proudly at your fox's evident enjoyment, you buy some gear from one of the many vendors and grab Ryan's hand to guide him down the long stairs to the beach. ";
	say "     Breathing in deeply, you both enjoy the crisp ocean breeze forgetting momentarily the crisis and all the horrible things you've endured as you bask in the warm sunshine. Ryan seems especially beautiful like this, his silky golden fur shining in the sunlight. 'It's like paradise here, amazingly peaceful, perfectly hot, and this sand feels so natural to me,' your mate mutters. His infection seems to have given him a fondness for this environment. Given Ryan's never been to this beach, it's up to you to take charge. Petting his head softly, you ask whether your lovely fox would like a nice warm meal.";
	WaitLineBreak;
	say "     'That sounds fantastic, sir. The trip here really worked up my appetite, and the food I saw looks delicious!' Ryan beams at you. Grabbing his hand again, you guide your fennec to Sunny Snacks and direct Ryan to a patio table. You quickly order and return to him with two hotdogs and fries. It's not the fanciest or largest meal for either of you. Still, after eating nothing but cold and canned food for far longer than anyone ever should, it's a scrumptious treat for the two of you. Chuckling slightly at the ordinarily polite and proper vulpine wolfing down his food, you teasingly ask whether he'd like dessert. 'Yes, please!' Ryan replies, his ear reddening slightly at your tone. Patting his head, you order a sundae for your fox, which he devours with the same gusto he did the hotdog and fries. It's a rather expensive treat, over 500 credits, but given how little you have to spend on and how overjoyed your lover is, it's a price well worth paying.";
	say "     Heading to the beach to digest your meal, you set up a towel for yourself and Ryan to lay on and cuddle with your loving desert fox. 'Today's been wonderful. I don't know how I could thank you for bringing me here, for the meal, and for fighting off the orca. I already owe you so much, sir' a little shiver runs through him as he remembers the killer whale. At first, you think it's out of fear, but you're shocked by the rising smell of vulpine arousal. 'You looked so strong protecting me, sir, so brave, powerful, and sexy.' Ryan says with evident longing as he moves between your legs, whispering seductively, 'How about I show you how much I appreciate everything?'";
	WaitLineBreak;
	say "     Smiling adoringly at you, your mate teases your cock and ballsack with a few licks before moving up to the head of your cock and inhaling you, taking you down to your base, and squeezing his throat around you. As you groan in pleasure, Ryan grinds his mouth against your crotch and moves one of your hands to his head, humming pleasantly around your cock. His desires are clear. It seems your sexy tod wants it rough! You're happy to oblige, lightly thrusting into Ryan's warm wet mouth while gently pushing him down with your hand, guiding your gentle fox to bob up and down on your thick dick.";
	say "     Though Ryan may have given you the reigns, he's hardly idle in his worship, swallowing around your cock each time you sheath yourself in his throat and lapping at the underside of your dick while massaging your balls with one hand. Your fennec lover puts all his experience into pleasing you and his idolizing gaze as plunge into his mouth makes things that much better. As the powerful and arousing scent of Ryan's heat and pheromones rise in the air, you shift your grip from Ryan's head to around his ears, making him whine in pleasure as you gently tug him down on your dick while massaging his sensitive ears.";
	WaitLineBreak;
	say "     You quickly feel your climax rising under your skilled fox's attention. You start bucking into Ryan's throat faster and pushing him down harder, your churning balls slapping against his chin as you howl in orgasm, shooting your load down your vulpine lover's throat. You slowly pull out, letting the last few shots coat his tongue, and fall back panting for breath. Opening his mouth to present you with the frothy mix of your seed and his spit, Ryan swallows. 'Thank you, sir,' he purrs to you. Through your haze of pleasure, you notice your fox hasn't gotten off, the sweet smell of his heat tickling your nose and rapidly hardening you up again.";
	say "     Darting up, you flip Ryan and move behind him, making him yelp in surprise. Leaning in close, you murmur into his ear that you're far from done, drawing a needy whine from your sexy vulpine as you tug down his panties. 'God, please, sir, take me now!' Ryan whimpers, wiggling his round bum in an unnecessary attempt to entice you. Grinding against his dripping pussy, you lube your already spit-slicked cock with his juices, driving Ryan wild with lust and anticipation as he begs you to fuck him loudly, drawing the attention of other beachgoers who stare in envy at both you and your fennec. You can't help but feel immensely pleased with this as you finally plunge deep into Ryan's tight wet pussy, publicly claiming him as yours and turning any past begging into a drawn-out moan.";
	WaitLineBreak;
	say "     You don't give Ryan a moment to recover. Grabbing his tail, you roughly buck into your fox and pull him into every thrust, your hips and balls slapping loudly against his thighs while his warm juicy cunny slurps lewdly around your shaft. You ruthlessly pound into Ryan's pussy and give his bouncy bubble butt a quick spank that makes him squeeze his inner muscles delightfully tight around you. 'Fuck me, sir fuck me like I'm a bitch in heat! Show everyone I'm you're bitch!' Ryan screams lustfully, all restraint forgotten, pounded out of him by your dick. Your tod's words light a fire in you as you remember the eyes of the crowd on you and the orca that tried to take him away from you, a primal need welling up to show everyone exactly who this fox belongs to! Upping the speed and strength of your thrusts, you soon push Ryan into a powerful climax, his femcum squelching lewdly to soak the towel beneath you and your crotch, dripping down your balls.";
	say "     You don't stop fucking the cuntboy for a second. Growling bestially, you try to hold back your own orgasm while Ryan's cunt tries to milk you desperately for your seed. Your lover pants in pleasure, squirming in overstimulation, yet still he begs you for more, and that's exactly what you do, tirelessly pounding into his soft folds[if player is knotted], popping your knot in and out his battered pussy[end if]. It doesn't take too long to drive Ryan into another climax. 'Please cum this time, sir. I need it. Knock me up! Breed me!' he pleads — the poor boy sounds like he could cry if you don't. Luckily you're unable to resist this time, your balls drawing up tightly as you roar out your climax, triumphantly flooding Ryan's fertile womb with your seed[if player is knotted] and popping in your swollen knot one last time to ensure every drop of your load stays in your mate[end if].";
	WaitLineBreak;
	say "     Still, as soon as you can do so again, you slam your hips forward into Ryan, your mind going blank from the pleasure. Eventually, when you come back to your senses, you see that Ryan is sleeping and that you're still inside him. Pulling out of him, you admire the sight of his stretched, creamy cunny overflowing with your seed. Judging from the sky and how well-rested you feel, you must have fallen asleep at one point during your sex marathon. You can't remember much. Everything is a blur after the second orgasm. Though you hate to disturb your peacefully sleeping lover, you must be getting a move on before it gets too dark.";
	say "     Ryan yawns adorably as you wake him. 'Good morning, sir. I'm sorry, did I fall asleep? You were insatiable; I couldn't keep up! I'm still a bit weak,'  he exclaims, still quite sleepy, given he's just woken up. Smiling a bit smugly, you scoop your lovely fox into your arms, pat him on the head and tell him it's time to go home. 'Alright, sir, I'll be ready in a moment.' Ryan takes a few minutes to collect himself, shaking his fur free of sand and wiping off his still-dripping snatch with the beach towel. After a quick stretch, he's right as rain and ready to follow you. Your journey home is uneventful, the aura of confidence and power you have still riding the high of your public breeding with Ryan warding off any threats. Entering the library, you guide Ryan to the bed, where he flops down in apparent exhaustion. 'I'm still tired from the sex, and I'm not as used to traversing the city as you. It's a long walk from the library to here,' he mumbles. Kissing Ryan on the cheek, you leave him to rest, already looking forward to your next date.";
	NPCSexAftermath Ryan receives "OralCock" from Player;
	NPCSexAftermath Ryan receives "PussyFuck" from Player;
	follow the turnpass rule;

to say RyanTalk6:
	say "     Pulling a water bottle and some food from your pack, you offer them to Ryan. Smiling happily at your offerings, the lithe fennec graciously accepts your gift and pats lightly beside himself on the bed. 'Would you like to join me for a meal, sir?' he asks gently. Having some time to spare and not wanting to disappoint your mate, you lay on the bed beside Ryan and pull the fox close to you as you share a relaxing meal. Chatting pleasantly, [one of]Ryan leads the conversation as he excitedly tells you stories of his past college life[or]you lead the conversation, and Ryan listens with rapt attention to stories of your adventures around the city[at random]. Long after your food and drink have finished, you and Ryan lay cuddling and talking for quite some time, the short break with your loving fox reminding you why you continue to fight and survive in this crazy city.";
	SanBoost 16;
	PlayerEat 6;
	PlayerDrink 12;

Section 3 - Sex

instead of fucking Ryan:
	if lastfuck of Ryan - turns < 6:
		say "     Ryan looks up at you guiltily. 'Please give me a minute, sir! I won't be too long. I just need a couple of hours to recover,' he pleads. Feeling ashamed for stressing the poor fox and pushing for sex so soon after just fucking him, you quickly apologize and assure him that you can wait.";
	else:
		say "[RyanSexMenu]";

to say RyanSexMenu:
	if debugactive is 1:
		say "     DEBUG -> Ryan Sex Menu";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal";
		now sortorder entry is 1;
		now description entry is "Lift the fox onto your lap and feel his folds embrace you";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now sortorder entry is 2;
		now description entry is "Have Ryan suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fingering";
	now sortorder entry is 3;
	now description entry is "Finger the fennec's pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Cunnilingus";
	now sortorder entry is 4;
	now description entry is "Orally pleasure the fox";
	[]
	if Player is male and scalevalue of Player > 1:
	choose a blank row in table of fucking options;
	now title entry is "Use his Ears";
	now sortorder entry is 5;
	now description entry is "Masturbate with his sinfully-soft ears";
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
				if nam is "Vaginal":
					say "[RyanSex1]";
				else if nam is "Blowjob":
					say "[RyanSex2]";
				else if nam is "Fingering":
					say "[RyanSex3]";
				else if nam is "Cunnilingus":
					say "[RyanSex4]";
				else if nam is "Use his Ears":
					say "[RyanSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the fennec fox, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RyanSex1: [Vaginal]
	if debugactive is 1:
		say "     DEBUG -> Ryan Vaginal";
	say "     Grabbing Ryan gently, you tug down his panties and pull him into your lap, eager to get to the fun, and it seems he's just as excited as he grinds his dripping cunt against your cock. 'Fuck me, please, sir. I need it!' he begs, and you're more than happy to oblige. Grabbing his ass, you quickly sheath yourself in the cuntboy's warm wet pussy. Hugging you close, he gasps in pleasure as you push into him. He's just as tight as the first time you fucked him, the velvety walls of his folds squeezing around you wonderfully as you bounce him in your lap. The desert fox rests his head on your shoulders and moans whorishly with each buck into him. 'Please fill me with your kits, Sir. Breed me!' he whines into your ear, feral with lust. Eager to fulfill his demands, you thrust into Ryan's fertile pussy with unrestrained passion and unmatched desire, soon driving the slutty vulpine into a screaming climax, his juices lewdly squelching and running down your balls as you continue to pound into him. His claws dig into your skin as he orgasms, the sharp pain contrasting delightfully with the euphoric pleasure of his spasming cunt desperately trying to milk you for every drop of your cum, and succeeding as you join Ryan in a loud and fulfilling climax flooding his womb with your seed.";
	say "     Rolling away from each other, you both lie on the floor, panting. He surprises you again, straddling your hips and drawing you into a deep kiss while he rubs your balls with one hand and grinds his pussy onto your rapidly rising shaft. He begs, 'Please, sir, another round!' Ryan's time as a whore has dramatically improved his stamina, and he's ready for another fuck! His skillful grinding and hand, combined with the smell of his heat and arousal, make it an impossible offer to refuse. Growling bestially, you plunge back into the tod's leaking folds and get to work. After fucking the short fox long and hard two more times, you and he are finally satisfied. Proudly, you take in the sight of Ryan's sloppy pussy leaking your seed. Your cock twitches and you're nearly enticed into a fourth round as your fox teases you, flicking up his tail to further show off his creamy cunt leaking your seed. Smiling softly at you, the fennec coaxes you into some cuddles and kisses you softly as you both bask in the afterglow of your passionate romps. Sometime later, you reluctantly force yourself to part with your mate. Giving Ryan a gentle kiss, you promise to spend time with him again soon as you prepare to head back into the city.";
	NPCSexAftermath Ryan receives "PussyFuck" from Player;

to say RyanSex2: [Blowjob]
	if debugactive is 1:
		say "     DEBUG -> Ryan Blowjob";
	say "     Laying down on your bed, you grip your shaft and jerk off leisurely, smirking as Ryan can't help but stare in obvious hunger, entranced by your cock, snapping him out of his reverie. Seductively you ask whether your faithful fox would be willing to lend you a hand or a mouth. 'Of course, sir, I'm happy to service you,' the fennec scrambles to answer and sets himself between your legs. Wrapping a tentative paw around your meat, he starts slowly stroking you, then leans down to give long licks from your gonads to the tip of your cock, causing you to groan in pleasure. Seemingly emboldened by your reaction, Ryan finds his rhythm and begins to worship you in earnest. Drawing your balls into his mouth, the sexy fox thoroughly licks them, drooling over each nut, then releasing them to pepper quick licks and kisses all along your sack and the underside of your [cock of player ]shaft, making a show out of pleasuring you as he presses on last kiss to the head of your and cock gulps down you down to the balls and into his throat in one quick motion.";
	say "     You breathlessly praise Ryan, loudly moaning as he puts all of his skill into pleasing you. Humming pleasantly around your shaft as you praise him, your vulpine lover swallows around your cock, drawing out more loud moans from you as you reflexively hump into his mouth, your balls slapping slightly against your fennec lover's chin, quickly bobbing his head over your dick while expertly flicking his tongue over all your sensitive spots. It's not long before Ryan's experienced mouth pulls you into climax. You're barely able to groan out a warning as you cum down his throat, and your gentle vulpine thirstily gulps down every drop of your seed. Popping your cock from his muzzle, Ryan licks you clean and snuggles up to you as you reward his efforts with vigorous pets and vehement praise while you enjoy your post-orgasmic bliss. Regaining your energy, you enjoy cuddling with your mate for a spell before reluctantly separating from him, much to your mutual disappointment, as you prepare to head back into the city.";
	NPCSexAftermath Ryan receives "OralCock" from Player;

to say RyanSex3: [Fingering]
	if debugactive is 1:
		say "     DEBUG -> Ryan Fingering";
	say "     Running your eyes along Ryan's lithe form hungrily, you direct your dutiful fox to face the wall and spread his legs. 'Y-yes, Sir.' He eagerly complies with your request and quickly presents himself to you. Deciding to tease your fox a bit, you slowly walk up to him and slide down his soaked panties to feel up the nervous cuntboy. Rubbing the base of Ryan's tail, you flick and pinch his sensitive nipples while only giving fleeting strokes to his puffy snatch. Relentlessly you wind up the desert fox until he's squirming and begging desperately for your touch. 'O-oh God, sir, please, please, I need more!' you playfully chide him for his lack of patience before you show him mercy, sliding a finger into his dripping cunt, forcing a needy whine from the slutty fennec.";
	say "     Steadily, you pump your finger in and out of your mate's tightly gripping sex, speeding up you dip another finger into his and massage gently over his clit with your other hand as Ryan grows increasingly wet with arousal, his sodden cunt squelching lewdly with each rapid motion into him. At the same time, he struggles to keep himself standing, panting and trembling against the wall as you ruthlessly pleasure him. Leaning over the fox, you kiss him passionately as you drive him over the edge, the tod's juices soaking your hand and the floor beneath you as he finally collapses, limp from his powerful orgasm. Catching Ryan before he falls, you carry him towards your bed and gently lay him down while quietly praising him, earning a tired grin from your exhausted fox as you tell him all about how sexy he looked and how amazing he felt wrapped around you. Giving your mate a parting kiss on the cheek, you leave him to rest.";
	NPCSexAftermath Ryan receives "PussyDildoFuck" from Player

to say RyanSex4: [Cunnilingus]
	if debugactive is 1:
		say "     DEBUG -> Ryan Cunnilingus";
	say "     Breathing in deeply, you take in the scent of Ryan's heat. Constantly hovering around him, the fantastically arousing smell tempts you to take a hit right from the source as you slide onto the bed and between your fox's legs. He squeaks in surprise at your actions but makes no move to stop you as you slide down his panties and press your nose to his wet puffy pussy. So close to his slit, the smell of the fennec's arousal is intoxicating, emptying your head of any thought but worshiping his heated cunny. You start slowly and give a long lick along Ryan's nether lips to his sensitive clit drawing a low moan from the sexy fox as you savor the heavenly taste of his juices. The heady taste and smell of the fennec's muff has you painfully hard and reflexively humping your bed[if player is male], smearing your pre messily all over your sheets[else if player is female], smearing your juices messily all over your sheets[end if] in your desperation for stimulation, yet you daren't drag any of your attention away from your partner; instead, you only speed up your efforts pushing your tongue into his muff you lick noisily and moan alongside your fox as his pheromones drive you wild with lust.";
	say "     Your efforts are rewarded as Ryan screams in climax and, in a rare display of assertiveness, grabs your head to grind his muff roughly against your face and mouth, soaking you in his femcum. While he does this, your climax roars through you, your [if player is male]unattended cock throbbing against your stomach as you shoot your load against your body and the sheets[else if player is female]neglected pussy pulsing and quivering despite the absence of direct stimulation[else]loins spasming and stirring[end if], the fox's addictive pheromone and scent alone driving you into a hands-free climax. Ryan lets you continue your worship for some time, the both of you enjoying one more climax before he pushes you away. Separated from his sex, you lie panting, pussy drunk, and inundated in the sweet musky scent of his femcum. Eventually recovering from your cunt-induced stupor, you give Ryan a parting kiss and go to rest yourself with thoughts of your lovely fox's wet snatch and its exciting scent lingering long in your mind.";
	NPCSexAftermath Player receives "OralPussy" from Ryan;

to say RyanSex5: [Ear-job]
	if debugactive is 1:
		say "     DEBUG -> Ryan Earjob";
	say "     Ryan's ears flush as you make your suggestion. 'I'm sorry you want to use my ear for what' he gapes at your a moment before recovering. 'Umm... O-okay, sir, if that's what you want, I'm willing, but please be gentle. They're quite sensitive,' he stutters out a moment later, nervously rising to his feet. Due to his small size, you only have to bend a little to brush your cock against Ryan's big ears, drawing a short squeak from your lovely fennec. Gently grabbing his ears, you start by massaging Ryan, wanting to ease your tense mate running your fingers up and down the delicate membrane pulling a faint moan from your lover as you wrap him around your dick. Amazingly warm and soft, his ears are the perfect thing to rut against. Humping against that sinfully soft fluff, you tighten your grip and jerk yourself off with Ryan's downy ears dribbling all over his silky golden fur, each delicate hair dragging over your dick, drawing a moan from you as your balls sway to slap against your mate's face. Shifting tactics, you start teasing the tip of your cock with his ears sliding up and down his slick flesh, then grinding your cock against Ryan's face marking him with your pre before enfolding your dick again in his warm pelt.";
	say "     A wet tongue joins the pleasure of the velvety fuzz shrouded around your cock as Ryan moves to lick over your nuts, pressing his nose between them to inhale your musk. He laps and sucks eagerly at you until your balls glisten with his saliva while whining loudly as he slides down his panties to finger his soaking wet cunt. The slick wet noises of his self-pleasure and the sweet smell of his pheromones skyrocket your arousal. It's not too much longer until you climax, groaning as you shoot long ropes of your seed all across Ryan's face and ears, coinciding with your lover's orgasm as he shudders with pleasure soaking his hand and the floor beneath him with his sticky femcum. Panting slightly, you grab your bedsheets and move Ryan closer to use it as a cumrag wiping down your lover's face and ears. Not quite ready to leave yet, you cuddle with Ryan for a spell, kiss him farewell, then prepare to head back into the city.";


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ryan's Ending"	"NPC"	""	Ryan's Ending rule	900	false

This is Ryan's Ending rule:
	if hp of Ryan > 0:
		trigger ending "Fang's Epilogue";
		if humanity of Player < 20:
			say "     Succumbing to your infection, you wander for a while before you reach the bunker and pound into Ryan fucking him long and hard into multiple orgasms for hours. Your fennec mate was always careful to hold firm to his sanity, but in his current intense grief and lust, he can't bring himself to resist you. Crying softly, Ryan grabs your face and draws you into one last passionate kiss before he follows you into madness.";
		else:
			say "     When the rescue comes, you and Ryan are taken together and are briefly held for testing, but quickly you're both deemed safe and sane, then released as the military turns to more pressing matters. Reaching out to his well-off family Ryan manages to snag a large sum of money to start your new life together, finding a large lovely house to set yourselves in. You and your mate eagerly await the birth of your children and anticipate the breeding of many more.";

Ryan ends here.
