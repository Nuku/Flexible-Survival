Version 1 of Knott by OrangeHorned begins here.

[ HP of Knott    ]
[   1 - Has met and seen post transformation             ]
[   2 - Player has the book                              ]
[   3 - Player gave him the book                         ]
[ 100 - Player failed to get the book                    ]

Table of GameCharacterIDs (continued)
object	name
Knott	"Knott"

Knott is a man. [Man or woman. Does not determine genitals, just how the game treats the character's default gender. It's not that deep.]
ScaleValue of Knott is 4. [1 is teeny tiny. 2 is small. 3 is human sized. 4 is horse sized. 5 is absolutely massive.]
Body Weight of Knott is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Knott is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
Androginity of Knott is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Knott is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Knott is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Knott is 6. [length in inches]
Breast Size of Knott is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Knott is 2. [count of nipples]
Asshole Depth of Knott is 10. [inches deep for anal fucking]
Asshole Tightness of Knott is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Knott is 1. [number of cocks]
Cock Girth of Knott is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Knott is 10. [Length in Inches]
Ball Count of Knott is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Knott is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Knott is 0. [number of cunts]
Cunt Depth of Knott is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Knott is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Knott is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Knott is false. [Leave as false. The game will change this once you've used the "look" command on the npc. Can be used for things like knowing an npc's name, etc.]
PlayerRomanced of Knott is false. [Leave as false. You can change this to true later within events to have dialogue and scenes specific to "dating" an npc!]
PlayerFriended of Knott is false. [Same as above, but for friendship.]
PlayerControlled of Knott is false. [Same as above but for making a character your slave.]
PlayerFucked of Knott is false. [Leave as false. Changes to true when you have sex with a character.]
OralVirgin of Knott is false. [Self explanatory. Whether they've put their mouth on some genitals.]
Virgin of Knott is true. [Self explanatory. Vaginal virginity. Set to true or false based on your idea of a character. If they don't have it, leave it as true!]
AnalVirgin of Knott is false. [Same as above but for butts.]
PenileVirgin of Knott is false. [Same as above but for dicks.]
SexuallyExperienced of Knott is true. [How slutty a character is.]
TwistedCapacity of Knott is true. [Twisted Characters can take any penetration, no matter the size. Can be changed to allow you to make stomach bulging and other such scenes.]
Sterile of Knott is true. [steriles can't knock people up. Use to prevent pregnancies from a character.]
MainInfection of Knott is "". [A character's infection. Case sensitive. Put the infection name here and that NPC may now infect the player, if the infection itself is infectious.]
Description of Knott is "[Knottdesc]"; [Points to the character description.]

to say Knottdesc:
	say "     The former terra-cotta skinned priest shyly stands around 7 feet, his clothes are what you imagine what some male stripper in a priest getup would use at a burlesque show- hugging onto this masculine body to accentuate the changes. You see a blue colored blanket wrapped around his crotch to at least 'try' to keep his bulge hidden, yet the python still manages to peek out when he shuffles his feet. He sees you looking at his unkempt shoulder length hair, giving a grunt of annoyance as his mostly more human kept face presses into a pout, their bovine ears drooping. The last thing you can see of note is a colorful rosary just above their collarbone.";

Scent of Knott is "Knott smells like  the inside of some antique store mixed with some earthy hints, the best way to describe it is some church mixed with some herbal spring. Oddly enough those two conflicting things actually go well to him.". [How the character smells. Can be detailed or not.]

instead of conversing Knott:
	say "[KnottTalkMenu]";

to say KnottTalkMenu:
	LineBreak; [important. Separates the start from the question and available answers!]
	say "Knott sees you sizing him up, 'Yes? What is it?' "; [This is what will show as the question the player must answer.]
	now sextablerun is 0; [Tells the game to start the menu up.]
	blank out the whole of table of fucking options; [Removes old menu options from OTHER menus. Always need this line.]
	[] [These blank brackets help separate the options and are important to prevent a wall of text.]
	choose a blank row in table of fucking options; [Tells the game this is an option.]
	now title entry is "Himself"; [Tells the game the name of the option.]
	now sortorder entry is 1; [The order in which options appear. NEVER make two options the same number!]
	now description entry is "Try to learn a bit about Knott's time before being a Firbolg"; [Further description to tell the player what this choice entails.]
	[]
	choose a blank row in table of fucking options;
	now title entry is "Current Form";
	now sortorder entry is 2;
	now description entry is "How has Life been after being transformed?";
	[]
	if HP of GivingFirbolg is 2:  [This line adds the quest option only if HP is 2]
		choose a blank row in table of fucking options;
		now title entry is "Missing items";
		now sortorder entry is 3;
		now description entry is "Ask Knott about what items might be at his old stomping grounds.";
	[]
	if HP of Knott is 2:
		choose a blank row in table of fucking options;
		now title entry is "Give Knott the book";
		now sortorder entry is 4;
		now description entry is "Give Knott the book he asked for.";
	[]
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
				now sextablerun is 1; [Tells the game you made your choice and to show the corresponding scene.]
				if (nam is "Himself"): [The text in quotations MUST match the text in "title entry". Case sensitive.]
					say "[KnottTalk1]"; [Points to a scene.]
				if (nam is "Current Form"):
					say "[KnottTalk2]";
				if (nam is "Missing items"):
					say "[KnottTalk3]";
				if (nam is "Give Knott the book"):
					say "[KnottTalk4]";
				wait for any key;
		else if calcnumber is 0: [Plays if the player says nevermind.]
			now sextablerun is 1;
			say "     You step back from Knott, who looks at you a little funny. 'OK, never mind, I guess?' he questions."; [The text for if you say "nevermind" instead of picking an option. Can be detailed if you want!]
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list; [Removes the menu from the screen.]

to say KnottTalk1: [The actual scene the talk menu points to!]
	say "     The former older man seems to confusingly look at you, he carefully knits to himself with his satchel next to him- all while he keeps another eye on Giving. 'I'll keep it brief, honestly I've always been a man who would rather speak with his actions or grand speech than very basic small talk, Giving told me my new nickname Knott considering I was once a marriage priest, but I had... other urges that I had to attend to. Was visiting this place for a funeral when the whole... what did those young ones call it, the 'furry apocalypse' happened'.";
	say "With a palm through his new hair, he continued, 'Part of me was always interested in what was causing all those people to go insane, now I get it, this fresh feeling of old vitality coming back to me, no back pain, I feel great, like the man I was almost 50 years ago- and I know this time it aint my brain failing me!'";

to say KnottTalk2:
	say "     'Mostly probably doing what God possibly intended me to do, these people here need guidance, someone to talk to about all that ails them, they welcomed me with open arms, so they should only expect any who have walked the path of righteousness to help them out.' You ask a side question on what caused them to give up the priest's life, Knott's face lightens up as he tries to hide his humane impulse, 'I do not wish to speak of it, especially not right now in this given time, I just.... It comes with its own baggage you see? When I get more comfortable here maybe ill be in the mood for such gab.'";

to say KnottTalk3:
	say "     You ask him about he stuff he possibly left back at where he called safe haven before becoming a Firbolg, 'You would do that for a old man like me? I mean...' He gives you a look before pausing a bit... finally pursing his lips before continuing, 'This wont be a easy journey, there's something we were trying to run from there, some people in this... city... have given into the most rabid of hedonisms. I doubt any you saw running with me went back there after the infected ferals routed us, but if you do go back... I had a book there that I was reading... if you could grab it for me, I would be forever in your debt.'";

to say KnottTalk4:
	say "     you pull out the book you found from the High Rise District 'This book ... .I left it in one of the last places I went when I was still human. I have no clue what process you might have been through to get this, but I thank you.'";
	say "     You give him the details on what happened when you went to grab the book, about Travis and his little band of lunatics.";
	say "     'I sadly do not know anything about this Travis you speak of, but the kid sounds familiar, him and his mom weren't bad company... do not blame yourself wholly for not being able to do anything for them. You went into this to help me out and I thank you deeply. That's what worries me the most of just opening myself up to such things. These thoughts within my head yearn for me to spread my lusts onto the wind.'";
	say "     He takes a deep pause, realizing another certain Firbolg was peeking behind a tree at your conversation, 'Giving asked you to do this for me, that much I know. The way this camp is set up makes me wish to push these lustful desires into something more constructive. So if you wish, I can try getting to know you a little more personally through the rubbing of skin.'";
	say "     Wow, that was easier than expected";
	WaitLineBreak;
	say "     'I wasn't just being prudish, more trying to isolate myself from others, but with how abrasive Giving can be, I can tell he is just trying deeply to help out even if he needs to let people come to their own conclusions. He warned me about needing to partake in the 'sermons' they have to placate our passions together, but I for one can not stand the idea of such a pagan ritual, but if I come at it with the mindset of lowering the chances of doing these... horrid actions the intrusive thoughts would drag me to do, then I can bare it. Sangre seems to be someone who has much on his hands anyway to be the odd nail out in this new group'";
	say "     Happily, he puts the book neatly under his robes belt, something about his expression grew softer.";
	say "     'Now Giving, come out'";
	say "     'Wha- was it obvious?'";
	say "     Your build is not one meant for lurking, but I will be joining you more now, next time though don't send people to do work that both of us could do together my child";
	say "     Giving's chuckle of embarrassment restores a bit of hope you have in this apocalypse, you hope things get better for the commune.";

instead of fucking Knott:	[Same as conversing, but works when the player says "Fuck Knott" in Knott's presence.]
	if (lastfuck of Knott - turns < 6):
		say "     'The body of mine even still needs breaks, should we have a little coffee or chat first?'";
	else if HP of Knott < 1 or Elusive Book is not resolved:
		say "     	 'I am not in the mood for that right now, I have other things on my mind.' Knott isnt going to budge until you resolve the Elusive Book quest, try checking the High Rise District.";
	else:
		say "[KnottSexMenu]";

to say KnottSexMenu:
	LineBreak; [important. Separates the start from the question and available answers!]
	say "How do you want to fuck Knot?"; [This is what will show as the question the player must answer.]
	now sextablerun is 0; [Tells the game to start the menu up.]
	blank out the whole of table of fucking options; [Removes old menu options from OTHER menus. Always need this line.]
	[
	if Player is male: [Add this line if a specific scene requires a penis! You can add all sorts of conditions like this. Including female for vaginas, and even reference variables to make scenes appear after a certain point!]
		choose a blank row in table of fucking options; [Tells the game this is an option.]
		now title entry is "Give Anal"; [Tells the game the name of the option.]
		now sortorder entry is 1; [The order in which options appear. NEVER make two options the same number!]
		now description entry is "Stuff Knott's butt."; [Further description to tell the player what this choice entails.]
	[]
	choose a blank row in table of fucking options;
	now title entry is "Hand Stuff";
	now sortorder entry is 2;
	now description entry is "Finger all the things.";
	]
	if player is Female:
		choose a blank row in table of fucking options;
		now title entry is "Receive Vaginal";
		now sortorder entry is 1;
		now description entry is "Ask Knott to penetrate you vaginally";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Receive Anal";
	now sortorder entry is 2;
	now description entry is "Ask Knott to penetrate you anally";
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
				if (nam is "Receive Vaginal"):
					say "[KnottSex1]";
				if (nam is "Receive Anal"):
					say "[KnottSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the firbolg, shaking your head slightly as he gives a questioning look. 'Nothing coming to mind? That's alright, there's always next time,' Knott says with a friendly smile.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KnottSex1: [Vaginal]
	say "     You ask him to sink his cock into your pussy, and not to worry if he stretches you out a bit; the nanites should fix it anyway. He grins at your request. 'In the mood for something vigorous, are you? Well, I think that I can oblige,' he replies. 'I hope that you won't mind if I take charge for this,' he continues. The moment you consent, he pushes you to the ground with your groin high in the air, vulgar and inviting. He takes a moment to appreciate it before he slides his bulky fingers past your labia and twists them in an exquisite manner. 'I will admit, I've only done this with Giving a few times, so my apologies if my technique is a little rusty,' Knott informs you. You don't even need to reply properly, a listy purr signaling your enjoyment as his middle finger stimulates at the edges of your nether lips, quickly testing out the depth.";
	say "     It doesn't take long for your pussy to slicken enough for a second finger to be added, the friction of his knuckles brushing over your clit stimulating more juices of arousal. Despite his claims of inexperience, Knott seems to know exactly how to use his fingers, acclimatising your vagina to his touch before advancing deeper. It isn't just the penetration either, as his other hand caresses over your body, stroking your tummy, tweaking your nipples, and teasing [if player is Male]your cock[else]your groin[end if]. All in all, it is far more affection than the majority of creatures in the city would provide you with. 'Tell me if you want me to speed up or slow down. Everyone is different after all,' the firbolg tells you. Looking at him, you are reminded of how gentle he is despite his size and you are sure that he'll be just as attentive once he has you speared on his cock.";
	WaitLineBreak;
	say "     Thanks to the nanites spreading from him, your cunt no matter the size is able to able to take such a large shaft. Knott quickly throwing his head back as he takes pace with pounding away at your [CockSpeciesName of Player in lower case] pussy, 'oh.... [if Player is not defaultnamed][Name of Player][else]please[end if] take my young...' a low moan bellows from his throat from all the pleasure coursing through his body, giving into what the nanites have been possibly telling him to do constantly. Its only a amazement he could last against such a seductive song for so long when every push and tug of his cock in you is spraying hot pre all over your fertile depths.";
	say "     You cant hold for much longer, quickly you start squirting hot femcum all over the place[if player is Male], your cock following after with alabaster cum spraying the floor[end if] and a few thrusts later your tryst companion reaches his own limit, balls flexing intensely before sending large batches of virile cum straight to your womb. His body lays ontop of you- warmly caressing you as both of you take time to recover... his cock still standing hard as ever deep inside. With his sweat getting all over you, your vitality slowly returns to you after a while.";
	WaitLineBreak;
	say "     'your enjoyable to be inside... do come back sometime on your adventures, my cock can have a mind of its own...' your cunt trembles at the throught of him inside of you again, you may have been infected with Beag nanites, but you know you would love to do it again.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Knott";

to say KnottSex2: [Anal]
	say "     You tell him that you want to feel his cock in your ass. 'Is that so? I think that I can accommodate such a request, but don't blame me if you can't sit quite as comfortably afterwards,' Knott chuckles. 'Leave yourself in my capable hands and I promise that you won't regret it. Now, if you wouldn't mind bending over and I'll try to prepare you a bit before we get to the main course,' he suggests. You obey without hesitation, presenting yourself to him, even spreading your buttocks apart to give him an unsurpassed view of his objective. He spends several seconds drinking in the sight before him before stepping up to you and caressing a hand over your flank and briefly rubbing his fingers against your hole. 'Can't say that I'm particularly experienced with this, but hopefully you'll enjoy my learning experience too. The reward will certainly be worth it,' Knott grins, feeling the give of your pucker before bringing his hand away again.";
	say "     'I regret that I don't have any proper lubricant for this, so we'll have to make do with saliva,' the firbolg apologizes. 'Don't worry, there shouldn't be any risk of transformation. If there was, I'm sure that semen would be worse.' He quickly sucks a couple of his fingers to slicken them before sliding them against your anus. Starting with one finger, he slips it inside and you feel the walls of your ass squeeze and constrict around it as it gently burrows deeper. 'You don't seem to be having much trouble with that, maybe this will be easier than I thought.";
	say "     Knott comments, pressing a second finger in alongside the first, steadily thrusting them in and out to stretch and lubricate you. You can feel how careful he is being, unnecessary as it seems to be, but if it makes him feel better, you're happy to be patient. It's strangely comforting that he is so focused on your wellbeing when so many in the city wouldn't have even thought twice before mounting you and going in dry. Fortunately the nanites seem to adapt for that, but this... this is nice too.";
	WaitLineBreak;
	say "     Such niceness is only coupled to the fact that the said man your banging is also still a big fella who is ready to turn you with your ass above your head as your pinned to the ground with your legs above you. Knott quickly moves ontop of you to get in position before pushing himself into the slightly lubed hole, quickly getting a moan from both of you as his large shaft hits your prostate. With a few more guiding thrusts, your hole vibrates with nanites as the Firbolgs sweaty body begins to make you feel all giddy as the pain that should be there is only making you want to cum hard.";
	say "     Your new mate bucks deep into you while your in a trance, both of you frantically breathing as you silently chase your orgasms, Knott fervantly holds your [bodySpeciesName of Player] body sensually, caressing the curves as he leans over to look you in the face. With a few more tugs you feel a rush of cum flowing from the base of his shaft all the way to your belly- quickly expanding it from the volume before spilling back out. Knott's tongue hangs out as he holds onto your body for support.";
	WaitLineBreak;
	say "     'your enjoyable to be inside... do come back sometime on your adventures, my cock can have a mind of its own...' your ass gets tingly when he motions to his meat, you may have been infected with Beag nanites, but you know you would love to do it again.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Knott";
	CreatureSexAftermath "Player" receives "AssFuck" from "Knott";

Section 3 - Events


Knott ends here.
