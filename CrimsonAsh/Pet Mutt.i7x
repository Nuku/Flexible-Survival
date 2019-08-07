Version 1 of Pet Mutt by CrimsonAsh begins here.
[Version 1 - Put into its own file]

[ Energy of Pet Mutt: charge-up for item presents    ]

PetMuttBreed is a text that varies.
PetMuttColor is a text that varies.
PetMuttDetailedlook is a text that varies.
PetMuttName is a text that varies.

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

after going to Main & 7th Street while (Pet Mutt is in Main & 7th Street and Energy of Pet Mutt > 8 and a random chance of 1 in 3 succeeds):
	let randomnumber be a random number from 1 to 3;
	say "     As you walk onto the street, you call see [PetMuttName] as he quickly dashes out from under his small makeshift home. His tail is wagging wildly and he seems more eager than normal as he sprints in your direction. Before you can ask or even wonder if something's amiss he stops, skidding a foot or so and stopping before you. A [if randomnumber is 1]bottle of soda[else if randomnumber is 2]can of food[else]medkit[end if] drops from his maw and at your feet with a clatter. He pants and looks at you simply. Now it's your turn to cock your head to the side at your hound. You lean down and pick it up, examining the item for a moment before smiling and placing it in your pack after wiping some grool and grime from its surface. 'Such a good boy,' you praise, leaning down and giving both his ears a ruffle, patting and scruffing over his fur. Which quickly turns into a chest and belly rub when he lays down. His leg kicks as you scratch his tummy and his tongue lolls out happily. What an adorable pooch!";
	if randomnumber is:
		-- 1:
			LineBreak;
			say "[bold type]You gain a soda bottle![roman type][line break]";
			increase carried of soda by 1;
		-- 2:
			LineBreak;
			say "[bold type]You gain food![roman type][line break]";
			increase carried of food by 1;
		-- 3:
			LineBreak;
			say "[bold type]You gain a medkit![roman type][line break]";
			increase carried of medkit by 1;
	now Energy of Pet Mutt is 0;

an everyturn rule:
	increase Energy of Pet Mutt by 1;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Pet Mutt	"Pet Mutt"

Pet Mutt is a man.
ScaleValue of Pet Mutt is 3. [human sized]
Cock Count of Pet Mutt is 1.
Cock Length of Pet Mutt is 8.
Ball Size of Pet Mutt is 3.
Ball Count of Pet Mutt is 2.
Cunt Count of Pet Mutt is 0.
Cunt Depth of Pet Mutt is 0.
Cunt Tightness of Pet Mutt is 0.
Nipple Count of Pet Mutt is 2. [2 nipples]
Breast Size of Pet Mutt is 0.
[Basic Interaction states as of game start]
PlayerMet of Pet Mutt is false.
PlayerRomanced of Pet Mutt is false.
PlayerFriended of Pet Mutt is false.
PlayerControlled of Pet Mutt is false.
PlayerFucked of Pet Mutt is false.
OralVirgin of Pet Mutt is true.
Virgin of Pet Mutt is true.
AnalVirgin of Pet Mutt is false.
PenileVirgin of Pet Mutt is false.
SexuallyExperienced of Pet Mutt is true.
MainInfection of Pet Mutt is "Feral Mutt".
The description of Pet Mutt is "[Pet MuttDesc]".
The conversation of Pet Mutt is { "<This is nothing but a placeholder!>" }.
The scent of Pet Mutt is "     [PetMuttName] smells like a dog, a feral musky hound. It's not necessarily unpleasant, but certainly noticeable and distinctive scent to this particular canine, as you well know.".

to say Pet MuttDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Pet Mutt: [HP of Pet Mutt] <- DEBUG[line break]";
	say "     [PetMuttName] is a [PetMuttDetailedlook]. He followed you home after you had your fun with the street dog. Seems like he's accepted you as the 'top dog' and he's quite happy with just being more or less close to you and keeping himself available. The canine is more comfortable outside than within buildings though, which is kinda understandable for a street dog.";

[
an everyturn rule:
	if Pet MuttRelationship > 10 and Pet MuttRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			say "...";
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			say "...";
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			say "...";
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			say "...";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			say "...";
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			say "...";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			say "...";
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Pet Mutt:
	say "[Pet MuttTalkMenu]";

to say Pet MuttTalkMenu:
	say "     As you stride up to [PetMuttName], he perks up quickly and looks to you, his tail wagging and his head cocked to the side. Patiently waiting for what you say or do next.";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pet him";
	now sortorder entry is 1;
	now description entry is "Give [PetMuttName] some pats";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Say Hello";
	now sortorder entry is 2;
	now description entry is "Talk to [PetMuttName]";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Play with him";
	now sortorder entry is 3;
	now description entry is "Play with to [PetMuttName]";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if anyone has fallen in a well";
	now sortorder entry is 4;
	now description entry is "Have a Lassy moment with [PetMuttName]";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Kiss him";
	now sortorder entry is 5;
	now description entry is "Smooch with [PetMuttName]";
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
				if (nam is "Pet him"):
					say "[Pet MuttPetting]";
				if (nam is "Say Hello"):
					say "[Pet MuttTalk1]";
				if (nam is "Play with him"):
					say "[Pet MuttTalk2]";
				if (nam is "Ask if anyone has fallen in a well"):
					say "[Pet MuttTalk3]";
				if (nam is "Kiss him"):
					say "[Pet MuttKiss]";
				wait for any key;
				say "[Pet MuttTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the [PetMuttColor] [PetMuttBreed], shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Pet MuttPetting: [pet him]
	say "     Leaning down slightly you run your hand across [PetMuttName]'s eager head and down his furry back. The tamed mutt nuzzles into your touch and whines slightly at the attention. You move back up and give his ear a scritch before patting him on the head. He pants delightfully with his tongue out, wagging his tail and staring up at you longingly, his master.";

to say Pet MuttTalk1:
	say "     You say hello to [PetMuttName]. He jumps up and around happily, licking your cheek once before settling his prancing. You laugh and pat his head, telling him he's a good boy. He's wagging his tail and panting excitedly now, just from being in proximity to his master. He sits before you, tail still wagging while he looks up into your eyes, looking devotedly at you, curious as to what you'll do next.";

to say Pet MuttTalk2:
	say "     Clapping your palms together and giving a sharp whistle your mutt leaps to you. 'How ya doing buddy?' You ask with a laugh. Leading him around, playing with him by running around in circles and leaping back and forth with him while staying just out of his reach. [PetMuttName] seems very enthusiastic and excited to play with his master! Eventually you two wind down and you command him to heel, which he does with a slight whine, sitting down before you.";

to say Pet MuttTalk3:
	say "     Giving a smile you ask [PetMuttName] how he's doing. He gives a loud bark, before panting and wagging his tail eagerly. 'Any little Johnnys down the well boy?' You ask with a laugh, which he responds to with a low howl. 'Heh, or maybe your own little Johnny is just eager to be saved, huh boy?' You ask with a grin, hand placed on your hip. He cocks his head to the side, panting, a bit of drool hanging from his toothy maw.";

to say Pet MuttKiss:
	say "     You smile and lean down to your dog, your strong, virile canine needs some proper attention. Moving to pet his head gently, [PetMuttName] wags his tail excitedly, leaning into your palm as you stroke his furry head. Moving your head close to his you smile and lean forward to lick him across his muzzle. [PetMuttName]'s responds immediately, licking back and slobbering across your lips and face, leaving warm drool in his wake. Deciding to deepen the smooch, you open your mouth to your canine stud and allow his long, wet tongue to lap inside your own eager maw. Trailing thick dog slobber down your chin as he messily laps, licks and kisses at his master's willing mouth.";
	say "     Suddenly he's pushing forward, moving your head back with his own, still ferally licking and smooching over your face. [PetMuttName] pushes you back from your kneeling position and onto your back, you thrill at his eagerness and fold your arms around his neck, keeping him in place as you open your mouth wide for him. 'Hmmph' you moan into his maw, gliding your tongue along his, sliding it across his pointed teeth and long muzzle until he pulls away with thick lines of slimy spit to then lap at your lips and chin once again. Your senses are filled with his smell and taste, you let out a laugh as he covers your face in doggy slobber. It's then that you feel a pressure on your lower half, it doesn't take a genius to tell he's gotten excited by your intense kissing. His lower body begins to wildly hump at your hips, eager for relief after his teasing. Seems your big boy wants to play some more. You look up into his handsome black eyes and decide to...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Fuck around with him.";
	say "     ([link]N[as]n[end link]) - Stop for now.";
	if Player consents: [go after them]
		LineBreak;
		say "[Pet MuttSexMenu]";
	else:
		LineBreak;
		say "     You stand up, wiping your face clean with your hand and brushing yourself off. Your cute mutt whines but backs down when you start to glare at him. He's the pet, and you're the [master] after all.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Pet Mutt:
	if (lastfuck of Pet Mutt - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     The dog doesn't look too interested in sex right now. Maybe he's just tired and needs a rest.";
	else: [ready for sex]
		say "[Pet MuttSexMenu]";

to say Pet MuttSexMenu:
	say "     Biting your lip you can't help but feel especially... excited at the moment. Which seems a bit redundant given the sexpocalypse you find yourself living in. All the same though, you stride up close to your submissive mutt, placing a hand on your hip.";
	say "     [bold type][PetMuttName] cocks his head curiously as you decide to...[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is purefemale:
		choose a blank row in table of fucking options;
		now title entry is "Be bred like a bitch";
		now sortorder entry is 1;
		now description entry is "Submit to breeding by [PetMuttName]";
	[]
	if player is not neuter:
		choose a blank row in table of fucking options;
		now title entry is "Ride his cock";
		now sortorder entry is 2;
		now description entry is "Roll [PetMuttName] over and mount him";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 3;
		now description entry is "Pound [PetMuttName]'s ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow him";
	now sortorder entry is 4;
	now description entry is "Suck [PetMuttName]'s cock";
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
				if (nam is "Be bred like a bitch"):
					say "[Pet MuttSex1]";
				else if (nam is "Ride his cock"):
					say "[RidePet Mutt]";
				else if (nam is "Fuck him"):
					say "[FuckPet Mutt]";
				else if (nam is "Blow him"):
					say "[SuckPet Mutt]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the [PetMuttColor] [PetMuttBreed], shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Pet MuttSex1: [breeding fuck on the player]
	if player is purefemale:
		say "     Giving [PetMuttName] a grin you lean down to ruffle his furry face. 'Who's a good boy?' You begin. 'Who's the best boy?' You ask, voice tittering with excitement. Your good boy barks twice, and raises his head proudly at your compliment. Your scruff and scritch his ears affectionately, then raise an eyebrow. 'Up for a little breeding?' You ask seductively, eyes flicking to the cock sheath underneath his form. He barks again, licking your cheek. Well, sounds like a yes to you! You grin to yourself and reach down to your dog's already growing length, stroking the growing mass and even extending further to fondle his furry balls. [PetMuttName] gives a low groan and start to pant heavily in anticipation. Turning around and stripping yourself of your gear, you go on your knees and arms. Presenting your ass for breeding, and giving it a shake for unneeded persuasion, 'C'mon big boy, I need a hard cock to breed me properly.' And, as eager as when you met him, [PetMuttName] leaps on your back and begins to hump at the flesh of your ass.";
		say "     His now hard canine cock hot-dogs between your ass cheeks with his wild thrusts. Until, eventually he hits home and thrusts into your ready cunt. Licking your lips lustfully you thrust back against his furry hips, making sure he's hilted up to his swollen knot inside your soaking quim. Barking happily [PetMuttName] begins his rapid fucking of your pussy, mating you like a bitch of his own. You yelp when his thrusts hit a sensitive spot, and can't help but feel a submissive part of you tingle and spasm as the mutt breeds your cunt. You brace yourself on the hard asphalt below while you hump simultaneously into your dog, fingers scraping the ground and that pleasurable pressure plugging your sex like a lover's cork. Your own yelps start to sound like a bitch's bark, your own slobber trails down your face and drips below.";
		WaitLineBreak;
		say "     [PetMuttName]'s thrusting then becomes especially erratic and desperate, his swollen knot hammers into your cunt lips multiple times until after a particularly hard push, his entire knot is stuffed into your squeezing quim. That sets you off like a fire alarm. Your entire body shakes and an intense orgasm shoots through you as your cunt clamps down around the knot still trying to thrust in and out of you. You can't be sure but in the moment, you think you bark as you cum. Only a few contained thrusts later, your breeding pup follows your example. A torrent of canine jizz spurts into your womb, warming up your insides in the most pleasurable way imaginable. A flood of dog cum drowns your womb in thick waves of seed and your left breathless as your mutt hangs onto your ass like a life raft. Desperately still humping in short little bursts. After a moment of recovery you groan out in post-coital bliss, turning your head to stare at your boy's panting face, his knot still locking you two in place.";
		say "     'Hmm, such a good boy,' you start, petting the side of his head. 'Looks like we may be stuck here a wh-ILAAH!' Your cut off, as [PetMuttName] begins to once again thrust into you, locked together as you are he can only move in very short humps. But that seems to suit him just fine. You let out a shriek of pleasure and fall forward, no longer able to hold yourself up. Your forearms keeping your face from scraping against the floor but unable to support your shakey weight any longer. Another bark rings in your ear as your sloppy tunnel is once again taken by your breeding hound. He can't thrust in or out of you but his eager and erratic humping into your dog-seeded quim vibrates against your most sensitive parts, your clit included. And it's only a matter of humps before your once again cumming your brains out around [PetMuttName]'s throbbing rocket. Your own drool runs onto your arms holding up your head, and onto the ground below.";
		WaitLineBreak;
		say "     You can't even push back against his frenzied humps with how entrapped in ecstasy you are. Several more orgasms later your humping hound is cumming again in your sloppy fuck tunnel. Shooting another load to add to his previous, filling you up to where little droplets of cum leak from where his knot plugs your cunt. You let out a long groan, around the same time as he lets out a long howl of pleasure. His balls resting against your clit, tightening against it as he finishes inseminating his master's sex. After a moment his furry body rests against your back, you can barely hear him panting again as your eyes close. 'J-just a moment,' you think as you drift off into a post coital nap, a loyal hound watching over as you rest for a bit. You awake sometime later with a moan, a thick red rocket being pulled from your abused quim.";
		say "     Along with a torrent of canine seed being ejected out with it. A few licks rain down on the cheeks of your ass and across your leaky cunt as you slowly recover. Standing with shaky legs and turning to [PetMuttName] still huffing slightly. 'Good... good boy.' You pant, giving him a lazy pat on the head and grabbing your gear with a delirious haze. If there was ever a dog that looked pleased with himself.";
		NPCSexAftermath Player receives "PussyFuck" from Pet Mutt;
	else if player is puremale:
		say "     Giving [PetMuttName] a grin you lean down to ruffle his furry face. 'Who's a good boy?' You begin. 'Who's the best boy?' You ask, voice tittering with excitement. Your good boy barks twice, and raises his head proudly at your compliment. Your scruff and scritch his ears affectionately, then raise an eyebrow. 'Up for a little breeding?' You ask seductively, eyes flicking to the cock sheath underneath his form. He barks again, licking your cheek. Well, sounds like a yes to you! You grin to yourself and reach down to your dog's already growing length, stroking the growing mass and even extending further to fondle his furry balls. [PetMuttName] gives a low groan and starts to pant heavily in anticipation. Turning around and stripping yourself of your gear, you go on your knees and arms. Presenting your ass for breeding, and giving it a shake for unneeded persuasion, 'C'mon big boy, I need a hard cock to breed me properly.' And, as eager as when you met him, [PetMuttName] leaps on your back and begins to hump at the flesh of your ass.";
		say "     His now hard canine cock hot-dogs between your ass cheeks with his wild thrusts. Until, eventually he hits home and thrusts into your ready asshole. Licking your lips lustfully you thrust back against his furry hips, making sure he's hilted up to his swollen knot inside your squeezing anus. Barking happily [PetMuttName] begins his rapid fucking of your backdoor, mating you like a bitch of his own. You yelp when his thrusts hit a sensitive spot, and can't help but feel a submissive part of you tingle and spasm as the mutt breeds your ass. You brace yourself on the hard asphalt below while you hump simultaneously into your dog, fingers scraping the ground and that pleasurable pressure plugging your backside like a lover's cork. Your own yelps start to sound like a bitch's bark, your own slobber trails down your face and drips below.";
		WaitLineBreak;
		say "     [PetMuttName]'s thrusting then becomes especially erratic and desperate, his swollen knot hammers into your ass ring multiple times until after a particularly hard push, his entire knot is stuffed into your tightening ass. That sets you off like a fire alarm. Your entire body shakes and an intense orgasm shoots through you as you clamp down around the knot still trying to thrust in and out of you. Your cock for its part throbs and shoots its own load, throwing you through another loop of pleasure as cum splatters below you. You can't be sure but in the moment, you think you bark as you cum. Only a few contained thrusts later, your breeding pup follows your example. A torrent of canine jizz spurts into your gut, warming up your insides in the most pleasurable way imaginable. A flood of dog cum drowns you in thick waves of seed and your left breathless as your mutt hangs onto your ass like a life raft. Desperately still humping in short little bursts.";
		say "     After a moment of recovery you groan out in post-coital bliss, turning your head to stare at your boy's panting face, his knot still locking you two in place. 'Hmm, such a good boy,' you start, petting the side of his head. 'Looks like we may be stuck here a wh-ILAAH!' Your cut off, as [PetMuttName] begins to once again thrust into you, locked together as you are he can only move in very short humps. But that seems to suit him just fine. You let out a shriek of pleasure and fall forward, no longer able to hold yourself up. Your male member rubs against the sticky ground below, humping itself into your own spent seed. Your forearms keeping your face from scraping against the floor but unable to support your shakey weight any longer. Another bark rings in your ear as your sloppy tunnel is once again taken by your breeding hound. He can't thrust in or out of you but his eager and erratic humping into your dog-seeded ass vibrates against your most sensitive parts.";
		WaitLineBreak;
		say "     It's only a matter of humps before your once again cumming your brains out around [PetMuttName]'s throbbing rocket. Your own drool runs onto your arms holding up your head, and onto the ground below. You can't even push back against his frenzied humps with how entrapped in ecstasy you are. Several more orgasms later your humping hound is cumming again in your sloppy fuck tunnel. Shooting another load to add to his previous, filling you up to where little droplets of cum leak from where his knot plugs your ass. You let out a long groan, cumming again and spurting another load of sticky seed below you, splattering your own legs, around the same time as he lets out a long howl of pleasure. His balls resting against your anal ring, tightening against it as he finishes inseminating his master's ass. After a moment his furry body rests against your back, you can barely hear him panting again as your eyes close.";
		say "     'J-just a moment,' you think as you drift off into a post coital nap, a loyal hound watching over as you rest for a bit. You awake sometime later with a moan, a thick red rocket being pulled from your abused ass. Along with a torrent of canine seed being ejected out with it. A few licks rain down on the cheeks of your ass and across your leaky backdoor as you slowly recover. Standing with shaky legs and turning to [PetMuttName] still huffing slightly. 'Good... good boy.' You pant, giving him a lazy pat on the head and grabbing your gear with a delirious haze. If there was ever a dog that looked pleased with himself.";
		NPCSexAftermath Player receives "AssFuck" from Pet Mutt;
	else if player is herm:
		say "     Giving [PetMuttName] a grin you lean down to ruffle his furry face. 'Who's a good boy?' You begin. 'Who's the best boy?' You ask, voice tittering with excitement. Your good boy barks twice, and raises his head proudly at your compliment. Your scruff and scritch his ears affectionately, then raise an eyebrow. 'Up for a little breeding?' You ask seductively, eyes flicking to the cock sheath underneath his form. He barks again, licking your cheek. Well, sounds like a yes to you! You grin to yourself and reach down to your dog's already growing length, stroking the growing mass and even extending further to fondle his furry balls. [PetMuttName] gives a low groan and starts to pant heavily in anticipation. Turning around and stripping yourself of your gear, you go on your knees and arms. Presenting your ass for breeding, and giving it a shake for unneeded persuasion, 'C'mon big boy, I need a hard cock to breed me properly.' And, as eager as when you met him, [PetMuttName] leaps on your back and begins to hump at the flesh of your ass.";
		say "     His now hard canine cock hot-dogs between your ass cheeks with his wild thrusts. Until, eventually he hits home and thrusts into your ready cunt. Licking your lips lustfully you thrust back against his furry hips, making sure he's hilted up to his swollen knot inside your soaking quim. Barking happily [PetMuttName] begins his rapid fucking of your pussy, mating you like a bitch of his own. You yelp when his thrusts hit a sensitive spot, and can't help but feel a submissive part of you tingle and spasm as the mutt breeds your cunt. You brace yourself on the hard asphalt below while you hump simultaneously into your dog, fingers scraping the ground and that pleasurable pressure plugging your sex like a lover's cork. Your own yelps start to sound like a bitch's bark, your own slobber trails down your face and drips below.";
		WaitLineBreak;
		say "     [PetMuttName]'s thrusting then becomes especially erratic and desperate, his swollen knot hammers into your cunt lips multiple times until after a particularly hard push, his entire knot is stuffed into your squeezing quim. That sets you off like a fire alarm. Your entire body shakes and an intense orgasm shoots through you as your cunt clamps down around the knot still trying to thrust in and out of you. Your cock for its part throbs and shoots its own load, throwing you through another loop of pleasure as cum splatters below you. You can't be sure but in the moment, you think you bark as you madly. Only a few contained thrusts later, your breeding pup follows your example. A torrent of canine jizz spurts into your womb, warming up your insides in the most pleasurable way imaginable. A flood of dog cum drowns your womb in thick waves of seed and your left breathless as your mutt hangs onto your ass like a life raft. Desperately still humping in short little bursts.";
		say "     After a moment of recovery you groan out in post-coital bliss, turning your head to stare at your boy's panting face, his knot still locking you two in place. 'Hmm, such a good boy,' you start, petting the side of his head. 'Looks like we may be stuck here a wh-ILAAH!' Your cut off, as [PetMuttName] begins to once again thrust into you, locked together as you are he can only move in very short humps. But that seems to suit him just fine. Letting out a shriek of pleasure you fall forward, no longer able to hold yourself up. Your male member rubs against the sticky ground below, humping itself into your own spent seed. Your forearms keeping your face from scraping against the floor but unable to support your shakey weight any longer. Another bark rings in your ear as your sloppy tunnel is once again taken by your breeding hound. He can't thrust in or out of you but his eager and erratic humping into your dog-seeded quim vibrates against your most sensitive parts, your clit included.";
		WaitLineBreak;
		say "     It's only a matter of humps before your once again cumming your brains out around [PetMuttName]'s throbbing rocket. Your own drool runs onto your arms holding up your head, and onto the ground below. You can't even push back against his frenzied humps with how entrapped in ecstasy you are. Several more orgasms later your humping hound is cumming again in your sloppy fuck tunnel. Shooting another load to add to his previous, filling you up to where little droplets of cum leak from where his knot plugs your cunt. You let out a long groan, cumming again and spurting another load of sticky seed below you, splattering your own legs, around the same time as he lets out a long howl of pleasure. His balls resting against your clit, tightening against it as he finishes inseminating his master's sex. After a moment his furry body rests against your back, you can barely hear him panting again as your eyes close.";
		say "     'J-just a moment,' you think as you drift off into a post coital nap, a loyal hound watching over as you rest for a bit. You awake sometime later with a moan, a thick red rocket being pulled from your abused quim. Along with a torrent of canine seed being ejected out with it. A few licks rain down on the cheeks of your ass and across your leaky cunt as you slowly recover. Standing with shaky legs and turning to [PetMuttName] still huffing slightly. 'Good... good boy.' You pant, giving him a lazy pat on the head and grabbing your gear with a delirious haze. If there was ever a dog that looked pleased with himself.";
		NPCSexAftermath Player receives "PussyFuck" from Pet Mutt;
	else:
		say "     Giving [PetMuttName] a grin you lean down to ruffle his furry face. 'Who's a good boy?' You begin. 'Who's the best boy?' You ask, voice tittering with excitement. Your good boy barks twice, and raises his head proudly at your compliment. Your scruff and scritch his ears affectionately, then raise an eyebrow. 'Up for a little breeding?' You ask seductively, eyes flicking to the cock sheath underneath his form. He barks again, licking your cheek. Well, sounds like a yes to you! You grin to yourself and reach down to your dog's already growing length, stroking the growing mass and even extending further to fondle his furry balls. [PetMuttName] gives a low groan and start to pant heavily in anticipation. Turning around and stripping yourself of your gear, you go on your knees and arms. Presenting your ass for breeding, and giving it a shake for unneeded persuasion, 'C'mon big boy, I need a hard cock to breed me properly.' And, as eager as when you met him, [PetMuttName] leaps on your back and begins to hump at the flesh of your ass.";
		say "     His now hard canine cock hot-dogs between your ass cheeks with his wild thrusts. Until, eventually he hits home and thrusts into your ready asshole. Licking your lips lustfully you thrust back against his furry hips, making sure he's hilted up to his swollen knot inside your squeezing anus. Barking happily [PetMuttName] begins his rapid fucking of your backdoor, mating you like a bitch of his own. You yelp when his thrusts hit a sensitive spot, and can't help but feel a submissive part of you tingle and spasm as the mutt breeds your ass. You brace yourself on the hard asphalt below while you hump simultaneously into your dog, fingers scraping the ground and that pleasurable pressure plugging your backside like a lover's cork. Your own yelps start to sound like a bitch's bark, your own slobber trails down your face and drips below.";
		WaitLineBreak;
		say "     [PetMuttName]'s thrusting then becomes especially erratic and desperate, his swollen knot hammers into your ass ring multiple times until after a particularly hard push, his entire knot is stuffed into your tightening ass. That sets you off like a fire alarm. Your entire body shakes as your overwhelmed with intense sensitivity, you clamp down around the knot still trying to thrust in and out of you. You can't be sure but in the moment, you think you bark in the moment. Only a few contained thrusts later, your breeding pup follows you. A torrent of canine jizz spurts into your gut, warming up your insides in the most pleasurable way imaginable. A flood of dog cum drowns you in thick waves of seed and your left breathless as your mutt hangs onto your ass like a life raft. Desperately still humping in short little bursts. After a moment of recovery you groan out in post-coital bliss, turning your head to stare at your boy's panting face, his knot still locking you two in place.";
		say "     'Hmm, such a good boy,' you start, petting the side of his head. 'Looks like we may be stuck here a wh-ILAAH!' Your cut off, as [PetMuttName] begins to once again thrust into you, locked together as you are he can only move in very short humps. But that seems to suit him just fine. You let out a shriek of pleasure and fall forward, no longer able to hold yourself up. Your forearms keeping your face from scraping against the floor but unable to support your shakey weight any longer. Another bark rings in your ear as your sloppy tunnel is once again taken by your breeding hound. He can't thrust in or out of you but his eager and erratic humping into your dog-seeded ass vibrates against your most sensitive parts. And it's only a matter of humps before your once again clamping tight around [PetMuttName]'s throbbing rocket and shuddering in sensitive ecstasy. Your own drool runs onto your arms holding up your head, and onto the ground below.";
		WaitLineBreak;
		say "     You can't even push back against his frenzied humps with how entrapped in ecstasy you are. Several more orgasms later your humping hound is cumming again in your sloppy fuck tunnel. Shooting another load to add to his previous, filling you up to where little droplets of cum leak from where his knot plugs your ass. You let out a long groan, around the same time as he lets out a long howl of pleasure. His balls resting against your anal ring, tightening against it as he finishes inseminating his master's ass. After a moment his furry body rests against your back, you can barely hear him panting again as your eyes close. 'J-just a moment,' you think as you drift off into a post coital nap, a loyal hound watching over as you rest for a bit. You awake sometime later with a moan, a thick red rocket being pulled from your abused ass. Along with a torrent of canine seed being ejected out with it.";
		say "     A few licks rain down on the cheeks of your ass and across your leaky backdoor as you slowly recover. Standing with shaky legs and turning to [PetMuttName] still huffing slightly. 'Good... good boy.' You pant, giving him a lazy pat on the head and grabbing your gear with a delirious haze. If there was ever a dog that looked pleased with himself.";
		NPCSexAftermath Player receives "AssFuck" from Pet Mutt;

to say RidePet Mutt:
	if Player is herm:               [Yes = HERM Identified!]
		say "     You smile, pushing [PetMuttName] unto his back, he lets out a curious whine when you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Your not quite certain he understands you but he doesn't struggle as you stroke his red rocket and align it up with your damp lips. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your lips you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big furry chest you start to speed up, growing increasingly as you feel yourself growing closer to your climax.";
		say "     With your other hand you begin to stroke your own member, feeling yourself approaching fast. The beast below you cums first, shooting jets of canine seed into your eager cunt. Not willing to take that from the loser of the fight you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your male juices over his abdomen. Coming down as your bouncing on the feral cock slows to a stop you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually it deflates enough for you to slip it out and stand up, giving the dog a pat on the head as you gather your things and get back on your way.";
		NPCSexAftermath Player receives "PussyFuck" from Pet Mutt;
	else if Player is female:       [Yes = FEMALE Identified!]
		say "     You smile, pushing [PetMuttName] unto his back, he lets out a curious whine when you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Your not quite certain he understands you but he doesn't struggle as you stroke his red rocket and align it up with your damp lips. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your lips, you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, and you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big, furry chest you start to speed up, feeling yourself getting closer to your climax.";
		say "     The beast below you cums first, shooting jets of canine seed into your eager cunt. Not willing to take that from the loser of the fight, you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your female juices over his abdomen. As your bouncing on the feral cock slows to a stop, you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually, it deflates enough for you to slip it out and stand up. You give the dog a pat on the head as you gather your things and get back on your way.";
		NPCSexAftermath Player receives "PussyFuck" from Pet Mutt;
	else if Player is male:       [Yes = MALE Identified!]
		say "     You smile, pushing [PetMuttName] unto his back, he lets out a curious whine when you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Your not quite certain he understands you but he doesn't struggle as you stroke his red rocket and align it up with your back entrance. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your sensitive anal ring you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big furry chest you start to speed up, growing increasingly as you feel yourself growing closer to your climax.";
		say "     With your other hand you begin to stroke your own member, feeling yourself approaching fast. The beast below you cums first, shooting jets of canine seed into your eager hole. Not willing to take that from the loser of the fight you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your male juices over his abdomen. Coming down as your bouncing on the feral cock slows to a stop you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually it deflates enough for you to slip it out and stand up, giving the dog a pat on the head as you gather your things and get back on your way.";
		NPCSexAftermath Player receives "AssFuck" from Pet Mutt;

to say FuckPet Mutt:
	if Player is herm: [Yes = HERM Identified!]
		say "     Seeing your opportunity for a display of dominance, you position yourself behind the curious mutt. Fishing out your hardening length you give yourself a few strokes while holding the flanks of the beaten mutt in place. Pressing the tip of your malehood against the wild dog's anal ring, you slowly push into the tight warm confines, making the mutt below you whine in a mix of pain and pleasure. After a few gentle thrusts, the horny beast is panting and leaning back against your hips. You can feel his gripping confines tighten around you as he shoots his load onto the cold ground below. His canine cock twitches and pulses as it slowly deflates, dripping a little more cum onto the soaked dirt beneath.";
		say "     Far from satisfied even though you don't let up, you pound the feral's ass until you reach your own pleasant climax and fill the whining hound up with thick spunk. It fills his back passage to the brim and spurts out, drooling down the base of your slowly softening member. Pushing the beast off your cock you stand up with authority over the creature. You take a few moments to enjoy the sight of the creamed and abused ass of the dog before you continue on your way, quite satisfied.";
	else if Player is male: [Yes = MALE Identified!]
		say "     Seeing your opportunity for a display of dominance, you position yourself behind the curious mutt. Fishing out your hardening length, you give yourself a few strokes while holding the flanks of the beaten mutt in place. Pressing the tip of your malehood against the wild dog's anal ring, you slowly push into the tight warm confines, making the mutt below you whine in a mix of pain and pleasure. After a few gentle thrusts, the horny beast is panting and leaning back against your hips. You can feel his gripping confines tighten around you as he shoots his load onto the cold ground below. His canine cock twitches and pulses as it slowly deflates, dripping a little more cum onto the soaked dirt beneath.";
		say "     Far from satisfied even though you don't let up, you pound the feral's ass until you reach your own pleasant climax and fill the whining hound up with thick spunk. It fills his back passage to the brim and spurts out, drooling down the base of your slowly softening member. Pushing the beast off your cock you stand up with authority over the creature. You take a few moments to enjoy the sight of the creamed and abused ass of the hound before you continue on your way, quite satisfied.";
	NPCSexAftermath Pet Mutt receives "AssFuck" from Player;

to say SuckPet Mutt:
	if Player is herm:               [Yes = HERM Identified!]
		say "     Striding up to the creature you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. You lick your lips looking hungrily at the exotic cock and ducking beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. Your dog lays down, unable or unwilling to stand the anticipation of his cock being suckled by you. You suck on the dog meat and rub the balls of the mutt before popping the raging hard red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog you can feel your head swimming and your desire growing as you press your nose to the ferals scrotum taking in his sexy masculine scent.";
		say "     The dog for his part is on his side, tongue lolled out and panting in pleasure. You smile at the beast letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking it all the way to his knot. Holding their for a minute letting your throat massage his canine cock. Suddenly a torrent of thick feral seed is flooding your stomach, so much so that it fills your mouth and oozes around your lips and mouth, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks you look up to see the dog snoring soundly. You shake your head and smile, wiping a dribble of canine cum from your chin and swallowing it with a final smack of your lips before moving on.";
	else if Player is female:       [Yes = FEMALE Identified!]
		say "     Striding up to the creature, you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. Looking hungrily at the exotic cock, you lick your lips and duck beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. Your dog lays down, unable or unwilling to stand the anticipation of his cock being suckled by you. You suck on the dog meat and rub the balls of the mutt before popping the raging-hard, red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog, you can feel your head swimming and your desire growing as you press your nose to the feral's scrotum, taking in his sexy, masculine scent.";
		say "     The dog, for his part, is on his side, tongue lolled out and panting in pleasure. You smile at the beast, letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking all the way to his knot. Holding there for a minute, you let your throat massage his canine cock. Suddenly, a torrent of thick feral seed is flooding your stomach, so much that it fills your mouth and oozes around your lips, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds as you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks, you look up to see the dog snoring soundly. You shake your head and smile. You wipe a dribble of canine cum from your chin and swallow it with a final smack of your lips before moving on.";
	else if Player is male:       [Yes = MALE Identified!]
		say "     Striding up to the creature you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. You lick your lips looking hungrily at the exotic cock and ducking beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. Your dog lays down, unable or unwilling to stand the anticipation of his cock being suckled by you. You suck on the dog meat and rub the balls of the mutt before popping the raging hard red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog you can feel your head swimming and your desire growing as you press your nose to the ferals scrotum taking in his sexy masculine scent.";
		say "     The dog for his part is on his side, tongue lolled out and panting in pleasure. You smile at the beast letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking it all the way to his knot. Holding their for a minute letting your throat massage his canine cock. Suddenly a torrent of thick feral seed is flooding your stomach, so much so that it fills your mouth and oozes around your lips and mouth, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks you look up to see the dog snoring soundly. You shake your head and smile, wiping a dribble of canine cum from your chin and swallowing it with a final smack of your lips before moving on.";
	NPCSexAftermath Player receives "OralCock" from Pet Mutt;

Pet Mutt ends here.
