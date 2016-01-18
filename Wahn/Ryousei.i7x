Version 1 of Ryousei by Wahn begins here.

"Adds a Tiger NPC/pet named Ryousei to Flexible Survivals Wandering Monsters table"

[ RyouseiXerxes - Interaction with the human dog                          ]
[  0: never met                                                           ]
[  1: talked with the player about him                                    ]
[  2: fucked Xerxes                                                       ]

[ RyouseiHayato - Interaction with Hayato                                 ]
[  0: never met                                                           ]
[  1: talked with the player about him                                    ]

RyouseiXerxes is a number that varies.
RyouseiHayato is a number that varies.

when play begins:
	add { "Royal Tiger" } to infections of guy;
	add { "Royal Tiger" } to infections of furry;
	add { "Royal Tiger" } to infections of Felinelist;

RTWinCounter is a number that varies. 

Section 1 - Meeting Event

instead of going northwest from Park Trail while (level of player > 10 and RTWinCounter is 0):
	move player to Shinto Shrine;
	if debugactive is 1:
		say "     DEBUG -> RYOUSEI SHRINE MEETING <- DEBUG [line break]";
	say "     Passing the last tall bamboo plants, you realize that there's already someone at the shrine. A muscular male tiger is kneeling before the large mirror disc forming the center of the shrine, dressed in a traditional Japanese kimono. A long striped tail gently waves through the air behind him as the being murmurs to the shrine, then eventually puts his hands together and bows before it. After finishing his prayer, the tiger rises to his feet, standing imposingly tall with a quite regal bearing.";
	say "     'Hajimemashite, stranger. I was just finished...' he says, indicating the spot in front of the shrine with a flourish of his clawed hand. 'It is... refreshing, to see that not all creatures in this land are base beasts. Maybe there is still hope for this nether-realm. So don't let me stand in your way to enlightenment - but before I go, know that you have met Ryousei, first general of the mighty shogun Aki. Which I will be again, once I have escaped this banishment plane.' And with that, the tiger brushes past you without waiting for a reply, walking over the gravel path to the rest of the park and leaving you standing alone at the Shinto shrine.";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Royal Tiger":
			now monster is y;
			now area entry is "Park";
			break;
	now RTWinCounter is 1;

Section 2 - Monster Responses

to say RTiger wins:
	say "     As you collapse at his feet, the muscled tiger looks down upon you with a sigh. 'A pity that you lost so easily, even though I held back quite a bit. I really thought you had more potential. Maybe it's just not your day today, hm? Let's try this again when you've had time to recuperate and... train a bit.' Ryousei folds his hands and gives a little bow to you, then calmly walks off along the forest path.";

to say RTiger loses:
	if RTWinCounter < 6:
		increase RTWinCounter by 1;
	if RTWinCounter is:
		-- 2:
			say "     Despite still looking like he could keep doing this all day, the muscled tiger suddenly takes a step back from you, interrupting the fight between you two. He puts the palms of his hands together and gives a little bow to you, then says, 'Well done, stranger. You're a promising fighter and it was a pleasure to trade blows with you. Far better than all those weaklings out and about who just throw themselves at me, ruled by their primitive urges.' Smiling, he adds, 'The workout has made me hungry, so I'm off to find something to eat, but... let's do this again sometime. I'll be looking forward to the next time we meet.' With that said, he walks off, leaving you alone on the forest path when he turns a corner just a moment later.";
		-- 3:	
			say "     Despite still looking like he could keep doing this all day, the muscled tiger suddenly takes a step back from you, interrupting the fight between you two. He puts the palms of his hands together and gives a little bow to you, then says, 'You've beaten me a second time. Well done, stranger - it's always a pleasure to trade blows with such a promising fighter. You're far better than all those weaklings out and about who just throw themselves at me, ruled by their primitive urges.' Smiling, he adds, 'The workout has made me hungry, so I'm off to find something to eat, but... let's do this again sometime. I'll be looking forward to the next time we meet.' With that said, he walks off, leaving you alone on the forest path when he turns a corner just a moment later.";
		-- 4:	
			say "     Despite still looking like he could keep doing this all day, the muscled tiger suddenly takes a step back from you, interrupting the fight between you two. He puts the palms of his hands together and gives a little bow to you, then says, 'Third time's the charm, my friend. I have to say I'm really enjoying our little clashes. I knew from the start you'd be a better opponent than those mindlessly ravishing beasts your world seems to be populated with.' Smiling, he adds, 'The workout has made me hungry, so I'm off to find something to eat, but... let's do this again sometime. I'll be looking forward to the next time we meet.' With that said, he walks off, leaving you alone on the forest path when he turns a corner just a moment later.";
		-- 5:	
			say "     Despite still looking like he could keep doing this all day, the muscled tiger suddenly takes a step back from you, interrupting the fight between you two. He puts the palms of his hands together and gives a little bow to you, then says, 'And again you've won our little sparring duel, my friend. I find myself impressed, truly. I knew from the start you'd be a better opponent than those mindlessly ravishing beasts your world seems to be populated with - but now you've really proven yourself.' Smiling, he adds, 'The workout has made me hungry, so I'm off to find something to eat, but... let's do this again sometime. I'll be looking forward to the next time we meet.' With that said, he walks off, leaving you alone on the forest path when he turns a corner just a moment later.";
		-- 6:	
			say "     Despite still looking like he could keep doing this all day, the muscled tiger suddenly takes a step back from you, interrupting the fight between you two. He puts the palms of his hands together and gives a little bow to you, then says, 'You know what... since I'm having so much fun with you - how about we travel together for a while? With the prowess you've proven to me time and again, I'm sure you're having grand adventures that I'd love to take part in!' Smiling, he adds, 'I'll leave you to think about it for a while - but if you accept, you can just use a little magic to reach me. Just focus your mind on my image, then intone 'Watashi wa anata ni yonde, Ryousei'. I will meet you as soon as I am able.' With that said, he walks off, leaving you alone on the forest path when he turns a corner just a moment later.";
			say "(Ryousei, the royal tiger is now tamed! You can make him your active pet by typing [bold type]pet royal tiger[roman type]. You can see all the pets you have tamed with the [bold type]pet[roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type]pet dismiss[roman type], or just [bold type]dismiss[roman type])[line break]";
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Royal Tiger":
					now monster is y;
					now area entry is "Nowhere";
					break;
			now royal tiger is tamed;

to say RTigerDesc:
	say "     Walking along one of the overgrown paths of the park, you meet Ryousei the tiger general, coming the other way. The muscled being gives you a a nod in greeting, then says, 'You again. Good, good - I'd been getting bored with the pretty lacking challenge of the creatures roaming this forest.' He unsheathes his claws and makes a ritualistic-seeming gesture, then relaxes his fingers again to let the pointy sickles slide into resting positions. 'There - a friendly duel has been declared. But no worries - I'll just knock you around a bit - no claws, see!' Giving a wiggle of his fingers in front of his confidently smiling face, the tiger then rushes at you to attack.";

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Royal Tiger"; [Name of your new Monster]
	now attack entry is "[one of]Ryousei gives you a lightning-quick side kick with his clawed foot - leaving you bruised but taking care not to slash you.[or]The muscled tiger punches you in the face with his open palm, stunning you for a second.[or]A hard chop of Ryousei's hand has you holding a hurting forearm a moment later.[at random]";
	now defeated entry is "[RTiger loses]";
	now victory entry is  "[RTiger wins]";
	now desc entry is "[RTigerDesc]";	
	now face entry is "beautiful tiger-like visage, its short muzzle and feline eyes giving your features an exotic predatory cast. Your slightly rounded furry ears complete the look, creating the perfect blend of human and tiger features in your ";
	now body entry is "lean and lined with corded muscle. It has an interesting hybrid look, as you balance easily on digitigrade tiger paws, while your hands are still almost human, just having small claws tipping each finger";
	now skin entry is "[one of]tiger striped[or]tiger furred[or]soft furred[or]orange and black striped[at random]";
	now tail entry is "You have a long tiger-like tail extending from just above your ass, lashing back and forth in excitement with every movement.";
	now cock entry is "[one of]feline[or]Tiger[or]barbed[at random]";
	now face change entry is "a pleasurable stretching sensation comes over your face, as your teeth begin to sharpen and length, and your jaw extends outward and the muscles rearrange themselves into the powerful configuration of a tiger. Your nose twitches as it flattens out, newly discovered scents washing over you as it merges into your new muzzle. From one eye-blink to the next, your view shifts to now come though slitted catlike pupils, and your ears finishing their adjustment to their new place on top of your head";
	now body change entry is "muscles tighten underneath your skin, twisting and cording and arranging themselves in a more feline manner. You stumble as your legs shift underneath you, their ankles stretching upwards as your feet expand and change, shifting your balance to the balls of new paw-like feet while the rest of the leg rearranges itself into a partially digitigrade stance, causing you to lean forward slightly";
	now skin change entry is "it shudders and seems to shift on its own, thick orange and black tiger fur pushing out in soft pleasurable waves of change all over your body";
	now ass change entry is "it grows firm and muscled, and a long sleek tiger tail erupts outwards from your tailbone. Soon completing its growth, it starts lashing around behind you in long natural motions, almost feeling as if it had always been a part of you";
	now cock change entry is "it shifts and tapers to a soft point, short nubby barbs slowly sprouting along the shaft neat the head. The skin of your belly and crotch stretches out to pull the feline cock up close to your body, and wraps it in a proper furry tiger[']s sheath.";
	now str entry is 22;
	now dex entry is 18;
	now sta entry is 24;
	now per entry is 16;
	now int entry is 14;
	now cha entry is 16;
	now sex entry is "Male";
	now hp entry is 95;
	now lev entry is 13;
	now wdam entry is 10;
	now area entry is "Nowhere";              [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;                     [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12;              [ Length infection will make cock grow to if cocks]
	now cock width entry is 8;                [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;                   [ Number of Breasts infection will give you. ]
	now breast size entry is 0;               [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;          [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                     [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;               [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;                [ Width of female sex  infection will try and give you ] 
	now libido entry is 10;                   [ Amount player Libido will go up if defeated ]
	now loot entry is "";                     [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;                [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                     [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "muscled";   [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "feline";               [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                 [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;             [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;        [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;            [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";         [ Row used to designate any special combat features, "default" for standard combat. ]

Section 4 - NPC/Pet

royal tiger is a pet.  royal tiger is a part of the player.
understand "Ryousei" as royal tiger.
The description of royal tiger is "[RyouseiDesc]".
The weapon damage of royal tiger is 10.
The level of royal tiger is 13.
The Dexterity of royal tiger is 18.
The summondesc of royal tiger is "     Calling out the words, 'Watashi wa anata ni yonde, Ryousei,' you wait expectantly, and in a little swirl of blue energy, the muscled tiger indeed appears before you. He puts the palms of his hands together and gives a little bow to you, then says, '[if daytimer is day]Konnichiwa[otherwise]Konbanwa[end if], my friend. It is good that you have chosen to let me share your path. Onwards then, to grand adventures!' With that said, the proud tiger takes position by your side, ready to support you in what fights lie ahead.".
The assault of royal tiger is "[one of]Ryousei wades into the fight with sure strides, swiping his claws to hurt your enemy at a critical moment.[or]The royal tiger charges into combat, roaring at your opponent and making them back down a step.[or]A growled roar by Ryousei distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, your royal tiger companion slashes your enemy with his claws![at random]".
the fuckscene of royal tiger is "[sexwithRyousei]".

to say RyouseiDesc:
	say "     Ryousei is an anthro tiger - and not just any tiger, but a magnificent example of his species. Standing quite tall and strong, corded muscles ripple under his luscious, well-groomed fur and he has an undeniable air of confidence and power around him. Truly, if there is royalty among tiger-folk, this is it. Something in his proud bearing and in the somewhat out of place mannerisms he often uses tells you that this male really isn't a transformed human, but came here from someplace else. He wears an exceedingly well made blue kimono, consisting of smooth, very durable fabric.";
	say "     The tiger gives you a companionable nod a he notices your attention. Seems like he's more than ready to chat - or do other things with you.";
	
instead of sniffing royal tiger:
	say "     There is a hint of sandalwood underlying the scent of Ryousei's clean fur.";

instead of conversing royal tiger:
	say "[RyouseiTalkMenu]";

to say RyouseiTalkMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about becoming a tiger";
	now sortorder entry is 1;
	now description entry is "Tell the proud tiger you want to be like him";
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
				if (nam is "Ask him about becoming a tiger"):
					say "[RyouseiTalk1]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the royal tiger, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say RyouseiTalk1:
	say "     Ryousei looks at you with surprise on his face and strokes his furry chin. 'You want to... be like me? This strange world still surprises me, no matter how many creatures I see change before my very eyes. But if that is your custom, I am willing to help. May bringing more tiger-folk into this place lead to greater wisdom and restraint. Your native beasts certainly lack both.' With that, he curls his clawed fingers, looking at the cup of his hand in intense concentration, then suddenly presses his palm flat against your chest. 'There, that should do it from what I've observed.'";
	infect "Royal Tiger";

to say sexwithRyousei:
	say "     As you approach the proud tiger with your offer of sex, Ryousei smiles, showing his quite impressive fangs. 'So you didn't just want me as your companion in fights, did you. Very well - I'd be more than happy to. One takes what pleasure there is on a campaign, and I'm no stranger to sharing a bed with those soldiers who earned my respect, be they male or female.' His gaze wanders up and down over your form, and the anthro tiger reaches out to caress your arm.";
	say "[RyouseiSexMenu]";

to say RyouseiSexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get fucked in the ass by Ryousei";
	now sortorder entry is 1;
	now description entry is "Ask the proud tiger to fuck you";
	[]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Take Ryousei's shaftin your pussy";
		now sortorder entry is 2;
		now description entry is "Ask the proud tiger to fuck you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck the proud anthro tiger off";
	now sortorder entry is 2;
	now description entry is "Kneel down and get your lips around that shapely dick of his";
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
				if (nam is "Get fucked in the ass by Ryousei"):
					say "[RyouseiSex1]";
				if (nam is "Take Ryousei's shaftin your pussy"):
					say "[RyouseiSex2]";
				if (nam is "Suck the proud anthro tiger off"):
					say "[RyouseiSex3]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the royal tiger, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say RyouseiSex1: [player gets fucked in the ass]
	setmonster "Royal Tiger";
	choose row monster from the table of random critters;	
	say "     Letting Ryousei take the lead, you lean into his touch as he puts his arms around you, drawing you close against his furred body. He feels warm and soft against your skin, yet with a rock-solid firmness underneath, speaking of many years of hard martial training. Towards you, he's showing his gentler side right now, caressing your shoulders and back with strong hands, while at the same time lowering his head to yours. Meeting his muzzle, you're drawn into a long kiss, with his tongue wrestling pleasurably with your own. A rumbling purr from his broad chest vibrates through and through your body, putting you into a very relaxed, open state. 'I want to be inside you,' Ryousei grunts lustily as he draws back for a breather, then starts to slide his hands under your clothes and pulls them off.";
	say "     Eager to feel his touch, you readily help the anthro tiger to strip you, then watch as he himself quickly shrugs out of the kimono he wears. Putting an arm around you, Ryousei then moves to gently lower your naked form on top of the resulting small pile of discarded clothing, giving you a soft place to lie as he leans over you. The tiger general makes out with you for a quite pleasurable time before he eventually brings up a hand to lick over his fingers with broad swipes of his tongue. Once he has got his fingers nice and wet, the purring tiger moves them down between your legs and brushes teasingly over your pucker, then starts to worm a slick finger in against the clenched muscle, gaining entry after just a short moment of reflexive resistance from your body.";
	say "     [WaitLineBreak]";
	say "     Your feline companion wasn't kidding when he said he did have experience in these matters too - as he knows just how to wiggle his probing digit and where to brush against very sensitive spots deep inside your body. With a single finger, he drives you to breathless arousal, writhing on top of your improvised bedding as [if cunts of player > 0 and cocks of player is 0]your pussy gets very wet an swollen, ready for more.[otherwise if cocks of player > 0]your cock goes rock hard and starts to drip with pre-cum.[otherwise]feelings of intense pleasure wash over you.[end if] 'It is time, prepare yourself,' the muscled tiger tells you as he lines up the pointy tip of his feline shaft with your back door, then leans in and gives your neck a long lick with his somewhat rough tongue. Suddenly, Ryousei nips the bend between your neck and shoulder a little with his sharp canines - and the unexpected sensation distracts you in just the moment he thrusts his hips against you, sinking the spined shaft between his legs deep.";
	say "     Giving you a moment to get used to his cock, now that the initial penetration is over, the broad-shouldered tiger laps soothingly over the little marks his teeth left on your skin, 'Best to get the hard part over quick, you know.' He mrowls in lust, then kisses you full on the mouth before adding, 'Mmmh, you feel great - so warm and tight.' And with that, he pulls back a tiny bit, causing the nubby spines on his erection to brush your inner walls in an explosion of pleasure that sears through your mind, followed by another hard thrust that pushes even deeper into you. You writhe in lust and clutch the clothing under you with both hands as he works more and more of his shaft into you with sure movements, then finally the soft fur on his balls brushes against your crotch. He's all the way inside.";
	say "     [WaitLineBreak]";
	say "     With Ryousei's mighty spear filling you out very nicely, you can feel the throb of his heartbeat pulse against your passage. It makes the many spines along his shaft's length rub you in tiny but still quite pleasant ways, increasing your arousal even while he's holding still otherwise. But that's not the only way the big feline makes your coupling a thing to remember for both of you - [if cunts of player > 0 and cocks of player is 0]his hand seeks out your pussy and caresses it, soon sinking two fingers in between your folds and rubbing your sensitive clit with his thumb. [otherwise if cocks of player > 0]his hand seeks out your own hard shaft, encircling it in a firm grip and jerking up and down in a steady pace. [otherwise]his hand seeks out your smooth crotch, brushing over the sensitive skin in stimulating movements. [end if]Then Ryousei starts to move in and out of your back passage, fucking you with long strokes that leave you gasping and moaning with each new pull and thrust.";
	say "     For you don't know how long, you forget all about the city, the nanites, everything that is going on - your whole world instead being the warm furry shape on top of you, the sensations of him moving against you - and inside you. Bliss fills your being as one intense touch and stimulation follows the next - the many little spines brushing your inner walls, a wet tongue lapping over your nipples, then the tiger's gentle bite and suck on them, his fingers on your crotch, ... eventually all of those combined push you past your limit, and in a wave of lust you scream out as your climax breaks and [if cunts of player > 0 and cocks of player is 0]a gush of femcum drenches your partner's rubbing fingers. He brings them up to his muzzle to suck your sweet juices off, then intensifies the movement of his hips, eager to join you in orgasm. [otherwise if cocks of player > 0]the [cock of player] erection in your partner's hand pulses as spurt after spurt of cum sprays all over your chest. He swipes a good bit up with his fingers and brings them up to his muzzle, sucking your seed off and swallowing it, then intensifies the movement of his hips, eager to join you in orgasm. [otherwise]your whole body trembles in completion. He puts his hand on your chest, taking a moment to feel your movements as you come, then intensifies the movement of his hips, eager to join you in orgasm.[end if]";
	say "     [WaitLineBreak]";
	say "     Ryousei pounds into you hard and deep, making the virile orbs under his shaft thud against you in a rapid pace. Having brought you to completion, he takes out all the stops and fully gives in to the mating urges of a wild tiger, bellowing out possessive roars as he sinks into his willing partner again and again. No longer content to just take you as you lie under him, the tiger general even puts his arms around you, pulling you and holding you as he grinds against your hips with you on his lap. Given the furious pace of his rutting against you, it is no wonder that the anthro feline soon reaches his own climax. He drives his pointy shaft all the way into you one last time, then lets loose a massive spurt of his creamy seed, painting your insides white. And then another, and another. A deep rumbling purr starts to resound in the depth of Ryousei's chest as he rides out the orgasm, panting breathlessly as he breeds your ass.[mimpregchance]";
	say "     With both of your lust's satisfied for now, Ryousei nevertheless keeps his arms around you and strokes your skin gently. He makes no move to withdraw his cock, keeping its slowly softening shape inside you as if to prolong your intimate moment as long as he can. Then, after giving your chest another long lick and breathing in your scent deeply, he says, 'Being your companion makes the time on this wretched world bearable, even... pleasant, at times. I want you to think about what you'll do when I eventually find my way back home. Would you accompany me, leave this place? My army needs people like you - strong and dependable. There will be hardship, but also rewards...' He squeezes your shoulder with one hand, mrowling as his manhood throbs inside you again, then finally pulls out and reaches for his kimono. 'Don't answer now, it's moot until I can open a portal anyways. Just... think about it,' he says, then moves away a bit to groom his fur into its usual impeccable state and get dressed.";

to say RyouseiSex2: [player gets fucked in the pussy]
	setmonster "Royal Tiger";
	choose row monster from the table of random critters;	
	say "     Letting Ryousei take the lead, you lean into his touch as he puts his arms around you, drawing you close against his furred body. He feels warm and soft against your skin, yet with a rock-solid firmness underneath, speaking of many years of hard martial training. Towards you, he's showing his gentler side right now, caressing your shoulders and back with strong hands, while at the same time lowering his head to yours. Meeting his muzzle, you're drawn into a long kiss, with his tongue wrestling pleasurably with your own. A rumbling purr from his broad chest vibrates through and through your body, putting you into a very relaxed, open state. 'I want to be inside you,' Ryousei grunts lustily as he draws back for a breather, then starts to slide his hands under your clothes and pulls them off.";
	say "     Eager to feel his touch, you readily help the anthro tiger to strip you, then watch as he himself quickly shrugs out of the kimono he wears. Putting an arm around you, Ryousei then moves to gently lower your naked form on top of the resulting small pile of discarded clothing, giving you a soft place to lie as he leans over you. The tiger general makes out with you for a quite pleasurable time before he eventually brings up a hand to lick over his fingers with broad swipes of his tongue. Once he has got his fingers nice and wet, the purring tiger moves them down between your legs and brushes teasingly over your nether lips, then starts to focus on your lit, rubbing it with a gentle, steady touch. Man, that feels good. You can't help but squirm and tremble under his touch, straining to raise your hips towards him - and the tiger reacts to your unvoiced invitation, sliding two fingers into your pussy a moment later.";
	say "     [WaitLineBreak]";
	say "     Your feline companion wasn't kidding when he said he did have experience in these matters too - as he knows just how to wiggle his probing digits and where to brush against very sensitive spots deep inside your body. With a single finger on the magic button of your clit, he proceeds to drive you to breathless arousal, writhing on top of your improvised bedding as [if cunts of player > 0 and cocks of player is 0]your pussy gets very wet an swollen, ready for more.[otherwise if cocks of player > 0]your cock goes rock hard and starts to drip with pre-cum.[otherwise]feelings of intense pleasure wash over you.[end if] 'It is time, prepare yourself,' the muscled tiger tells you as he lines up the pointy tip of his feline shaft with your pussy, then leans in and gives your neck a long lick with his somewhat rough tongue. Suddenly, Ryousei nips the bend between your neck and shoulder a little with his sharp canines - and the unexpected sensation distracts you in just the moment he thrusts his hips against you, sinking the spined shaft between his legs deep.";
	say "     Giving you a moment to get used to his cock, now that the initial penetration is over, the broad-shouldered tiger laps soothingly over the little marks his teeth left on your skin, 'Best to get the first moments over quick, you know. Spines on a cock may look scary, but once my partners actually felt them... let's just say I've had no complaints. None.' He mrowls in lust, then kisses you full on the mouth before adding, 'Mmmh, you feel great - so warm and tight.' And with that, he pulls back a tiny bit, causing the nubby spines on his erection to brush your inner walls in an explosion of pleasure that sears through your mind, followed by another hard thrust that pushes even deeper into you. You writhe in lust and clutch the clothing under you with both hands as he works more and more of his shaft into you with sure movements, then finally the soft fur on his balls brushes against your crotch. He's all the way inside.";
	say "     [WaitLineBreak]";
	say "     With Ryousei's mighty spear filling you out very nicely, you can feel the throb of his heartbeat pulse against your passage. It makes the many spines along his shaft's length rub you in tiny but still quite pleasant ways, increasing your arousal even while he's holding still otherwise. But that's not the only way the big feline makes your coupling a thing to remember for both of you - as his hand never leaves your clit, instead circling and rubbing, even while he is busy pushing his cock into you. Then Ryousei starts to move in and out of your passage, fucking you with long strokes that leave you gasping and moaning with each new pull and thrust.";
	say "     For you don't know how long, you forget all about the city, the nanites, everything that is going on - your whole world instead being the warm furry shape on top of you, the sensations of him moving against you - and inside you. Bliss fills your being as one intense touch and stimulation follows the next - the many little spines brushing your inner walls, a wet tongue lapping over your nipples, then the tiger's gentle bite and suck on them, his fingers on your crotch, ... eventually all of those combined push you past your limit, and in a wave of lust you scream out as your climax breaks and [if cunts of player > 0 and cocks of player is 0]a gush of femcum drenches your partner's rubbing fingers. He brings them up to his muzzle to suck your sweet juices off, then intensifies the movement of his hips, eager to join you in orgasm. [otherwise if cocks of player > 0]the [cock of player] erection standing upright above your pussy pulses as spurt after spurt of cum sprays all over your chest. Ryousei swipes a good bit up with his fingers and brings them up to his muzzle, sucking your seed off and swallowing it, then intensifies the movement of his hips, eager to join you in orgasm. [otherwise]your whole body trembles in completion. He puts his hand on your chest, taking a moment to feel your movements as you come, then intensifies the movement of his hips, eager to join you in orgasm.[end if]";
	say "     [WaitLineBreak]";
	say "     Ryousei pounds into you hard and deep, making the virile orbs under his shaft thud against you in a rapid pace. Having brought you to completion, he takes out all the stops and fully gives in to the mating urges of a wild tiger, bellowing out possessive roars as he sinks into his willing partner again and again. No longer content to just take you as you lie under him, the tiger general even puts his arms around you, pulling you and holding you as he grinds against your hips with you on his lap. Given the furious pace of his rutting against you, it is no wonder that the anthro feline soon reaches his own climax. He drives his pointy shaft all the way into you one last time, then lets loose a massive spurt of his creamy seed, painting your insides white. And then another, and another. A deep rumbling purr starts to resound in the depth of Ryousei's chest as he rides out the orgasm, panting breathlessly as he breeds you.[impregchance]";
	say "     With both of your lust's satisfied for now, Ryousei nevertheless keeps his arms around you and strokes your skin gently. He makes no move to withdraw his cock, keeping its slowly softening shape inside you as if to prolong your intimate moment as long as he can. Then, after giving your chest another long lick and breathing in your scent deeply, he says, 'Being your companion makes the time on this wretched world bearable, even... pleasant, at times. I want you to think about what you'll do when I eventually find my way back home. Would you accompany me, leave this place? My army needs people like you - strong and dependable. There will be hardship, but also rewards...' He squeezes your shoulder with one hand, mrowling as his manhood throbs inside you again, then finally pulls out and reaches for his kimono. 'Don't answer now, it's moot until I can open a portal anyways. Just... think about it,' he says, then moves away a bit to groom his fur into its usual impeccable state and get dressed.";	

to say RyouseiSex3: [player goes down on Ryousei's dick]
	setmonster "Royal Tiger";
	choose row monster from the table of random critters;	
	say "     Taking the lead, you slide a hand through the soft, mid-length fur on the back of his neck and hook it behind his head, drawing the statuesque tiger to you to meet his muzzle with your mouth. A deep purr rumbles in the depth of his throat as Ryousei eagerly gives in to the kiss, opening his muzzle to let his tongue wrestle with yours. Your other arm more or less automatically slides around his side, holding on to the muscled form of the tall cat. He feels warm and soft against your skin, yet with a rock-solid firmness underneath, speaking of many years of hard martial training. Towards you, he's showing his gentler side right now, caressing your shoulders and back with strong hands, while at the same time lowering his head to yours. The rumbling purr from his broad chest vibrates through and through your body, putting you into a very relaxed, open state. 'You're one sexy being - a shining star in this dreary place,' Ryousei grunts lustily as you draw back for a breather.";
	say "     Eager to touch the tiger and take care of him, your hands move to his hips and pull away the cloth belt bound around them. As the knot of fabric at the front is undone, it falls to the ground, leaving Ryousei's kimono to be pulled open by you. Doing so, you reveal the muscled tiger's cream-colored front, its glorious fur short enough to let his impressive physique show clearly - muscled pecs and rock hard abs above the longer fur of his pubes, nestled around a proper feline sheath from which his rigid cock protudes, hard and ready for you. Very well sized even for a large being such as Ryousei, the erection stands straight out, thick and weighty above his dangling furry balls. It tapers sharply near the end, coming to a point that promised many interesting sensations - as do the numerous small, nubby spines along its shaft. You can't help but want to touch it, so you do - fingers closing around the firm length and feeling over the spines, finding them pretty soft, with just enough rigidity to rub someone in a very very right way when they get fucked by Ryousei.";
	say "     [WaitLineBreak]";
	say "     'Do you like it?' the big tiger asks, continuing with, 'Even many denizens of my own plane get a bit frightened when they lay eyes on a tiger's manhood and... nnnngghhh!' Squeezing his cock and giving it an appreciative jerk, you tell your feline companion in an unmistakeable way that you have absolutely no problem with his cock. And to follow up on that, you sink to your knees with a wide grin, then lap at the underside of his cockhead. A drawn-out mrowl comes from Ryousei and he strokes your head when you lick him a few times (with the direction of the spines, not against). Then you close your lips around his cockhead and start to suck, while both your hands are busy fondling Ryousei's balls as well as his shaft.";
	say "     Moans and grunts fill your surroundings, underlaid by purring loud enough the resemble an idling motor as you go down on your otherworldly companion. Being on the receiving end of your dedicated oral attention, Ryousei's arousal grows in leaps and bounds and before all that long, he gasps out in an urgent tone, 'You're quite good at this. I'm gonna come soon.' In reply, you just suck harder, and just a few moments later are rewarded with a spurt of warm and creamy cum, spurting in a tasty streak over your tongue. Then another follows, and another, prompting you to swallow his load quickly to be ready for even more cum to come. And so you gobble up every last drop of the tiger's seed, filling your stomach with the rich bounty his balls churn out. Eventually, the spurts ebb and your friend puts a restraining hand on your shoulder.";
	say "     [WaitLineBreak]";
	say "     'Thank you. That was quite pleasureable,' Ryousei says with a purr in his voice, then pulls you up to your feet and hugs you tight. His lust satisfied for now, Ryousei nevertheless keeps his arms around you and strokes your skin gently. Not one for cheap one-night-stands, he clearly wants to spend time with you, even outside of immediate sex. Then, after giving the side of your neck a long lick and breathing in your scent deeply, he says, 'Being your companion makes the time on this wretched world bearable, even... pleasant, at times. I want you to think about what you'll do when I eventually find my way back home. Would you accompany me, leave this place? My army needs people like you - strong and dependable. There will be hardship, but also rewards...' He squeezes your shoulder with one hand, mrowling as his manhood throbs inside you again, then finally pulls out and reaches for his kimono. 'Don't answer now, it's moot until I can open a portal anyways. Just... think about it,' he says, then moves away a bit to groom his fur into its usual impeccable state and get dressed.";	

Section 5 - Events

instead of navigating Grey Abbey Library while (companion of player is royal tiger and Xerxes is in Grey Abbey Library and RyouseiXerxes is 0):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: RYOUSAI / XERXES MEETING[line break]";
	say "[RyouseiMeetsXerxes]";

instead of going outside from Grey Abbey Library while (companion of player is royal tiger and Xerxes is in Grey Abbey Library and RyouseiXerxes is 0):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: RYOUSAI / XERXES MEETING[line break]";
	say "[RyouseiMeetsXerxes]";

instead of going down from Grey Abbey 2F while (companion of player is royal tiger and Xerxes is in Grey Abbey Library and RyouseiXerxes is 0):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: RYOUSAI / XERXES MEETING[line break]";
	say "[RyouseiMeetsXerxes]";

to say RyouseimeetsXerxes:
	say "     As you walk into the library, Xerxes immediately rushes towards you on all fours and gives happy barks. Eager to greet his master, the naked human circles you with exhuberant energy, then jumps up to brace himself with both hands on your shoulder and licks you in the face, happily [if lust of Xerxes > 2]yammering, 'Master's back! Master's back! Xerxes missed Master!'[otherwise]barking to greet you.[end if] While you deal with the very exciteable dog in the body of a nineteen-year-old, drop dead gorgeous man with black hair and a charming smile, you become aware that Ryousei is watching you with a raised eyebrow, standing not too far away. As you meet his eyes, the anthro tiger clears his throat and says, 'What an interesting... pet, you have there. I was under the impression that humans usually are more, well... civilized. What's his story?'";
	say "     Tousling your human dog's hair, you explain to Ryousei that Xerxes actually isn't a human. Or wasn't originally, at least - until the whole trouble with the nanites started and everything went to hell. By the time you proceed to explaining about Mike, the dog trainer turned anthro stag, Xerxes begins trotting over to Ryousei to check out your new friend. 'Ah - I see,' the tiger general tells you with a thoughtful nod, holding a clawed hand out for Xerxes to sniff. 'Now if you will forgive me my ignorance - what exactly is a dog? We don't have such beasts in my plane. Maybe... similar to a ahuizotl? Those are sometimes trained to infiltrate enemy lines and drown their men when they least expect it.'";
	say "     [WaitLineBreak]";
	say "     You notice a certain tenseness in the proud tiger, stemming from having to admit he doesn't know something, combined with a bit of caution from suspecting a connection with those watery assassins he mentioned. Quickly, you proceed to explain some everyday facts about dogs - being four-legged animals with fur, the size ranges and that they're harmless - well, usually... as it depends on what they're trained for. Trusted companions for families, for hunting or guarding or sniffing things out for the police, some sadly even for fighting. Now much more relaxed about Xerxes, Ryousei looks down on the young man - smirking at the fact that the human dog is busily sniffing his crotch, really pressing his nose right into the material of the oni's pants. 'So, what exactly IS your pet trained for then?' the otherworldly visitor asks, patting Xerxes softly on the head.";
	say "     Clearing your throat at the question, you tell the tiger that your dog has been trained to guard, as well as providing pleasure. 'Ah yes,' Ryousei nods, crouching down to stroke over Xerxes muscled back and over his firm buttocks. The human dog leans into his touch, giving a pleased whine as if to beg for more petting. The tiger continues, 'I can see how a human shape would be advantageous for such tasks. Your world with its very changeable people and beasts certainly has some interesting customs.' You open your mouth to explain that what happened to Xerxes actually wasn't planned, but quickly change your mind and don't bother - Ryousei seems happy enough with having made sense of your pet, so you leave it at that and just watch as he allows Xerxes to sniff him some more and checks out the young man's body.";
	say "     [WaitLineBreak]";
	say "     Do you call on Xerxes to leave your companion in peace and go back to lie on his mattress (Y), or do you want to offer Ryousei the chance to try Xerxes out for himself (N)?";	
	if player consents:
		say "     [line break]";	
		say "     Calling out to Xerxes, you stop the human dog cold and he immediately turns away from nuzzling Ryousei's crotch to look at you attentively. With a casual command, you send him off to his bedding and the black-haired stud happily obeys, dashing over and laying down. Following the young man's movement with an attentive look, Ryousei lets his gaze rest on Xerxes for a moment longer, then turns to you and nods. 'A well-behaved pet. My compliments to you as his master.'";
	otherwise:
		say "     [line break]";	
		say "     Walking over, you join the proud tiger and your human dog. With a smile on your face at him petting Xerxes and stroking his hair, the next thing you do is give a sharp whistle, making the human teenager whirl around to eagerly look up at you, followed by one of the 'special' commands Mike trained into his transformed animals - and Xerxes immediately reacts, pushing his head and chest down to the ground and raising the very shapely ass on his lithely muscled body. With his legs spreading a little too, he's the very image of a receptive bottom. Ryousei lets his gaze wander over the young man's form, then looks at you with a raised eyebrow. Chuckling, he nods appreciatively and says, 'A well-behaved pet. My compliments to you as his master.'";
		say "     There is a slight bulge at the crotch of Ryousei's kimono, making it obvious that Xerxes charms haven't been without effect - and you capitalize on that, offering your otherworldly companion some fun with him. The muscular tiger's tail twitches in the air behind him for a second, then the anthro feline gives a rumbling purr as he looks down upon Xerxes still holding his position. Not taking his eyes off the sun-bronzed round buns your pet presents, Ryousei says, 'Domo arigato, my friend. A very generous offer.' As the tiger's hands move to undo the knot of his kimono's belt, he casually adds, 'As a wise man told me, 'Should you find yourself in an oni's lair, drink from the skull if he offers it - or it might soon be your own head serving as a cup.' Not that I want to compare you to a red-skinned demonic brute, of course. Still - I learned my lessons well and it always pays to be courteous to your host. Especially if he offers such a treat, which I gladly accept.'";
		say "     [WaitLineBreak]";
		say "     With the simple fabric belt of his kimono falling to the floor, Ryousei pulled his garment open, then slid it off over his shoulders, revealing his tall and well-muscled physique to you. With his orange fur and black stipes, as well as a cream-colored front side, the anthro tiger has quite an imposing figure - and the feline shaft standing fully erect over his heavy, furred balls does make him even more so. There is a deep, lusty grumble from his throat as Ryousei crouches over Xerxes, putting both hands on his buttocks to grope and feel them. With a submissive whine, the human dog moves back a little to press against the tiger's warm and furry form, literally begging to be fucked. 'Good boy,' Ryousei tells Xerxes with a pleased purr, then drops down to kneel behind your pet, bringing his muzzle to Xerxes crack. As his first lick brushes over the young human's pucker, teasing his skin with the rough texture of a tiger's tongue, Xerxes can't help but moan lodly, telling everyone in the whole room how good this makes him feel.";
		say "     After a few long moments of eating out Xerxes ass, Ryousei gives a pleased rumble from his throat and says, 'You're ready, pretty little human.' And with that, he moves to crouch behind Xerxes, bending his erection down a little to line its tapering head up with the human dog's wet and shiny pucker. With a full-throated roar, the anthro tiger thrusts in, burying his shaft deep into the gripping hole. 'Sexy bitch-boy!' he grunts to himself as he pushes in a little more and soon bottoms out, stretching Xerxes hole tight around his feline shaft. Your pet meanwhile whimpers in lust and raises his rear end a little more, really asking for it - and Ryousei delivers propmtly. His large hands grip the human teen's hips tightly and the tiger pulls back, the soft spines on his cock scraping Xerxes inner walls in a very stimulating way that makes the young man give a breathless moan. Then Ryousei thrusts in hard and keeps going like that, pounding into his smaller partner from behind in a rapid pace.";
		say "     [WaitLineBreak]";
		say "     Gasps, moans and roars fill the library as the big cat and transformed dog have sex and Xerxes proves once more what a well-trained submissive pet he is, taking all that Ryousei can dish out with a happy grin on his face. The full-on erection dangling between his legs is the best indicator of how much he enjoys being taken, with it leaking pre-cum constantly and flinging strings of it every which way as the teen's shaft bounces with each thrust into his ass. Your otherworldly visitor does let go of his usually so calm and regal composure as he fucks the human dog hard, demonstrating the wild side of his people - lusty growls, posessive roars and an almost feral intensity as he gets closer and closer to orgasm. Soon no longer content to just pound Xerxes into the ground, he even wraps his arms around your pet, picking him up while still impaled on the thrusting cock at his hips.";
		say "     It is quite a sight to have the sun-bronzed, black-haired Xerxes held tightly against Ryousei's broad chest, bouncing up and down on his thick shaft. There is something almost entrancing in the way the young man's own cock swings up and down, slapping rippling abs in tact with the muscled tiger's furry balls smacking into his ass. Accompanied by growls and a rumbling purr, the anthro tiger keeps pounding Xerxes hard until their shared lust finally can't be contained anymore. With an urgent sound somewhere between a moan and a bark, your pet's hands dig into Ryousei's fur, holding on tight as Xerxes cock lets loose a first long spurt of cum, arching high before landing on the library floor with a splat, then another and another.";
		say "     [WaitLineBreak]";
		say "     As the gasping young man keeps shooting his quite impressive load, the contractions of his inner muscles push Ryousei over the edge in short notice too, and with a roar the tiger buries himself all the way in his human partner. Furry balls resing against Xerxes smooth skin, they visibly twitch and pulse as the tiger breeds your pet, his virile load blasting into Xerxes and painting his insides white. The two of them grunt and pant as their orgasms run their courses, slowly ebbing off as Xerxes cum-shots get less intense and Ryousei's seed starts to squish out around his hard cock from an already over-stuffed asshole he slowly grinds against. Eventually they quiet down, nothing audible except for the big tiger's purr and Xerxes soft breathing.";
		say "     Now that his untamed libido has been satisfied, the tiger once more proves his underlying compassion and decency as he just holds on to Xerxes, gently stroking the young man's chest and making both of their bodies vibrate with his purring. Ryousei licks Xerxes sweaty skin playfully at his neck and cheek, then stretches to bring his muzzle to Xerxes mouth as the young man turns his head, sharing a long and eager kiss. The two of them spend some pleasant moments just touching and making out, then Ryousei eventually gently pulls the human dog off his softening erection and lowers him to the ground. Coming to kneel before the anthro tiger, Xerxes gives him a hug around the midriff before scampering off to his bedding, curling up to take a post-coital nap. Meanwhile, Ryousei gives you a gracious smile and a little bow as he says, 'Thank you. Xerxes really is an exceptional pet,' then he starts cleaning himself up and gets dressed.";
	now RyouseiXerxes is 1;
		
instead of going up from Grey Abbey Library while (companion of player is royal tiger and Hayato is in Grey Abbey 2F and RyouseiHayato is 0):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: RYOUSAI / HAYATO MEETING[line break]";
	say "     As you angle your steps towards the stairs to the upper level of the library, your tiger companion suddenly tenses up. Stepping forward, he stretches out a clawed hand to hold you back, the fur on the back of his neck and tail bristling up. 'Wait. I feel a powerful presence quite near us - an Oni! We should challenge and kill it at once, before it starts eating people!' Before you can say anything, he starts sprinting up the stairs with unsheathed claws, leaving deep scratches in the handrail as he takes several steps at once in long jumps, ready for violence. Hastening after him, you reach the crest of the stairway a few seconds after the tiger, who is now standing in a combat-stance and seems to be taking in the tactical situation. The intensity of Ryousei's glare is almost frightening as he observes the little camp Hayato has made for himself - as well as Hayato himself, who is sitting on the ground, facing away from you and bent forward over something.";
	say "     Feelings of agression hang heavy in the air and Ryousei's sharp teeth show visibly in a silent snarl. He gives you a sidelong glance, never really taking his gaze off the red Oni, then hisses in a low tone, 'How could this be? A giant Red Oni has made his home here - and you let it happen? Do you not know how dangerous and barbarically violent these beasts are? I have stood knee-deep in gnawed bones in an Oni's lair, some of whom belonged to my compatriots and friends.' That said, he is off again, letting out a hissed yowl as he closes on Hayato. 'Turn around and face me, creature! I will have justice for your victims or die trying!'";
	say "     [WaitLineBreak]";
	say "     Hayato half-stumbles as he turns and stands up from a cross-legged position at the same time, dropping the book he was holding in the process. Skitterishly retreating from the furious tiger, he looks completely shocked, surprised and alarmed. Seeing you coming in behind Ryousei, he calls out, 'What's going on!? What did I do wrong? I was just reading a book!' The exclaimation surprises Ryousei for a second and he glances down at the dropped novel, then immediately snaps his attention back to the oni. 'What sort of trickery is this, demon? You may have fooled my companion, but I know your kind! Did you hide your bone pit from [if cunts of player > 0 and cocks of player is 0]her[otherwise]him[end if]? How many victims have you devoured on this world already?!' Finally catching up as the royal tiger shouts his accusations, you jump between him and Hayato, hands raised to keep them apart as you explain that Hayato is not a threat - and neither is he an oni, not as Ryousei knows them.";
	say "     The snarling tiger's eyes tighten to thin slits and he looks from you to the red giant behind you, then back again. After a long moment, he eventually sheathes his claws, only to cross his arms and stare at the two of you with suspicion. Checking behind you, Hayato has retreated some more steps and looks almost frightened. Ryousei calls out, 'How can you say he is not an Oni? Look at him! I never heard of one as large as he is. Thousands of innocent lives must have been taken by this beast! I can sense his power too, and the smell of old blood is...' Ryo takes a sniff, then gets an odd expression and crouches down over Hayato's camp to take a longer sniff. '...absent.' The tiger eventually admits, clearly baffled. After another quick sniff, he eventually seems to relax and states, 'How very strange. Your scent is not entirely of an oni, but you clearly bear the appearance of one. And I've never known of one to be your size...' Hayato replies warily. 'Well, that's because I'm human! I mean, I was human... am human... umm, it's a long story...' Hayato tells him, waving his hands in frustration.";
	say "     [WaitLineBreak]";
	say "     Smoothing down the ruffled fur over his neck, Ryousei steps up to Hayato and gives him a deep bow. 'My apologies. I clearly let the memories of past encounters of... actual oni ... get the better of me. Now then - please do me the honor of telling me your tale. The least I can do is listen to it, no matter how long.' The royal tiger stands calmly in front of the red oni, both hands with their sheathed claws clasped in front of himself. 'Um - eh... yes of course,' Hayato replies a moment later, still a bit flustered. As he waves Ryousei to one of the thin sitting mats he laid out in his camp and the tiger sits down in a cross-legged pose, you leave the two of them to get acquainted.";	
	now RyouseiHayato is 1;


Section 6 - Endings

[
when play ends:
	say "     ";
]

Ryousei ends here.
