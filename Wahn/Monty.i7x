Version 1 of Monty by Wahn begins here.
[Version 1 - Put into its own file]

[ Monty, the NPC                                                        ]

[ Stamina of Monty - location                                           ]
[   0: out in the city                                                  ]
[   1: in Camp Bravo                                                    ]

[ Libido of Monty - sexual interactions                                 ]
[   0: nothing yet since the meeting event                              ]
[   1: player didn't offer help with his toys                           ]
[   2: player helped him train                                          ]

[ Intelligence of Monty - Nanite Stuff                                  ]
[   0: didn't talk about his ass                                        ]
[   1: talked about his strangely tight hole                            ]
[   2: mentioned Dr. Matt before                                        ]
[   3: took him to see Dr. Matt (he knows he's human still)             ]

[ Some notes about Monty's character:                                   ]
[ Nanite-Enhanced Ass (otherwise uninfected) -> extra sensitive         ]
[ Has seen a humongous cock before - won't be reallyshocked about them  ]
[                                                                       ]
[ Background:                                                           ]
[ Soldier from Florida, from a military family                          ]
[ Was part of the scouting party who got contacted by Diego             ]
[                                                                       ]
[ Gender Preferences:                                                   ]
[   Into: Women                                                         ]
[   Willing to experiment: Men, Cuntboys, Male Herms                    ]
[   A bit freaked out by: Dickgirls, Female Herms                       ]
[   Not gonna touch Adam, because he's Tiny's son                       ]

[ Notes for Arianna: (related character)                                ]
[ ...                                                                   ]

[ Notes for Brayden: (related character)                                ]
[ ...                                                                   ]

[ Memories (stored in Traits of Monty):                                 ]
[ Assplay_Talk1 - Monty talked about his outlook changing for anal      ]
[ Shaving_Talk1 - Talked about him shaving his body                     ]
[ Cum_Tasted1 - Has tasted cum before (his own or otherwise)            ]
[ Rimming_Banned1 - Player doesn't want to rim him, not talked about it ]
[ Rimming_Banned2 - Player doesn't want to rim him, talked about it     ]
[ Alexandra_Met1 - He told the player about meeting Alexandra           ]

MontyFoodTimer is a number that varies. [@Tag:NotSaved]
MontyDrinkTimer is a number that varies. [@Tag:NotSaved]

Section 1 - events

after going to Parade Ground while (Lone Soldier is resolved and (Resolution of Lone Soldier is 1 or Resolution of Lone Soldier is 2) and Stamina of Monty is 0):
	try looking;
	LineBreak;
	say "     As you stroll onto the parade ground and start to look around, you're suddenly approached by a muscular, African-American man with a surprised expression on his face. He's about six foot tall, shaved bald, and you've seen him before - in fact, you've seen pretty much all of him, down to the chocolate-brown buns of his ass. Remembering how you encountered Monty on the streets, culminating in [if Resolution of Lone Soldier is 1]watching a heavy load of minotaur cum leak from his ass[else]eating a tasty load of minotaur cum from his ass[end if], an inevitable grin crosses your features as you greet him. 'What the hell are you doing here?' the man asks, starting out a little loud and then quickly dropping to a half-whisper as some others turn to look what's going on. While you're still thinking of a reply, he meets your eyes, then gives a minute nod to the bystanders and adds for their ears, 'You're late for the debriefing. Come on, gotta hurry up!'";
	say "     Grabbing your upper arm with a strong hand, the soldier pulls you along with him to the east, passing through a few rows of smaller tents until you find yourself standing before the windowless side wall of an office building, right next to where a crashed city bus is sticking through the wall. It's a fairly out of the way corner of the camp, so just the right spot for a private conversation. 'So. What's going on here? You helped me out with that hyena out there on the streets, and after that... well, you know what you did. And now you're just casually wandering into a secure army camp?' For a second, you wonder how he'd react if you said that the camp isn't really that secure, what with their own horny minotaur bull breeding [if HP of Adam > 3]both male and female soldiers[else]all of the strapping soldier hunks[end if] right in the center and everyone's reasoning pretty out of whack given the constant cloud of the bull-man's musk inflaming people's libido pretty fiercely. Might not be the best of options to say, though.";
	LineBreak;
	say "     [bold type]After a short pause to think about it, you say:[roman type][line break]";
	say "     [link](1)[as]1[end link] - You're an informant and have access for your intel.";
	say "     [link](2)[as]2[end link] - You're a soldier too.";
	say "     [link](3)[as]3[end link] - Security isn't the best really. It was easy to talk your way in.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say you're an informant, [link]2[end link] to pretend you're a soldier or [link]3[end link] to admit you lied your way in.";
	if calcnumber is 1:
		LineBreak;
		say "     Your quick-fire explanation for Monty's questions is that you're a local informant and have been allowed access to the camp so you can report what you know. He listens to your words, frowning a little as he mulls it over, then nods. 'That... makes sense. I guess I should thank you for your patriotism and determination, focusing on what's important despite the other impulses that being in this place puts in your head.' Pressing his lips together, the black man then looks around to make sure no one is in earshot and asks, 'Err, you didn't report about our encounter yet, did you? How it ended, especially.' Embarrassment is clearly written on his face, even though his dark skin hides any blush that might be there. Putting an understanding smile on your face, you ensure him that none of that has been shared with anyone.";
	else if calcnumber is 2:
		LineBreak;
		say "     You start to explain that you're also a soldier, but Monty quickly shoots you down by asking for your unit and other specifics, which you don't have any proper answers to. He frowns, looking you up and down, then reaches out to grasp your shoulder, 'People bought that? Really? Listen, I don't think you're a bad sort, and don't want to cause trouble by exposing you. One mostly sane civvy wandering about in the camp won't cause issues in the end. Still, don't try that line with anyone else, you hear me?' He holds your gaze with an intense expression until you nod in assent. 'Good. Now, something else...' Pressing his lips together, the black man then looks around to make sure no one is in earshot and asks, 'Err, you didn't tell anyone about our encounter, did you? How it ended, especially.' Embarrassment is clearly written on his face, even though his dark skin hides any blush that might be there. Putting an understanding smile on your face, you ensure him that none of that has been shared with anyone.";
	else if calcnumber is 3:
		LineBreak;
		say "     You clear your throat and admit to him that it was fairly easy to gain access to the camp with a little bit of lying. Monty frowns as he hears this, then looks you up and down. 'I guess with the usual behavior of the infected, someone simply walking up and having a chat would seem fairly believable. Listen, I don't think you're a bad sort, and don't want to cause trouble by exposing you. One mostly sane civvy wandering about in the camp won't cause issues in the end. Still, you better be on your best manners!' He holds your gaze with an intense expression until you nod in assent. 'Good. Now, something else...' Pressing his lips together, the black man then looks around to make sure no one is in earshot and asks, 'Err, you didn't tell anyone about our encounter, did you? How it ended, especially.' Embarrassment is clearly written on his face, even though his dark skin hides any blush that might be there. Putting an understanding smile on your face, you ensure him that none of that has been shared with anyone.";
	say "     'Thanks. I might have glossed over it a bit in my after-action report when I got back to the camp. As far as that goes, there was just some unfortunate 'slippage' during the heat of the action when fighting some hyenas.' Rubbing the back of his neck and blowing out his breath, Monty looks aside for a few seconds, then catches himself and chuckles under his breath as he looks back at you. 'Anyways, thanks for understanding. By the way, I'm in the tent over there, with nine other guys, so you know where to find me if you wanna talk. Just don't bring up any embarrassing topics unless we're alone.' That said, he walks you over through the rows of tents, stopping in front of his own. 'Got some tasks to do right now, but see ya later, alright?'";
	wait for any key;
	now Stamina of Monty is 1;
	move Monty to Soldier Tents;
	move Player to Soldier Tents;

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Monty	"Monty"

Monty is a man.
ScaleValue of Monty is 3. [human sized]
Body Weight of Monty is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Monty is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Monty is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Monty is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Monty is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Monty is 3. [length in inches]
Breast Size of Monty is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Monty is 2. [count of nipples]
Asshole Depth of Monty is 8. [inches deep for anal fucking]
Asshole Tightness of Monty is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Monty is 1. [number of cocks]
Cock Girth of Monty is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Monty is 10. [length in inches]
Ball Count of Monty is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Monty is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Monty is 0. [number of cunts]
Cunt Depth of Monty is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Monty is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Monty is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Monty is false.
PlayerRomanced of Monty is false.
PlayerFriended of Monty is false.
PlayerControlled of Monty is false.
PlayerFucked of Monty is false.
OralVirgin of Monty is false.
Virgin of Monty is true.
AnalVirgin of Monty is false.
PenileVirgin of Monty is false.
SexuallyExperienced of Monty is true.
TwistedCapacity of Monty is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Monty is false. [steriles can't knock people up]
MainInfection of Monty is "Human".
Description of Monty is "[MontyDesc]".
Conversation of Monty is { "Oh, hello." }.

to say MontyDesc:
	if debugactive is 1:
		say "     DEBUG -> Dexterity: [Dexterity of Monty], HP: [Libido of Monty], Libido: [Libido of Monty], Lust: [lust of Monty], Thirst: [thirst of Monty] <- DEBUG";
	project Figure of Monty_clothed_icon;
	say "     Montgomery Freeman is an African-American soldier in his early-twenties, about six feet tall and quite well built - with his green army shirt stretching over bulging pecs and biceps. His head is shaved bald, with not a trace of hair left on the smooth black skin. He gives you a friendly nod as he becomes aware of your attention.";

The scent of Monty is "     Monty has a nice masculine human smell.".

instead of conversing Monty:
	project Figure of Monty_clothed_icon;
	say "     As you approach to talk to the black soldier, he gives a casual nod towards the back of the tent you stand in front of, leading the way. Soon, you find yourself standing before the windowless side wall of an office building, right next to where a crashed city bus is sticking through the wall. It's a fairly out of the way corner of the camp, so just the right spot for a private conversation.";
	LineBreak;
	say "[MontyTalkMenu]";

to say MontyTalkMenu:
	Let TalkDone be false;
	say "     [bold type]What do you want to talk about with Monty?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Monty";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about his background";
	now sortorder entry is 2;
	now description entry is "Learn a bit about him";
	[]
	if MontyFoodTimer - Turns > 3:
		choose a blank row in table of fucking options;
		now title entry is "Ask for some food";
		now sortorder entry is 3;
		now description entry is "Tell Monty you're hungry";
	[]
	if MontyDrinkTimer - Turns > 3:
		choose a blank row in table of fucking options;
		now title entry is "Ask for something to drink";
		now sortorder entry is 4;
		now description entry is "Tell Monty you're thirsty";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about things he's seen in the city";
	now sortorder entry is 5;
	now description entry is "Lean about what he's encountered out in the streets";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Discuss the minotaur";
	now sortorder entry is 6;
	now description entry is "Ask his opinion on Tiny Tim";
	[]
	if Libido of Monty is 0:
		choose a blank row in table of fucking options;
		now title entry is "His 'special transport' mission";
		now sortorder entry is 7;
		now description entry is "Talk about what he was doing, and the aftermath";
	[]
	if Libido of Monty > 1:
		choose a blank row in table of fucking options;
		now title entry is "His asshole";
		now sortorder entry is 8;
		now description entry is "Talk about him being so tight, after being fucked by a minotaur and all";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His sexual preferences";
	now sortorder entry is 9;
	now description entry is "Ask who he prefers to be with";
	[]
	if Libido of Monty > 1 and "PlayerRelationship_FuckBud" is not listed in Traits of Monty and "PlayerRelationship_FuckBud+WantsMore" is not listed in Traits of Monty and "PlayerRelationship_FuckBud+Disappointment" is not listed in Traits of Monty:
		choose a blank row in table of fucking options;
		now title entry is "Your 'relationship'";
		now sortorder entry is 10;
		now description entry is "Discuss how he sees things between you";
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
				if nam is "Just chat":
					say "[MontyTalk1]";
				else if nam is "Ask about his background":
					say "[MontyTalk2]";
				else if nam is "Ask about things he's seen in the city":
					say "[MontyMonsterTalk]";
				else if nam is "Ask for some food":
					say "[MontyFoodRequest]";
				else if nam is "Ask for something to drink":
					say "[MontyDrinkRequest]";
				else if nam is "Discuss the minotaur":
					say "[MontyTalk3]";
				else if nam is "His 'special transport' mission":
					say "[MontyTalk4]";
					now TalkDone is true;
				else if nam is "His asshole":
					say "[MontyTalk5]";
					if Intelligence of Monty > 2:
						now TalkDone is true;
				else if nam is "Your 'relationship'":
					say "[MontyRelationshipTalk]";
				else if nam is "His sexual preferences":
					say "[MontyTalk6]";
				if TalkDone is false:
					say "[MontyTalkMenu]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the soldier, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MontyFoodRequest:
	let OtherSoldierGender be "he";
	if a random chance of 1 in 2 succeeds:
		now OtherSoldierGender is "she";
	if "Hunger_Talk1" is not listed in Traits of Monty: [never asked for food]
		add "Hunger_Talk1" to Traits of Monty;
		say "     As you bring up the topic of food and being hungry, Monty's eyebrows rise a little, followed by saying, 'Sure thing, come on and let's go to the mess tent. I guess things are pretty bad out there in the city, hm? It's still so hard to wrap my head around things. I mean, we're right in one of the biggest cities of your country! Things aren't supposed to play out like in the third world here, but the situation is fucked up and gone to hell. Shows you how close society is to collapse at all times.' Blowing out his breath, the black soldier pats you on the shoulder and guides you deeper into the little tent city, finally arriving at a rectangular tent with a large entrance. Inside, there are rows of tables and benches, with a food dispensing line at one end of the tent. The two of you wait your turn, casually chatting a bit until you collect trays with bread, reconstituted scrambled eggs with cheese and a bottle of water.";
		say "     Monty guides you to a table off in a corner somewhere and you sit down to dig into your meals. While it may not be gourmet food, there's a good portion size to it at least, and it fills your stomach quite nicely. In between taking bites, your soldier buddy and you talk about the situation of having limited supplies in the city, given that there's a blockade all around it. 'We didn't have much choice though, or this shit would have spread all over the place by now.' Frowning, Monty absent-mindedly pushes some of his egg around with a fork, his mind in thought. Finally, he shrugs, 'It's a fucked-up situation, that's what it is. Things aren't supposed to go like this, not here at home! All this chaos and whatnot!' At that point, another soldier sitting just a little down the table from you throws in that [OtherSoldierGender] heard about [one of]a huge wyvern snatching up a full truck of supplies meant for distribution in the city, driver and soldiers inside included[or]hyena gangmembers on bikes attacking a distribution zone at night, making off with all of the supplies[or]a food distribution stockpile turning up empty overnight, after some goo creatures slithered in through the drains and gorged themselves on it[or]some rumors of planned air-drops of food all over the city, as that was the only way to deliver it without danger to personnel[or]a report of giant fruit trees and other plants producing insane amounts of food all of a sudden. The question is if one can trust those things though, as the infection must be causing it[or]a bunch of people are at least holding out in one of the big malls in the city, living off the stockpiles there[at random].";
	else:
		say "     As you bring up the topic of food and being hungry, Monty's gives you a nod, followed by saying, 'Sure thing, come on and let's go to the mess tent. Still can't believe that things turned dire so quickly, but I guess that shows you how close society is to collapse at all times.' Blowing out his breath, the black soldier pats you on the shoulder and guides you deeper into the little tent city, finally arriving at a rectangular tent with a large entrance. Inside, there are rows of tables and benches, with a food dispensing line at one end of the tent. The two of you wait your turn, casually chatting a bit until you collect trays with bread, reconstituted scrambled eggs with cheese and a bottle of water.";
		say "     Monty guides you to a table off in a corner somewhere and you sit down to dig into your meals. While it may not be gourmet food, there's a good portion size to it at least, and it fills your stomach quite nicely. In between taking bites, your soldier buddy and you talk about the situation of having limited supplies in the city, and the way that are being tried to mitigate it. At some point, another soldier sitting just a little down the table from you throws in that [OtherSoldierGender] heard about [one of]a huge wyvern snatching up a full truck of supplies meant for distribution in the city, driver and soldiers inside included[or]hyena gangmembers on bikes attacking a distribution zone at night, making off with all of the supplies[or]a food distribution stockpile turning up empty overnight, after some goo creatures slithered in through the drains and gorged themselves on it[or]some rumors of planned air-drops of food all over the city, as that was the only way to deliver it without danger to personnel[or]a report of giant fruit trees and other plants producing insane amounts of food all of a sudden. The question is if one can trust those things though, as the infection must be causing it[or]a bunch of people are at least holding out in one of the big malls in the city, living off the stockpiles there[at random].";
	LineBreak;
	say "     The three of you talk a little more about the topic, then eventually get up and put your used trays in the cleaning bin. Wishing you a good day and saying to stay safe out in the city, the other soldier leaves Monty and yourself. Monty goes to snatch an MRE energy bar and quietly passes it to you, for good measure, before you leave the mess tent. Along the route back to the front of the camp, you don't exchange much further, with Monty being in a kind of thoughtful mood. 'I should take some food to them too sometime,' you hear him mumble under his breath, ";
	if "Brayden_Met1" is listed in Traits of Monty: [TODO: remember to adjust this in the future if this changes]
		say "but before you can ask if he means Arianna and Brayden, ";
	else:
		say "but before you can ask what he means, ";
	say "someone of higher rank steps into view, making Monty go stiff and salute, then receive some orders that take him elsewhere in the camp. With an apologetic, 'See you later,' the black soldier is off to do his duty, leaving you alone to wander the last few steps to where you started.";
	now Hunger of Player is 0;
	PlayerDrink 25;
	ItemGain food by 1;
	now MontyFoodTimer is turns;

to say MontyDrinkRequest:
	say "     As you tell Monty that you're thirsty, he gives you a pat on the arm and nods his head to a passage between two nondescript tents. Following a path that takes several turns and corners in the camouflage-colored tent city, you're soon at a supply tent, out of which your buddy retrieves a bottle of water to hand to you. ";
	if Thirst of Player > 20:
		say "Greedily chugging it down, you're watched by the black soldier, who shakes his head and comments, 'Man, kinda feels like being in a third world country, doesn't it? Not being able to have access to safe water and all of that.' He grimaces, perturbed by the thought, and leads you back to where you started.";
		PlayerDrink 25;
	else:
		say "Packing the bottle of water away carefully, you're watched by the black soldier, who shakes his head and comments, 'Man, kinda feels like being in a third world country, doesn't it? Not being able to have access to safe water and all of that.' He grimaces, perturbed by the thought, and leads you back to where you started.";
		ItemGain water bottle by 1;
	now MontyDrinkTimer is turns;

to say MontyTalk1: [chatting]
	say "     You have a friendly, casual chat with Monty, just shooting the breeze a bit about nothing too important really. [one of]Starting to talk about sports reveals that Monty is a football fan, and he recounts some exciting games he saw recently. Also, he even played a fair bit himself in high school, but never went professional since he already knew he was going to join the army. [or]He likes action movies quite a bit, the more explosions the better. [or]Somehow, the topic of conversation turns to former relationships and Monty recounts the women he's been with, mostly sexy latinas. Apparently he's got a little bit of a type. [at random]Your talk is interesting and it's nice to just hang out a little, though you can't help but feel a little wistful about it all, as your current life is so very different to anything that came before. Amazing what difference just a few weeks can bring with them.";

to say MontyTalk2: [background]
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "     A smile spreads over Monty's face and he replies, 'I'm a Florida boy, born and bred. Summer, sun and beaches, right? Well, what most people forget are the occasional alligator in your back yard, lots of mosquitoes and the odd hurricane to go. Still, that's home for you and I like going back to my old stomping grounds when I'm on leave. For example, there was this one time when...' He proceeds to recount a funny and rather outrageous story of what he and some buddies got into while partying one weekend on the beach, after which you chat a bit more about his life before joining the military.";
		-- 2:
			say "     'Serving in the army is a family tradition. My dad and gramps both did their duty before me, and I never really wanted to do anything else. Though what's going on here is sure different than any of their stories about missions who knows where in the world. Not sure I'll tell all the details of what went on - you know, with the minotaur and whatnot.' He rubs his ass a little as he says this, remembering the interaction he had with Tiny.";

[TODO: add more "friendship" content]

to say MontyMonsterTalk:
	say "     As you ask Monty about the things he's seen in the city, both during is regular time as well as when he was out alone on his 'special transport' mission, the African-American man blows out his breath and scratches the back of his neck. 'Man, there's a lot of shit out there, I can tell you that. Some of it is almost tempting, in a horribly perverted way, other stuff is just... odd, but you can also turn a corner and run right into nightmare-fodder in a second. What kind of tale were you after, exactly?'";
	say "     [link](1)[as]1[end link] - You wanna hear about something he thought hot.";
	say "     [link](2)[as]2[end link] - What odd things did he see?";
	say "     [link](3)[as]3[end link] - You're curious about the nightmarish encounters.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to ask about sexy things, [link]2[end link] to ask about odd things or [link]3[end link] to ask about nightmare-fodder.";
	if calcnumber is 1: [sexy tale]
		LineBreak;
		say "     'Okay, let me think for a moment,' Monty replies, tapping his lips thoughtfully with one finger. 'Ah, yeah. That was a nice one. Let me tell you about ";
		let randomnumber be a random number from 1 to 1;
		if randomnumber is:
			-- 1: [Alexandra]
				say "someone I met as I was making my way through the city, scouting out danger spots and ways to get around. Anyways, I was making good headway and had marked down a few spots that you definitively don't wanna go anywhere near, but no, you don't want to hear about those right now. I was basically just swinging back around to return to the camp, through streets that weren't barricaded, infested or... alive, when I learned that I wasn't the only one making use of the clear routes. Crouched behind a wrecked car, two part-leopard guys were waiting for me, flicking open butterfly knives with their still human hands.' Waving his hand about as if threatening you with a knife, Monty adds in a playfully overdone Californian accent voice, 'You better know what's good for you, soldier boy, or we'll fuck you up!' He follows this up with a second voice chuckling maliciously as it says, 'Not that we won't fuck you at all - the question is just if we use our dicks or the knives...'";
				say "     Looking at your face, Monty raises an eyebrow and clears his throat. 'I feel a question coming. Let me guess: Why didn't I just tell those fuckers to fuck off straight away, rifle up and finger on the trigger? Well, it's like this - bringing a knife to a gunfight isn't as stupid as it might sound. Those guys had lain in ambush and were fairly close to me. Sure, I could nail one, no problem, but both before the other stabbed me? That's dicey. With that crazy nanite regeneration the infected have, it's not even guaranteed that the guy I might have shot would have stayed down. And we're really not supposed to shoot civilians until they stop moving either.' Jokingly rolling his eyes at that [']annoying['] rule, Monty chuckles, then goes on to say, 'But yeah, it's really bad news if your enemy doesn't fear your weapon too much anymore. Thankfully, things didn't escalate further, because then [italic type]she[roman type] arrived.";
				WaitLineBreak;
				say "     'A loud dog's bark interrupted the dudes when they wanted to... who knows, threaten me some more I guess, followed by a woman shouting the words, 'Pete Murray and Scott Oki. Guess crooks don't change their spots even when they grow some literal ones. Stop trying to molest that man and slink off to your holes!' The two of them whirled around as a doberman cop stepped into view, nightstick at the ready. Gotta say, I hadn't really been thinking about doing anything with, you know, the transformed, but... man, she looked great in her uniform, striding forward on those slender paws. A lot of anthros walk on their toes, so it's kinda like with high heels. Really pushes all the best bits into view.' Wiggling his eyebrows, Monty mimes having two well-rounded breasts on his chest. 'So, the muggers beat a hasty retreat, dashing away at breakneck speed for a human by dropping into a kind of loping walk on all fours, which left me and her alone in the street.'";
				say "     Monty smiles as he goes on with his story, 'She introduced herself as Officer Alexandra Friedrich, from the city PD and we got to talking for a while. Wish I could have given her better news than 'please shelter in place and keep the peace', especially after she saved my bacon like that. Still, I think it did both of us good to talk to someone for a bit that wasn't sex-crazy. She's a good woman, and with people like her in the city, there's hope yet. In the end, I gave her all of the food and water I had in my pack, for herself or to distribute among the needy and wished her the best when we went our separate ways.' Shrugging to himself, the African-American man get a thoughtful expression for a second or two. 'You know, before I met Alexandra, I thought that anyone infected was in a really bad spot. On their way of going loopy, and even if they didn't, they'd be seen as freaks forever. But man, that woman is rock solid, and the fur, muzzle and those up-thrust ears really fit her character and look sexy as hell. I admit that I might have thought about her once or twice while jerking off in the showers.";
				if "Alexandra_Met1" is not listed in Traits of Monty:
					add "Alexandra_Met1" to Traits of Monty; [he told the player about meeting her]
			-- 2: [Labrador siblings]
				say "one of the early scouting missions I was on. Imagine this,' he says, raising his hands to gesture and support his tale, 'Me and two others are making our way through the city, marking what we find on our maps and moving down a road. God, we didn't know shit about everything that was going on back then. So, guess what we did when we heard what sounded like an explosion? Sure, we ran [italic type]towards[roman type] it!' Blowing out his breath and making a face, Monty goes on to say, 'So, we sprint through an alley, turn the corner into the next larger road and start going down it. Then there it was - a fucking colossal bird, with maybe 50 feet of wingspan or so. It was just kina... hovering, beating its wings quickly to keep in the air, with each swipe creating gales of wind! And those huge, predator's eyes staring down at something on the roof of the building next to us!'";
				say "     Shaking his head, Monty explains, 'Wasn't on the roof though. Must have been whopping big crater in the building where the bird's opponent had impacted and broken through, stunning it for a moment or something like that. Because a moment after that, we heard it scream in rage! Then the building groaned and shook, followed by a whopping wyvern tearing through the wall onto the street in an explosion of flying bricks! I don't remember any of the fight that followed between the beasts because one of those chunks of stone clocked me out good, but from what the guys said later, it must have been pretty apocalyptic. They tried to get me, but that almost led to Stevens being crushed by a claw, so in the end they couldn't do anything but run.' Pointing at himself, Monty chuckles, 'Well, since I'm talking to you right now, you already know I made it out of the sticky situation somehow. Don't remember much from inside that street, except pain and at some point hands grabbing and lifting me.";
				WaitLineBreak;
				say "     Raising his hand to stroke over the curve of his shaved head, Monty feels around a little, then shows you the faint scar where the brick that knocked him out must have hit. 'Anyways, the next thing I remember is still plenty of blurry. It's not like I instantly could have shaken off being knocked unconscious, like the infected can. So, when I came to, I was lying on a bed, under a thin blanket. My head was throbbing and hurting, and when I groggily lifted a hand to my head, I felt a bandage taped to the wound. Then I heard a woman say, 'Don't touch that, you'll make it bleed again,' followed by someone grabbing my wrist and gently but firmly pulling my arm back down. Must have passed out again right after that too.' Shrugging his shoulders and seeming a little embarrassed about the weakness he's admitting to you, Monty adds, 'For the next day or so, I kept drifting in and out of consciousness, and in the moments I was awake I learned about the two people that saved me.'";
				say "     'It was weird at first, finding myself there. I mean, before then basically all of the infected I'd seen were basically sex-crazed lunatics attacking people in the streets. And at that point I suddenly was being taken care of by two anthros, which were just normal, you know. Persons with fur, but nothing deviant about them. Their names are Arianna and Brayden Baker, a brother/sister duo that moved here about two years back from out east, sharing a flat together. They caught the infection at some point, couldn't even tell me when and where exactly, turning into anthro black labradors. Good folks though, as they pulled me out of the rubble and took care of me. You can't imagine how relieved I was to learn that there's still a bunch of sane people left in the city, and it was them that found me. Who knows what'd have happened to me if they didn't.' Shuddering at the thought, Monty shakes his head, then continues, 'So, I was still plenty weak, with some dizzy spells when I tried to stand up, so they had to help me with basically everything.'";
				WaitLineBreak;
				say "     'Arianna was worried about passing on their dog infection, but when I explained about the immunity booster shots and had her hand me one of the red syringes from my pack to inject myself for the day, the two of them were thrilled. Of course, the stuff isn't a cure and doesn't do anything if you're already infected, but it gave them hope, you know. And ideas, as I learned later...' Scratching the back of his neck, the black soldier chuckles to himself, 'After some more rest that afternoon, I started feeling better finally. Had dinner with the two of them, explaining that I'd have to move out the next morning and report in at the camp. Arianna told me that I should get another day of rest at least, reaching out to pat my forearm. Could have sworn she gave me one of 'those' looks when she did, you know, but duty's duty, so I had to hold firm with leaving them once the sun was up the next morning. Well, a little while later, after the three of us talked for some time, I got into bed and dozed off. Boy did I have a sexy dream that night - only to wake up and find it wasn't a dream, and someone was actually giving me an amazing blowjob! That long muzzle, you know, and the tongue! Mmmhhh - haven't been deep-throated too often as it's hard to find a girl who wants to do it or has the skill, but this was better than that!'";
				say "     'Looking down, I didn't see much in the dark room, just the shape of a head moving under the blanket and the outline of a black tail wagging in front of the white wall. I was reflexively humping up into the warm muzzle, riding the high that I was on, and moaned out loud, 'Yes! Fuck that's good, Arianna!' Almost as soon as those words passed my lips, the bobbing slowed, and then I heard a voice that was definitively not female say, 'Guess again!' Throwing aside the blanket, I saw Brayden's face down over my crotch, with a huge grin on his muzzle and licking its sides with his tongue. 'Thought I'd give you a proper sendoff,' he said and just licked my dickhead again. 'I was all - Dude, I'm straight!' but he just replied, 'Everyone's got flaws. I won't hold it against you!' and then went to town on my dick. I was startled by seeing the head of a dog going down on me at first, but then I gave myself a push and slowly closed my eyes as I laid back. Damn, he really, really knew what he was doing, you know, and he kept at it until a blew a heavy load down his throat.'";
				WaitLineBreak;
				say "     Blowing out his breath, Monty looks at you and then smiles slightly, 'God, I was so embarrassed at the time, but it really was one interesting night! I mean, don't think I'd have started anything with a civilian, a dude, or an anthro dog, much less all three of those at once, but you kinda think differently when you're in the middle of a blowjob! After he swallowed my load, he just kept on gently suckling and groped my balls, then blew me [italic type]again[roman type] when I got hard a second time! Brayden seemed ready to drain my balls, but after that time I was beat and told him to stop. With a last lick over my dickhead, he actually did stop and stood up from the bed, a black form in a dark room, as naked as myself and with his cock erect between his legs. 'Okay, guess I'll let you rest then and take care of this on my own. Unless you've changed your mind about this 'being straight' thing, maybe?' he said to me, and when I shook my head, he playfully wagged his dick at me, then walked out of the room, quietly closing the door behind him.'";
				say "     Shrugging his shoulders, Monty grimaces a little before saying, 'Not exactly a shining moment, I know. Not returning the favor at all. Still, I was hesitant even touching his cock, it was so... inhuman, you know. The shape, and bulges in weird spots, with a furry sheath at the base.' Visibly embarrassed for a moment, he adds, 'Thank god Brayden was a good sport. It's almost like he recognized that he'd pushed me as far as he could that night. And to be honest - he gave me one of the best blowjobs I've ever had. Things get crazy in this city, but sometimes in a good way too. And it's not like Brayden was feral or anything, just an advenurous gay man. Didn't betray our nighttime activities in any way the next morning and acted perfectly normal when we had breakfast together, then sent me off with a firm handshake in the end. Okay, he did lean in and tell me that I should come over if I ever wanted another round too, but that's nothing against all those rape-y creatures wandering around in the streets.' Shrugging, Monty adds, 'I've been back once or twice to visit them, and check if they're okay. And no, there hasn't been any repeat of that night, even though Brayden's offered, when he had me alone.'"; [TODO: remember to adjust this in the future if this changes]
				if "Brayden_Met1" is not listed in Traits of Monty:
					add "Brayden_Met1" to Traits of Monty; [he told the player about meeting the labradors]
	else if calcnumber is 2: [odd tale]
		LineBreak;
		say "     'Okay, let me think for a moment,' Monty replies, tapping his lips thoughtfully with one finger. 'Ah, yeah. That's an odd one. Let me tell you about ";
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1: [weasel attack]
				say "the time I was mugged by weasels.' Shaking his head, Monty chuckles to himself, then goes on to explain, 'So, there I was, on the move to leave the city, carrying you know what up my ass and gingerly walking down a street. Then I hear the clatter of metal on the asphalt behind me. Glancing back, it's just an empty can rolling over the street. There wasn't any wind though, and the street seemed otherwise empty, so that was quite suspicious. Cautiously moving further, I kept looking left and right, trying to watch all approaches, when suddenly something colorful poked up from the high grass in an overgrown lot beside the street. Did you ever play cowboys and indians as a kid? It was one of those children's feather headdresses, with brightly colored feathers. Honestly, I was gaping at that point - whoever it was that was sneaking towards me through the not even hip high grass was wearing [italic type]that[roman type] while doing it? But then I saw the other feathers, lots of other feathers.'";
				say "     Shaking his head in disbelief, Monty says, 'There were about a dozen of them rushing at me, shouting 'Banzai!' of all things. Knee high anthro weasels, with splotchy war paint, loincloths, feather headdresses, and plastic bows. They were adults from the looks of it, just tiny ones. Before I knew it, blunt plastic arrows were hitting me in the chest. But that wasn't the end of it. Around the corner of a car wreck on the other side of the street, the five cowboys came rushing in just a moment later. More weasels, these with children's cowboy hats, wildly firing toy revolvers into the air. You know, the ones with a cork on a string. Weasels to my left, weasels to my right, all dashing forward at breakneck speed. But then, one of the cowboys shouted 'We'll take your money and your life!', which brought the wild rush to a sudden stop as confused expressions spread over their little faces.";
				WaitLineBreak;
				say "     'God, Colin, you idiot! How stupid can you be?!' the leader of the indian faction shouted, pulling off her headdress. 'We're supposed to attack people, and you drive us off. Then they give you all their good stuff as a reward!' Muttering spread through the crowd, with all of the shame-faced cowboys slinking away from the one that apparently was Colin. 'Err, yeah! Uhm - I meant what Jill said, mister. We're saving you!' The female rolled her eyes and shouted, 'Too late, he's never gonna believe you now!' and Colin growled back, 'It was a stupid idea in the first place, and I'm hungry!' While they were butting heads, I suddenly felt tiny hands grip my pants-leg, and before I knew, one of the weasels had climbed up and was hanging off my arm, sticking his pointy snout right in my face. 'Hey you, wanna fuck? They'll take a while to sort things out, you know.'";
				say "     Shaking his head in disbelief at the memory, Monty continues, 'Staring at a creature about as big as my forearm offering sex, I started to stammer some words, but my new aquaintance barely waited two seconds for a reply. Next, he stretched his neck to focus on my backpack. 'Got any food in there? We really are hungry!' By that point, I was surrounded on all sides by them, with others touching my pants legs and one adventurous female peering up the inside of it, so I basically wrenched off the pack and just emptied out my rations. That caused a stampede of them going for the MRE's, leaving me free for a second to get out of there. Oh, and the two leaders who had a shouting match 30 seconds before? They had apparently moved on to make-up sex by that point and were entwined with their slinky bodies in a tangle.";
				LineBreak;
				say "     Monty gives you a serious look, 'But all joking aside, do watch out for yourself if you meet those hyperactive little freaks. They're as randy as anyone in the city, and you can never know what to expect from such a chaotic troupe.'";
			-- 2: [Dachshund]
				say "running into that one dog. So, I was moving through the streets and came past a small park. Seemed fairly peaceful and quiet, but then suddenly, there was a rustling in the bushes. I brought up my weapon and was ready to defend myself, but what trotted out from under the leaves was a dachshund, of all things! Cute little doggy too. So I lower the rifle and crouch down, holding out my hand and call, 'Come here boy, what are you doing here alone?' He walked forward a few steps, his gaze moving back and forth between my hand and face. And then he spoke, in a really sarcastic tone: 'Gosh, what do ya think? Mostly just trying to find someone who isn't sex-mad and still has thumbs, that's what! Not gonna lick you, if that's what you expect. And why the hell would you even let yourself be licked? You stupid or something? That's how I ended up as Boffo the wonder dog!'";
				say "     Monty chuckles at the memory, then goes on to recount more of the tale: 'I was baffled, I tell you. Such a cute little doggie, and then that tone to clash with it. Gaping at him, I only was shaken out of it when the dog continued, 'So, I'm Bruce by the way. How about you help me out for a moment, eh? Doubt that you army folks will be able to do much for the city, but at least this should be easy peasy for you. Come on, this way!' What can I say, I was curious,' Monty says with a shrug. 'Following the dog brought me to a picnic table behind the overgrown bushes, out of the way and hidden from the outside world. Looked like Bruce had collected quite a bit of stuff for himself. Food, a blanket, some magazines scattered on the ground and whatnot. He dashed under the table and emerged with a roll of duct tape in his muzzle a second later, dropping it at my feet, followed by him retrieving a bottle opener next. 'So, man - do a dog a solid and tape that thing against the table leg, nice and low you hear me? I've got plenty of beer but no way to open the stupid things!'";
				WaitLineBreak;
				say "     'Of all things to focus on during all of this, you can't make some of the crazy stuff up that happen in this city. But yeah, I did install a dog-compatible bottle opener for Bruce, and he joyfully retrieved a beer and levered it open after hooking it in. You haven't seen shit until there's a dachshund chugging beer in front of you. Anyways, long story short, he thanked me and I moved on after wishing him the best.";
	else if calcnumber is 3: [nightmare tale]
		LineBreak;
		say "     'Don't say I didn't warn you,' Monty replies, then looks aside with a far-away expression for a few seconds as he searches his memory. After clearing his throat, he begins his tale: 'Okay, let me tell you about ";
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1: [cock transformation]
				say "this one time I was out with a scout group around the time Camp Bravo was established. Wasn't even that far from here. So... we were moving down a street and heard some sex noises and high-pitched whimpering coming from a side alley. Didn't really know shit about what was happening yet. Of course we turn the corner and investigate, thinking it was a sex-crazed maniac abusing a woman or so. We weren't ready for what was in there, that's for sure!' After pausing for effect, Monty goes on to gesture with his hands as he goes on to say, 'So, here's the road, and there the alley. We turn the corner and see a twenty-something dude, barista or storeworker judging from his green apron. But it's not him doing the fucking - no, he was being pinned to the ground by a middle-aged woman with a business powersuit! She was humping his ass like there was no tomorrow, with him futilely clawing at the ground to get away!'";
				say "     'A shout to get off the dude is just ignored, and so me and the others rush forward to pull the madwoman off him by force. But when we get there and shove her aside, it becomes obvious that she's actually [italic type]inside[roman type] him, thrusting one monster of a schlong in and out of his asshole! Connected as they are, all that happens is that he goes with her when they roll over, and she digs her manicured nails into his hips to slam him down all the way on her cock! Man, her balls were big as grapefruit, and they were pulsing HARD!' Monty stops for a second, putting both hands on his hips as he looks at you. 'I can feel your question coming. What was so bad about two humans fucking in an alley, other than one being a dickgirl? It's what came next, just you wait!'";
				WaitLineBreak;
				say "     Shuddering at the memory, Monty continues, 'The dude was a latino, dark-tanned skin and whatnot, but he started becoming paler by the second as she was filling him up. Then he let out a gurgling sound and white froth welled up from his mouth. Spit and cum, you guessed it. Before our horrified eyes, the line between her hips and his ass seemed to disappear, them simply melding together! Took just a few moments for his arms and legs to shrink and pull in against the dude's 'body' - only it wasn't so much that anymore, but rather a humongous tube of cockflesh! The last things to go were actually his facial features, stretched over a monstrous dickhead till the end, his mouth becoming its cum-slit! Then the bitch actually laughed and said, 'Serves you right, Enrique! You never remembered the extra cream in my coffee. Well, now you can help me with that!' Cradling the huge cock against her front, she wrenched his loosely hanging clothing off it and stroked it, then came AGAIN, fully absorbing him in the process.";
				say "     'Man, what blasted out of that freak was an arm-thick deluge of cum, hitting the wall fifteen feet above! It was like a rain shower, splashing down into the alley afterwards! Everyone got a little bit on him, but one of us was completely hosed by one of the following cumshots - Roy Cooper, you might have run into him at the front entrance of the camp.' Miming being covered by thick, slimy cum all over, Monty shakes his head. 'We ran, gotta be honest about that. I mean, imagine seeing shit like that without much warning. And no one knew yet if those immunity boosters actually did work. Thankfully, the bitch could barely stand with her new mega dick, so we made a clean getaway. Spent half the day in the showers after that, water as hot as it could be and our mates in hazmat suits scrubbing away to get every last speck off us!'";
				add "CTF Cum Shower Memory" to Traits of Private Cooper; [player was told about his unfortunate incident]
			-- 2: [cocoons]
				say "the soldiers that were deployed into the city first, before our group. They reported some wild tales about civilians going crazy, weird things roaming the streets and people apparently transforming into more critters. Then contact was lost with most of them. I guess that's one of the reasons we got the experimental immunity boosters when we were sent in. Anyways, I wasn't part of the group that went to check things out, but I was there for the debriefing and saw all the pictures.' Gesturing with his hands to paint more of a picture, Monty lays out the scene for you: A large four-way crossing at the entrance to the high rise district, three humvees parked in a defensible arc. Grimly, he explains, 'It didn't help them much. What the guys found there was lots of spent ammunition scattered over the asphalt, splashes of orange goop, and weird organic resin encrusting most of the cars and the area between them.";
				say "     'It looked like something had coughed that shit up and smeared it all over gear and our guys before it hardened. All flowing curves and whatnot, with human-sized cocoon shapes on the road, as well as the insides and outsides of the humvees. There were scraps of uniform and dog tags encrusted into the shells, left behind when whatever the guys had become hatched! We don't even know what it was that attacked them, as nothing and no one could be found anywhere near. No trace of our troops, or any witnesses. I shudder to think what could take down twelve people in one go, even if they were unprotected against transformation!'";

to say MontyTalk3: [Tiny]
	say "     A thoughtful expression crosses Monty's face as he hears you ask about Tiny Tim, the minotaur of Camp Bravo. He scratches the back of his head, then shrugs and says, 'You know what? I like him. Crazy thing to say about a towering beast strong enough to break a man in half, eh? Still, he may be not quite human, and a bit dim, but I don't think there's a bad bone in the big lug.' Monty's eyes get a far-away expression for a second and he shudders a little at the images he must have remembered, followed by the words, 'I've been on the streets out there and have seen the shit that some critters get up to. Tiny's a big teddy bear in comparison. Even if he can be a big pain in your butt when he really gets going and forgets his strength.' The black man winces a little and rubs his ass as he thinks back to his own session with the minotaur, the beginning of his 'special transport' mission that you kinda sabotaged.";
	say "     Clearing his throat, Monty goes on to say, 'One thing Tiny sure ain't, and that's hard to read. He loves the steady sex he's getting, but also genuinely enjoys hanging out with people. Should have seen him when I came back into the camp after, well, you know.' He waves a hand behind his ass for a second, referring to the time you pulled out a butt plug and made a load of minotaur cum leak out of his ass. 'So there I was, on my way to the Major to report on my failure, and suddenly I hear hooves stomping on the ground. A second later, I was in a bear-hug by those huge arms, wedged against his broad, muscled chest. 'Friend came back! Came back for Tiny?' he asked, horned head looming over me and with his hot breath washing over my face. Looking into those huge, trusting eyes, I didn't think he'd understand what actually happened even if I told him, so I just said yes. Man, he followed me around an hour after that, and kept wanting to pick me up for another hug.'";

to say MontyTalk4: [Special Transport]
	say "     Monty becomes a bit flustered and clearly embarrassed as you bring up his earlier mission, which included a load of Tiny's cum up his rear and a butt plug to keep it in. If his skin wasn't so very dark, you bet the young man would be flushed red in the face. 'Well, err, it's for a possible cure of this plague or whatever it is. At least that's what we were told. Sounds crazy, right? But then, what isn't these days? Hell, if I had told anyone about seeing a guy in the street suddenly sprouting wings, boobs and a beak, then trying to have sex with me, I'd have ended up in the brig with a drug test ordered. Now, something like that is just another thing that goes on everywhere.' With a shrug, Monty waves a hand in the air. 'I swore an oath to lay my life on the line for this country. Guess that includes my behind too. So if your superiors tell you to get mino-fucked, you soldier on and bend over, spread em and take it. Couldn't let my brothers[if CampBravoWomenAllowed is 1] and sisters[end if] in arms do so and not lay my own ass on the line either.'";
	say "     Scratching the back of his neck, the black soldier adds, 'Of course, having to come back here and admit that I 'lost my load' was an after-action report from hell. Thank god I'm not the only one, or even first that happened too. They don't even reprimanded me - not for something I never trained for. And that's the rub of it. I got issued a 'training kit' by the quartermaster and she told me to work out [italic type]those[roman type] muscles so I can get a fresh load delivered without issues.' Pressing his lips together, he is quiet for a moment, then adds, 'I - er, I'm having some trouble making myself do it. It's one thing when you're part of a whole group, and everyone lines up for Tiny because that's what you're ordered to do. Sitting with your fellows in a tent and then pulling out sex toys to work on yourself? That's frickin['] hard!'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Apologize for getting him in trouble.";
	say "     [link](2)[as]2[end link] - Say you're not sorry. His ass was just too nice not to check out.";
	say "     [link](3)[as]3[end link] - Suggest that he should just go for it, ask a buddy to help.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to apologize, [link]2[end link] to compliment his ass and say you're not sorry you went for it or [link]3[end link] to suggest asking his buddies to help.";
	if calcnumber is 1: [sorry]
		LineBreak;
		say "     You tell Monty you're sorry for getting him into this kind of situation, which he accepts graciously enough. 'Guess I just have an irresistible ass then, eh? Prime black booty that no one can resist. I'm not even mad about it, [if Resolution of Lone Soldier is 2]your tongue felt pretty nice and all[else]not with you helping me before[end if].' He shrugs and makes a throwing-away gesture. 'Still, now I gotta work out how to do this shit. Guess I'll just have to, you know, move to a private place to do it. Definitely not gonna do it in front of the guys and get a rep of being the barrack's bottom boy. Gonna be weird, to work my own ass over with those toys.'";
	else if calcnumber is 2: [not sorry]
		LineBreak;
		say "     You admit to Monty that his ass was to nice to keep your hands away from. If you were in the same situation again, you'd not do anything different. The man looks at you somewhat wide-eyed and after a moment, a chuckle bubbles up from him. 'Guess I just have an irresistible ass then, eh? Prime black booty that no one can resist. I'm not even mad about it, [if Resolution of Lone Soldier is 2]your tongue felt pretty nice and all[else]not with you helping me before[end if].' He shrugs and makes a throwing-away gesture. 'Still, now I gotta work out how to do this shit. Guess I'll just have to, you know, move to a private place to do it. Definitely not gonna do it in front of the guys and get a rep of being the barrack's bottom boy. Gonna be weird, to work my own ass over with those toys.'";
	else if calcnumber is 3:
		LineBreak;
		say "     You tell Monty that he should just get over himself and pick a guy to help him train. They'll enjoy it, you're fairly certain. The black man, grimaces and shakes his head, 'Naw man, I can't do that. Me and the guys are tight, but that's not something you ask. Gotta think of how it'd look. I really don't wanna get a rep of being the barrack's bottom boy. That's death for your career and shit.' He shrugs and makes a throwing-away gesture. 'Still, I gotta work out how to do this shit. Guess I'll just have to, you know, move to a private place to do it. And it's gonna be weird, to work my own ass over with those toys.'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Offer your help.";
	say "     [link](2)[as]2[end link] - Wish him the best of luck.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to offer your help, [link]2[end link] to wish him luck.";
	if calcnumber is 1: [hands-on]
		LineBreak;
		say "     Reaching out to Monty and lightly patting his arm, you tell him that he doesn't have to do it all by his lonesome. Helping out with some hands-on support is the least you can do for him. And after all, it's not like you haven't seen it all before. The man draws in a quick breath, then can't help but chuckle. 'I guess you have a point, kinda. Would be less awkward than groping around cluelessly myself. Fine, it's a deal. Still need a place to do it, though.' He looks to the side thoughtfully, biting his lip, then actually focuses on what is right in front of his eyes. 'Hmmm. You know, this bus might be sticking far enough through the wall that the front door is accessible.' Quickly walking along the side of the crashed bus, he digs his fingers under the corner of a cracked windowpane, levering the safety glass out of its frame. Cracked and spider-webbed as it may be, it still comes out as a single piece that he catches and sets down without too much noise.";
		say "     Pulling himself up to stick his head into the interior of the bus, Monty says, 'Jackpot, the whole front end of this thing is inside of a big room! Just a second, be right back.' He hurries off, to return a little while later with a big wooden crate in his arms, on which a mid-sied leather case is lying. Setting the crate down under the bus window creates a stepping stone to climb into it fairly easy now, and the two of you walk down the middle passage of the bus to enter the office building next door. It's a bit of a mess in there, with the bus having thrown several desks partway through the room when it crashed through the wall, but the empty building still is just the out of the way place that Monty wanted. Pulling a zipper and then flipping open the lid of the case, the soldier lays what turns out to be a complete set of variously-sized training butt-plugs on the nearest table. There's even a bottle of lube in there too. 'So, let's do this, before I lose my nerve.' Monty says, slightly nervous.";
		WaitLineBreak;
		say "     With a smile, you tell the black man to trust you, wave at a mostly empty desk and tell him to bend over it. Blowing out his breath, Monty strokes a hand over his shaved head, then murmurs under his breath, 'Focus on the mission, soldier!' There isn't any hesitation after this, with the athletic man quickly stripping off his shirt and throwing it on the desk, followed by pulling off his boots, then undoing his pants. With a decisive movement, he pushes them down complete with his underwear, then straightens to stand before you completely naked. He gives you a nod and gets into position, legs spread and with his upper body bent over the desk, forehead resting on the fabric of his shirt. The soldier's hands slide down along his sides, each grabbing a cheek of his well-rounded buttocks to spread them for you. 'Gotta admit, I always liked looking at a nice round ass, just never thought sexually about my own.'";
		LineBreak;
		say "     [bold type]He's all yours to play with now. How do you begin?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Grab that lube and work it in with your fingers.";
		say "     [link](2)[as]2[end link] - Go natural, with spit and your tongue.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to use lube or [link]2[end link] to eat him out.";
		if calcnumber is 1: [lube]
			LineBreak;
			say "     Reaching over for the bottle of lube, you pop open the cap and squeeze a moderate amount out on your fingers, then dab them lightly at Monty's back door. He tenses a little at your touch, with the wrinkled ring of his pucker flexing visibly and reminding you that the man is not too far away from being a virgin in this regard. In fact, from the looks of it he's quite tight and you can't see any hint of the fact that he had a minotaur's thick schlong shoved inside him recently. Maybe wandering around for hours with nanite-laden cum inside him did have an effect after all, rejuvenating Monty somehow even if it didn't infect him. As not to freak the man out by going too quick, you gently stroke your fingertip over his muscle in a light caress, circling the hole for a few seconds before you proceed to push in against it.";
			say "     He's tight, that's for sure, yet at the same time you're able to penetrate him readily enough, a soft push being sufficient to sink in to your knuckles. Monty's breathing comes a bit quicker now, and when you curl your finger to rub his prostate, he lets out a full-throated moan. 'Nnnghh, do that again!' he calls out breathlessly and you happily oblige, drawing further sounds of arousal from your naked soldier. Soon, you add a second finger to the first, finding his hole tightly gripping yet stretchable and him appreciative of the stimulation. 'Never thought it could feel so good to just be rubbed a bit back there.' It is fun to play around with the handsome brown-skinned man since he's quite responsive, letting out gasps and moans while you experiment to find all of his pleasure spots. You almost just want to keep going like this, yet the plugs are laid out on the table just in the corner of your view, so you eventually slip your fingers from Monty's hole with a sigh and take the smallest of the blunt-headed latex toys.";
		else if calcnumber is 2: [eat out]
			LineBreak;
			say "     Stepping up behind him and sinking to your knees, you lean forward a little to get close to Monty's back door. As the warmth of your next breath touches his skin, he tenses a little, with the wrinkled ring of his pucker flexing visibly and reminding you that the man is not too far away from being a virgin in this regard. In fact, you can't see any hint of the fact that he had a minotaur's thick schlong shoved inside him recently. Maybe wandering around for hours with nanite-laden cum inside him did have an effect after all, rejuvenating Monty somehow even if it didn't infect him. All you can see even from so close up is a tight and well-scrubbed hole, trembling for your touch. As not to freak the man out by going too quick, you stretch out your tongue and play the tip over his muscle in a light caress, circling the hole for a few seconds before you proceed to push in against it. Wiggling your appendage a little, you get him good and wet with spit before soon switching to entering Monty with your index finger.";
			say "     He's extremely tight, that's for sure, yet at the same time you're slowly able to penetrate him readily enough, a firm push being sufficient to sink in to your knuckles. Monty's breathing begins to come out in ragged pants, and when you curl your finger to rub his prostate, he lets out a guttural grunt. 'Nnnghh, do... that again!' he calls out as his body begins to shake and you happily oblige, drawing further sounds of both pain and arousal from your naked soldier. Soon, you add a second finger to the first, finding his hole tightly gripping yet more stretchable and him appreciative of your patience. 'Never thought it could feel so good to just be rubbed back there.' It is fun to play around with the handsome brown-skinned man since he's quite responsive, letting out gasps and groans while you experiment to find all of his pleasure spots. You almost just want to keep going like this, yet the plugs are laid out on the table just in the corner of your view, so you eventually slip your fingers from Monty's hole with a sigh and take the smallest of the blunt-headed latex toys.";
		WaitLineBreak;
		say "     Bringing the little butt-plug up to the crack between the soldier's well-rounded buns, you stroke it over his hole, watching the ring of muscle flex and pull tight in reaction. Monty's buttocks tense as he instinctively prepares to resist an invasion of his hole. It is clear to you that you have to work him up slowly to accept the plug, so you take your time and tease the man with gentle touches to relax his opening. Finally, you push in gently against the ring of muscle, smiling as you see it stretch and allow the blunt tip in. Continuing with circling movements of the latex toy, you sink it deeper into Monty's purplish-pink asshole, up till the point where its widest part slips past the ring. Suddenly, the rest of the toy just slides in, his straining pucker now actually speeding it along and pulling in around the butt plug's narrower neck.";
		say "     Now that the black plug is seated quite nicely inside the soldier, its flared base rests against his crack. His anxiety seems to lift now that it is all in and you can hear a sigh of relief from the tense man, followed by his muscles flexing experimentally around the sex toy. 'Doesn't feel half bad, you know. Just kinda full, but in a good way.' One of his hands moves to touch the plug, poking lightly at it, then taking hold of the base and tugging a little. 'Wow, it's stuck in there good, isn't it?' You comment that he shouldn't worry about that, what goes in will come out again without too much trouble. You take in your handiwork with a grin before you move aside a little and lay one hand on Monty's shoulder and pull him up to stand straight. As you do so, the full extent of his pleasure from your play becomes apparent, as his 10-inch cock is hard and erect. He's puzzled momentarily about what you want, but you quickly enlighten him by waving a hand and saying that he should walk a few steps with the plug in him. This extra training is supposed to make sure that his plug won't slip 'again' after all, in any situation.";
		WaitLineBreak;
		say "     Clearing his throat, Monty nods and marches forward, soon reaching the far wall and having to turn around to come back to you. As he does, your gaze is inevitably drawn down towards the rod of his erection, swinging back and forth and showing the wetness of precum at the tip. Following your gaze, the soldier becomes a bit embarrassed at the sign of his own arousal. Grabbing hold of the shaft, he flicks it lightly to the side sending a sting of pre flying to streak on the side of a desk. 'Err, I - um. This is harder than it was before, you know. With nothing else on my body to distract, this thing draws my attention all the time. It shifts a bit when I walk.' His brown skin getting a bit darker still as he blushes, Monty comes closer and takes position bent over the desk again, then says over his shoulder, 'Could you take it out please?'";
		LineBreak;
		say "     [bold type]How do you react to his request?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Work the toy inside him a little and give him a reacharound.";
		say "     [link](2)[as]2[end link] - Replace the toy with your tongue, stimulating Monty while you jerk him off.";
		say "     [link](3)[as]3[end link] - Just pull the plug and let him take care of himself.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to toy-fuck Monty a little, [link]2[end link] to eat him out or [link]3[end link] to just unplug him.";
		if calcnumber is 1: [toy-fuck]
			LineBreak;
			say "     Taking hold of the toy's base, you slowly start to pull on it. There's a certain resistance, as if the man's hole doesn't want to let go, then his pucker expands a little to stretch around the butt plug becoming wider very swiftly just above the neck. His legs tremble a little from the sudden expansion of his inner muscle. Once you're past the thicker bit, it slides out of Monty almost on its own, slick and tapering as it is. Yet before it does so, you grind the toy back into his hole, aiming to rub Monty's prostate with its blunt tip. The black man lets out a surprised, pleasurable grunt, followed by a lusty groan as you reach around him to grasp his erection. Jerking his thick trouser-snake while pushing the plug past the quivering ring of his hole drives Monty wild. His moans fill the office as lust makes him forget about any pretense of keeping quiet and he humps against your hand.";
			say "     It doesn't take all that long before the double stimulation overloads your 'trainee' and he soon grunts urgently, with the first heavy throb of his cock following right after. Craning your neck to look past his shoulder, you aim the black cock in your hand so the long spurts of his cum streak the flat expanse of the desk, again and again in an eruption of semen. Panting a little after his orgasm slowly ebbs off a little while later, Monty says, 'Man, full service with a happy ending, eh? Thanks, for this and for being here with me. As awkward as this is, I don't know what I'd do if I had to do the 'training' on my own.' After this, you rustle up a box of tissues and clean the used toy while Monty gets dressed. Packing away everything into the carrying case, you then lock it in a nearby drawer, giving Monty the key. Then you leave the office building and soon are back in the camp, with none of the other soldiers having any clue of what their comrade just did.";
		else if calcnumber is 2: [eat out]
			LineBreak;
			say "     Taking hold of the toy's base, you slowly start to pull on it. There's a certain resistance, as if the man's hole doesn't want to let go, then his pucker expands a little to stretch around the butt plug becoming wider very swiftly just above the neck. His legs tremble a little from the sudden expansion of his inner muscle and you crouch behind the man, tracing your tongue over the skin being stretched outwards by your pull. His breath catches for a second at the stimulation while the pucker twitches, unable to contract any further around the sex toy. Then you're past the thicker bit, and it slides out of Monty almost on its own, slick and tapering as it is. Yet before Monty can react in any way to being free of the invader in his back door, you flick your tongue over his hole, worming its way inside an eye-blink later. The black man lets out a surprised, pleasurable grunt, followed by a lusty groan as you reach between his legs to grasp his erection. Jerking his thick trouser-snake while eating out the quivering ring of his hole drives Monty wild. His moans fill the office as lust makes him forget about any pretense of keeping quiet and he humps against your hand.";
			say "     It doesn't take all that long before the double stimulation overloads your 'trainee' and he soon grunts urgently, with the first heavy throb of his cock following right after. Nose buried in Monty's crack as you continue to wriggle your tongue in his hole, you have no chance of aiming his eruption any which way, only realizing afterwards that he made quite a mess of a pushed-aside keyboard and some documents afterwards. Panting a little after the exertion of an orgasm, Monty says, 'Man, full service with a happy ending, eh? Thanks, for this and for being here with me. As awkward as this is, I don't know what I'd do if I had to do the 'training' on my own.' After this, you rustle up a box of tissues and clean the used toy while Monty gets dressed. Packing away everything into the carrying case, you then lock it in a nearby drawer, giving Monty the key. Then you leave the office building and soon are back in the camp, with none of the other soldiers having any clue of what their comrade just did.";
		else if calcnumber is 3: [unplug]
			LineBreak;
			say "     Taking hold of the toy's base, you slowly start to pull on it. There's a certain resistance, as if the man's hole doesn't want to let go, then his pucker expands a little to stretch around the butt plug becoming wider just above the neck. Once you're past the thicker bit, it slides out of Monty almost on its own, slick and tapering as it is. Freed from the invader in his back door, the soldier stands up and lets out a relieved sigh, followed by the words, 'Man, thank you for being here with me. As awkward as this is, I don't know what I'd do if I had to do the 'training' on my own. I'll just go take care of this, be right back.' With a nod towards his crotch, he grabs his clothing and wanders off into a conference room nearby, pushing its door shut quietly behind himself. While he jerks off in there, you find a box of tissues and clean the used toy, then pack everything away in the case.";
			say "     Exploring the office a little until Monty eventually returns, you show him a lockable drawer you found nearby that had the key sticking in it, and the two of you lock the toys in there before leaving the building once more. Soon, you're back in the camp, with none of the other soldiers having any clue of what their comrade just did.";
		now Libido of Monty is 2; [had the talk about the special transport, put the toys to use]
		now Asshole Tightness of Monty is 2; [expanded his horizons a bit]
	else if calcnumber is 2: [not your problem]
		LineBreak;
		say "     Reaching out to Monty and lightly patting his arm, you tell him that you're sure he'll manage. 'Thank you so much,' he says in a slightly exasperated tone, followed by, 'I know how to do my duty, don't doubt that for a moment. I'll manage, somehow.' Apparently not in a mood to discuss this further, he excuses himself and wanders off.";
		now Libido of Monty is 1; [had the talk about the special transport, didn't offer to help]

to say MontyTalk5:
	if Intelligence of Monty is 0:
		say "     Clearing your throat, you lean in a little towards Monty, telling him that you wanted to talk about his rear entrance. The black man's eyebrows rise in puzzlement and he straightens a little, subconsciously clenching his buttocks. 'What do you mean? Don't tell me there's something wrong with it!?' Raising one hand, you squeeze the firm flesh of his upper arm in a vaguely comforting gesture, then explain that he's perfectly fine and normal, just a little too much so maybe. 'Erh?' he asks, still looking worried. Repeating that he should calm down, you ask the muscular soldier about the girth of the minotaur cock he took. 'I - hm, as thick as my wrist at least. And - wait a minute - that thing was as long as my whole forearm, now that I think of it! I remember staring at that huge piece of meat swinging in the air as I was sent out to him.' He frowns a little at his own words, then adds, 'I wasn't quaking in my boots or anything. Somehow it just never crossed my mind that it might not fit, to be honest. If you got your superior ordering 'take that dick', you just salute and soldier on, you know.";
		say "     You gloss over the fact that no one in the whole camp seems to be thinking too clearly, with the constant cloud of minotaur musk and pheromones hanging in the air, instead focusing on the fact that people's holes can be surprisingly accommodating. Still, as Monty hears that this does often result in some permanent stretching and gaping, he frowns and rubs his ass through the camo pants. 'I don't feel different than before,' he mumbles more to himself than anyone, and you give him a smile as you say that his asshole looks perfectly normal too. Worry lines on the dark-skinned man's face smooth out a little but don't quite disappear and you wonder for a second if it'd have been better to not say anything, but it's too late now really with the cat out of the bag.";
		WaitLineBreak;
		say "[MontyDoctorMattTalk1]";
	else if Intelligence of Monty is 1: [talked about his hole before]
		say "     Bringing up his asshole and its apparent miraculous recovery from being pounded by an forearm-long minotaur cock, Monty's expression is again drawn in worried lines. 'Still feeling pretty normal and all, but you've got a point. Damn, it's weird not to understand something about your own body!'";
		say "[MontyDoctorMattTalk1]";
	else if Intelligence of Monty is 2: [mentioned Doctor Matt before]
		say "     Bringing up his asshole and its apparent miraculous recovery from being pounded by an forearm-long minotaur cock again, Monty asks somewhat impatiently, 'Ah, are you ready to go to the doctor now? I really wanna get checked out!'";
		say "     [link](1)[as]1[end link] - Take Monty to see Doctor Matt.";
		say "     [link](2)[as]2[end link] - You can't right at the moment.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to take Monty to see Doctor Matt or [link]2[end link] to postpone for now.";
		if calcnumber is 1: [visit to the doctor]
			LineBreak;
			say "[MontyDoctorMattVisit]";
		else:
			LineBreak;
			say "     The African-American soldier's eagerness to get going right now results in him looking rather disappointed when you explain that you have to postpone the trip for the time being. 'Okay, fine. But could you please come by and take me to that doctor when you've finished up whatever you need to do?'";
			now Intelligence of Monty is 2;
	else if Intelligence of Monty > 2: [visited Doctor Matt]
		if Libido of Monty < 3:
			say "     Rubbing the back of his neck, Monty blows out his breath and says, 'So, I'm not going to turn into a minotaur, or anything nonhuman. Now that's a relief! Thanks a lot for taking me to see Doctor Matt.' With a chuckle, he then adds, 'Man, what a diagnosis: 'Superior to normal asshole.' Hah, guess that'll make the training I've been ordered to do easier. To be honest, it felt pretty neat when you... 'did' me that first time, and I'd been wondering if there could be... more to experience.' It's not easy to tell with his dark skin, but you think that Monty's blushing as he says this. [bold type]He'll be open for more sexual encounters from now on.[roman type][line break]";
			now Libido of Monty is 3; [open for sex]
		else if Libido of Monty is 3:
			say "     Rubbing the back of his neck, Monty blows out his breath and says, 'So, I'm not going to turn into a minotaur, or anything nonhuman. Now that's a relief! Thanks a lot for taking me to see Doctor Matt.' With a chuckle, he then adds, 'Man, what a diagnosis: 'Superior to normal asshole.' Besides the training I've been ordered to do, I kinda want to go further with you just for fun too now. I mean, if I have it, why not use this before it wears off?'";
		else if Libido of Monty > 3:
			say "     Rubbing the back of his neck, Monty blows out his breath and says, 'So, I'm not going to turn into a minotaur, or anything nonhuman. Now that's a relief! Thanks a lot for taking me to see Doctor Matt.' With a chuckle, he then adds, 'Man, what a diagnosis: 'Superior to normal asshole.' And it's been fun to explore with you. Kinda curious how... how far we could take it. I mean, if I have this freaky hole, why not run it through its paces before it wears off?'";

to say MontyDoctorMattTalk1:
	if HP of Doctor Matt > 5 and Doctor Matt is in Primary Lab: [player interacted and he's still available]
		say "     Remembering Doctor Matt, you wonder if he could make heads or tails out of what's been going on with Monty. That could return some peace of mind to the black man, and you guess that the good doctor also wouldn't mind the opportunity to gather some additional information about what is going on. Might be worth the trip, so you tell Monty about the researcher. 'If that guy knows his shit and can give me a checkup, I'm all for it! Trevor Labs you said? Hm, some of the intel I was briefed with said to avoid the whole area, that it was a nest of monsters.' With a shrug, you tell him that it didn't seem any worse than the rest of the city to yourself. 'You know your way around, so I guess whoever reported that must have been mistaken. Could you maybe lead me there and do some introductions?'";
		LineBreak;
		say "     [link](1)[as]1[end link] - Take Monty to see Doctor Matt.";
		say "     [link](2)[as]2[end link] - You can't right at the moment.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to take Monty to see Doctor Matt or [link]2[end link] to postpone for now.";
		if calcnumber is 1: [visit to the doctor]
			LineBreak;
			say "[MontyDoctorMattVisit]";
		else:
			LineBreak;
			say "     The African-American soldier's eagerness to get going right now results in him looking rather disappointed when you explain that you have to postpone the trip for the time being. 'Okay, fine. But could you please come by and take me to that doctor when you've finished up whatever you need to do?'";
			now Intelligence of Monty is 2;
	else:
		say "     Given that the nanite infection and everything associated with it is a total mystery to you and anyone else, you can't really do much beyond telling Monty that he should just be happy that he got lucky in some way. 'Maybe you're right,' he replies with a slight frown after a moment, then shrugs. 'Still feels weird not to understand something about your own body.' Patting his shoulder in understanding, you let the topic drop. [bold type]Maybe you could talk to him again in the future if you learn something more about the nanites, or meet an expert about the topic.[roman type][line break]";
		now Intelligence of Monty is 1; [talked about his hole]

to say MontyDoctorMattVisit:
	say "     As you tell Monty that you're ready to go, he can barely restrain himself in the urgency to be checked out. 'Meet you at the camp entrance, I'll grab my kit and clear up going on a scouting mission.' Rushing off without waiting for a reply, you look after the muscular soldier for a moment, then wander over to the camp entrance. You start up a friendly chat with Marc while you wait, then eventually are joined by Monty, decked out in a full uniform, backpack and with a rifle at the ready. 'Let's move out!' he says impatiently, though he does exchange salutes with Marc and gives him a friendly nod before walking past. The trip through the city streets [if daytimer is day]in bright sunlight[else]in the dim moonlight[end if] is fairly uneventful, which might have to do with there being two of you, armed and moving swiftly with a goal in mind. What creatures you do meet generally avoid any possible confrontation, changing the side of the road or ducking out of sight.";
	say "     Not too long after setting out from Camp Bravo, you see the Trevor Labs building before you and call out for Orthas so you do not surprise her with your presence. The black-scaled anthro dragon steps up to the shattered remains of the glass entrance door and looks at the two of you, first warily then with a smile spreading over her muzzle as she recognizes you. Meanwhile, Monty stops in his tracks, looking wide-eyed at the former security guard, then bursting out with the words, 'Wow, there's a guard dragon here?! What kind of place is this?' Taking his comment with a chuckle, Orthas saunters closer, half-spreading her wings to make herself more imposing. 'Not quite, soldier-boy. What I am is a dragoness. These things here should be a hint,' she says to him, demonstratively cupping her F-cup breasts with both hands and giving them a squeeze. This draws the soldier's gaze down to the quite well-rounded bumps under her over-stretched uniform shirt, and he misses it completely as she then holds out one hand for him to shake.";
	WaitLineBreak;
	say "     'The name's Orthas, nice to meet you,' the black dragon says, and after you casually bump your travel companion with an elbow, he blinks away from staring at her large breasts to shake her hand and hastily say, 'Corporal Montgomery Freeman. But you can call me Monty.' With a smile that shows her many sharp teeth, Orthas replies, 'Monty it is then. Welcome to the Trevor Labs. I bet you're here to see Doctor Matt, right? This doesn't look like a rescue party, with just the two of you by your lonesome.' At this point, you jump in for a bit, explaining that the black soldier is with the beachhead troops that set up a camp in the inner city and that the evacuation of any survivors seems to be off a while yet. Orthas accepts this with a friendly enough shrug and says, 'No rest for the guard dragoness yet then, eh? Go right up, he's in his lab as usual and you know the way.'";
	say "     She steps aside to let you by, and as Monty follows, you hear her tease him a bit with the words, 'You can have a feel if you want when you're done and come down later. I don't mind at all - they're fun to play with myself.' It's a bit hard to tell with his quite dark skin, but you're fairly sure Monty is blushing as he catches up with you a moment later. Without comment and doing your best to suppress a smile, you climb the stairs with him and enter the research lab where Doctor Matt is working on solving the riddle of the nanite plague. The familiar red hazmat suit isn't immediately apparent as you come in, so you call out, answered a moment later by a voice saying, 'Over here! Could you walk a bit closer, I can't really see you from this angle.' Curious what is going on, you and Monty walk deeper into the lab and you realize that the voice is actually coming from a speaker on the wall. [if Susan is in Primary Lab]Susan doesn't seem to be here either right now, as you can see her empty bunk in a corner. [end if]Then some movement behind a security window with wire mesh in the back of the large room draws your attention.";
	WaitLineBreak;
	say "     Doctor Matt, uncharacteristically dressed in a t-shirt and pants, is standing in the one location he feels safe enough in to take off the suit - the isolation room of a lab for infectious diseases. 'Welcome, good to see you again. And I see you have brought another visitor too,' the silver-haired scientist says in a friendly tone, adjusting his glasses before addressing Monty. 'You are a member of the armed forces, young man? I am Doctor Matthew Burnell, but most just call me Doctor Matt. May I ask what brings you here? To my knowledge, the plan to evacuate the city is not yet ready, so it can't be that already.' Coming to attention before the older man, Monty says, 'Corporal Montgomery Freeman, sir! My companion told me that you were very knowledgable about the nanite infection and... there's something about, em, my body I was hoping you might help me with.'";
	say "     Raising one eyebrow inquisitively, Doctor Matt nods. 'Well then, Mister Freeman, go ahead and explain. Leave nothing out, even the smallest detail might be of importance.' After saying this, the doctor moves over to a working table, picking up a clipboard and a pen to take notes. 'Ah, before you start - which serum are you on? Given your human appearance, I assume you're part of the troops that were given the experimental nanite countermeasures? Also, do you have an injector on hand that you might be able to give me? I assure you it will greatly help in my research.' Monty's brows draw together for a second, then he pulls his backpack off and opens a side pocket, pulling a bright red auto-injector with an orange protective cap out of it. 'You mean this thing? It's, XN-02. I guess you can have it, as long as I'm back in the camp within the next five hours. We were given strict orders not to miss a single scheduled injection.'";
	WaitLineBreak;
	say "     'Splendid! Please place it next to the sampling rack on that table over there,' Doctor Matt in clearly audible excitement, making notes in between following Monty with his gaze as he walks through the other room. From your position, you can see the paper a little bit, so you crane your neck and see 'XN-02' with the 2 doubly underlined and the words 'No danger of liquification' written underneath. When Monty returns to the window a moment later, Doctor Matt draws an detailed account of what happened from him, asking questions in an uncompromisingly direct way that has the other man pausing in embarrassment more than once, for example at several questions of the exact size of Tiny's erection and how it felt inside him, as well as making Monty guess about the volume of cum that was put into him and the length of time his insides were soaking in the beast-man's seed.";
	say "     Deep in thought for a long while as he re-reads his notes and taps the side of his pen against the clipboard, Doctor Matt eventually looks up again and says, 'Quite interesting, I must say. I've got a theory about what might be happening, but I'll have to examine you to confirm it. Mister Freeman, would you please strip down and sit over there on that examination table. I will be with you in a little while.' Not waiting for a reply, the doctor moves over to the double airlock and starts the process of putting on his suit, complete with pressure checks and everything before he comes out into the same room as you and Monty. The black man nervously awaits him as instructed, completely naked and with his clothes and gear in a neat stack off on a side table. The next forty minutes or so are filled with a quite thorough examination of the black soldier, with numerous samples being taken: blood, skin from several spots, hair, even a semen sample, as well as Matt asking his patient to 'spread' himself with his fingers since he doesn't have the medical tools available to do so. As the black man does so, he lets out a little gasp, and the simple touch causes his cock to throb.";
	WaitLineBreak;
	say "     Barely paying Monty any attention after a quick, 'We're done for now. You can get dressed again,' Doctor Matt starts analyzing the samples, speaking quiet notes into a recorder and beginning with the words, 'New patient: Montgomery Freeman, age 22, African-American.' From what you've already seen and heard of the doctor, you decide it might be best to leave him working in peace and not expose Monty to the unfiltered revelations Matt will put in his notes. Waving to Monty to follow, you lead him back downstairs to the lobby. Orthas seems ready to take up her teasing again, but after a quick glance at the soldier's still tense expression, she pushes that aside. No one really seems in the mood to talk too much right now, so everyone stands around a little glumly, until Orthas eventually pulls out a deck of cards from a pants pocket and asks, 'Anyone up for a round of poker?'";
	say "     The three of you move to sit on some of the less damaged pieces of lobby furniture and play cards for what feels like quite a while, using glass shards of various sizes as ersatz money. Interestingly, Monty ends up with a quite admirable stack of fragments of the front door in front of himself. You can't quite tell if he's good at poker or just lucky today, although there's a little suspicion in you hat Orthas might be letting him win at least some of the time. She certainly does her best to be friendly, that's for sure. Some time later, the sound of creaking rubber makes you look up and see the red-suited form of Doctor Matt up at the railing of the stairs to the upper floor. 'Ah, there you are. I've got some results to show you,' he says, then turns around and goes back into his lab.";
	WaitLineBreak;
	say "     'The doctor is very smart, but I think he sometimes simply forgets to be nice. I'm sure it'll be good news, don't worry about it.' Orthas tells Monty in a friendly tone, reaching out to pat his leg above the knee and giving it a gentle squeeze. 'Thank you,' the black man replies, touching the dragoness's arm, then gets up and quickly takes the stairs two steps at a time. You hurry after him, also curious about what Matt found out. Arriving in the lab, you are greeted by Matt standing in front of a workstation with some fairly large scientific device on it. 'If you would direct your attention to the screen over there, I can show you something interesting,' he says, fiddling with the equipment as he does so. You watch the image on the screen, which depicts a skin sample, likely one of Monty's. Then a syringe or something moves closer, delivering a droplet of fluid to touch it, after which you can see the skin rapidly being transformed.";
	say "     'This is the typical reaction of an organism being exposed to the nanites. Now observe what happens when we add some of the hunter-killer nanites of XN-02.' The doctor adjusts something and a second syringe deposits a droplet to mix with the first, which instantly stops the ongoing transformation, leaving the sample halfway changed. 'What Mister Freeman and his compatriots are injecting themselves with are nanites too, who do nothing but search out other nanites and destroy them. Contrary to the rogue, highly developed nanites that are causing this city-wide outbreak, which do have some swarm-movement capability, the experimental devices depend on being moved by external forces. In short, blood being pumped throughout a host's body and carrying them along. This is a valid method of transportation that spreads their protection in the body. But not quite everywhere.' Stepping up to a drawing board, he sketches a diagram of what you recognize as human skin, with various different layers.";
	project the Figure of SkinDiagram1_icon;
	WaitLineBreak;
	project the Figure of SkinDiagram2_icon;
	say "     'As you may know, the uppermost layer of skin is called the epidermis, which is a protective sheath over the deeper layers. It is further made up of different strata of cells: corneum, granulosum, spinosum and basale. The only place where cells are created is the basal stratum at the bottom, after which they are pushed upwards by further newly formed cells and adapt to specific purposes. The important point for Mister Freeman is that there are no blood vessels in the epidermis, with only the lowest stratum being supplied through the blood vessels of the dermis beneath. So they are the last cells that actually are in contact with the hunter-killer nanites.' That said, he takes two differently colored markers and shades the lower half of the sketch green, the upper half red.";
	say "     'During his prolonged exposure to nanite-rich seminal fluid, Mister Freeman's upper cell layers got worked on by the invading nanites. Frankly, they're now far superior to normal skin - more flexible, mobile and structured in a flawless pattern. This results in higher resistance to damage, rapid healing of wounds and increased stretchability. What they do not possess is the ability to reproduce, and since his basal cells were protected, the effect will wear off eventually as the epidermis skin cells flake off naturally over time.' Capping his markers and turning back to the two of you, Doctor Matt gives you a smile. 'A fascinating case to study, thank you for giving me the opportunity to do so. Are there any questions?' Monty shakes himself out of staring at the diagram, reaching one arm behind his back as if to touch his ass, then shying away from doing so. 'So you're saying I got a minotaur ass now? Will I get hairy and whatnot else? Or even a tail?!'";
	WaitLineBreak;
	say "     With the sigh of a teacher having to deal with a somewhat slow student, Matt points at the diagram. 'For your first question: Technically yes, but there is generally little differentiation between epidermis cells in any of the mammalian strains I have been able to study so far. But even if you had formed reptilian scales, without cell replenishment those would flake off over time too.' Adding a bulbous shape beneath the previously sketched layers and drawing long parallel lines upwards that penetrate all the way up through the skin, he adds, 'As for question two: No, hair-forming cells are part of the dermis. No attacking nanites had a chance of reaching them. Same thing for your third question. Forming a tail is impossible without an infection in replicating cells.' You can hear a sigh of relief from Monty at those words and the black soldier strokes over his shaved head as he blows out a long breath. 'Thank you for explaining it to me, doctor. It's a relief to hear that I'm still human and there won't be any long-term side effects.'";
	say "     'My pleasure, young man. The insights into your condition as well as the samples of nanite countermeasures you provided will help greatly in my work to understand this rogue nanite spread.' He gives Monty a friendly smile and then turns towards you. 'Thank you for bringing him to me. You're a valued assistant.' The three of you exchange some more words of casual conversation, then Monty suggests you get back to the army camp, thanking Doctor Matt again as he leaves the lab. Walking down the stairs soon after, you're awaited by Orthas leaning against the wall in the lobby. 'That's more like it, eh? Our soldier boy is smiling again! Got some good news from the doc?' she asks, directing her attention at the soldier walking ahead of you. Monty clears his throat and replies, 'Yeah actually. I'm still fully human, in everything that counts at least!' 'Congrats!' Orthas tells him, laying a clawed hand on his shoulder and giving it a comforting squeeze as he arrives at the bottom of the steps.";
	WaitLineBreak;
	say "     The dragoness follows up by leaning in and not quite whispering into his ear, 'The offer still stands, by the way. You can have a feel if you want, Monty. To celebrate, or whatever.' The man swallows visibly and licks his lips... but then the moment starting to build between them is interrupted as you also reach the end of the stair and the soldier moves to make room for you. Afterwards, he looks back and forth between the two of you, trying to come up with something fitting to say, but Orthas waves him off with a smile. 'I can see you're on the jump, and don't wanna keep you. Next time then, eh?' This is delivered with a wink and oh so casual shake of her chest, making the breasts of the dragoness wobble enticingly. 'Be safe out there, and don't be strangers you two. It's so hard these days to find anyone to hang out with.' After some friendly pats, Monty and you leave the Trevor Labs buildings and retrace your steps back to the military camp. A little while later, you're greeted by the familiar face of Marc at the Camp Bravo entrance, who lets you in right away.";
	now Intelligence of Monty is 3; [he knows he's fully human and only has a super stretchy asshole]

to say MontyTalk6: [sexual preferences]
	say "     As you ask Monty about his sexual preferences, the soldier blows out his breath and looks aside, staring into the distance with a thoughtful expression. 'Oh boy,' you can hear him mumble under his breath, pausing for a few seconds to gather his thoughts. 'I'm straight! Just a regular guy,' he then starts off with, said rather quickly[if player is male], and even though it's hard to see due to his dark skin, you think he's blushing[end if]. Clearing his throat, he adds, 'Not that I think there's anything wrong with people who enjoy... stuff. You know.' Monty adds a vague wave of his hand to what he says, not really explaining anything. Your expression must have told him that you're starting to suspect there's more to this than he's saying, and the soldier looks aside again, scuffing his combat boot on the ground.";
	say "     Raising an eyebrow, you casually say that you actually wanted to learn about his preferences, not sexual orientation. 'Oh. So you didn't...' Monty replies, looking a little wide-eyed at having misunderstood your question like he did. He quickly tries to deflect by adding, 'Err, so... what brought this on? Asking me things like that all of a sudden!?'";
	LineBreak;
	say "     [bold type]What's your reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - You're just curious and wanted to get to know him better.";
	say "     [link](2)[as]2[end link] - You wanted to know how he feels, what with him and the minotaur...";
	say "     [link](3)[as]3[end link] - Play it down and change the topic.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to beat around the bush, [link]2[end link] to bring up the minotaur or [link]3[end link] to change the topic.";
	if calcnumber is 1:
		LineBreak;
		say "     Monty's eyebrows draw together a little bit and he gives you a sharp look. 'Well, it's a bit of a personal question. Hell, we've only just met and stuff like this isn't what you just bring up willy nilly!' It seems obvious that he's done talking about this question, and silence stretches out for a few seconds before you carefully steer the conversation to some less loaded topics.";
	else if calcnumber is 2:
		LineBreak;
		say "     As you reply in a cautiously curious tone, bringing up the things he's been through with Tiny, and his 'special transport' mission during which you two met, Monty's eyebrows start to draw together a little. Then he stops himself and they rise, followed by him stroking a hand over his shaved head and biting his lower lip. 'I... guess it's good to talk about things, eh? Thing's gone off the rails in this city, and one shouldn't just swallow it all down. Seems funny that I'm even thinking of talking about this, but maybe it's because you're not actually in the army with me, and helped after that mess with the hyena. So...' Taking a deep breath, he meets your eyes, then bursts out, 'Okay, I liked it. The minotaur thing. Just felt good, so now I'm a little bit freaked out by what that means. Never really looked at a guy in 'that way' before, and not sure if I will, but the sex was... pretty nice.'";
		say "     Monty is quiet for a few more seconds, then coughs in his hand and adds, 'I guess while we're opening up and all that shit, there [italic type]might[roman type] have been a certain drunken night some years ago during which a buddy of mine went down on me. And it was [italic type]good[roman type], god the things he did with that tongue! After that, I never really got over myself again when he offered another round later on with both of us sober. That was just too gay for my younger self, so we did drift apart and didn't hang out that much anymore. Kinda regret that now.' Raising an arm to hook his hand behind his neck and rubbing it, the black man looks at you and smiles somewhat embarrassedly. 'Not saying I'm pining after Tony and he's the lost love of my life, but the way I see it now... why the hell shouldn't you enjoy yourself a bit with a good friend? Feels good, everyone has fun, so who needs a label, eh? Doesn't make a dude less of a man!' Reaching back to rub his ass, Monty's mouth draws into a cheeky smile and he says, 'Guess being shafted by a minotaur in the line of duty does kinda open you up for new experiences - in more ways than one.'";
	else if calcnumber is 3:
		LineBreak;
		say "     As you reply in a casual and noncommittal way, a relieved expression ghosts over Monty's face for a second, followed by him jumping to another topic entirely. The two of you continue to chat for a little while after that, about nothing of much importance.";

to say MontyRelationshipTalk:
	say "     Clearing your throat, you quietly ask Monty what he thinks about the relationship between the two of you. With all the things that have happened, and all of that. The black soldier looks around somewhat nervously, checking again that no one can overhear you talking. Clearing his throat, he says cautiously, 'Well, to be honest, I'm not really on the market for something long term. You know, a 'relationship' relationship. I mean, you're a good friend and I hanging out, and yes - doing stuff with ya. Not really feeling more than that though, sorry.'";
	say "     [bold type]After taking in his words, you reply:[roman type][line break]";
	say "     [link](1)[as]1[end link] - Good, you like being fuck-buddies with him.";
	say "     [link](2)[as]2[end link] - You'd like more, but you accept his decision.";
	say "     [link](3)[as]3[end link] - Tell him you're disappointed and argue with him.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to happily be his fuck-buddy, [link]2[end link] to want more but accept being a fuck-buddy or [link]3[end link] to want more and are disappointed.";
	if calcnumber is 1:
		LineBreak;
		say "     Smiling at Monty and explaining that you pretty much feel the same way makes the tension in the air between you vanish instantly, with him letting out a relieved breath. 'Good we've cleared that up, eh?' he says, reaching out to grip your shoulder and squeeze it. Then he goes further and pulls you into a bro-hug, quietly whispering, 'Really looking forward to messing around with ya next time, though.'";
		add "PlayerRelationship_FuckBud" to Traits of Monty;
	else if calcnumber is 2:
		LineBreak;
		say "     With a little bit of a strained smile on your face, you explain that you'd want more, but that you're fine with keeping things on the level that Monty prefers. He looks at you for a second, as if searching for signs of resentment in your expression, then lets out a relieved breath as he doesn't find any. 'Good we've cleared that up, eh? Wouldn't want there to be any misunderstandings,' he says, reaching out to pat the side of your arm and squeezing it. Holding you at arm's length, he quietly adds in a whisper, 'Really looking forward to messing around with ya next time, though.'";
		add "PlayerRelationship_FuckBud+WantsMore" to Traits of Monty;
	else if calcnumber is 3:
		LineBreak;
		say "     Your eyebrows draw together as you explain that you expected more, after the time you spent together. As you then begin to argue with him, Monty sighs and raises his hands halfway in a defensive gesture, 'Listen, I - uhm, I'm fine with still messing around, but you gotta understand that there won't be anything more between us. Can you do that?' You look into his eyes, searching for any indication that you can still convince him otherwise, but it seems like his mind is pretty well set. Finally, you give him a reluctant nod.";
		add "PlayerRelationship_FuckBud+Disappointment" to Traits of Monty;

Instead of fucking Monty:
	if (lastfuck of Monty - turns < 5):
		say "     Monty chuckles and says, 'Man, you want to go at it again? Do you have a battery compartment somewhere? I for one need a bit of a break.'";
	else if Libido of Monty < 3:
		say "     The black man raises an eyebrow as you make your offer, then shakes his head in a friendly but firm way. 'No thanks, I'm good right now. We're not here to get our rocks off, but to fulfill a mission.' By sheer coincidence, you hear a full-voiced, lustful bellow from the center of the camp just as Monty says this. Sounds like another man [if HP of Adam > 3](or woman)[end if] got a creamy filling of minotaur cum. The soldier glances in that direction, his eyes filled with a far-away look for a second, as he seems drawn back into his own close encounter with the breeding bull of Camp Bravo. Shaking himself out of it, Monty sees you looking at him, which causes an embarrassed flush to spread over face, barely visible under his dark pigmentation. 'Err... you know what I mean. Containing this mess, saving people, helping find the cure.' Waving a hand in the air as if the dispel his own mental image of what's going on in the parade ground, he wanders away a little, busying himself with one task or other.";
	else:
		say "     The black man chuckles as you make him an offer, glancing left and right as if to see if anyone might have overheard. Clearing his throat, he runs a hand over his shaved head, then says under his breath, 'Yeah, sure. Not like I'm not as horny as any red-blooded guy here in the camp. Ya['] barely can turn a corner without stumbling over someone jerking off. Not here, though. Got a rep to maintain.' Giving your arm a light slap, the black man suddenly adds in a loud voice, 'Come on, I'll show you where you have to be for debriefing.' With that said, he walks off in one direction and as you turn to follow him, you see that a whole group of other soldiers was coming up from behind where you were standing a moment ago. Not that they seem to have any interest in you, but they might have overheard any further discussion of lewd fun.";
		say "     Monty leads the way to the out of the way corner of the camp you know well by now, checks that no one else is in sight, then climbs onto the wooden crate and through the shattered window of the city bus. You follow him, passing through the wrecked vehicle and exiting through the wide door at its front end, into the abandoned office building next to the military camp. 'So, here we are,' the muscular soldier says with a grin on his face, letting his gaze wander up and down over your form. He pulls his shirt off in a smooth movement, throwing it onto a nearby desk, then starts to undo his pants. You watch him strip down with interest, exchanging lusty looks with your soldier fuck-buddy.";
		now sextablerun is 0;
		project Figure of Monty_naked_icon;
		say "     [bold type]What do you want to do with your black stud?[roman type][line break]";
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Monty's cock";
		now sortorder entry is 1;
		now description entry is "Be face-fucked by the soldier";
		[
		if (player is male):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job";
		]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Monty fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the black soldier breed you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Monty fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the black soldier fill your ass with his seed";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Finger Monty's ass";
		now sortorder entry is 5;
		now description entry is "Explore the black soldier's ass with your digits, seeing how much you can put in the man while jerking him off";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Make use of the buttplugs";
		now sortorder entry is 6;
		now description entry is "Give Monty a workout with the 'training' toys";
		[]
		if "ToyPlay_1" is listed in Traits of Monty:
			choose a blank row in table of fucking options;
			now title entry is "Put a buttplug up Monty's rear and take him out for a stroll";
			now sortorder entry is 7;
			now description entry is "Make the soldier walk through the camp with a buttplug inside him";
		[]
		if "Rimming_Banned1" is not listed in Traits of Monty and "Rimming_Banned2" is not listed in Traits of Monty: [player doesn't like to rim, talked or not talked about it with Monty]
			choose a blank row in table of fucking options;
			now title entry is "Rim Monty's ass";
			now sortorder entry is 8;
			now description entry is "Get your tongue in there and eat the black soldier's ass";
		[]
		if "Fingering_Done1" is listed in Traits of Monty:
			choose a blank row in table of fucking options;
			now title entry is "Fist Monty's ass";
			now sortorder entry is 9;
			now description entry is "Sink your fist and forearm into the black soldier's ass";
		[
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Monty's ass";
			now sortorder entry is 10;
			now description entry is "Fill the black soldier's ass with your cock";
		]
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
					if nam is "Suck Monty's cock":
						say "[MontySex1]";
					else if (nam is "Have him suck your cock"):
						say "[MontySex2]";
					else if (nam is "Let Monty fuck your pussy"):
						say "[MontySex3]";
					else if (nam is "Let Monty fuck your ass"):
						say "[MontySex4]";
					else if (nam is "Finger Monty's ass"):
						say "[MontySex5]";
					else if (nam is "Rim Monty's ass"):
						say "[MontySex6]";
					else if (nam is "Fist Monty's ass"):
						say "[MontySex7]";
					else if (nam is "Make use of the buttplugs"):
						say "[MontySex8]";
					else if (nam is "Put a buttplug up Monty's rear and take him out for a stroll"):
						say "[MontySex9]";
					else if (nam is "Fuck Monty's ass"):
						say "[MontySex10]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the black soldier, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say MontySex1: [blowjob/facefuck]
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, feeling his firm pecs and defined abs on the way further down to his crotch. Soon wrapping your fingers around the base of his long cock and giving the 10-inch shaft an eager stroke, you look him in the eyes and wiggle your eyebrows at him. Monty chuckles, clearing his throat and saying, 'Man, I never thought being deployed right here in the country to deal with this messy situation could ever have any sort of upside, but this sure feels like fun.' You just grin in reply, then sink to your knees before the African-American man.";
	say "     Looking up to meet Monty's eyes, you lick your lips demonstratively. He grins and shifts his hips a little, playfully slapping your face with his big cock and reaching out to rest a hand on top of your head. 'Oh yeah! Go for it!' he pants as you stick your tongue out, then begin to trace it up the underside of his shaft. Your black soldier buddy's fingers stroke over your head, guiding you a little as you lick over his erection and quickly arrive at the head. Parting your lips, you slide them over his cock and feel the firm yet yielding curve of his mushroom head against your tongue, complete with a first little taste of his pre-cum. Monty's flavor on your taste-buds is quite nice actually, waking the desire for more. Healthy living and physical fitness definitely seems to help with that, and you send mental thanks to the army as you go down on the man-candy they delivered for you here.";
	WaitLineBreak;
	say "     'Damn, that feels great!' Monty groans breathlessly as you inhale more of his long prick, his hand pushing a little on the back of your head to keep you going deeper and deeper. Focusing your mind on relaxing your throat as much as you can, you soon are nuzzling the smoothly shaven skin of Monty's crotch, getting a nose-full of his masculine scent and feeling the curve of his balls against your chin. You can feel his erection throbbing against your tongue and throat as you hold your position for a long moment, your muscles squeezing his length every time you swallow and making his grip on your head tighten as he moans out loud. Monty gets a little bit lost in the pleasure of the moment, so much so that you have to tap out against the side of his hip for him to let you pull back and catch your breath. As you do so, strings of spit and pre-cum stretch between his cock and your lips, which he wipes away with his index finger, then pushes it into your mouth for you to suck clean.";
	say "     Lust fully enflamed now, the soldier only leaves you a little time to gasp for air before both of his hands grasp your head this time, bringing it closer to his crotch again as he pushes his hips forward. You readily open up to take the chocolate rod into your mouth, looking up to see the broad grin on Monty's face as he proceeds to slide himself home into you, followed by starting to face-fuck with smooth, deep strokes. Thankfully he pulls out at least momentarily before each deep plunge, so you manage to gulp down a little air in the second before feeling the black man's balls slap your chin again. Still, even so you get a little bit light-headed as you're used by the well-muscled male, willingly receiving his cock as your eyes wander over his naked body and take in the sweat now glistening on the firm lines of his chest.";
	WaitLineBreak;
	say "     You couldn't say how long your session of orally pleasing Monty lasts, as your worldview shrinks down to him, yourself and the sensation of the thick, warm shaft in your throat, with two strong hands grasping your head. One thing is for certain, it's fun to be with the man, as he uses you with a secure grasp that's never rough, and Monty is a pretty vocal guy, constantly moaning, panting and gasping out your name, compliments about how great you make him feel, or sometimes just wordless sounds of lust. His volume only increases over time, making it a very good thing that your love-nest is somewhat out of the way and not just behind a tent or so, otherwise the whole camp would know about your tight throat by now. The frantic face-fuck comes to an explosive climax some time later, with Monty ramming himself inside all the way and grinding his crotch forward against your face while his erection throbs out the first heavy spurt of cum, right into your stomach.";
	say "     'Nnnnghhh! YEAH!' the horny soldier shouts as he gushes thick blasts of his seed into you, this time surprisingly remembering that you do actually need to breathe and pulling back after the first few throbs. Now just covering your tongue with his cum and flooding your taste-buds with the rich, nutty taste, Monty's grip on your head slackens a little as the immediate urgency of his orgasm ebbs off. Soon after, the extent of his exhaustion from the face-fuck session hits him and he slumps forward a little, moving a hand to brace on your shoulder. 'That. Was. Amazing!' he pants out, a beaming smile on his face. You stand up and lay your arms around his heaving, warm and somewhat sweaty chest, allowing Monty to lean into you until he catches his breath. Feeling good about having made his day, you nibble a little on his earlobe and tell him that you also enjoyed yourself in this little bit of fun-time.";
	WaitLineBreak;
	say "     The two of you continue to hold on to each other for a little while longer, just enjoying the closeness to another, before you eventually let go. Monty gives your upper arm a last squeeze, then walks over to where his clothes lie scattered from being pulled off quickly. He glances over his shoulder and smiles, followed by teasingly wiggling his well-rounded bubble butt a little as he bends over to pick up his pants. Then he gets dressed again before leading you back out of the building and between the tents of Camp Bravo.";
	NPCSexAftermath Player receives "OralCock" from Monty;

to say MontySex2: [have Monty blow the player]
	if "Cum_Tasted1" is not listed in Traits of Monty: [never tasted cum]
		say "Hesitating for a second, he then gives himself a push and opens up, allowing your digit into his mouth. Almost gingerly sucking on it, he appears pleasantly surprised by the taste and starts to slurp on your finger with growing eagerness.";
		add "Cum_Tasted1" to Traits of Monty;
	else: [already tasted cum (his/other)]
		say "";
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, feeling his firm pecs and defined abs. You've certainly befriended one sexy hunk of a man, who thankfully is happy enough to experiment sexually. ";
	say "     ";
	NPCSexAftermath Monty receives "OralCock" from Player;

to say MontySex3: [player pussy is fucked by Monty]
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, then continue to stroke his body. Eventually, you pull back from the body-worship session and gaze into his eyes as you say that you want him to fuck you. Both of your gazes are drawn downwards by his dick, as it noticeably twitches upwards at your words. The soldier catches it in his hand, wrapping his fingers around and stroking slowly up and down along the shaft. 'Gotta say that I never would have expected in a million years how things are going - right now, and before. I mean... meeting the way we did, out there, then again in the camp, you taking me to meet the doc, and finally us in here, fuck-friends and all that.'";
	say "     With a smile on his face, Monty eagerly steps forward, laying an arm around the side of your hip and walking you backwards until you can feel the edge of a desk against your rear. He nods to you in a meaningful way and you push yourself up to sit on the desk, spreading your legs to offer yourself to him. 'Yeah, just like that!' he pants under his breath, guiding himself into you. The long black rod slides between your already sopping wet folds, stretching your hole oh so very good around his girth. His full, virile balls - shaved like the rest of his body - press against your crotch as be bottoms out with a grunt. 'Damn, [if Player is male or Breast Size of Player is 0]babe[else][one of]stud[or]sexy[at random][end if]. You've got one sweet pussy!' Monty adds and leans in, licking over [if Nipple Count of Player is 0]the spots where a regular human would have nipples[else if Breast Size of player is 0]the flat pecs on your chest, searching out one nipple after the other and suckling on them. 'Man, this is different, but kinda hot!' he comments about your mix of female and male characteristics, smiling shyly then lightly biting your nubs experimentally and seeing how you react[else]your [Breast Size Description of Player] [one of]breasts[or]boobs[or]tits[at random] and suckling on their nipples[end if].";
	WaitLineBreak;
	say "     After a little bit of oral play, all the while his big cock is still deep inside your snatch, throbbing and hard, Monty raises his head and starts to make out with you. Full lips brushing against your own, the black soldier withdraws halfway from your pussy, then hammers back inside with a sudden thrust and continuing on to power-fuck you. Throwing your arms around his chest, you hold on tightly and push your hips forward to meat each stroke, taking everything the fit and muscular man has to offer. Monty expertly dicks your pussy, clearly well-experienced in making a woman whimper and scream in lust, [if player is male]and even through he's less familiar with handling other people's cocks, he does his best by grasping yours and stroking along its length[else]even searching out your clit with his fingers and rubbing it in rhythm with each thrust[end if].";
	say "     'You like taking that cock, dont'cha [if Player is male or Breast Size of Player is 0]babe[else][one of]stud[or]sexy[at random][end if]?' the horny soldier pants breathlessly while fucking you, a wide grin splitting his face as the only reply you are able to give is a needy moan, as he timed things so he'd bottom out once more when you open your mouth. Then he adds, 'My big cock in that tight little pussy!' and at the same time intensifies his simulation of your [if player is male]own cock, gripping it tighter and jerking it rapidly[else]clit, rubbing it firmly and finding just the right rhythm. His digits close in around your pleasure button, lightly pinching and wiggling it between his fingertips, making you feel amazing[end if]. Given the double assault of him being deep inside you and at the same time fingering your sex, it doesn't take much longer before Monty pushes past your limits of endurance and you let out a loud moan, trembling all around his thrusting cock as you orgasm [italic type]hard[roman type]. You can feel yourself getting wet and dripping, femcum gushing out of you and drenching Monty's crotch as he continues to hammer away at you[if player is male] and your cock sending long blasts of cum streaking over your chest[end if].";
	WaitLineBreak;
	say "     'Fuck yeah, you feel amazing around my dick, [if Player is male or Breast Size of Player is 0]babe[else][one of]stud[or]sexy[at random][end if]!' he grunts out in a lusty tone, really enjoying the fact that he made you come first and that your insides are clenching around his erection. Then suddenly, you can feel the black soldier's chest flex as he moves in your embrace, stretching one arm behind his back. You've got a good idea what he might be doing, and that is confirmed a second later when Monty lets out a needy, almost whorish moan. Stretching your head a little, you see that he indeed has stuck two fingers up his ass and is rubbing his prostate now. With just how much the muscular man enjoys his ass being penetrated, there's little wonder in that he comes moments later, unloading a heavy load of thick, creamy cum into the depths of your pussy. Feeling his weighty balls throb against your skin, you can only imagine how much of his sperm is right now invading your [if player is fpreg_able]receptive [end if]womb, seeking to create new life.";
	say "     Monty stays inside you and continues to rub your [if player is male]cock[else]clit[end if] slowly while you ride out your longer orgasm. Only when you eventually sink back onto the desk with a content sigh does he withdraw slowly, smiling down at the white cum clinging to his black mamba of a cock as it emerges. 'That was fun!' he tells you smilingly before stepping away from your desk, seeking out another nearby that has holds a box of tissues. With the paper towels in hand, your fuck-buddy offers it to you with the words, 'Want some help cleaning up?' After handing you the towels, he goes to collect a wastepaper bin and sets it down beside the desk for you to throw the soaked towels in. 'You sure come a lot!' he quips as a joke before you stand up and go to collect your gear.";
	NPCSexAftermath Player receives "PussyFuck" from Monty;

to say MontySex4: [player ass is fucked by Monty]
	say "...";
	NPCSexAftermath Player receives "AssFuck" from Monty;

to say MontySex5: [fingering Monty's ass]
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, then continue to stroke his body. Eventually, you pull back from the body-worship session and gaze into his eyes as you say that you want him to plant his ass in one of the office chairs and spread those legs for you. 'Wanna check out my [one of]booty[or]nanite-enhanced ass[or]black booty[at random], eh?' he replies with a chuckle, stroking down the side of your arm and giving it a squeeze before nodding. Picking a big and comfortable chair that might have belonged to a manager, the muscular soldier leans back in it, then hooks his legs over the desk before him, awaiting you with an eager expression. 'Like this?' Monty asks, his teeth shining bright as he smiles and waves a hand over his naked form.";
	say "     As you walk up and snag a chair for yourself, the black man watches you from the corner of his eye with a cheeky grin on his face. ";
	if "Assplay_Talk1" is not listed in Traits of Monty:
		say "'Man, if you had told me at the start of the year that I would be doing something like this, I'd have said you're crazy. Times can change right quick, eh?' You reply that he's got something there, ";
		add "Assplay_Talk1" to Traits of Monty;
	else:
		say "'Man, I can't get enough from you playing with my ass! Fun times, eh?' You reply that he's got something there, ";
	say "scooching closer and then placing a hand on the firm flesh of his pecs, pinching first one nipple, then the other before running it down over his abs. Soon, you arrive at the black rod of his cock, already standing at full attention. Wrapping your fingers around it, you stroke up and down slowly while your other hand explores his raised legs, stroking and caressing. ";
	if "Shaving_Talk1" is not listed in Traits of Monty:
		say "As you feel up your soldier fuck-buddy, you casually mention the fact that he's pretty much hairless over his body. 'Well, yeah. I shave that stuff off. You can blame years of afternoons spent at the beach for that. Hate having sand sticking to wet fuzz. Much better when it's just smooth skin and you can brush it off.'";
		add "Shaving_Talk1" to Traits of Monty;
	else:
		say "As you feel up your soldier fuck-buddy, you stroke the hairless curves of his body, enjoying the feeling of his smooth skin. 'Ya liking groping me, hah! Well, go right ahead!' he quips, leaning into your touch.";
	WaitLineBreak;
	if "Rimming_Done1" is not listed in Traits of Monty and "Fingering_Done1" is not listed in Traits of Monty: [hasn't had either rim or fingering scene first]
		say "     Shrugging his shoulders, Monty then moves a hand to your arm, stroking along it just like you're doing with his leg. 'Oh yeah, that's nice!' he pants under his breath as you move on to cup his balls, rolling the full orbs gently in your fingers. Then you proceed just a little bit lower, with a fingertip stroking over his pucker. Monty tenses up for a second, biting his lip. 'Err... be gentle, okay?' With a smile, you tell him that you will, looking into Monty's eyes until he nods, at which point you brush over his opening yet again. The black man lets out a full-throated moan and throws back his head, hips reflexively humping a little upwards. Holding your finger still where it is, you meet the soldier's eyes as he opens them again, and a chuckle escapes his lips. 'God, feeling you touch me there... it's... just wow. Still can't believe how excited that makes me!' Glancing down at his erection, you see a thick bead of pre-cum glisten at the cum-slit. Wiping it off with your finger, you bring your hand up to Monty's face and touch his full lips. ";
		if "Cum_Tasted1" is not listed in Traits of Monty: [never tasted cum]
			say "Hesitating for a second, he then gives himself a push and opens up, allowing your digit into his mouth. Almost gingerly sucking on it, he appears pleasantly surprised by the taste and starts to slurp on your finger with growing eagerness.";
			add "Cum_Tasted1" to Traits of Monty;
		else: [already tasted cum (his/other)]
			say "After only a very brief moment of hesitation, he opens up and engulfs your digit, sucking on it eagerly and tasting himself.";
		if "Fingering_Done1" is not listed in Traits of Monty:
			add "Fingering_Done1" to Traits of Monty;
	else: [was rimmed/fingered before]
		say "     Shrugging his shoulders, Monty then moves a hand to your arm, stroking along it just like you're doing with his leg. 'Oh yeah, that's nice!' he pants under his breath as you move on to cup his balls, rolling the full orbs gently in your fingers. Then you proceed just a little bit lower, with a fingertip stroking over his pucker. If you didn't already know that your friend is sensitive there, his reaction would tell you that in an instant, as Monty lets out a full-throated moan and throws back his head, hips reflexively humping a little upwards. Holding your finger still where it is, you meet the soldier's eyes as he opens them again, and a chuckle escapes his lips. 'God, I love feeling you touch me there! Don't tease me, go deeper!' Glancing down at his erection, you see a thick bead of pre-cum glisten at the cum-slit. Wiping it off with your finger, you bring your hand up to Monty's face and touch his full lips. ";
		if "Cum_Tasted1" is not listed in Traits of Monty: [never tasted cum]
			say "Hesitating for a second, he then gives himself a push and opens up, allowing your digit into his mouth. Almost gingerly sucking on it, he appears pleasantly surprised by the taste and starts to slurp on your finger with growing eagerness.";
			add "Cum_Tasted1" to Traits of Monty;
		else: [already tasted cum (his/other)]
			say "After only a very brief moment of hesitation, he opens up and engulfs your digit, sucking on it eagerly and tasting himself.";
		if "Fingering_Done1" is not listed in Traits of Monty:
			add "Fingering_Done1" to Traits of Monty;
	say "     You let Monty suckle on your finger for a little while, until it is good and wet, then pull it out of his mouth with a plop. Wiggling your eyebrows, you bring your hand back down between his legs, stroking over his hole for a moment or two before pushing into it. The black man's back door flexes readily around your digit, allowing you access to his trembling, sensitive insides. 'Fuuuckkk! That's nice!' he gasps in a lusty tone and pushes his hips towards your hand, wanting you to go deeper. With a broad grin on your face, you do just that, slipping your questing finger further inside the readily yielding muscle and wiggling it around playfully. For a little while, you focus on simply pleasuring the asshole of your soldier fuck-buddy, your other hand just resting with its fingers wrapped around the base of his cock. This allows him to revel in the sensations fully, with loud moans, pants and sometimes unintelligible words escaping Monty's mouth.";
	WaitLineBreak;
	say "     Feeling him trembling around your finger as it curls inside him and hunts for Monty's most sensitive spots, you idly wonder if he always was this much of an anal-lover, or if the nanites helped up that sensitivity to what it is now. Doesn't matter which, really. What counts is that the muscular hunk of a man is going wild with every movement of your digit inside him! 'Mmyeah! Damn! More!' you hear Monty moan out loud. Only too happy to fulfill his request, you slip him another finger, soon followed by a third. His chute lies snugly around your fingers, but expands when you spread them. It's clear that this nanite-gained flexibility is how he was able to take a minotaur cock and still have the tight and gripping hole of what feels like a virgin. Then suddenly, you feel something wet touch your other hand. Eyes flicking over to it, you see that the soldier's thick, black shaft is leaking pre-cum at a steady pace, trickling down his erection and onto your hand.";
	say "     Smiling, you start sliding your hand up and down, spreading the slick fluid over his cock. His erection lies nicely in your grasp, warm and firm under your fingers as you stroke up and down. 'MMmmmore!' the black man moans in a breathy, almost whorish tone, throwing his head back and firmly holding onto the armrests of his chair. He didn't tell you what exactly he meant, so you decide to just indulge him with a little bit of everything: Another finger slips into his ass, making it a full four by now, and you speed up jerking him. Contrary to what one might think, the warmed-up ring of his muscle almost seems to welcome your invasion like a long-lost lover, spreading around and embracing your digits tightly. This gives you the spontaneous idea of going for broke, and so you let your thumb join the rest of your hand in pressing into the black man. With a slurp, your whole hand slips into Monty, his pucker pulling tight around your wrist. Suddenly finding himself being fisted instantly obliterates any restraint Monty has left inside him, leading to him almost shouting the words, 'I'm fucking close! Gonna nut any second now!'";
	WaitLineBreak;
	say "     Gleefully wriggling and spreading your fingers inside him, you send the black hunk barreling past the point of no return at a thousand miles per hour. Accompanied by a surprisingly high-pitched moan, a shudder goes through Monty, muscles trembling and twitching as his ball-sack tightens and sends the first heavy spurt of man-milk shooting up his erection. You feel his girth in your hand as the blast of cum pulses through and paints a wet streak over his abs, startlingly white on his black skin. Another and another and another spurt follows, covering Monty's chest with a criss-cross of white lines and trickles of seed starting to gravitate back to his crotch. You can feel the pulse of his rapid heartbeat through his inner walls, so tightly wrapped around your hand and wrist. All the while he's riding out the orgasm, you never let up feeling around inside his hole either, keeping Monty's lust at a hot burn and prolonging the high of pleasure he feels.";
	say "     Reflexive spasms of his pucker around your wrist almost makes you feel he'll never give it up again. Meanwhile, his dick keeps throbbing hard even after the cum available begins to ebb, and at some point you hear the trembling voice of your exhausted stud begging, 'Ngghh, man! My balls are empty! Haha!' After you slowly and gingerly pull your hand out, making Monty groan as the thickest part of it passes his ring, you look up to see what you wrought by pushing Monty this far. He's drenched in his own seed, rivulets of it making his abs into cum-gutters, and there is a blissful smile on his face, even as he's still panting and twitching a little. ";
	if "Fingering_Done1" is not listed in Traits of Monty: [never fingered like that before]
		say "'Man, that was crazy! How the hell did your whole hand fit in there?! What's next? Pulling a rabbit out of my ass?' Chuckling out loud, Monty looks at you with raised eyebrows. 'God, for a moment it was scary as fuck to realize you were in up to the wrist, but at the same time, it felt great! Guess I should go thank Tiny for opening me up, eh?'";
		add "Fingering_Done1" to Traits of Monty;
	else: [was fingered before]
		say "'Man, that was something else! With your hand being all the way in there, I simply couldn't stop cumming!' Monty comments, his slightly hoarse voice full of wonder and lust. 'Guess I was losing out on something amazing all these years! Should have taken up Tony when he offered, and experimented more. Thank you for, well, all of this!'";
	WaitLineBreak;
	say "     Hearing his gushing words, you playfully run your fingers over Monty's chest and caress his muscles. Until he reaches out to touch your arm that is, patting it and giving you a squeeze. 'I wish I could say that we can go on and have another round, or something else, but honestly - I'm spent!' After a glance to a nearby wall clock, he adds, 'And I should get back to join the guys in the camp. Can't just vanish for too long before people might start asking questions. So, uhm... wanna help me clean up?' Chuckling, you hunt around a little and find a box of paper towels on one desk, bringing it to Monty so he can wipe himself off. Afterwards, he stands up and walks over to where he left his clothes, wiggling his ass for you on the way once or twice with a smile thrown over his shoulder. Then he gets dressed again before leading you back out of the building and between the tents of Camp Bravo.";

to say MontySex6: [rimming Monty's ass]
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, then continue to stroke his body. Eventually, you pull back from the body-worship session and gaze into his eyes as you say that you want him to spread his cheeks for you. 'Wanna check out my [one of]booty[or]nanite-enhanced ass[or]black booty[at random], eh?' he replies with a chuckle, stroking down the side of your arm and giving it a squeeze before nodding. Picking one of the tables free of abandoned office documents, he leans forward and places his hands on the smooth surface, sliding them along until he's fully bent over it. 'Like this?' Monty asks, looking over his shoulder and wiggling his rear at you.";
	say "     As you walk up and snag a chair for yourself, the black man watches you from the corner of his eye with a cheeky grin on his face. ";
	if "Assplay_Talk1" is not listed in Traits of Monty:
		say "'Man, if you had told me at the start of the year that I would be doing something like this, I'd have said you're crazy. Times can change right quick, eh?' You reply that he's got something there, ";
		add "Assplay_Talk1" to Traits of Monty;
	else:
		say "'Man, I can't get enough from you playing with my ass! Fun times, eh?' You reply that he's got something there, ";
	say "all the while placing your hands on the full globes of his buttocks, feeling their smooth and firm roundness under your fingers. ";
	if "Shaving_Talk1" is not listed in Traits of Monty:
		say "As you feel up your soldier fuck-buddy, you casually mention the fact that he's pretty much hairless over his body. 'Well, yeah. I shave that stuff off. You can blame years of afternoons spent at the beach for that. Hate having sand sticking to wet fuzz. Much better when it's just smooth skin and you can brush it off.'";
		add "Shaving_Talk1" to Traits of Monty;
	else:
		say "As you feel up your soldier fuck-buddy, you stroke the hairless curves of his body, enjoying the feeling of his smooth skin. 'Ya liking groping me, hah! Well, go right ahead!' he quips, leaning into your touch.";
	WaitLineBreak;
	say "     You sink into a crouch behind Monty, rubbing the sides of his legs while doing so. This puts his well-rounded booty at eye level for you, complete with his crack and the trembling rose-bud waiting at its deepest point. As you lean forward and bring your head right up to it, the adventurous soldier lets out a little laugh. 'God, I can feel your breath on my asshole. Still can't believe just how excited that makes me. I mean, I -' Whatever else he wanted to say is replaced by a breathless moan as you nuzzle against Monty's skin, breathing in his clean, masculine scent and tracing the tip of your tongue over his hole. 'Fuuuckkk! That's nice!' he gasps in a lusty tone and pushes himself back reflexively, almost begging you to go deeper. With a broad grin on your face, you do just that, slipping your appendage inside the readily yielding muscle and wiggling it around playfully.";
	say "     For a little while, you focus on simply pleasuring the asshole of your soldier fuck-buddy, not even touching anything else. This allows him to revel in the sensations fully, with loud moans, pants and sometimes unintelligible words escaping Monty's mouth. Feeling him trembling around your exploring tongue, you idly wonder if he always was this much of an anal-lover, or if the nanites helped up that sensitivity to what it is now. Doesn't matter which, really. What counts is that the trained hunk of a man is going wild with every lick and tease of your tongue! 'Mmyeah! Damn! Stick that tongue really in there!' you hear Monty moan out loud. Then suddenly, you feel something wet dripping onto your hand between his legs. Drawing back for a second to glance down, it is revealed that he's as hard as a rock, with the ten-inch length of his thick, black shaft dripping pre-cum at a steady pace. Smiling, you bring your hands up to wrap around Monty's cock, feeling its warmth and firmness under your fingers as you start stroking up and down.";
	WaitLineBreak;
	say "     'MMmmmore! Please eat my ass more!' the black man moans in a breathy, almost whorish tone, stretching his arm back to grope blindly for your head. You indulge him by bending your neck towards his touch, then let yourself be drawn in by his impatient grip, nose pressing into the depth of his crack. As you open your mouth and slide out your tongue, the warmed-up ring of his muscle welcomes it like a long-lost lover, spreading around and embracing your appendage tightly. If anything, his asshole is even more responsive to your touch than before, as if eager to make up the short time you were apart. Getting back into eating out the horny man, you lap at his inner walls and wiggle your tongue, all the while stroking his erection up and down. Such a double assault at giving him pleasure quickly obliterates any restraint Monty has left inside him, leading to him almost shouting the words, 'I'm fucking close! Gonna nut any second now!'";
	say "     Gleefully sticking your tongue in as deep as it can go and ramping up the stroking of his throbbing shaft, you send the black hunk barreling past the point of no return at a thousand miles per hour. Accompanied by a surprisingly high-pitched moan, a shudder goes through Monty, muscles trembling and twitching as his ball-sack tightens and sends the first heavy spurt of man-milk shooting up his erection. You feel his girth in your hand as the blast of cum pulses through and paints a wet streak over the side of the desk he is bent over, followed by another, and another. You can feel the pulse of his rapid heartbeat through your fingertips as you hold on to Monty's erect shaft, not letting go of it in a firm grasp. All the while he's riding out the orgasm, you never let up eating his hole either, keeping Monty's lust at a hot burn and prolonging the high of pleasure he feels. Reflexive spasms of his pucker around your wriggling tongue almost makes you feel like he's milking your writhing appendage. Meanwhile, his dick keeps throbbing hard even after the cum available begins to ebb, and at some point you hear the trembling voice of your exhausted stud begging, 'Ngghh, man! My balls are empty! Haha!'";
	WaitLineBreak;
	say "     As you pull back from your prolonged ass-eating session, you see what you wrought by pushing Monty this far. The desk isn't likely ever to be the same, with a large part of its side having been drenched in the black soldier's cum, and given the way that the creamy load is dripping and splattering down into a puddle on the carpet, you'd say that that will also forever bear the marks of Monty's load. Now that you're no longer trapped in the heat of the moment, you realize that your own legs are a bit cramped up from the prolonged crouch, so you rise with a groan and stretch them while walking around a few steps. While doing so, you glance back over your shoulder and look at your fuck-buddy. He's still lying on the desk, panting and twitching a little, only starting to push himself up on trembling arms by the time you circle back to the desk. Sliding an arm under his to help the muscled soldier up, you let your gaze wander over his sweaty, naked form as he sits on the edge of the desk.";
	say "     'Man, that was something else! With your tongue just hitting that one spot in there, I simply couldn't stop cumming!' Monty comments, his slightly hoarse voice full of wonder and lust. 'Guess I was losing out on something amazing all these years! Should have taken up Tony when he offered, and experimented more. Thank you for, well, all of this!' With that said, he reaches out to touch your arm and gives it a squeeze. 'I wish I could say that I'm ready for another round, or something else, but honestly - I'm spent!' After a glance to a nearby wall clock, he adds, 'And I should get back to join the guys in the camp. Can't just vanish for too long before people might start asking questions. So, uhm... looking forward to next time!' With that said, he stands up and walks over to where he left his clothes, wiggling his ass for you on the way once or twice with a smile thrown over his shoulder. Then he gets dressed again before leading you back out of the building and between the tents of Camp Bravo.";
	if "Rimming_Done1" is not listed in Traits of Monty:
		add "Rimming_Done1" to Traits of Monty;

to say MontySex7: [fisting Monty's ass]
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, then continue to stroke his body. Eventually, you pull back from the body-worship session and and gaze into his eyes as you say that you want to see just how deep you can go inside his ass, raising a hand and then making a fist demonstratively. ";
	if "Fisting_Talk1" is not listed in Traits of Monty:
		say "Eyebrows rising high as he looks at you with round eyes, Monty swallows visibly, before replying, 'God, that's one hell of a kinky thing to ask! Never in a million years I thought I'd ever have a conversation about stuff like that, but... fuck, it did feel good when you had a go at my ass before. So, um, okay?' It is clear that he's nervous about this, so you stroke his shoulder and the back of Monty's neck a little, making a little joke to distract him.";
		add "Fisting_Talk1" to Traits of Monty;
	else:
		say "Eyebrows rising a little and blowing out his breath, Monty lets out a chuckle. 'Never thought I'd get used to offers like that, but man, my heart started beating quicker when you said that! Can't wait to feel you inside!' The eager grin spreading over his face draws you in, and you stroke the back of his neck a little.";
	say "     Coming up for air after a little while, you glance around for a suitable spot and point the black soldier towards a nice and large desk free of clutter, standing near the center of the room. Together, you walk over to it, with Monty knocking on the desk top to hear a reassuringly solid sound. 'Now, that's a sturdy one! Good pick,' he says with boyish amusement, snatching up a little pillow from a nearby chair and then climbs onto the desk. Stretching out lengthwise, he rests his head on the pillow to look up at you standing at the end of the table, between his legs as they dangle over its edge. 'Hah, imagine all of this nanite shit was suddenly over and the office workers came in to find us here. You and me, naked and messing around with each other!' Monty's grin shines bright in his otherwise dark face as the man pulls up his legs, hooking both hands under the knees to hold and spread them. Then he shimmies a little bit towards you, placing his ass just at the edge of the desk.";
	WaitLineBreak;
	say "     As you look down over the muscular black man, you can't help but feel both amusement and arousal bubble up inside you. Monty seemed fairly straight-laced when you first met him, and now you've got him naked and willing to be touched. ";
	if "Fisting_Done1" is not listed in Traits of Monty:
		say "'Gotta say I'm still a little tense about just straight out going for this, but everything you've done before was fucking great, so... do it, man!' he says, taking a few deep, steady breaths to make himself relax.";
	else:
		say "'I'm ready for ya, [if player is not defaultnamed][Name of Player][else]man[end if]! Give it to me good!' he says, an eager tone in his voice.";
	say "Smiling, you place your hands on the smoothly shaven black skin of his legs, stroking up the outside of his thighs and then down the inside, quickly arriving at his crotch. For a start wrapping the fingers around his hard and erect shaft while cupping his balls with the other hand, you grope and fondle the soldier a little while before wiggling your eyebrows and sinking down to your knees. ";
	if "Rimming_Done1" is not listed in Traits of Monty:
		say "Gathering a glob of saliva, you spit it at his hole, then start to massage the wet ring of muscle, teasing it with your fingertips.";
		say "     [bold type]Do you want to rim Monty?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Sure!";
		say "     [link](2)[as]2[end link] - Nah, just finger him this time.";
		say "     [link](3)[as]3[end link] - I don't like rimming at all!";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to go for it, [link]2[end link] to finger him this time or [link]3[end link] to reject rimming completely.";
		if calcnumber is 1:
			say "Leaning forward to flick the tip of your tongue over his pucker draws a loud, full-throated moan from Monty, the sound expanding into the large office space around the two of you.";
			say "     As you go for more, lapping away at the receptive, quivering hole, your nose presses into the soft flesh at the base of Monty's balls. Basically huffing his clean, masculine scent now, you lose yourself in the experience for a while, sticking your tongue as deep as it will go and feeling his insides twitch and spread readily for it. You can't really see his expression from where you are, but the joyful moans that your soldier boy is panting do tell everything you need to know. After spending who knows how long just worshiping his ass, you eventually pull back a little and focus on the wet opening right before your eyes. It looks quite relaxed and well-prepared now, winking open and shut once or twice as if waiting for you to put your tongue back inside. You've got other plans though, and stand up to meet Monty's eyes with your gaze. 'Fuck yeah, I'm ready!' he says, somewhat breathlessly, and nods to you. As if to underline the words, a throb goes through his black shaft at just that moment, with pre welling up from his cum-slut.";
			add "Rimming_Done1" to Traits of Monty;
		else if calcnumber is 2:
			say "     You go for more, starting to work your digit in and out of the receptive, quivering hole. Basically just playing with the muscular soldier's sensitive ass, you lose yourself in the experience for a while, experimenting what sounds you can let him make as you touch this spot or that inside of him. Glancing up to his face from time to time, you see his blissful expression and open mouth, letting out joyful moans. After spending who knows how long just teasing his hole, you eventually pull back a little and focus on the wet opening right before your eyes. It looks quite relaxed and well-prepared now, winking open and shut once or twice as if waiting for you to put your fingers back inside. You've got other plans though, and stand up to meet Monty's eyes with your gaze. 'Fuck yeah, I'm ready!' he says, somewhat breathlessly, and nods to you. As if to underline the words, a throb goes through his black shaft at just that moment, with pre welling up from his cum-slut.";
		else if calcnumber is 3:
			say "     You go for more, starting to work your digit in and out of the receptive, quivering hole. Basically just playing with the muscular soldier's sensitive ass, you lose yourself in the experience for a while, experimenting what sounds you can let him make as you touch this spot or that inside of him. Glancing up to his face from time to time, you see his blissful expression and open mouth, letting out joyful moans. After spending who knows how long just teasing his hole, you eventually pull back a little and focus on the wet opening right before your eyes. It looks quite relaxed and well-prepared now, winking open and shut once or twice as if waiting for you to put your fingers back inside. You've got other plans though, and stand up to meet Monty's eyes with your gaze. 'Fuck yeah, I'm ready!' he says, somewhat breathlessly, and nods to you. As if to underline the words, a throb goes through his black shaft at just that moment, with pre welling up from his cum-slut.";
			add "Rimming_Banned1" to Traits of Monty; [player chose not to do so - no talk with Monty about it]
	else: [rimming's okay]
		say "Leaning forward to flick the tip of your tongue over his pucker draws a loud, full-throated moan from Monty, the sound expanding into the large office space around the two of you.";
		say "     As you go for more, lapping away at the receptive, quivering hole, your nose presses into the soft flesh at the base of Monty's balls. Basically huffing his clean, masculine scent now, you lose yourself in the experience for a while, sticking your tongue as deep as it will go and feeling his insides twitch and spread readily for it. You can't really see his expression from where you are, but the joyful moans that your soldier boy is panting do tell everything you need to know. After spending who knows how long just worshiping his ass, you eventually pull back a little and focus on the wet opening right before your eyes. It looks quite relaxed and well-prepared now, winking open and shut once or twice as if waiting for you to put your tongue back inside. You've got other plans though, and stand up to meet Monty's eyes with your gaze. 'Fuck yeah, I'm ready!' he says, somewhat breathlessly, and nods to you. As if to underline the words, a throb goes through his black shaft at just that moment, with pre welling up from his cum-slut.";
	WaitLineBreak;
	say "     Wiping off the glistening droplet from the tip of his dick with your finger, you bring your hand up to Monty's face and touch his full lips. ";
	if "Cum_Tasted1" is not listed in Traits of Monty: [never tasted cum]
		say "Hesitating for a second, he then gives himself a push and opens up, allowing your digit into his mouth. Almost gingerly sucking on it, he appears pleasantly surprised by the taste and starts to slurp on your finger with growing eagerness. ";
		add "Cum_Tasted1" to Traits of Monty;
	else: [already tasted cum (his/other)]
		say "After only a very brief moment of hesitation, he opens up and engulfs your digit, sucking on it eagerly and tasting himself. ";
	say "Smiling as you pull your finger from between his plush lips, you playfully give the soldier's cheek a light slap and wiggle your eyebrows. Then you move your hand down between his legs and feel for the wet ring of his asshole. Dipping two fingers inside earns you a joyful moan and you follow up strong, wiggling your digits to search out the 'special' spot you know drives him wild. Monty humps his hips upwards a little in response, his hole contracting you grip your fingers tightly for a second. 'Mmyeah! Damn! More!' you hear Monty moan out loud. Only too happy to fulfill his request, you slip him another finger, soon followed by a fourth.";
	say "     Monty's chute lies snugly around your fingers, but expands when you spread them. Being changed by the nanites sure opened him up good for play like this. You slide your digits in and out of him rapidly, fucking his hole with thrusts of your hand. 'MMmmmore!' the black man moans in a breathy, almost whorish tone, throwing his head back to press into the pillow. You know what he means, what he needs now, and fold in your thumb to join the rest of your fingers as you push them into him yet again. The warmed-up ring of his muscle seems to welcome your invasion like a long-lost lover, spreading open and embracing your digits. There is a little bit of a tight spot as your knuckles push against his pucker, forcing it to expanded a little further, then with a slurp, your whole hand slips into Monty and his pucker pulls tight around your wrist. 'Goddamn!' he grunts, lust and arousal heavy in his voice and his insides spasming hard.";
	WaitLineBreak;
	say "     After allowing Monty a moment to get used to your fist up his ass - not that you could have move much with the vice-like grip he had until now - you spread your fingers and wiggle them. 'Damn, that feels strange - and fucking good!' he pants breathlessly, which you take as your signal to push deeper. Slowly inching into his body, you feel Monty's pucker as a tight ring on your forearm, with it having to yield more and more as you progress. Soon, he gasps out, 'Stop for a moment! I think that's about as much as I can take!' You relent, not pushing in any further, instead feeling around a little more with your hand. Monty pants loudly in lust and raises his head to look at you and himself. 'God, I can see the bulge of your hand under my abs!' He's right at that, there is a noticeable outline where you feel your hand being, moving around a little as you flex your arm.";
	say "     'Guess I know how a muppet feels like now!' the Florida boy says jokingly, his gaze still firmly set on the visible sign of your limb being inside him. But all jokes aside, he's more than rock hard and leaking a steady trickle of pre-cum from his dick. It connects the mushroom head to his abs by a wet strand stretched tenuously as he twitches from your movements feeling around. Grinning broadly, you lay your free hand on Monty's abs, feeling yourself through him, before taking hold of his erection. Then you begin to both jerk him as well as fisting his ass with renewed vigor, the double assault drawing incoherent, lusty shouts from your soldier buddy. Gleefully wriggling and spreading your fingers inside him, you send the black hunk barreling past the point of no return at a thousand miles per hour.";
	WaitLineBreak;
	say "     Accompanied by a surprisingly high-pitched moan of completion, a shudder goes through Monty, muscles trembling and twitching as his ball-sack tightens and sends the first heavy spurt of man-milk shooting up his erection. You feel his girth in your hand as the blast of cum pulses through and paints a wet streak over his abs, startlingly white on his black skin. Another and another and another spurt follows, covering Monty's chest with a criss-cross of white lines. You can feel the pulse of his rapid heartbeat through the man's inner walls, wrapped tightly around your hand and lower arm. All the while he's riding out the orgasm, you never let up feeling around inside his hole either, keeping Monty's lust at a hot burn and prolonging the high of pleasure he feels. Reflexive spasms of his pucker around your forearm almost makes you feel he'll never give it up again.";
	say "     Meanwhile, his dick keeps throbbing hard even after the cum available begins to ebb, and at some point you hear the trembling voice of your exhausted stud begging, 'Ngghh, man! My balls are empty! Haha!' After you slowly and gingerly pull your hand out, making Monty groan as the thickest part of it passes his ring, you look up to see what you wrought by pushing Monty this far. He's drenched in his own seed, rivulets of it making his abs into cum-gutters, and there is a blissful smile on his face, even as he's still panting and twitching a little. ";
	if "Fisting_Done1" is not listed in Traits of Monty:
		say "'Gotta admit that was AMAZING! I almost wanna keep going!' Monty almost shouts, lifting his head to look at you with a broad grin on his face.";
		add "Fisting_Done1" to Traits of Monty;
	else:
		say "'God, with your hand being all the way in there, I simply couldn't stop cumming!' Monty says loudly, his slightly hoarse voice full of wonder and lust.";
	WaitLineBreak;
	say "     Hearing his gushing words, you playfully run your fingers over Monty's chest and start to scoop up his cum, then hold out your sperm-covered fingers to him. In the blissed-out mood you've got him in right now, the black man goes ahead with what you want straight away, slurping his own load off your fingers as you feed it to him bit by bit. By the time you've got it more or less all cleaned up and are now just massaging in the remnants while feeling up Monty's muscular chest, he reaches out to touch your arm, patting it and giving you a squeeze. 'I wish I could say that we can go on and have another round, or something else, but honestly - I'm spent!' After a glance to a nearby wall clock, he adds, 'And I should get back to join the guys in the camp. Can't just vanish for too long before people might start asking questions.' Chuckling, you nod to him, then hold out a hand to help him climb off the table. Afterwards, he stands up and walks over to where he left his clothes, wiggling his ass for you on the way once or twice with a smile thrown over his shoulder. Then he gets dressed again before leading you back out of the building and between the tents of Camp Bravo.";

to say MontySex8: [toy workout]
	say "     Smiling as you approach the naked form of Monty, you run a hand over the mocha-brown skin of his muscled torso, yet as he reaches out to touch your arm in turn, you continue on past him, putting a surprised expression on his face. The black man looks after you, wondering what's going on, only to let out an 'Oooooh!' when you raise the flowerpot of a plastic office plant and retrieve the little key hidden underneath. With it in hand, you go to unlock a certain desk drawer, retrieving the set of 'training' butt plugs you stashed there. Waving the leather case a little as you approach your soldier fuck-buddy, you watch him bite his lower lip as he imagines what will come next. Down below, his long, hard cock throbs a little, a glistening bead of pre-cum forming at its tip. 'Damn, judging from the crazy smile on your face, it's not gonna be the little one this time, eh?'";
	say "     Chuckling as you shake your head, you lay the case on the nearest desk and flip it open, revealing five differently sized butt plugs, as well as a bottle of lube. Looking over to Monty, you tell him to plant his ass in one of the office chairs and spread those legs for you. 'If someone asks you to help them train their ass, they're getting a long term commitment I see, haha!' he replies with a chuckle, stroking down the side of your arm and giving it a squeeze before nodding. Picking a big and comfortable chair that might have belonged to a manager, the muscular soldier leans back in it, then hooks his legs over the desk before him, awaiting you with an eager expression. 'Like this?' Monty asks, his teeth shining bright as he smiles and waves a hand over his naked form.";
	WaitLineBreak;
	say "     As you walk up and snag a chair for yourself, the black man looks at you with a cheeky grin on his face. ";
	if "Assplay_Talk1" is not listed in Traits of Monty:
		say "'Man, if you had told me at the start of the year that I would be doing something like this, I'd have said you're crazy. Times can change right quick, eh?' You reply that he's got something there, ";
		add "Assplay_Talk1" to Traits of Monty;
	else:
		say "'Man, I can't get enough from you playing with my ass! Fun times, eh?' You reply that he's got something there, ";
	say "scooching closer and then placing a hand on the firm flesh of his pecs, pinching first one nipple, then the other before running it down over his abs. Soon, you arrive at the black rod of his cock, already standing at full attention. Wrapping your fingers around it, you stroke up and down slowly while your other hand explores his raised legs, stroking and caressing. ";
	if "Shaving_Talk1" is not listed in Traits of Monty:
		say "As you feel up your soldier fuck-buddy, you casually mention the fact that he's pretty much hairless over his body. 'Well, yeah. I shave that stuff off. You can blame years of afternoons spent at the beach for that. Hate having sand sticking to wet fuzz. Much better when it's just smooth skin and you can brush it off.'";
		add "Shaving_Talk1" to Traits of Monty;
	else:
		say "As you feel up your soldier fuck-buddy, you stroke the hairless curves of his body, enjoying the feeling of his smooth skin. 'Ya liking groping me, hah! Well, go right ahead!' he quips, leaning into your touch.";
	if "Rimming_Done1" is not listed in Traits of Monty and "Fingering_Done1" is not listed in Traits of Monty: [hasn't had either rim or fingering scene first]
		say "     Shrugging his shoulders, Monty then moves a hand to your arm, stroking along it just like you're doing with his leg. 'Oh yeah, that's nice!' he pants under his breath as you move on to cup his balls, rolling the full orbs gently in your fingers. Then you proceed to pick up one of the butt-plugs, the second smallest this time, lubing it generously and lowering it to stroking over his pucker. Monty tenses up for a second, biting his lip. 'Err... be gentle, okay?' With a smile, you tell him that he's taken much bigger things before and just needs to wrap his head around this. After playfully wiggling the rubber sex toy so he can see how big it is, you wait for him to nods, at which point you brush it over his opening yet again. The black man lets out a full-throated moan and throws back his head, hips reflexively humping a little upwards. Holding your plug still where it is, you meet the soldier's eyes as he opens them again, and a chuckle escapes his lips.";
		WaitLineBreak;
		say "     'God, feeling you touch me there... it's... just wow. Still can't believe how excited that makes me!' Glancing down at his erection, you see a thick bead of pre-cum glisten at the cum-slit. Wiping it off with your finger, you bring your hand up to Monty's face and touch his full lips. ";
	else: [was rimmed/fingered before]
		say "     Shrugging his shoulders, Monty then moves a hand to your arm, stroking along it just like you're doing with his leg. 'Oh yeah, that's nice!' he pants under his breath as you move on to cup his balls, rolling the full orbs gently in your fingers. Then you proceed to pick up one of the butt-plugs, the second smallest this time, lubing it generously and lowering it to brush over his pucker. If you didn't already know that your friend is sensitive there, his reaction would tell you that in an instant, as Monty lets out a full-throated moan and throws back his head, hips reflexively humping a little upwards. Holding your toy still where it is, you meet the soldier's eyes as he opens them again, and a chuckle escapes his lips.";
		WaitLineBreak;
		say "     'God, I love feeling you touch me there! Don't tease me, go deeper!' Glancing down at his erection, you see a thick bead of pre-cum glisten at the cum-slit. Wiping it off with your finger, you bring your hand up to Monty's face and touch his full lips. ";
	if "Cum_Tasted1" is not listed in Traits of Monty: [never tasted cum]
		say "Hesitating for a second, he then gives himself a push and opens up, allowing your digit into his mouth. Almost gingerly sucking on it, he appears pleasantly surprised by the taste and starts to slurp on your finger with growing eagerness.";
		add "Cum_Tasted1" to Traits of Monty;
	else: [already tasted cum (his/other)]
		say "After only a very brief moment of hesitation, he opens up and engulfs your digit, sucking on it eagerly and tasting himself. ";
	if "Fingering_Done1" is not listed in Traits of Monty:
		add "Fingering_Done1" to Traits of Monty;
	say "With Monty's lips wrapped around your finger and him suckling on it, your other hand is free to push the butt-plug up his rear in a smooth stroke, simply gliding into the distracted man when he doesn't reflexively tense his hole. Pulling your finger out with a pop, you grinningly ask how he likes the plug and feel its base flex in your grasp as Monty flexes his inner muscles right away. 'Damn, that... feels pretty nice, up there. Just kinda full, you know. In a good way.' Continuing with the latex toy, tugging and pushing at it, you draw some pants from the soldier, followed by full-on moans as you pop the thick part of the plug past his pucker, then slam it back home once more. 'Damn, yeah!' Monty says out loud, throwing his head back and closing his eyes.";
	say "     You play with the muscular soldier's purplish-pink asshole, fucking it with the plug for a little while before taking the toy out fully and watching how long it takes before his iris pulls tight. Then you press against his opening again, spreading him once more. Working the toy in and out, you feel the moment in which he gets used to it fully, relaxing all the way to allow almost effortless entry. Clearly, he's ready for more now. Reaching out blindly for the leather case, not wanting to take your eyes off his face to ensure that he's still got his eyes closed in ecstasy, you grab a larger plug. It is number four in the increasing size scale of the training plugs, but you decide that Monty will surely be able to take it. Shrugging off skipping one full size, you hold it ready in your hand until the smaller plug comes out of your fuck-buddy again, then thrust the new one into him instead suddenly and with no warning.";
	WaitLineBreak;
	say "     'Whoah!' Monty grunts breathlessly, his slick hole flexing hard around the bigger girth of your toy as the muscular man writhes in the chair. Panting and throwing back his head, the soldier is more than turned on by your little surprise, with his changed rear entrance taking the new invader almost effortlessly. His nanite-enhanced pucker may look virginal and feels tight as a drum, but it clearly is ready to be used hard and deep. Looking up from Monty's buns, you see his 10-inch cock standing hard and erect, swaying with his movements and leaking a lot of pre-cum, drawing strings from its head to the firm abs of your fuck-buddy. 'Yeah, YEAH! Fuuuckkk!' he moans in a deep voice, gripping the arms of the chair tightly in the throes of lust as you begin to slide the plug in and out of him, plopping it past his pucker again and again.";
	say "     It is fun to play with such a receptive partner like this, seeing his ecstatic reactions as you slam the rubber shaft home into his ass at varying angles or grip it by the base to push against Monty's inner walls. 'God yes! Fuck me with that thing! Deeper!' You happily comply, shafting the muscular soldier deeply while at the same time taking hold of his girthy erection. It is warm in your grasp, throbbing a little with the each new gush of pre-cum welling up from his cum-slit. Brushing your palm over the mushroom head, you wipe off the slick fluid and proceed to jerk him off, hand flashing up and down along his cock. With a lusty groan as you double up two ways of pleasuring him, Monty goes wild. His ever louder moans fill the office as lust makes him forget about any pretense of keeping quiet and he humps against your hand, the small of his back barely even touching the seat of the chair anymore.";
	WaitLineBreak;
	say "     It doesn't take all that long before Monty lets out an urgent grunt of, 'Gonna cuuummmmMMMM!' just as the first heavy throb goes through his cock, transforming it into a fountain of thick, creamy cum. Aiming his black cock straight up, angled a little towards the panting man's face, you hose him with his own load, splattering abs, pecs and even his cheek with white streaks and splotches. He keeps coming for a long while as you do your best to prolong his breathtaking orgasm by continuing to play with the plug, leaving him drenched in cum in the end. 'God, that was something else! It just feels so nice to have that thing in me!' Hearing his gushing words, you tug a little at the plug, as if planning to pull it out, at which point Monty's eyes widen a little and he quickly adds, 'Leave it in a bit, okay?' Nodding and showing him a grin, you instead run your fingers over Monty's chest and start to scoop up his cum, then hold out your sperm-covered fingers to him.";
	say "     In the blissed-out mood you've got him in right now, the black man goes ahead with what you want straight away, slurping his own load off your fingers as you feed it to him bit by bit. By the time you've got it more or less all cleaned up and are now just massaging in the remnants while feeling up Monty's muscular chest, he reaches out to touch your arm, patting it and giving you a squeeze. 'I wish I could say that we can go on and have another round, or something else, but honestly - I'm spent!' After a glance to a nearby wall clock, he adds, 'And I should get back to join the guys in the camp. Can't just vanish for too long before people might start asking questions.' Chuckling, you nod to him, then ask if he plans to remove the plug out before he goes. 'The black soldier draws in a shocked breath and replies, 'Oh shit! I - uhm, can you take it out? God, just imagine me accidentally walking out there with that thing in and making funny faces with every step!'";
	WaitLineBreak;
	say "     Joining Monty as he laughs a little at the idea, you can't help but think to yourself that it'd kinda be fun to see him trying to hide his excitement from walking around plugged. Then you push the thought out of your mind - for now - and gently withdraw the butt-plug from his rear end, watching in fascination as his stretched opening contracts in a rapid pace, soon looking as tight and unspoiled as before. Tapping the man's pucker lightly with the tip of your finger, you wink at him, then turn away to grab some paper towels and clean up the toys. Meanwhile, Monty gets up and walks over to where he left his clothes, wiggling his ass for you on the way once or twice with a smile thrown over his shoulder. While he gets dressed, you stash the toy set back in its case and put it in a drawer. After that, both of you leave the building through the crashed bus, soon after emerging into the open space between the tents of Camp Bravo where Monty usually hangs out.";
	TraitGain "ToyPlay_1" for Monty; [Memory for opening up the next toyplay scene]
	NPCSexAftermath Monty receives "AssDildoFuck" from Player;

to say MontySex9: [toy workout2 - out in the camp]
	say "...";
	TraitGain "ToyPlay_2" for Monty; [Memory for opening up the next toyplay scene]
	NPCSexAftermath Monty receives "AssDildoFuck" from Player;

to say MontySex10: [fucking Monty's ass]
	if "ToyPlay_2" is not listed in Traits of Monty or "PlayerRelationship_FuckBud+Disappointment" is listed in Traits of Monty: [Player hasn't advanced him far enough through toyplay, or locked out by being too pushy for a relationship]
		say "     Reaching down to adjust your already hardening cock, you approach the naked soldier. Then you run a hand down his mocha-brown side, planting it on the full globe of his left buttock and giving it a squeeze, which he accepts with a pleased grunt, biting his lower lip. You let your other hand stay over his firm chest, playing with one nipple, then the other, and feeling up Monty's body. Yet when you lean in, bringing your mouth close to his ear and the words that you want to properly fuck him now pass your lips, he tenses up, standing up a little bit straighter. 'I - um, I don't know about that. I mean, can't we just keep doing what we've been doing so far? All of that was fun, it's just... you know. I was ordered to do what happened with Tiny. Now just going ahead on my own with a - with another dude - and letting him inside me like that... kinda feels like that's crossing a line. Don't think I'm down for that, sorry.'";
		if "PlayerRelationship_FuckBud+WantsMore" is listed in Traits of Monty:
			say "     Pausing for a moment and letting out a faint sigh, you whisper under your breath that it'd be a whole lot of fun. Knowing that he's wary about getting into a relationship, the next thing you add is a quick affirmation that things wouldn't need to become weird or anything. Just two bro's enjoying a bit of pleasure together. To underline your point, you stretch out a finger and brush over the soldier's sensitive pucker, making him draw in a breath then let it out slowly again. 'I -' he starts, then seemingly becomes lost for words and just looks at you and lightly shakes his head. [bold type]Feels like while he's anxious to take this step, it's not out of the question completely. Maybe if you continue to broaden his horizons some more in other ways, you could get the black hunk to open up for this type of fun. [roman type]If there's a hope to go even further after that is anyone's guess though... but hey, hope dies last, right?[line break]";
		else if "PlayerRelationship_FuckBud" is listed in Traits of Monty:
			say "     Pausing for a moment before you pull back, you whisper under your breath that it'd be a whole lot of fun. Things wouldn't need to become weird or anything. Just two bro's enjoying a bit of pleasure together. To underline your point, you stretch out a finger and brush over the soldier's sensitive pucker, making him draw in a breath then let it out slowly again. 'I -' he starts, then seemingly becomes lost for words and just looks at you and lightly shakes his head. [bold type]Feels like while he's anxious to take this step, it's not out of the question completely. Maybe if you continue to broaden his horizons some more in other ways, you could get the black hunk to open up for this type of fun. [roman type][line break]";
		else if "PlayerRelationship_FuckBud+Disappointment" is listed in Traits of Monty:
			say "     Hesitating for a moment before you pull back, you think you see a wary edge to Monty's expression. Seems like he's got your previous discussion about a possible relationship still on his mind. With you having been pushy and unwilling to take no for an answer, it seems that he's decided to be cautious and to avoid any situations in which you might make things [']weirdly intimate['] - like feeling your actual cock throb inside him. [bold type]Looks like you've reached the limit of what Monty's down to do with you. Maybe if you'd been less hot-headed, things might have been different. [roman type][line break]";
	else:
		say "...";
		if "PlayerDicked_1" is not listed in Traits of Monty:
			add "PlayerDicked_1" to Traits of Monty; [Memory for having had the actual player cock inside him]
		NPCSexAftermath Monty receives "AssFuck" from Player;

Section 3 - Endings

Monty ends here.

[
Monty Scene Options:

- Walk-in with him checking out a woman. Choice for the player: "what about this dude?"
- "What do you think about doing stuff with dudes?" Player talk option: "Doesn't need to be heavy, just some fun"
- PTSD about seeing someone cock-merge


]
