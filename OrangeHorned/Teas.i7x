Version 1 of Teas by OrangeHorned begins here.

[ HP of Teas            ]
[  0 - Not Met          ]
[  1 - Met              ]
[  2 - Trained With     ]
[  3 - Mention Artists  ]

[ Energy of Teas          ]
[  N - Last Turn Trained  ]

[ Loyalty of Teas             ]
[  0 - Not Asked About Plans  ]
[  1 - Mention Daddy          ]

Section 1 - Teas

Table of GameCharacterIDs (continued)
object	name
Teas	"Teas"

Teas is a man. [Man or woman. Does not determine genitals, just how the game treats the character's default gender. It's not that deep.]
Teas is in Encampment Bonfire.
ScaleValue of Teas is 5. [1 is teeny tiny. 2 is small. 3 is human sized. 4 is horse sized. 5 is absolutely massive.]
Body Weight of Teas is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Teas is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
Androginity of Teas is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Teas is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Teas is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Teas is 6. [length in inches]
Breast Size of Teas is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Teas is 2. [count of nipples]
Asshole Depth of Teas is 10. [inches deep for anal fucking]
Asshole Tightness of Teas is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Teas is 1. [number of cocks]
Cock Girth of Teas is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Teas is 10. [Length in Inches]
Ball Count of Teas is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Teas is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Teas is 0. [number of cunts]
Cunt Depth of Teas is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Teas is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Teas is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Teas is false. [Leave as false. The game will change this once you've used the "look" command on the npc. Can be used for things like knowing an npc's name, etc.]
PlayerRomanced of Teas is false. [Leave as false. You can change this to true later within events to have dialogue and scenes specific to "dating" an npc!]
PlayerFriended of Teas is false. [Same as above, but for friendship.]
PlayerControlled of Teas is false. [Same as above but for making a character your slave.]
PlayerFucked of Teas is false. [Leave as false. Changes to true when you have sex with a character.]
OralVirgin of Teas is false. [Self explanatory. Whether they've put their mouth on some genitals.]
Virgin of Teas is true. [Self explanatory. Vaginal virginity. Set to true or false based on your idea of a character. If they don't have it, leave it as true!]
AnalVirgin of Teas is false. [Same as above but for butts.]
PenileVirgin of Teas is false. [Same as above but for dicks.]
SexuallyExperienced of Teas is true. [How slutty a character is.]
TwistedCapacity of Teas is true. [Twisted Characters can take any penetration, no matter the size. Can be changed to allow you to make stomach bulging and other such scenes.]
Sterile of Teas is false. [steriles can't knock people up. Use to prevent pregnancies from a character.]
MainInfection of Teas is "Beag".
Description of Teas is "    What stands before you is a giant human-cow with a soft face and body that bears his scars proudly. Despite his stretched-out graphic t-shirt and hip-tied hoodie, you feel this man clearly dresses down to be approachable. Under his shirt, you can see a Pacific Island-looking tattoo that sits at his collarbone. At specific angles, you can see his covered cock hidden behind the hoodie. His muscles shine brightly under the bonfire and his gray fur is well kept. Despite being a beag, he's taller than the others you've seen, standing just as tall as a fathnach at around eight to ten feet. He sees you looking at his body and awkwardly shuffles his clothes.[line break]".
Scent of Teas is "     He smells like a sweet milk- one you could find in a convenience store- from proper care of himself. It makes you yearn to drink something as your sinuses find it hard to want to smell anything else... Maybe ask him for a hug.".
Icon of Teas is Figure of Teas_clothed_icon.

Energy of Teas is usually 255.

after going to Encampment Bonfire when HP of Teas is 0:
	say "     You take a few steps towards a light in the distance of the encampment tree, spotting a bonfire in the middle of a wet grass field covered in a fair bit of snow. Over yonder is at first what looks like a darker skinned man with a clavicle tattoo of Polynesian descent, carefully moving as he stays in an uncomfortable squat. His dance leads him to sway around- cow hooves digging into the ground to stabilize each step into what might be an hours-long gambit. So much so that he doesn't notice when he bumps into you. 'OH-'[line break]";
	say "     He stops himself, nearly smacking the nanites out of you but staying his hand in time. 'My bad, new person. You need to be careful stepping close to a man in the middle of an intensive training...' His ears flick around as he puts his hands to his hips. 'I don't know why but my heart's been aflame for a while of reports of certain people trying to seek this camp; the ferals have been relentless, especially with Knott's story of some demon asking about our whereabouts... I'm rambling, sorry. Who might you be?'";
	WaitLineBreak;
	say "     You introduce yourself. Despite how on guard he once was, he gives a genuine whole-hearted smile. 'I'm Teas, a community worker formerly helping most of the people here before the infection, still here helping however I can. If you see or deal with any threats or of anyone or anything that might threaten the firbolg camp, come to me.'";
	now HP of Teas is 1;

instead of conversing Teas:
	project Figure of Teas_clothed_icon;
	say "     'Oh, hey, little buddy.' Teas sees you coming closer to talk. 'Come to take a break from the city? I'm all ears.'";
	let Teas_Gab_Choices be a list of text;
	add "What's your story?" to Teas_Gab_Choices;
	add "Ask for training." to Teas_Gab_Choices;
	if Hunger of WeaselFirbolg is 2: [Weasel has disappeared from Blossom Yard]
		if Weasel_and_His_Fixer is resolved:
			add "Tell him about Weasel and Geimheal." to Teas_Gab_Choices;
		else:
			add "What happened to Weasel?" to Teas_Gab_Choices;
	add "What are your current plans?" to Teas_Gab_Choices;
	if Loyalty of Teas > 0: [he mentioned Daddy]
		add "Ask about Daddy." to Teas_Gab_Choices;
	if HP of Teas > 1: [player has trained with him]
		add "Ask about his worries." to Teas_Gab_Choices;
	if HP of WeaselFirbolg > 0 and Hunger of WeaselFirbolg < 2: [Weasel encountered in Blossom Yard]
		add "Ask him about why he's so angry at Weasel." to Teas_Gab_Choices;
	let Teas_Gab_Choice be what the player chooses from Teas_Gab_Choices;
	LineBreak;
	if Teas_Gab_Choice is:
		-- "What's your story?":
			say "     'Me? Ah, yeah, I'll keep it brief. I have lived experience with this kind of world- the darker side of humanity, it's natural to me. I... wasn't proud of myself now that I can look back at it. I've hurt a lot of people, but I have the capacity now to do better and give these people the way out they deserve.' As cryptic as he makes it sound, it seems he doesn't want to go in depth on it, but you guess it explains how he got the scars.";
		-- "Ask for training.":
			say "[TeasTrainingMenu]";
		-- "What happened to Weasel?":
			say "     'Sigh, to be frank, my little friend, there's a reason why you don't see many people around him- even before the apocalypse he wasn't the sort of crowd you wanted to be around.' He puts a firm hand on your shoulder. 'I know you want to help, but he isn't someone you can help by feeding their desires.' In concern, you ask him to elaborate. 'Well, since there isn't exactly [']HIPPA['] in an apocalypse, I'll just give the bare minimum: he's going to grab his [']fix['] with someone who was formerly a firbolg here, an orc hybrid named Geimheal. You're a strong one, but I will say if you do go looking for them please, whatever you do, DO NOT engage him. He's something I need to handle, and he is someone who will use any dirty trick in the book to get the advantage. He won't fight fair in any sense, leaving you to possibly be taken by the infected or worse.'";
			say "     Nodding your head, you solemnly realize you gave someone who is suffering from addiction the means to feed it.";
			now Weasel_and_His_Fixer is active;
		-- "Tell him about Weasel and Geimheal.":
			say "     You give him the uptake of what you saw; he doesn't bat an ear or eye to this, merely nodding and watching Weasel do what he does best: con people. 'It's alright, you didn't do this with the worst intentions, little friend. He needs a community, you know- you're almost like Giving in that regard,' Teas chuckles, teasing you for your puppy-dog kindness. It's at least comforting to know people like him are at the camp for those who need it the most. 'You're right about that- this was a homeless camp before all of this nonsense.'";
			now Hunger of WeaselFirbolg is 3;
		-- "What are your current plans?":
			say "     'Ah, mostly just keep this place protected. It's the only haven for so many uninfected humans. If it wasn't for the work of all these lovely people here, we likely would have been felled a while back... that and this place seems to weirdly not be... noticed, per se?' Teas brings you up to the gate; following him shows off the snowy forest surrounding this small little gated commune. 'Beautiful, ain't it? Far too cold for my liking but I've tried the beach- far too crowded.' With a brief silence he gazes at the forest line. 'I don't know why we only get sparse bits of those infected trying to come in, but it's almost as if this place is somehow calling to the uninfected to find grace here... Don't take my word as fact, though, little friend- Daddy might know more about that.'";
			if Loyalty of Teas is 0, now Loyalty of Teas is 1;
		-- "Ask about Daddy.":
			say "     'From my perspective, he was, I believe, the former lead of the company I was working for, probably one of the chillest guys you'd ever meet. Seen probably the most fucked up shit you can imagine and somehow still had the biggest bleeding heart. When the infection happened, he was the first one to start getting people together. But... my memory seems fogged; he tends to spend his time isolated in his little house.' Teas holds the back of his neck as his eyes look towards the direction of the alleged [']Daddy's Yurt[']. 'I'd not overthink it, little friend; after the whole influx of people coming here, he's been stacked with getting every firbolg around here on the same page. If you do good enough he will likely want to meet you.'";
		-- "Ask about his worries.":
			say "     'Well... since I know you more, I'll let you know, little friend. There are a group of infected artists that seem dead-set on capturing those who can't see the beauty of this apocalypse.' This is the first you've likely heard about [']artists[']; you inquire further on what he might mean. 'They are hunting around to make art out of the ferals. As far as what the people around me have been saying, they might be seeking our camp or anywhere there's pockets of those who are not mindless sex machines yet.' Another group to look out for in this city... Maybe Giving could tell you more.";
			if HP of Teas is 2, now HP of Teas is 3;
		-- "Ask him about why he's so angry at Weasel.":
			say "     'I don't know if you can tell yourself, but he's dealing with a... there's no term for it in the DSM yet, but he's suffering from the use of drugs[if Morale of WeaselFirbolg < 0].' You feel almost sick; the behavior you witnessed with him all starts connecting quickly- you helped him to feed his vices.[else].'[end if]";
			say "     Teas continues speaking on the matter of Weasel. 'Thing is, he's always been like this, even before the infection- he just traded hard drugs for orc cum. Which, I mean I'm glad he's not on narcotics anymore, but it doesn't help that he only just traded one thing for another. There was another firbolg here by the name of Geimheal that got him addicted to it; among other things it ended up forcing Daddy's hand in kicking him out. Just know that whenever you give him anything, he's likely running off to the [bold type]Capitol District[roman type] to trade with him.'";
			if Hunger of WeaselFirbolg is 0, now Hunger of WeaselFirbolg is 1;

to say TeasTrainingMenu:
	if Energy of Teas - turns < 8:
		say "     'So soon, aren't you worried about pulling something?' You are about to say you're ready to train again, but your chest tightens at the thought. Your muscles haven't had adequate time to rest. You have to begrudgingly say you'll come back later.";
	else:
		say "     'Looking to go from something small to being big and strong like a coral reef? Let's whip you into shape. What do you wish to do?' Teas points to a sign next to him with three things written on it.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Strength Training";
		now sortorder entry is 1;
		now description entry is "Do some high intensity workouts with your cow-coach";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Dexterity Training";
		now sortorder entry is 2;
		now description entry is "Do some jogging around camp for as long as your legs can carry you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Stamina Training";
		now sortorder entry is 3;
		now description entry is "Do some of Teas's favorite workouts";
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
					LineBreak;
					now sextablerun is 1;
					if title entry is:
						-- "Strength Training":
							say "[TeasStrengthTraining]";
						-- "Dexterity Training":
							say "[TeasDexterityTraining]";
						-- "Stamina Training":
							say "[TeasStaminaTraining]";
					now Energy of Teas is turns;
				if HP of Teas is 1, now HP of Teas is 2;
			else if calcnumber is 0:
				LineBreak;
				now sextablerun is 1;
				say "     You say you're not up to caliber for it at the moment. Teas's smile doesn't waver, rather it softens in understanding. 'As long as you're you, we will always have a next time.'";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], or 0 to exit.";
		wait for any key;
		clear the screen and hyperlink list;

to say TeasStrengthTraining:
	say "     You spend time endurance training with Teas, mostly consisting of high-intensity workouts with short cooldowns for a few hours. Teas helps make sure you have good form, ensuring you take proper breaths. 'Muscles can help you fight, but don't forget they can be used to help get you out of sticky situations, like moving heavy debris or pinning something down.' There are many ways to be strong, but you know from his gaze that he wants you to be strong enough to help others in this city. Your muscles eventually can't lift any more, your body unable to hold you upright";
	say "[TeasCooldownSex]";
	if strength of Player < 20, StatChange "Strength" by 1;

to say TeasDexterityTraining:
	say "     You spend time jogging around the camp, seeing all the sights. Keeping up with Teas is hard considering he always picks up more speed as soon as you are right behind him. Closer to the end of the fifth lap, Teas comes more alive than ever, the exercise somehow giving him more energy rather than less, 'C'mon, exercise helps melt that stress away- push all your doubts out to your legs and keep pushing to your limit, you can do it!' He was sprinting at top speed while your lungs are begging for you to take longer breaths";
	say "[TeasCooldownSex]";
	if dexterity of Player < 20, StatChange "Dexterity" by 1;

to say TeasStaminaTraining:
	say "     Teas makes you dance the hula for a long period of time, making you keep all your muscles engaged in a squat-like position. At first it isn't painful at all, but eventually the feeling of your muscles staying tense for hours quickly makes your entire body ache. Even if you weren't lifting or doing a jog, it's as if you were trying to do a plank for an hour. 'One of the things I'm proud about is that where I'm from we had a lot of classes for this; I love teaching people a little about my culture.' You go until you can't";
	say "[TeasCooldownSex]";
	if stamina of Player < 20, StatChange "Stamina" by 1;

to say TeasCooldownSex:
	if anallevel < 3:
		say ". Exhausted, you are unable to move a muscle as you lay on your back staring up at the sky. Teas leaves you to come back to normal breathing- you're definitely feeling this for the next few days.";
	else:
		say ". Exhausted, you are unable to move a muscle as you lay on your back staring up at the sky. Teas comes over to meet your eyes as you look up at his burly features. 'You know, all this body moving has me riled to [']cool down[']... wanna do something fun?'";
		if Player consents:
			project Figure of Teas_naked_icon;
			say "     You huff and lick at his musky hole, making your exhausted muscles feel brand new. As he puts a knee on a supporting pole- one leg standing, the other half-kneeling- the cowman moves his tail to show himself off at a better angle. The darker-bull's hole stares back at you with a shimmering coat of sweat, the cowman's body glistening in the light of the bonfire as he turns his head to watch you observing him. 'Firbolgs like me deal with a constant rut. Although it's easy to ignore, it just means I'm hungry to see what you're gonna do with me.'";
			say "     Pushing his cheeks out, he invites you to act on your desires. The bull loses himself with a vocal moo, throwing his cheeks out on your face, tail whipping into your head and neck as he pumps away from the stimulation. You even attempt escaping for air by putting your hands on his firm cheeks, but no luck can help you as your fingers can't grip at his soaked glutes.";
			WaitLineBreak;
			say "     With no way out, you delve deeper, huffing in his musk, making you sink further into his love-hole. Another flex of his bubbly cheeks makes you loudly yell deep into his depths for air. Instead what happens is he finally gets the release he wants, sighing loudly into the air as he comes ropes all over the grass. 'Ooooooh gods... you really know how to pleasure a man!' His tail whips on your back, your hands on his body as his hole finally loosens for you to fall back. The fresh, earthy air feels alien, your body taking a moment to get accustomed to normalcy once again. Even those fairly resistant to the nanites cannot resist a good rimming.";
			say "     'Great cooldown... let's do this again sometime.'";
		else:
			LineBreak;
			say "     'Totally fine, don't wanna break ya,' Teas chuckles as he leaves you to come back to normal breathing- you're definitely feeling that in the next few days.";

Section 2 - Sex

instead of fucking Teas:
	if lastfuck of Teas - turns < 6:
		project Figure of Teas_clothed_icon;
		say "     'Little friend, even soldiers need a moment to rest. Let's talk later, OK?'";
	else:
		project Figure of Teas_naked_icon;
		say "     Teas's tanned skin gets red in the face. 'My... to the point? What do you wish to do?'";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Body Worship";
		now sortorder entry is 1;
		now description entry is "Worship this magnificent cowman's body. He deserves it for all his hard work!";
		[]
		if Player is fpreg_ok:
			choose a blank row in table of fucking options;
			now title entry is "Breeding";
			now sortorder entry is 2;
			now description entry is "You want his cock- get some of it in you!";
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
				say "[title entry]: [description entry][line break]";
				if Player consents:
					LineBreak;
					now sextablerun is 1;
					if title entry is:
						-- "Body Worship":
							say "[TeasSex1]";
						-- "Breeding":
							say "[TeasSex2]";
					now lastfuck of Teas is turns;
			else if calcnumber is 0:
				LineBreak;
				now sextablerun is 1;
				say "     Teas sighs in relief as you back up from the invitation. 'It's not that I dislike sex, it's more that I feel you as a patient under me... I'd rather not break the trust you put in me.' For all the infected you see, the gentleman's response is something you have likely rarely heard.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], or 0 to exit.";
		wait for any key;
		clear the screen and hyperlink list;

to say TeasSex1: [Body Worship]
	say "     You tell the bull what you want to do with his body in descriptive detail, from fondling him down to slobbering your mouth on his giant flare. All of which he takes with great interest. 'Well, that's certainly a statement, but since you been good, who am I to deny what your mind's already been thinking about for a while~' Taking his shirt off starts the show with his giant pecs popping out at the same time, his tattoo finally showing itself off in full display. The tanned skin feels firm as your arms go to rub themselves all over his body, that robust physique making you question how could this man even be considered a cow when he's a bull?";
	say "     'Go on, why don't you have some fun? A reward for your resilience.";
	WaitLineBreak;
	say "     Moving down, you lick at his juicy thighs, your hands exploring every curve of muscle, fat and scar all in the right spots to rile your libido. On a smooth part of his skin, you lick at his godly physique- realizing too soon that the sweat on his body makes you even more awake than you once were as your brain feels zapped. 'There we go, your eyes are beaming with so much energy now. Consider this a cool down- I have something else for you.'";
	say "     Lowering himself down onto his knees, he puts one arm below both of his man tits, jiggling them slightly for you to latch on.";
	WaitLineBreak;
	say "     With proper signal, your mouth carefully takes one of the heated teats in your mouth. Your tongue tastes more of his manly residue before your entire mouth gets flooded with a zesty-sweet milk. Its creaminess makes you have to swallow it down multiple times to avoid choking. You're so focused on his chest that you don't see his facial expressions, only hear his laughter as he sees you trying your best. 'Despite being a beag, I developed some milk. It's delicious, no?' Your head can barely nod as you swallow down more, the taste and flavor being something you could never get anywhere else in this entire city. With his arm around your back, you're guided to stay latched on for what feels like hours, the exhaustion never setting in to make you pull back. It takes Teas tapping your head as a signal to finally pull away from his succulent body.";
	say "     'Sad that we can't keep doing this, but we can't stay attached like this for the whole day. Let's get back to it.'";
	PlayerDrink 15;
	if "Iron Stomach" is not listed in feats of Player, infect "Beag";

to say TeasSex2: [Breeding]
	say "     Teas looks at you, almost anxious. 'Look, I really don't want the artists to get their grip on you. I... can help you.' You question how, to which he shows off his cock. 'Maybe if I breed you far better than they ever could your mind won't ever succumb to them.' (Well, none of this is canon anyway beyond the breeding, so who really cares that deep about the premise beyond sex training?) Giddy to try his cock out, you follow in undressing yourself. He sits himself on the ground for you to crawl on top, smooching away at his plump lips.";
	say "     Both of you move off to the side, where other cowmen are making out with their fellow brothers; the sweaty pit at least gives you a slight bit of privacy as both of you finish getting undressed. 'See, when you're in the heat of the city, you're going to meet people who won't be as kind as I am- they will keep fucking you until you're nothing but a mindless feral. Let's train you to see how long you can last... against a frontal assault.'";
	WaitLineBreak;
	say "     His thick tongue slithers across your vaginal walls, your clit stimulated vigorously as you feel yourself uncontrollably moaning. Each breath feels harder as your lungs gasp deeply for more of their air to comprehend the pleasure. Just when you think it's done, he decides to pull his tongue out to begin fingering you with his middle and ring fingers, your hole more wet than before as you hear squelching liquid cover his fingers. 'You have to hold back your orgasms for as long as you can; otherwise, if the artists or other ferals get their hands on you, they won't bother listening to your pleas until you're one of them.'";
	say "     He pins you into the floor, removing his fingers and replacing them with his erect cock to slowly push in. What follows is a tryst that you never want to forget for as long as you live; the bull himself pushes down to the base. Even if his cock isn't as big as some other beags you've seen, it doesn't limit how much pleasure it gives you. The friction of the cock spearing your hole down to its base and pulling out has you whining in a matter of minutes. Your face is quickly stuffed between the tanned cowman's pecs, your ears muffled as your mouth and nose take in his scent. It takes a mere five thrusts for you to feel your clit on the brink. The nanites in your head are already doing as he predicted: telling you to quit resisting and get knocked up by a strong, virile mate. Even if your arms try to grip into his scarred body, you find no stable ground from the pleasure, no escape from your mind's carnal desire.";
	WaitLineBreak;
	say "     'Just... hold on... if you fail, I'll have to cum inside of you.' Teas speaks calmly to you- not once in this time has he moaned or whimpered. To him, this is all means of training you to take fat dick and survive the allure of a full pussy.";
	say "     But you crumble instantly, your entire body by the will of the nanites, the sweat in your mouth and the scent of his masculinity polluting your brain as well- all combine to have your head tilt back in ecstasy as everything goes white. You can't even care about how loud you're screaming, or how much your pussy is squirting over him as you surrender yourself completely and entirely.";
	WaitLineBreak;
	say "     Teas's thrusting pauses, his cock still lodged in as he gives you a moment to come down. As your eyes refocus, you see disappointment in his gaze. 'Well... I guess we have no choice then.' He quickly starts plowing inside of you at a fast pace, balls slapping into your ass until it's red. Your muff is climaxing again as he starts to shoot his thick load deep into your womb, leaving you all but no choice but to bear his children.";
	say "     'Let's train again sometime soon.' He dislodges himself, leaving you there to recover; you didn't ever think your brain could fathom that much pleasure and not cum- maybe this kind of training won't yield results, but you're sure the sensation of this man's baby growing deep within you will give you comfort as a pity prize.";
	NPCSexAftermath Player receives "PussyFuck" from Teas;
	if Player is fpreg_able, impregnate with "Beag";

Teas ends here.
