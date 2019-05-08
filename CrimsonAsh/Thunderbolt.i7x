Version 1 of Thunderbolt by CrimsonAsh begins here.
[ Version 1 - new file              ]

[ ThunderTrackingVariable                               ]
[   0: never met yet                                    ]
[   1: first encounter                                  ]
[   2: player had horse sex                             ]
[  50: player refused horse sex                         ]

ThunderTrackingVariable is a number that varies.
ThunderboltRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if Campus Thunder is resolved and Resolution of Campus Thunder is 2 and ThunderboltRoomConnection is 0: [event resolved the right way, room not connected yet]
		change the east exit of Thunderbolt's Stable to Greek Street;
		change the west exit of Greek Street to Thunderbolt's Stable;
		now ThunderboltRoomConnection is 1; [make sure that it connects the room only once]

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Campus Thunder	"Campus Thunder"

Campus Thunder is a situation.
The level of Campus Thunder is 0.
The sarea of Campus Thunder is "Campus". [Fountain]

instead of going south from College Administration Building while (Campus Thunder is active and Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;

instead of going north from College Campus Entrance while (Campus Thunder is active and Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;

instead of going east from College Walkway Northwest while (Campus Thunder is active and Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;

instead of going west from College Walkway Northeast while (Campus Thunder is active and Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;

Instead of resolving Campus Thunder:
	if ThunderTrackingVariable is 0: [never met]
		ThunderboltEncounter1;
	else if ThunderTrackingVariable is 1: [first encounter done]
		ThunderboltEncounter2;

to ThunderboltEncounter1:
	say "     While wandering the campus grounds, you spot a large brown horse with school colors depicted on a sash across his equine body. In big letters you read, 'Westside Stallions'. The horse whom had previously been drinking peacefully from the central fountain spots you and locks his dark eyes with yours. He starts trotting over to you after giving a friendly snort. You take a step back, looking for signs of... something on the beast. Aggression? Infection? You don't know, but there is nothing that seems dangerous at all, so in the end you just shrug and let him walk right up to you. The fairly large horse stands before you seemingly examining your body before he nuzzles his large head into your side affectionately. Before you can really, a long and thick horse tongue licks across your neck covering it in warm saliva. It's then you hear someone yell, 'Thunderbolt! Leave [ObjPro of Player] alone!' You look over your shoulder to see two lioness girls in soccer uniforms with identical writing on their outfits as the horse. Must be the team name... 'Westside Stallions.'";
	say "     The taller of the lioness girls whom had just spoken pads forward to gently pat the large equine mammal on the head. 'Sorry, he's a bit too friendly sometimes,' the pretty lioness says flashing you a toothy grin. 'I'm Ariana and this is my sister Eres,' she explains, gesturing to the clearly younger lioness behind her who shuffles forward anxiously to raise a delicate paw to wave nervously at you. 'Hey...' she pauses as she looks to you and then to the horse still standing next to you. Giving a light kiss on the side of the horse's head Ariana speaks up again, 'And this big fella is Thunderbolt, our team mascot.' Thunderbolt nuzzles into Ariana as you too introduce yourself to the two lioness sisters. 'It's good to meet someone new, but we really have to be going. Gotta take care of the big fella here,' she adds in a friendly tone, patting the large equine on the side as she turns away with Thunderbolt in tow. Eres follows with a light blush on her face and a smile in your direction.";
	LineBreak;
	say "     As you watch the three leave, you spot under the brown horse's undercarriage a large equine phallus, rapidly gaining in length and getting harder by the second. An eye-blink or two later, they all disappear behind some buildings... Interesting.";
	now ThunderTrackingVariable is 1;
	now Resolution of Campus Thunder is 1; [first meeting done]
	now LastCampusWalkin is turns;

instead of going southeast from College Walkway East while (Campus Thunder is active and Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 1):
	move player to Greek Street;
	ThunderboltEncounter2;

to ThunderboltEncounter2:
	say "     Once again wandering the college property, you hear from behind some buildings the loud and unmistakable 'neigh!' of a horse. Peeking from behind a corner you gasp slightly as you spot the horse mascot Thunderbolt. He's hitched to a post in a make-shift stable surrounded by hay and a nearby trough full of water. But what really draws your eye is his raging equine erection, fully hardened and pulsing slightly. Turning to look your way he whinnies and starts to trot closer, only to be stopped by his leash tied to the post. The large stallion rears up and whinnies again in frustration. It's abundantly clear this impressive beast is in rut. He looks to you with pleading eyes, shakes his well-groomed mane and then turns to his side showing off a truly impressive musculature and nearly two feet of erect horse cock. Almost seems like... he's trying to seduce you by flaunting his equine body.";
	say "     [bold type]What do you want to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Mate with Thunderbolt?!";
	say "     ([link]N[as]n[end link]) - Just... no. Walk away right now!";
	if Player consents:
		LineBreak;
		say "     Feeling especially randy you bite your lower lip as you eye his huge horse cock. Stepping closer to the feral beast, he meets you halfway - at the very end of his tether. Before being able to react the large stallion pushes his muzzle into your neck and trails his rough, wet tongue across your collarbone. As he runs his hot saliva around your neck you place a hand on the side of his head, affectionately patting his soft equine face. Finally withdrawing his tongue he whinnies again in need. Smiling brightly at the large horse you drop to your knees taking in the sight of the massive phallus before you. It pulses and twitches and you're hit by a wave of feral musk from the pink and black rocket. Inhaling deeply you can feel your [if Player is male]own manhood harden[else if Player is female]womanhood drip with need[else]needy desire grow[end if] when you bring up both your hands to grasp the huge member. As you grip the impressive feral cock, Thunderbolt lets out a neigh of approval as a small splash of horse-pre spurts out of his tip and covers your palms.";
		say "     The scent of the musky pre has you feeling like a mare in heat. With a flushed face you trail your [facename of Player in lower case] tongue across his tip gathering what pre you can while moving downward toward the base of his tasty shaft. Thunderbolt shuffles above you in pleasure as you continue your licking up and down his shaft. Eventually while wringing the base of his feral cock you take the tip of his flared tip into your mouth and gently suckle at his tip. Slowly inching more and more onto his equine shaft it quickly reaches the back of your throat until it simply can't go any further and you hold it there in the tight confines of your throat. Thunderbolt whinnies again in pleasure as more horse-pre shoots out of his erection, this time straight into your stomach.";
		WaitLineBreak;
		if Player is female:
			say "     You keep him in your mouth as long as you can, but eventually the need to breathe wins out over whatever else you may desire, so you pull back from his tasty and now saliva-covered cock to examine your work. Now a puddle pooling in your underclothes you can barely contain your lust as you quickly disrobe, still under the beast's underbelly. After removing the confines of your clothes you lick your lips, still tasting his pre on them and move your hand up to pat his soft fur indicating your ready to be mounted as his mare. Moving onto all fours you dip into your fingers into your soaking [cockname of Player in lower case] pussy and spread your lips open for the massive length to enter. Taking the hint the smart beast neighs loudly in approval and begins to grind his giant horse cock against your lower back. Dragging his saliva- and pre-slickened member across your ass cheeks the team mascot rears back until the tip of his lengthy cock is pressing against your pussy-lips. Moaning at the sudden pressure you once again bite your bottom lip in anticipation.";
			say "     Pressing forward the massive length strains to enter but with your natural wetness and beforehand preparation a single strong thrust is all it takes to penetrate your eager lips. Moaning loudly as nearly half of Thunderbolt's equine cock is forced into your slick [cockname of Player in lower case] you press back against his shaft and dig your hands into the dirt below. Neighing in pleased passion the soccer mascot pushes more of his thick, veiny member into your clenching confines.";
			WaitLineBreak;
			say "     Feeding nearly every inch into your womanhood Thunderbolt bottoms up inside your quivering wetness before drawing back and thrusting into you again. The sheer force and pleasure of the first few thrusts nearly knocks you out, but you manage to get used to taking the feral member, greatly enjoying it pounding you into the soft ground below. Bottoming in and out of you, you can feel a trickle of drool run down your chin while more pre spurts into your womb. Grunting and neighing Thunderbolt gradually speeds up until he's thrusting with wild abandon, really hammering into you. Feeling his cock stiffen and twitch you can feel his full testicles slapping against your ass as with one final thrust into your womb he bottoms every inch inside you and cums. With a slight bulge pressing out of your tummy you feel him unload into you, triggering your own almost mind-shattering orgasm. Thick streams of horse seed spill into your bulging insides as you clench like a vice around his spurting equine member. Your whole world goes black as the intensity of your climax knocks you unconscious.";
		else: [those without a pussy get an anal horse-fuck]
			say "     You keep him in your mouth as long as you can, but eventually the need to breathe wins out over whatever else you may desire, so you pull back from his tasty and now saliva-covered cock to examine your work. You can barely contain your lust as you quickly disrobe, still under the beast's underbelly. After removing the confines of your clothes you lick your lips, still tasting his pre on them and move your hand up to pat his soft fur indicating your ready to be mounted. Moving onto all fours, you present your ass to the stallion. Taking the hint the smart beast neighs loudly in approval and begins to grind his giant horse cock against your lower back. Dragging his saliva- and pre-slickened member across your ass cheeks the team mascot rears back until the tip of his lengthy cock is pressing against your pucker. Moaning at the sudden pressure you once again bite your bottom lip in anticipation.";
			say "     Pressing forward the massive length strains to enter but with your beforehand preparation a single strong thrust is all it takes to penetrate your eager hole. Moaning loudly as nearly half of Thunderbolt's equine cock is forced into your tight anus, you press back against his shaft and dig your hands into the dirt below. Neighing in pleased passion the soccer mascot pushes more of his thick, veiny member into your rear...";
			WaitLineBreak;
			say "     Feeding nearly every inch into your ass, Thunderbolt bottoms up inside you before drawing back and thrusting into you again. The sheer force and pleasure of the first few thrusts nearly knocks you out, but you manage to get used to taking the feral member, greatly enjoying it pounding you into the soft ground below. Bottoming in and out of you, you can feel a trickle of drool run down your chin while more pre spurts into your colon. Grunting and neighing Thunderbolt gradually speeds up until he's thrusting with wild abandon, really hammering into you. Feeling his cock stiffen and twitch you can feel his full testicles slapping against your ass as with one final thrust into your ass he bottoms every inch inside you and cums. With a slight bulge pressing out of your tummy you feel him unload into you, triggering your own almost mind-shattering orgasm. Thick streams of horse seed spill into your bulging insides as you clench like a vice around his spurting equine member. Your whole world goes black as the intensity of your climax knocks you unconscious.";
		say "     When you awaken you feel sore but relieved, and... surrounded by warmth? Opening your eyes you see sitting above you with your head in her lap the lioness Ariana, still in her uniform and smiling down at you. 'Hey sweetie, you alright? I know Bolt can be... rough, but as I'm sure you've experienced, he's worth it,' she says, gazing over to her favorite feral horse, who is contently sleeping in the same area you remember him in. You notice a rather impressive puddle of mixed juices below him and you can still feel some of his seed sloshing in your full tummy. Although looking down you notice your legs and lower body have been washed off and re-clothed. 'I... hope you don't mind sweetie but I cleaned you off and dressed you, Bolt was on top of you when I came by to get him.' You're dazed but manage a smile and thank the pretty lioness. She returns the smile and gently helps you to wobbly feet, it's certainly going to be sore for a while but you feel so amazing that you can't complain. Giving you an arm Ariana speaks again, 'Feels good right? You know, you should join me and sis sometime, we come by every now and again to... relive Bolt here, could be a grand time with the four of us.' She gives you a soft swat on the backside and bids you goodbye, watching you slightly limp away.";
		now ThunderTrackingVariable is 2; [horse sex for the player completed]
		now Resolution of Campus Thunder is 2; [horse sex]
		change the east exit of Thunderbolt's Stable to Greek Street;
		change the west exit of Greek Street to Thunderbolt's Stable;
		if daytimer is day:
			move Ariana to Thunderbolt's Stable;
			move Eres to Thunderbolt's Stable;
	else:
		LineBreak;
		say "     Slightly wide-eyed you back away and quickly take your leave of the area and the feral thoughts that plague your head.";
		now Resolution of Campus Thunder is 99; [disinterest in horse sex]
		now ThunderTrackingVariable is 50; [horse sex refused]
	now Campus Thunder is resolved; [the end, for now]

Section 2 - Location

Table of GameRoomIDs (continued)
Object	Name
Thunderbolt's Stable	"Thunderbolt's Stable"

Thunderbolt's Stable is a room.
The description of Thunderbolt's Stable is "[TStableDesc]".

to say TStableDesc:
	say "     Thunderbolt's stable is a mid-sized pen thrown together by the lioness sisters Ariana and Eres. It has all the basic amenities to keep a horse well cared for: a trough, a few bales of hay and a wooden lean-to big enough for the big stallion to sleep under.";

instead of going to Thunderbolt's Stable:
	move player to Thunderbolt's Stable;
	say "     Walking between a familiar set of campus buildings, you find your way back to Thunderbolt's stable. You see your large equine mate resting in a [if daytimer is day]particularly sunny[else]moonlit[end if] part of his pen, and as you enter he looks up to meet your eye.";
	if Ariana is in Thunderbolt's Stable:
		say "     The two lioness sisters are here as well, stroking their mascot's mane and talking amongst themselves. When they too spot you they wave you over and Ariana, the older of the two stands up. 'Hey friend! Good to see you back, glad Bolt here didn't scare you off,' she says with a wink. You can see behind her Eres giving you a shy smile and wave.";

An everyturn rule:
	if daytimer is night:
		now Ariana is nowhere;
		now Eres is nowhere;
	else if daytimer is day:
		move Ariana to Thunderbolt's Stable;
		move Eres to Thunderbolt's Stable;

Section 3 - Thunderbolt NPC

Table of GameCharacterIDs (continued)
object	name
Thunderbolt	"Thunderbolt"

Thunderbolt is a man. Thunderbolt is in Thunderbolt's Stable.
[Physical details as of game start]
ScaleValue of Thunderbolt is 4. [horse sized]
SleepRhythm of Thunderbolt is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Thunderbolt is 1. [X cock]
Cock Length of Thunderbolt is 24. [X Inches]
Ball Size of Thunderbolt is 18.
Ball Count of Thunderbolt is 2. [X balls]
Cunt Count of Thunderbolt is 0. [X pussy]
Cunt Length of Thunderbolt is 0. [X Cunt]
Cunt Tightness of Thunderbolt is 0. [X Cunt]
Nipple Count of Thunderbolt is 2. [X nipples]
Breast Size of Thunderbolt is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Thunderbolt is false. [can not take oversized members without pain]
Sterile of Thunderbolt is true.
PlayerMet of Thunderbolt is false.
PlayerRomanced of Thunderbolt is false.
PlayerFriended of Thunderbolt is false.
PlayerControlled of Thunderbolt is false.
PlayerFucked of Thunderbolt is false.
OralVirgin of Thunderbolt is true.
Virgin of Thunderbolt is true.
AnalVirgin of Thunderbolt is true.
PenileVirgin of Thunderbolt is false.
SexuallyExperienced of Thunderbolt is true.
MainInfection of Thunderbolt is "".
The description of Thunderbolt is "[ThunderboltDesc]".
The conversation of Thunderbolt is { "<This is nothing but a placeholder!>" }.
The scent of Thunderbolt is "     You sniff the feral horse. He smells like cut hay and soap, the sisters must keep him well bathed.".

to say ThunderboltDesc:
	say "     Thunderbolt is the college campus's football mascot, he is a young and well-muscled stallion with a brown coat and darker brown mane. He usually strides around donning his Westside Stallions regale, almost always followed in tow by his two feline handlers.";

instead of conversing the Thunderbolt:
	say "     Talking in soft tones, you reach out and stroke the horse Thunderbolt across his mane. Then you brush your palms down his flank, over his side and back up to his equine muzzle. He gives a low whinny as you pet him and caress his chin. Eventually you pull back letting the stallion settle. He stares back at you, shakes his mane then neighs in satisfaction.";

instead of fucking Thunderbolt:
	say "     What exactly do you plan on doing with the horse?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Ariana is in Thunderbolt's Stable:
		choose a blank row in table of fucking options;
		now title entry is "A foursome";
		now sortorder entry is 1;
		now description entry is "Involve Ariana and Eres in your fun with Thunderbolt";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked (pussy)";
		now sortorder entry is 2;
		now description entry is "Take on that giant horsecock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get fucked (ass)";
	now sortorder entry is 3;
	now description entry is "Take on that giant horsecock";
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
				if (nam is "A foursome"):
					say "[ThunderboltSex1]";
				if (nam is "Get fucked (pussy)"):
					say "[ThunderboltSex2]";
				if (nam is "Get fucked (ass)"):
					say "[ThunderboltSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the feral horse, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ThunderboltSex1:
	setmonster "Feral Mustang";
	say "     You stride up to Ariana and ask if her offer is still open. She pauses a moment looking confused before her eyes light up with comprehension. 'Ooh [italic type]that[roman type] offer!' she purrs seductively before adding, 'Hmm, I'd be happy to.' Eying you up and down predatory, the young woman turns to wink at her sister who has buried her face in a book pretending not to know what's happening. Taking your hand in hers you walk over to where Thunderbolt has stopped to drink from the nearby trough. Pulling his head up to look at you and the lioness approaching, his ear flicks and he stares curiously at you. Before you can act Ariana takes your head in her paws and kisses you, moving her body against yours. Running her lips along yours she plunges inside filling your mouth with her rough lion-tongue. She stays like that for a moment wrestling with your own eager mouth while you caress each other.";
	say "     Pulling back she licks her lips, 'A good start lover, but we should include the big fellow here.' She motions to Bolt who has been watching you with interest seeming to understand where this is leading. Letting go of your hand the lioness Ariana kneels down below Bolt's undercarriage. 'Hmm, I'll get us started,' she says, taking a hold of Bolt's growing member and beginning to stroke him. 'There's a good boy, come on out to play.' You can hear Ariana audibly purring as she beckons you to join her. Kneeling down with her you peer back to the younger Eres who quickly ducks back behind her book, obviously just having been watching you. Kneeling down the older feline sees your glance back and says, 'Don't worry, this is how she always is, she'll jump in when she's ready.' She gives you a soft smile before turning back to Bolt. Now nearly at its full two feet of hard horse cock, Ariana envelops the head in her mouth, giving you a show of fellating that glorious hunk of horse meat.";
	LineBreak;
	say "     As she takes Thunderbolt's rod you decide to keep busy. Reaching to caress the Lioness's covered breasts results in her letting out a moan in pleasure, which reverberates around the horse cock in her maw. Still caressing and squeezing her breasts, you lean in close to lick at the large equine phallus before you. Licking around its base, you breathe in deep and take in his mating musk - wild, horny and a pure aphrodisiac for your senses. Withdrawing a foot of cock from her throat with a gasp, Ariana leans back, slightly out of breath. She gazes over to a fence she uses to hitch Thunderbolt to and you can see an idea form in her eyes. 'Follow me sweeties, I have an idea.' She leads both you and the still fully aroused horse to the fence and places you doggy style before it, pulling down what clothes you have on in the meanwhile. She exposes your ass and dripping lady-lips before turning to Bolt.";
	say "     'Alright Bolt, leap up boy!' she says, motioning her arms forward. Getting the message, he rears up and lands with his hooves resting on the fence while his thick organ rests on your back, pulsing and throbbing with excitement. You bite your lip in anticipation but wiggle your hips back at his groin. Moving over to the back side of Bolt, the lovely feline runs a hand down the horse's flanks, caressing him as she tries to guide him into you. Bolt starts humping forward, trying to hit home and thrust into his willing mate. With Ariana's help the tip of his flared cock penetrates your womanhood causing you to throw your head back in surprised pleasure. 'I knew you'd come to join,' you Hear behind you. Looking back you spot Eres with a flushed face and damp skirt having come over to kneel by her sister. 'L-let's just do this already, I'm about to lose control,' replies the shy younger of the two. Smiling Ariana returns her gaze to you and widens her grin. Still staring at you she captures her sister's lips in a sweet passionate kiss.";
	LineBreak;
	say "     Pulling your head back from there erotic display of incest you moan loudly as you once again feel the equine shaft pushing into you. Pulling his large body back Thunderbolt slams into you again and again causing your stomach to distend each time he does. You moan and squeal in delight as your railed by your horse mate, your mind turning to shatters as pleasure overwhelms you. Glancing back again barely coherent, Eres is licking up and down Bolt's large dangling sack. She takes one large ball in her mouth and sucks it before letting it go and resuming licking, all signs of shyness and restraint gone from the younger feline. Seeing you looking back taking the monstrous cock as it hammers you Eres pads over to your front. She strokes your face and chest gently before locking eyes with you.";
	say "     Eres lifts your chin up and kisses you once again in a tender kiss. That does it. The amazing stretching of the horse cock and the lips of the sultry college girl is too much. You climax around the shaft of hard horseflesh as it bottoms out inside you. Clamping down on it you trap the horse cock in you, locked down tighter than a vice. Letting out a neigh of pleasure Bolt climaxes soon after. Feeding every inch he can fit inside you he shoots forth a load of creamy horse cum to bathe your womb in white hot liquid. You moan and nearly pass out, taking every drop of cum this virile beast has to give. Your entire body feels like it's flooded with cum, it fills up your womb and your tunnels before shooting out around the big piece of meat inside you. Your belly distends with the amount of cum pumped in you causing a second orgasm to rip through you as Thunderbolt's cock is squeezed for every drop it has.";
	fimpregchance;
	LineBreak;
	say "     Eventually you come down from your orgasmic high realizing that Thunderbolt has withdrew his member from you and a rough feline tongue has replaced it. Ariana still holds your head in her paws and smiles before pulling down her clearly soaked panties and tossing them aside revealing her pleasantly musky pussy to you. She lowers your head down and you begin licking dutifully at her delicious sex. Meanwhile Eres behind you starts to eat out your gushing pussy, she swallows the load that flows from your pussy and drinks it down happily before lapping at your lips. The three of you continue on a cycle of oral pleasure and fingering before your orgasm is tripped once again soaking Eres's muzzle. Eres follows shortly after cumming around her own digits stuffed in her cunt.";
	say "     Then Ariana climaxes, covering your face in sweet feline honey which you lap up quickly. Coming down from each of your highs you lay down in the soft grass below, noticing Thunderbolt having moved away to rest and chew some hay nearby. A rest sounds like a good idea to you, you lay back with Ariana pulling your head into her lap. Her sister crawls up next to you placing an arm around you as well. The group of you close eyes and bed down for a relaxing and needed rest.";

to say ThunderboltSex2: [pussy fuck]
	setmonster "Feral Mustang";
	say "     Feeling especially horny and randy you tie a leash around your stallion mate and lead him off somewhere further secluded. Ducking around the edge of another building behind Bolt's stable you find a nice quiet spot. Turning to face the magnificent horse you can see him already hardening at the sight of you, apparently aware of your plans for him. You smile and lean over to smooch him on his muzzle. Surprisingly he responds to the kiss, and lashes his thick tongue against your lips before slipping it into your mouth. Without planning to originally, you're now making out with your equine mate, swapping saliva as Bolt messily tongue-fucks your mouth. Pulling back slightly out of breath a little while later, your loins feel on fire and beg to be plowed by this virile beast.";
	say "     Stripping off any obstructions you lay your back down on a nearby bench. Then you spread your legs and start to finger your already quite wet womanhood, beckoning him to come breed his mare. As he steps up to the bench, Thunderbolt's large body towers over you, the musk of his arousal very apparent and quickly filling your mind with all kinds of naughty thoughts. His glorious two foot cock is already rock hard and dripping tasty pre. You take a hold of his thick male-meat and guide it to your soaking entrance, rubbing the tip of his flared cock against your lower lips. Lubing him up nicely you start to glide his equine phallus into you slowly taking inch after inch of his manhood. Yet something about the process seems to have been too slow for the horse's taste - as mid-way, Bolt suddenly rears up impatiently and thrusts forward, spearing you on his horse cock.";
	LineBreak;
	say "     You let out a shriek of pleasure and shout obscenities at no one in particular as Thunderbolt starts to thrust back and forth. Taking control of his willing mate he stands above you and hammers away at your gripping sex. You barely have time to think or act as Bolt stretches out your cunt with each thrust. You're glad you choose to lie down, because you doubt you could hold yourself up at this moment. Soon after, Bolt starts to speed up, grunting and snorting in pleasure as he fucks your pussy. He jackhammers at incredible speed into you and you can but lay there and take it like a good mate for your stallion. Bottoming out inside you one last time he thrust nearly every inch of his two foot cock into you, distending your belly magnificently.";
	fimpregchance;
	say "     At that sensation, you clamp around his raging hardness yelling to the skies above as you climax from your stallion's long pole. Bolt quickly follows you into sweet oblivion, shooting nearly a gallon of thick horse jizz into your spasming body. It floods your inner walls and womb before spraying out onto the ground below. Pushed out of your well-fucked pussy by the torrent of cum still pulsing out of its end, his spurting cock lands on your tummy. It covers your abdomen and torso with more spunk than you know what to do with. As you are coming down from your mutual orgasms a little while later, his now shrinking cock slides from your belly as he withdraws himself from above you. You give him a fond smile and scoop up a few handfuls of thick cum to snack on before cleaning and redressing. Stroking Bolt's mane, you are nuzzled by the horse in his pleasant afterglow, then lead your stallion back to his stable.";

to say ThunderboltSex3: [ass fuck]
	setmonster "Feral Mustang";
	say "     Feeling especially horny and randy you tie a leash around your stallion mate and lead him off somewhere further secluded. Ducking around the edge of another building behind Bolt's stable you find a nice quiet spot. Turning to face the magnificent horse you can see him already hardening at the sight of you, apparently aware of your plans for him. You smile and lean over to smooch him on his muzzle. Surprisingly he responds to the kiss, and lashes his thick tongue against your lips before slipping it into your mouth. Without planning to originally, you're now making out with your equine mate, swapping saliva as Bolt messily tongue-fucks your mouth. Pulling back slightly out of breath a little while later, [if Player is male]your own cock is rock-hard and your asshole itching [else if Player is female]your loins feel on fire and beg [else]you are itching [end if]to be plowed by this virile beast.";
	say "     Stripping off any obstructions you get on all fours a nearby bench. Then you spit into your hand and use it to rub your back door, moistening and massaging it with the improvised lube. Your ass raised high as you finger yourself, this beckons the stallion to come breed his mare. As he steps up to the bench, Thunderbolt's large body towers over you, the musk of his arousal very apparent and quickly filling your mind with all kinds of naughty thoughts. His glorious two foot cock is already rock hard and dripping tasty pre. You take a hold of his thick male-meat and guide it to your trembling entrance, rubbing the tip of his flared cock against your pucker. The pre-cum he is leaking in a constant drip helps lube you up nicely, until you push his dickhead against the opening a bit harder and feel it gliding into you slowly. Inch after inch of his manhood enter your asshole, stretching it oh so very nicely around the warm shaft. Yet something about the process seems to have been too slow for the horse's taste - as mid-way, Bolt suddenly rears up impatiently and thrusts forward, spearing you on his horse cock.";
	LineBreak;
	say "     You let out a shriek of pleasure and shout obscenities at no one in particular as Thunderbolt starts to thrust back and forth. Taking control of his willing mate he stands above you and hammers away at your gripping hole. You barely have time to think or act Bolt stretches out your tight chute with each thrust. You're glad you have the backrest of the bench to hold on to, because you doubt you could hold keep his hard thrusts from pushing you all over the place otherwise. Soon after, Bolt starts to speed up, grunting and snorting in pleasure as he fucks your ass. He jackhammers at incredible speed into you and you can but kneel there and take it like a good mate for your stallion. Bottoming out inside you one last time he thrust nearly every inch of his two foot cock into you, distending your belly magnificently.";
	mimpregchance;
	say "     At that sensation, you clamp around his raging hardness yelling to the skies above as you climax from your stallion's long pole. [if Player is male]Spurt after spurt of cum is sent flying, making a mess of the bench you are kneeling upon. [else if Player is female]You squirt out femcum, making a mess of the bench you are kneeling upon. [end if]Bolt quickly follows you into sweet oblivion, shooting nearly a gallon of thick horse jizz into your spasming body. It floods your inner walls [if Player is mpreg_ok]and interior womb [end if]before spraying out onto the ground below. Pushed out of your well-fucked ass by the torrent of cum still pulsing out of its end, his spurting cock lands on your lower back. It covers your backside with more spunk than you know what to do with. As you are coming down from your mutual orgasms a little while later, his now shrinking cock slides from your back as he withdraws himself from above you. You give him a fond smile and scoop up a few handfuls of thick cum to snack on before cleaning and redressing. Stroking Bolt's mane, you are nuzzled by the horse in his pleasant afterglow, then lead your stallion back to his stable.";

Section 4 - Ariana NPC

Table of GameCharacterIDs (continued)
object	name
Ariana	"Ariana"

Ariana is a woman.
The description of Ariana is "[ArianaDesc]".
The conversation of Ariana is { "<This is nothing but a placeholder!>" }.
The scent of Ariana is "     Ariana smells musky from a days jog, the scent underlain by a sweet smell of perfume and pheromones.".

to say ArianaDesc:
	say "     Ariana is a bipedal lioness girl standing around six feet tall with orange and yellow fur and a gorgeous face that closely resembles her sisters. Unlike her younger sister however Ariana is exceptionally more muscled and built. Ariana sports tight running shorts with a hole in them for her swishing lioness tail as well as a black tank top with her school colors strewn across them.";

instead of conversing the Ariana:
	say "     You walk up and say hello to the lovely lioness. 'Hey how have you been sweetie?' After some casual talk you eventually brooch asking her about herself. She looks a little surprised but gives you a toothy smile. 'Well, I used to be a gymnast here, but now I sort of just hang around campus, beating sis at sports, annoying the football team and fucking the stallion,' she says, biting a finger and chuckling.";

instead of fucking Ariana:
	say "     What exactly do you plan on doing with the young lioness?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Ariana is in Thunderbolt's Stable:
		choose a blank row in table of fucking options;
		now title entry is "A foursome";
		now sortorder entry is 1;
		now description entry is "Involve Ariana and Eres in your fun with Thunderbolt";
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
				if (nam is "A foursome"):
					say "[ThunderboltSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young lioness, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

Section 5 - Eres NPC

Table of GameCharacterIDs (continued)
object	name
Eres	"Eres"

Eres is a woman.
The description of Eres is "[EresDesc]".
The conversation of Eres is { "<This is nothing but a placeholder!>" }.
The scent of Eres is "     Eres smells of evergreen grass with a hint of the innards of a book.".

to say EresDesc:
	say "     Eres is a bipedal lioness girl standing around six feet tall with orange and yellow fur and a gorgeous face that closely resembles her sisters. Unlike her older sister however Eres has a much thinner and lithe from frame. Eres sports a fairly chaste knee long white skirt and matching blouse, a hole poking out of her skirt lets her tail swish freely around.";

instead of conversing the Eres:
	say "     You walk up and say hello to the lovely lioness. Eres pokes her head up from a small journal she was writing in and gives you a shy smile. [first time]'Oh, hello there I don't think we've actually formally met. I'm Eres.' [only]She lays a paw out to shake which you do. After some casual talk you ask her about herself. She flashes you a coy smile. 'I uses to study economics here, you know before everything happened. I suppose now I just take it day by day, usually in the library reading about out past.' She gazes back down to her journal smiling fondly.";

instead of fucking Eres:
	say "     What exactly do you plan on doing with the young lioness?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Eres is in Thunderbolt's Stable:
		choose a blank row in table of fucking options;
		now title entry is "A foursome";
		now sortorder entry is 1;
		now description entry is "Involve Ariana and Eres in your fun with Thunderbolt";
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
				if (nam is "A foursome"):
					say "[ThunderboltSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young lioness, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

Thunderbolt ends here.
