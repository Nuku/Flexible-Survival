Version 1 of Ryousei by Wahn begins here.

"Adds a Tiger NPC/pet named Ryousei to Flexible Survival's Wandering Monsters table"

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
	now cock change entry is "it shifts and tapers to a soft point, short nubby barbs slowly sprouting along the shaft neat the head. The skin of your belly and crotch stretches out to pull the feline cock up close to your body, and wraps it in a proper furry tiger's sheath.";
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

Section 5 - Endings

[
when play ends:
	say "     ";
]

Ryousei ends here.
