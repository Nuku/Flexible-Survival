Version 4 of Hayato by Gherod begins here.

"Adds an Oni NPC named Hayato (Hal) to the Flexible Survival game."

[Version 3.0 - Step 1 of oni lair assault]
[Version 3.1 - Character relocation - Luneth]
[Version 4 - Updated Hayato's menu and story progression. Moved to Gherod's folder]


[ Energy of Hayato]
[ 0 = Help not started        ]
[ 1 = Help began              ]
[ 2 = Locked on Sex Path      ]
[ 3 = Locked on Talk Path     ]
[ 4 = Help finished           ]
[...]
[ HP of Hayato                ]
[ 0 = Not met                 ]
[ 1-5 = Not yet friendly      ]
[ 6 = Introduced              ]
[ 7-9 = Seduction attempts    ]
[ 10 = Chastity belt revealed ]
[ 11 = Talked to Nermine      ]
[ 12 = Ninjas incomplete      ]
[ 13 = Anime Babe incomplete  ]
[ 14 = Noh mask obtained      ]
[ 15 = Chastity key obtained  ]
[ 16 = Unlocked and library   ]
[ 17 = Red Oni w/Hayato saved ]
[ 18 = 2nd reminder           ]
[ 19 = Discussed Red Oni      ]
[ vv HP VALUES BELOW THIS HAVE NO EFFECT, FOR NOW vv]
[ 20 = Found Oni Lair         ]
[ 21 = Discussed Oni Lair     ]
[...]
[ 30 = No to assault          ]
[...]
[ 50 = Dominant Hayato        ]
[...]
[ 96 = Defeated @ Oni Lair    ]
[ 97 = @ Red Oni Lair         ]
[ 98 = Hayato abandoned       ]
[ 99 = Hayato attacked        ]
[ 100 = Red Oni w/o Hayato    ]

[ lust of Hayato              ]
[ # player rec'd vaginal      ]

[ Libido of Hayato            ]
[ # player rec'd anal         ]

[ HayatoHunger            ]
[ 0 = anal virgin             ]
[ 1 = had anal                ]

[ Strength ]
[ 0 = Youkai Lair not known   ]
[ 1 = Youkai Lair Quest on    ]

an everyturn rule: [bugfix code to update saves which had the event erroneously resolved]
	if HP of Hayato < 14 and Noh Mask is resolved:
		now Noh Mask is not resolved;

a postimport rule: [to rollback the Oni Lair progress from previous saves]
	if HP of Hayato > 18 and Strength of Hayato is 0: [Strength will be increased in the reworked Youkai Lair, blocking this postimport rule from happening again, and resetting Hayato to pre-Oni Lair stage]
		now HP of Hayato is 18;
		now Oni Lair is not resolved;
		now Oni Lair is inactive;


Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Garage Demon	"Garage Demon"

Garage Demon is a situation.
ResolveFunction of Garage Demon is "[ResolveEvent Garage Demon]".
Sarea of Garage Demon is "Capitol".
when play begins:
	add Garage Demon to BadSpots of MaleList;
	add Garage Demon to badspots of DemonList;

to say ResolveEvent Garage Demon:
	if debugactive is 1:
		say "DEBUG -> HP of Hayato: [HP of Hayato] <- DEBUG[line break]";
	if HP of Hayato is 0:
		say "     While exploring through the devastated area, you come across an old garage that clearly had seen better days even before recent events. Having only one vehicle bay, the concrete building is quite small. That bay is currently occupied, not by a car, but by a hulking red figure. The muscled giant of a man sits cross-legged in the garage as if it were some kind of cave. He looks like he'd be about ten feet tall when standing and has a very powerful, muscled physique. His face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. He has a thick mane of blonde hair that flows down to his shoulders. His skin is a bright red, covered only at his waist by a tiger-skin loincloth. At his side is a massive club made of metal and covered in spikes that's nearly as tall as he is.";
		say "     Your first reaction to spotting him is to get away before he notices you, but you hesitate when you take note that there are a few boxes of supplies in the garage as well. Looking back and forth between him and them, you ponder if your situation is desperate enough for supplies to risk approaching such a dangerous looking foe";
	else if HP of Hayato <= 5:
		say "     Finding your way back to the old garage occupied by the large, muscled demon of a man, you ponder again approaching him. Talking didn't seem to work out very well before, but you're unsure about attacking such an imposing creature as well";
	else:
		say "ERROR-Hayato-[HP of Hayato]E: This event (Garage Demon) should be closed!";
		now Garage Demon is resolved;
		continue the action;
	say ". Shall you risk approaching to [link]talk (1)[as]1[end link], [link]attack (2)[as]2[end link] while you have the element of surprise or [link]leave (3)[as]3[end link] before you are noticed?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>";
		get a number;
		if calcnumber is 1:
			say "[haleventtalk]";
		else if calcnumber is 2:
			say "[haleventfight]";
		else if calcnumber is 3:
			say "     Deciding that it is not worth the risk of getting too close to his massive club, you slip away quietly. You make a mental note to give the area around here plenty of clearance to avoid accidentally running into him.";
			now Garage Demon is resolved;

to say haleventtalk:
	say "     Approaching the imposing figure[if HP of Hayato > 0] again[end if], you try to intice him to conversation. He gets up with a sigh before growling at you to go away as he reaches for his menacing club. He glares at you with his yellow eyes. You try your best to calm him down.";
	if HP of Hayato < 5:
		let bonus be ( Charisma of Player minus 10 ) divided by 2;
		increase bonus by HP of Hayato;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
		if (dice + bonus) >= 14:
			now HP of Hayato is 6;
			say "     You continue being friendly, trying to reassure him that you only want to talk (despite whatever other motives you may have). Though unwilling to talk at first, you soon get him to relent. 'Fine. If it'll make you go away. It'd be for your own good; I don't want to hurt you,' he adds, sounding more cautionary than threatening.";
			say "[halhistory]";
			now Resolution of Garage Demon is 1; [Player successfully talked to Hayato first try]
			now Garage Demon is resolved;
		else:
			say "     The muscled creature slams his metal-clad club against the ground, cracking the pavement. 'Shut up and leave. Go away before I hurt you. RArrr!' he growls at the end for good measure, shaking his arms menacingly in the air. Something in his reaction makes you hope that it might all be for show, but he's certainly too worked up right now to talk to. Perhaps you might try at another time.";
			increase HP of Hayato by 1;
	else:
		now HP of Hayato is 6;
		say "     The horned man sighs as you approach again. 'Damn, you're persistent. Very well, we may as well talk for a bit. Just be careful around me; I don't want to hurt you,' he adds, sounding more cautionary than threatening.";
		say "[halhistory]";
		now Resolution of Garage Demon is 2; [Player successfully talked to Hayato second try]
		now Garage Demon is resolved;


to say haleventfight:
	say "     You charge forward, weapon drawn, moving in to attack the horned man. Noticing you at the last moment, he gives a startled growl and stumbles to his feet while grabbing his club. 'Stay back or I'll crush you,' he growls, bashing his into the wall of the garage while attempting to ready it. Pressing your advantage, you move in to strike while he's still trapped inside. His mighty muscles raise the club again, this time putting it through the wall before swinging it wildly. It goes wide and cracks into the other side of the garage door, but you're forced to step back.";
	say "     'I don't want to hurt you, but you leave me no choice,' he growls, raising his club high enough to break a channel through the roof. Rubble falls from the ceiling as he brings the iron club down, cracking the pavement in front of you with his strike. Despite neither of you having struck a blow yet, your overconfidence causes you to only take a few steps back from the devastating swing before pressing forward again.";
	say "     When you continue the charge, the muscled demon does something unexpected and turns to face the back of the garage. He bashes his club right through the back wall, knocking a large hole in it. He then slams himself into the broken wall, the cracks running through it breaking entirely as your fearsome foe barrels right through it. Having broken free of the garage, he just keeps running, fleeing rather than fighting you, much to your surprise. You almost rush after him in pursuit before you realize the garage is coming down and move back. The building collapses in a cloud of concrete dust.";
	WaitLineBreak;
	say "     As you wait for the dust to clear, you think over what just happened, realizing that the demon's blows were all wide. Either he had very poor aim or he wasn't trying to hit you, but instead just looking to scare you off. Regardless, he certainly fled rather than fight you. You ponder what just happened as you attempt to search the rubble for anything that might have survived, but it is difficult work and only yields a small pack of cookies which is intact.";
	ItemGain chips by 1;
	now HP of Hayato is 99;
	unleashredoni;
	now Resolution of Garage Demon is 3; [Tried to fight Hayato]
	now Garage Demon is resolved;


to say halhistory:
	say "     The large figure gestures for you to have a seat on a couple of tires. 'I should perhaps introduce myself. My name is Hayato, though you can call me Hal if you prefer. As you can see, I am now an oni - a Japanese demon ogre,' he growls with a sigh. He pauses for a bit in his introduction, passing you a small pack of cookies, which you [if hunger of Player < 30]quietly munch on while he talks[else]quickly scarf down[end if]. 'I am too large to comfortably live in a home, so this,' he gestures to the garage, 'has become my cave.'";
	say "     'During that horrible night, it was chaos. The dwindling survivors ran everywhere, trying in vain to get away from the monsters that seemed to only become more numerous. Soot and smoke filled the air, burning the eyes and making it hard to spot the creatures before they were upon you. My attempt to flee was cut off when an oni broke through the wall of a building. It reveled in the destruction and began to attack and rape the people around it. We tried to get away, but it caught up to us easily, swatting us to the ground with bone-breaking blows from its hand or club. I fell to the street hard, head striking the slick pavement and all became blackness. When I awoke, I found I had landed in a pool of the ogre's cum and had been transformed into a monster like it because of it.'";
	say "     He pauses again, looking down on his strong, meaty hands with their clawed nails and bright red skin. He balls them up into fists before taking a deep breath and relaxing. 'I was thankfully overlooked by the monster. I would not want my first to have been that horrible creature. The others it had attacked were gone, their clothes torn to shreds and demon cum everywhere. I realize now they have probably become more like it, but unable to contend with the dark urges and lusts which took them over.' He shifts uncomfortably on the floor and presses a hand to his tiger-skin loincloth. 'Thankfully, I am menacing enough in appearance that most of them give me a wide berth and do not trouble me.'";
	say "     Despite his fearsome face and gruff voice, there's a sadness to them as well. As you grow used to his appearance and his voice, it becomes a little easier to read the true emotions beneath them. 'You should perhaps go now. I thank you for the company; it is good to speak to someone again. But now I need to meditate.' You consider trying to talk to him longer, but decide to leave as he's requested. Perhaps he'll be feeling more sociable if you return to this [bold type]disused garage[roman type] later.";
	PlayerEat 6;
	AddNavPoint Disused Garage;


Section 2 - Location

Table of GameRoomIDs (continued)
Object	Name
Disused Garage	"Disused Garage"

Disused Garage is a room. It is fasttravel. It is private.
Description of Disused Garage is "[disusedgaragedesc]".

the scent of Disused Garage is "There is a lingering scent of oil hanging around the building.".

to say disusedgaragedesc:
	say "     The old, single bay garage is build of cinder blocks and has seen better days. While some of the damage is recent, it's clear that the place had fallen on hard times even before the outbreak. Hayato's cleared out much of the space to make room for him in his makeshift living quarters. Packed against the back wall are some cardboard boxes representing the oni's personal supplies.";

[monkey wrench]

Section 3 - Hayato the Oni

Table of GameCharacterIDs (continued)
object	name
Hayato	"Hayato"

Hayato is a man. Hayato is in Disused Garage.
ScaleValue of Hayato is 4. [DB sized]
Body Weight of Hayato is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Hayato is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Hayato is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Hayato is 12. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Hayato is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Hayato is 9. [length in inches]
Breast Size of Hayato is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Hayato is 2. [count of nipples]
Asshole Depth of Hayato is 12. [inches deep for anal fucking]
Asshole Tightness of Hayato is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Hayato is 1. [number of cocks]
Cock Girth of Hayato is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Hayato is 13. [length in inches]
Ball Count of Hayato is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Hayato is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Hayato is 0. [number of cunts]
Cunt Depth of Hayato is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Hayato is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Hayato is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Hayato is false.
PlayerRomanced of Hayato is false.
PlayerFriended of Hayato is false.
PlayerControlled of Hayato is false.
PlayerFucked of Hayato is false.
OralVirgin of Hayato is true.
Virgin of Hayato is true.
AnalVirgin of Hayato is true.
PenileVirgin of Hayato is true.
SexuallyExperienced of Hayato is false.
TwistedCapacity of Hayato is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Hayato is false. [steriles can't knock people up]
MainInfection of Hayato is "Red Oni".
Description of Hayato is "[halonidesc]".
The icon of Hayato is Figure of Hayato_icon.
Conversation of Hayato is { "Hai!" }.
The scent of Hayato is "     There is a strong, masculine scent to your large oni friend.".

understand "Hal" as Hayato.

the fuckscene of Hayato is "[sexwithHayato]".

HayatoHunger is a number that varies.

Section 1 - Description

to say halonidesc:
	if debugactive is 1:
		say "DEBUG -> HP of Hayato: [HP of Hayato] <- DEBUG[line break]";
		say "DEBUG -> lust of Hayato: [lust of Hayato] <- DEBUG[line break]";
		say "DEBUG -> Libido of Hayato: [Libido of Hayato] <- DEBUG[line break]";
	if HP of Hayato < 6:
		say "ERROR-Hayato-[HP of Hayato]L: You should not be able to see me.";
	else if HP of Hayato < 10:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover himself. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly, if somewhat sad, person beneath his terrible exterior. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else if HP of Hayato < 12:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover the chastity restraint he's put on. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly, if somewhat sad, person beneath his terrible exterior. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else if HP of Hayato < 15:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover the chastity restraint he's put on. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly person beneath his terrible exterior. Your presence seems to have cheered him up a somewhat and also awakened a lustful longing you can see in how he looks at you sometimes. You look forward to being able to sate his unfulfilled lusts once you can get that restraint off him. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else if HP of Hayato is 15:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover the chastity restraint he's put on. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly person beneath his terrible exterior. Your presence seems to have cheered him up a somewhat and also awakened a lustful longing you can see in how he looks at you sometimes. You brush your hand across the old iron key you have, smiling inside at the prospect of being able to help him fulfill that longing now. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else:
		say "     Hayato is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover himself. A playful peek under the hide shows his semi-hard manhood. It is over a foot long and deliciously thick, with ponderous balls full of cum after his long self-denial. His cockflesh is bright red like the rest of him, only darkening to a near-black at the glans. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly person beneath his terrible exterior. Freeing him from the restraint (and the resulting sex) has cheered him up considerably, allowing him to enjoy the increased sexual pleasures of his transformed body. You enjoy the looks of lust he gives you and how he's eager for whatever fun you desire to sate his needs and yours.";
		say "     He seems to have settled in well, having found a comfortable spot at one of the reading desks tucked away on the upper floor of the library. It's a fairly private spot and has enough open space for him to leave a few piles of books he's reading through and his small collection of supplies. He is often resting against a wall reading or casually stroking his impressive manhood. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";


Section 2 - Conversation

HayatoDoneTalking is a truth state that varies.[@Tag:NotSaved]

Instead of conversing the Hayato:
	if HP of Hayato < 6:
		say "ERROR-Hayato-[HP of Hayato]T: You should not be able to talk to me.";
	else:
		say "[HayatoTalkMenu]";

to say HayatoTalkMenu:
	say "     The red oni gives you a fearsome smile that shows off his large fangs, but seems cheerful enough. 'Welcome back. I hope you have been well. Have a seat,' he says, gesturing to the tire seat.";
	now HayatoDoneTalking is false;
	say "     [bold type]What do you want to talk about with Hayato?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk with Hayato";
	now sortorder entry is 1;
	now description entry is "Just converse with the red oni";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His history";
	now sortorder entry is 2;
	now description entry is "Ask him to tell you about his history";
	[]
	if Energy of Hayato is 0:
		choose a blank row in table of fucking options;
		now title entry is "See how you can help him";
		now sortorder entry is 98;
		now description entry is "The oni looks troubled... Perhaps you should offer your help";
	[]
	if Energy of Hayato is 1 or Energy of Hayato is 3:
		choose a blank row in table of fucking options;
		now title entry is "Do some trust work";
		now sortorder entry is 98;
		now description entry is "Try to bond with the oni";
	[]
	if HP of Hayato is 15:
		choose a blank row in table of fucking options;
		now title entry is "Free the oni";
		now sortorder entry is 98;
		now description entry is "Is it time";
	[]
	if HP of Hayato is 17 or HP of Hayato is 18:
		choose a blank row in table of fucking options;
		now title entry is "Mention the Red Onis you have encountered";
		now sortorder entry is 99;
		now description entry is "Speak with Hayato about the wild red onis";
	[]
	if HP of Hayato is 19:
		choose a blank row in table of fucking options;
		now title entry is "Analyse your contacts with Hayato";
		now sortorder entry is 99;
		now description entry is "Discuss your next steps in search of this Lair";
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
				if (nam is "Talk with Hayato"):
					say "[HayatoChitChat]";
				else if (nam is "His history"):
					say "[HayatoHistory]";
				else if (nam is "See how you can help him"):
					say "[HayatoTalkHelp]";
				else if (nam is "Do some trust work"):
					say "[HayatoBond]";
				else if (nam is "Free the oni"):
					say "[HayatoBeltUnlock]";
				else if (nam is "Mention the Red Onis you have encountered"):
					say "[HayatoRedOnis]";
				else if (nam is "Analyse your contacts with Hayato"):
					say "[HayatoDiscussLair]";
				wait for any key;
				if HayatoDoneTalking is false:
					say "[HayatoTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as you take your leave. Hayato nods as you go.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HayatoChitChat:
	say "     You let him know that you just want to chat and exchange a few words with one another.";
	if HP of Hayato < 10:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust. Even I've had to... take steps... to keep myself under control.'[or]'I do not wish to become a monster like the rampaging oni I encountered.'[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[at random]";
	else if HP of Hayato is 10:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust. The chastity device prevents me from giving in. Though I could certainly use some relief,' he adds with a hint of arousal and longing.[or]'I do not wish to become a monster like the rampaging oni I encountered.'[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[or]'The shop where I got the medieval chastity belt was quite mysterious. When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange. All she wanted in payment for the chastity belt was some little trinket.'[at random]";
	else if HP of Hayato < 15:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust. The chastity device helps keep me from giving into those desires, but the wretched thing also keeps me from getting any relief... or enjoying the company of friends,' he says with a longing, lustful look.[or]'I do not wish to become a monster like the rampaging oni I encountered. Perhaps a little relief would help quell that,' he says, shifting uneasily in his seat.[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[or]As you chat with him, the oni gives your body many an appreciative glance as the unfocused arousal he's been trying to contain becomes increasingly focused on you.[or]'The shop where I got the medieval chastity belt was quite mysterious. When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange. All she wanted in payment for the chastity belt was some little trinket.'[at random]";
	else if HP of Hayato is 15:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is free to satisfy their needs. Why did I choose this when there are so many fine partners out there?' he says, eyeing you with desire.[or]The chastity device helps keep me from giving into my moments of lust, but the wretched thing also keeps me from getting any relief... or enjoying the company of friends,' he says with a longing, lustful look.[or]'I do not wish to become a monster like the rampaging oni I encountered. Perhaps a little relief would help quell that,' he says, shifting uneasily in his seat.[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[or]As you chat with him, the oni gives your body many an appreciative glance as the unfocused arousal he's been trying to contain becomes increasingly focused on you.[or]'The shop where I got the medieval chastity belt was quite mysterious. When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange. All she wanted in payment for the chastity belt was some little trinket.'[at random]";
	else if HP of Hayato >= 16:
		say "[one of]'My grandmother used to tell me tales of the fearsome oni. You have made my being cursed to be one less terrible.'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust, but it seems it does not have to as I once thought. The chastity device helped me gain control of it, but now it is good to be free of the infernal thing,' he says, a hand rubbing his groin with a lustful grin.[or]'I do not wish to become a monster like the rampaging oni I encountered. I hope you'll continue to help me deal with this transformation,' he says with a lustful grin, loincloth brushed aside to stroke his cock meaningfully.[or]'I was trying so hard to contain my urges when I should have just found someone to help me let them out in a controlled manner.'[or]'I am glad to be away from that [']cave['] of mine. It is easier to feel that some of me is still human in a place like this,' he says, looking around the bookshelves.[or]'That shop where I found the medieval chastity belt is quite mysterious. Be careful what deals you make in there. If what you say is true, I might have ended up sold off to anyone who'd bought the key. Thankfully, you are the one who [']bought['] me,' he says with a playful grin.[or][if ( the number of booked people + number of bunkered people ) is 2]'I prefer staying up here out of the way. That way, I don't upset your friend with my appearance[else if ( the number of booked people + the number of bunkered people ) > 2]'I prefer staying up here out of the way. That way, I don't upset the others with my appearance[else]'I prefer staying up here out of the way. That way I can be out of the way and read in peace[end if]. It also means I'm free to relax and get some relief if I need it,' he adds with a grin and a stroke across his semi-hard cock.[at random]";

to say HayatoHistory:
	say "     You ask the red oni to remind you of how he came to be this fearsome demon ogre he is now, and while he is not thrilled to tell you about it again, he does you the favor.";
	say "     'If you wish...' - he sighs, as he picks up those memories again - 'It was on a really chaotic night. The dwindling survivors ran everywhere, trying in vain to get away from the monsters that seemed to only become more numerous. Soot and smoke filled the air, burning the eyes and making it hard to spot the creatures before they were upon you. My attempt to flee was cut off when an oni broke through the wall of a building. It reveled in the destruction and began to attack and rape the people around it. We tried to get away, but it caught up to us easily, swatting us to the ground with bone-breaking blows from its hand or club. I fell to the street hard, head striking the slick pavement and all became blackness. When I awoke, I found I had landed in a pool of the ogre's cum and had been transformed into a monster like it because of it.'";
	say "     He pauses again, looking down on his strong, meaty hands with their clawed nails and bright red skin. He balls them up into fists before taking a deep breath and relaxing. 'I was thankfully overlooked by the monster. I would not want my first to have been that horrible creature. The others it had attacked were gone, their clothes torn to shreds and demon cum everywhere. I realize now they have probably become more like it, but unable to contend with the dark urges and lusts which took them over.' He shifts uncomfortably on the floor and presses a hand to his tiger-skin loincloth. 'Thankfully, I am menacing enough in appearance that most of them give me a wide berth and do not trouble me.'";
	WaitLineBreak;
	say "     You thank Hayato for sharing this with you, once again.";

to say HayatoTalkHelp:
	say "     So, it is clear that the red oni does not look keen on letting his desires take the best of him, and sex is a prohibited subject with him... However, you cannot help but notice that this seems to be causing him a lot of pain and suffering, not to mention he has isolated himself in here away from any social contact, which is not good for anyone. Knowing this, you proceed to ask him... if you can aid him in any way. 'Help me? What makes you think I need help? I'm... doing fine, all things considered.' He says this, but his tone and body language speak something entirely different. You feel like he is restrained, as if invisible chains held him in place, and he cannot even voice it, nor is willing to. You have gathered that, so far, this seems to be related to his sexual desires.";
	WaitLineBreak;
	say "     There are [bold type]two ways[roman type] you can solve this. If you are a quite charming and charismatic person, you could take a risky approach by tempting and seducing him to such a point he cannot bear any of this anymore, and then show him that it isn't all that bad, as long as he is with someone he trusts and does not mean him any harm...";
	say "     Or... You can try to [bold type]gain his trust[roman type], putting it simply, by [bold type]talking to him[roman type] and reaching to his mind and heart. You would then allow him to open up naturally, on his own pacing and terms, without having to get sexual with the oni.";
	now HP of Hayato is 7;
	now Energy of Hayato is 1;

to say HayatoRedOnis:
	say "     Seeing Hayato has reminded you of having seen another red oni running around in the city. Deciding to bring it up, you describe what happened and ask for his opinion. As you relate the events to him, his expression grows increasingly sour - though he sounds more sad than angry when he speaks.";
	say "     'From your description, it doesn't seem to be the one that changed me. That one was even larger and more fearsome than I am now, so you probably met one of its many victims. As I'd said, the oni I encountered that night was rampaging and raping wildly. I expect many of its victims have ended up as demon ogres like myself, though wild and out of control.' He grows silent for a while, pondering the matter. 'The fact that they're only appearing now leads me to believe that they have been in some form of lair from which they've only recently emerged. I expect the larger one, probably their leader now, will be there as well... Could be probably raising an army of them.' He voice grows both angrier and more fearful upon mentioning the monster who caused his transformation.";
	WaitLineBreak;
	say "     A whole army of red onis, he said?! That would be extremely dangerous to leave unattended. 'You're right. And judging on how rapidly anyone can turn into one, he must have amassed quite a sizable one, by now. The question is, where would it be located and how could we keep them from getting out...' Following Hayato's words, you have to ask him if he intends on doing something about it. 'Not all by ourselves, no[if level of Player >= 18]. I don't think even you could deal with them all[end if]. We would require outside help in order to achieve anything. We cannot simply destroy an entire place full of red onis, but perhaps there is a way to seal them away... Keep them from harming anyone else.'";
	say "     Maybe he is right, and there is a way to seal all these menacing creatures in a place they could not exit from. The question is... who could help you? 'Maybe time will tell, perhaps someone knowledgeable enough, who had experience in these matters... Other demons or experts in magic, maybe. But I'd prefer someone who actually understood our motives... Demons don't seem to be a good option, but I suppose they'd have to do if we run out of options...'";
	WaitLineBreak;
	say "     It looks like you might be able to solve this issue with a few contacts you have in mind... Perhaps you should [bold type]talk to Hayato[roman type] again and discuss a few possibilities.";
	now Strength of Hayato is 1;
	now HP of Hayato is 19;

Section 3 - BOND PATH I can Bond with the Oni!

HayatoBondAttemptCooldown is a number that varies. HayatoBondAttemptCooldown is usually 20000.

to say HayatoBond:
	now HayatoDoneTalking is true;
	if HayatoBondAttemptCooldown - turns < 7:
		say "     You are ready to try to bond with the oni by discussing his problem a bit more, but despite your attempts at bringing his attention to the subject, he seems to be phasing out constantly. 'Look, I appreciate you being here, but I'm a little tired... Could we do this tomorrow, or something? Sorry...'";
		say "     It looks like you need to give him some time between your talking sessions.";
	else:
		if HP of Hayato is 7:
			say "     The red oni gives you a fearsome smile that shows off his large fangs, but seems cheerful enough for you to try this out. 'Alright, since you're going to stay a while, how about you tell me your story this time?' he suggests, sitting cross-legged on the garage floor while listening to you give a (mildly edited) account of your adventures in the city. He is attentive and asks few questions of you, seeming pleased to just have some company again for a while. He shifts and fidgets uncomfortably at the mention of some of the more sordid details, and as soon as you mention a few of the tempting creatures you've seen around, he rubs his covered groin. Realizing what he's doing, he growls for you to change the subject. 'I... don't want to hear of such things. Please. I must not give in to this demonic lust.'";
			say "     Clearly, he has a problem with sex. Not the kind of problem that is easy to fix, either... The oni has a huge fear from becoming a sex-crazed monster, and anyone could tell that from a great distance. You are keen on conversing with him about it, and show yourself available for him to voice his concerns. 'It's like I've told you, already. Seeing that happen before my eyes, that... rampaging oni just fucking and turning everyone into demonic monstrosities, no hint of humanity left in him, it was... terrifying. I don't want to be like him, and I... I'm just making sure it stays that way.' he replies, his head low as well as his voice.";
			WaitLineBreak;
			say "     You go on and ask how is it turning out for him, so far. 'I haven't turned into that wild and mindless demon in the head, that's for sure. Even though I look like him... I don't have any urges-... Well, I mean, I... Think about them, but I just don't allow myself to... Actually do it. This one time before was just an exception, a small slide.' You understand his problem a bit more, the fact that his restraint seems to be forced by himself and this is a decision only he made, on his own accord. 'It's a safety measure, and it's better for everyone. I can't bear the idea of hurting someone... Or... Do... You know what... I just can't.'";
			say "     Right now, you cannot do anything else but say that you understand him, and thank him for letting you know. It helps you a lot getting to know him and comprehend his motives. 'Well, thank you... It's been a while since I had a pep talk with someone. Talking about it helped, actually... A little bit. Though... I suppose you should go for now.' Nodding, you respect the oni's wishes and leave him to himself.";
			say "     You just got [bold type]a little closer[roman type] to the red oni in this manner. All you have got to do is to continue talking to him.";
			now HP of Hayato is 8;
			now Energy of Hayato is 3;
			now HayatoBondAttemptCooldown is turns;
		else if HP of Hayato is 8:
			say "     Following what you previously spoke about, you intend on asking him how he is doing with his efforts at restraining himself. 'You're really concerned about it, huh...? Why do you care that much about me? I'm just a stranger to you...' While you may have just met, that does not mean you are not allowed to care about the red oni, and you tell him that. Despite the short time you have known each other for, you want to be of help, even by just talking to him. 'Well, isn't that sweet... I guess you're not the worst kind of person who I could meet in this wretched place...' he says, with a hint of a smile by the corner of his mouth. 'It's been... difficult. I don't give in, but the thoughts linger...'";
			say "     You encourage him to talk about it, to perhaps help him deal with the pressure a little better. 'It almost feels like... as if I was taken by severe hunger, and there's plenty of food right in front of me... but despite it looking delicious, I know it's poisoned and I can't touch it, so I force myself to refuse it every single day... And it just gets worse and worse... To the point it...' he interrupts himself there, and follows up with a long silence. He does not look at you in the eye after that, and you dare not to say a word.";
			WaitLineBreak;
			say "     'I must keep doing it. That's all that matters. I cannot be a danger to others. I can't! I must control myself, even if I starve.' Hayato ends the conversation with this, and does not seem to want to continue. 'Perhaps you should leave by now. Thanks for coming by.'";
			say "     Maybe you should. Tomorrow, you can pass by and try again. But you are [bold type]making progress[roman type], you can tell...";
			now HP of Hayato is 9;
			now HayatoBondAttemptCooldown is turns;
		else if HP of Hayato is 9:
			say "     Things got a little tense the other time you spoke, so you delicately ask if he is doing better, today. The red oni nods and apologizes. 'I'm... sorry. I didn't mean to get like that. You've been great as a friend, and... I didn't want to make you feel uncomfortable.' You let him know that is not a problem, and you are here for anything he needs. 'Thank you... For once, I wouldn't like to talk about it. Maybe we should do something different, this time. I asked you to tell me more about yourself the other day and I, uh... kind of interrupted you rudely because, well, that happened. But... Maybe we can try that again? Tell me about your adventures, your conquests and people you meet... How's the world out there? Is it as bad as it looks?";
			say "     You see no reason why not try this again, since he was the one suggesting it, so you do. You tell him about some adventures (and misadventures) you had, while leaving the smutty details out. Truth is, it is quite difficult to avoid talking about it, at all! Hayato notices this during your speech, and his enthusiasm diminishes. 'It has been that bad, huh... I could tell how many lewd situations you've ran into by the pauses you were making...' Perhaps you should apologize, but he stops you there. 'No need. It's not your fault. Actually, you were really nice about trying to spare me the details and the pain of having to hear about those things...'";
			WaitLineBreak;
			say "     The red oni makes a pause, and then adds a few additional words. 'With all the savagery out there, I was hoping you'd find someone who treats you with a little more respect, as well... I hope you don't have to put up with this craziness all by yourself...' You reassure him that you have been doing fine, all things considered. 'Yeah... I hope...' he adds, and then it looks like he is going to say something more. You find the opportunity, and you try to press, gently... His eyes meet yours, and you feel like [']this is it[']...";
			say "     'Alright, I guess I could... tell you this.' You sit straight and are all ears, as you clearly show him as soon as he says that. 'I might have messed up all this lust denying stuff. It's clear that it isn't working, and I should... probably look at it differently. But I... have a problem...' Seeing that he is concerned about telling you, you let him know that, whatever it is, you may be able to help him. 'Alright, uh... Let's see...'";
			WaitLineBreak;
			say "     'As I've said, I've taken steps to ensure that I could not give in to my lusts and attack others, and since I've transformed, I've felt the urges to... do just that. As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side. The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me. It has been... difficult... at times, but it has helped me to keep my desires in check. And before you ask, I did not take the key so I could not be tempted to free myself of it, which means... it's stuck on me.'";
			say "     Listening to him, you are surprised by the lengths he has gone to contain his sexual desires. You request his permission to take a look at the [']relic['] he mentioned, and once he allows it, you check him over thoroughly. Definitely, you can tell he has been locked up tight. The device, which is a chastity belt, and despite its age, seems surprisingly resilient. 'After talking to you during all these days, I understood that this just became more of a problem than a solution, so... I guess I could use your help to get rid of it? Even though I'm... scared of that. I'm going to ask you to... stop me if... I do something I'd regret, once this is out. Can I... trust you?'";
			say "     You reassure him that he will have your full support.";
			WaitLineBreak;
			say "     You will need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[else]visit Nermine again and see what she has to say about this[end if]. Maybe you might be able to deal with her and free Hayato off his restraining belt.";
			now HP of Hayato is 10;
		else if HP of Hayato is 10:
			say "     Greeting the red oni, you ask him how he has been doing so far. 'I've been okay, thanks for asking... Any luck with the jackal woman?' he asks, and you say you haven't got into that matter, yet, but you will. You should [if Nerminetalk is 0]search for this [bold type]mysterious shop[roman type] where he got the[else]talk to Nermine and see what she has to say about this[end if] restraint if you want to help the poor fellow out of it.";
		else if HP of Hayato is 11 or HP of Hayato is 12 or HP of Hayato is 13:
			say "     Greeting the red oni, you ask him how he has been doing so far. 'It's been some rough times... I can't wait to get this out of me. Any progress?' he asks, and you tell him about the current state of your quest. It seems to cheer him up a little once you tell him you are on the case. Unfortunately, until you retrieve the [bold type]noh mask[roman type] that Nermine wants, you won't be able to get Hayato's chastity belt out of him. You will need to head over to the College Campus and [if HP of Hayato is 11]try to locate it[else]deal with the creatures in your way[end if].";
		else if HP of Hayato is 14:
			say "     Greeting the red oni, you ask him how he has been doing so far. 'I can't wait to get rid of this belt, seriously. It's been itching and being a general nuisance that I think I'm going to swing my club really hard at something, soon enough. Please, tell me you've made progress...' he asks, a quite frustrated tone in his voice, not with you but with his own situation. Fortunately, you have got the mask Nermine asked for, and as you tell him that, he shows great joy. 'Oh, yes! Finally! I mean, uh... I'm glad! I hope you intend to deliver it soon? Please?' The poor fellow has been waiting for this for so long... You'd best get that mask to Nermine so you can get the key to free him.";

Section 4 - SEX PATH I Can Haz Sexy Oni?

to say sexwithHayato:
	if HP of Hayato < 6:
		say "ERROR-Hayato-[HP of Hayato]F: You shouldn't be able to find me.";
	else if HP of Hayato is 6:
		say "     You should probably try talking to him some more first.";
	else if HP of Hayato < 10:
		if HP of Hayato is 7 and Energy of Hayato is 1:
			say "     You are about to proceed with the seduction path, which will lock you into attempting to introduce the oni to sex on your own terms. Do you wish to proceed?";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Yes, you want to get sexual with him.";
			say "     ([link]N[as]n[end link]) - No, you want to think about it some more.";
			if player consents:
				Linebreak;
				say "     Well, you can help him this way, and you actually want to, so... Why not? Perhaps you will be successful... or eventually.";
				now Energy of Hayato is 2;
				WaitLineBreak;
			else:
				Linebreak;
				say "     Thinking twice, you back off, for now.";
				stop the action;
		else if Energy of Hayato is 3:
			say "     You committed to help him out by conversing with him, remember? If you want to get sexual with the oni, you will have to solve his problem first.";
			stop the action;
		say "     Deciding to make a move on the muscular oni, you recall his uneasiness with the prospect of sex. You can tell he wants it too, but he's worried he'll be like the rampaging oni. You figure you'll need to get rather hands on if you want to overcome his reluctance, but you will need to do so without him catching on too early. You start to chat him up, trying to be subtly seductive as you gradually move closer and closer.";
		WaitLineBreak;
		let bonus be ( Charisma of Player minus 10 ) divided by 2;
		let targetnum be 20;
		decrease targetnum by HP of Hayato;
		increase HP of Hayato by 1;
		let dice be a random number from 1 to 20;
		if HP of Hayato is 10:
			say "     Tempted by your continued advances, Hayato makes no attempt to stop you this time. There's visible signs of arousal on the oni, a growing lust in his eyes and his nipples getting hard. You move sensually to arouse him, but take care not to rush it, lest he realize what is going on. You move in beside him, resting your body gently against his. You slide an arm along his strong back and snuggle up beside him, your other hand moving in on your target.";
			say "     You slip your fingers under the tiger-skin fur, reaching for his groin. But rather than the feel of hard, phallic meat, you're met with hard, blocky metal instead. Surprised, your subtlety fails you and you start groping at it, trying to understand what you're feeling. Noticing your activity, he flips up his loincloth, showing that his loins have been girded in some form of chastity device. It seems quite ancient, a crudely mechanical thing of forged iron with a large lock built into it. It is held on by a tightened metal band around his waist and there is a block of metal with drainage holes on it placed tightly over his loins. Another band runs between his legs and his butt cheeks with only a saw-toothed channel cut into it for waste to pass through, but clearly unusable for penetration from the other direction.";
			say "     'As I've said, I've taken steps to ensure that I could not give in to my lusts and attack others. Since I've transformed, I've felt the urges to sate my lusts on those around me. As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side. The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me. It has been... difficult... at times, but it has helped me to keep my desires in check. And before you ask, I did not take the key so I could not be tempted to free myself of it. It would be so good to be allowed some relief though,' he adds shifting uncomfortably.";
			say "     Listening to him, you are surprised by the lengths he's gone to fight his lusts. Having checked him over thoroughly, you can tell he's been locked up tight. The device, despite its age, seems surprisingly resilient. Having gotten your hopes up for a romp with the big, strong oni, you find yourself tempted to find a way to get him out of that so you can have the fun you've been denied. You'll need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[else]visit Nermine again and see what she has to say about this[end if].";
		else if (dice + bonus) >= targetnum:
			say "     You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [targetnum]: ";
			say "As you see signs of arousal on the oni, a growing lust in his eyes and his nipples getting hard, you slip a little closer. You move sensually to arouse him, but take care not to rush it, lest he realize what is going on. While it doesn't take but a few moments in reality, it seems so much longer before you manage to move in next to him. You slide an arm along his strong back and snuggle up beside him, your other hand moving in on your target.";
			say "     You slip your fingers under the tiger-skin fur, reaching for his groin. But rather than the feel of hard, phallic meat, you're met with hard, blocky metal instead. Surprised, your subtlety fails you and you start groping at it, trying to understand what you're feeling. Noticing your activity, he flips up his loincloth, showing that his loins have been girded in some form of chastity device. It seems quite ancient, a crudely mechanical thing of forged iron with a large lock built into it. It is held on by a tightened metal band around his waist and there is a block of metal with drainage holes on it placed tightly over his loins. Another band runs between his legs and his butt cheeks with only a saw-toothed channel cut into it for waste to pass through, but clearly unusable for penetration from the other direction.";
			say "     'As I've said, I've taken steps to ensure that I could not give in to my lusts and attack others. Since I've transformed, I've felt the urges to sate my lusts on those around me. As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side. The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me. It has been... difficult... at times, but it has helped me to keep my desires in check. And before you ask, I did not take the key so I could not be tempted to free myself of it. It would be so good to be allowed some relief though,' he adds shifting uncomfortably.";
			say "     Listening to him, you are surprised by the lengths he's gone to fight his lusts. Having checked him over thoroughly, you can tell he's been locked up tight. The device, despite its age, seems surprisingly resilient. Having gotten your hopes up for a romp with the big, strong oni, you find yourself tempted to find a way to get him out of that so you can have the fun you've been denied. You'll need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[else]visit Nermine again and see what she has to say about this[end if].";
			now HP of Hayato is 10;
		else:
			say "     You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [targetnum]: ";
			say "You try to be subtle in your approach, wanting to get the red oni turned on without him becoming suspicious. At first, it seems to be working, but either you move too quickly or say something too obvious and he notices you reaching out to grope him. He pushes you back firmly, knocking you on your ass. 'You should leave now,' he growls. 'Return when you're able to control yourself better.'";
			say "     Given his mood, you decide to head off for now, planning to return later. Part of you feels sorry for trying to get him worked up, but the larger part of you hopes you'll be successful next time. Certainly, he was getting turned on. Perhaps you'll be able to convince him next time.";
			move player to Rusty Walkways;
	else if HP of Hayato is 10:
		say "     You eye Hayato and his strong, muscular body, but there's little chance of having fun with him until the chastity belt is removed. You should [if Nerminetalk is 0]search for this [bold type]mysterious shop[roman type] where he got the[else]talk to Nermine and see what she has to say about this[end if] restraint if you want to help the poor fellow out of it.";
	else if HP of Hayato is 11 or HP of Hayato is 12 or HP of Hayato is 13:
		say "     You take in Hayato's muscular form, your longing to do more than look growing. Unfortunately, until you retrieve the [bold type]noh mask[roman type] that Nermine wants, you won't be able to get at the red-skinned hunk's locked-up junk. You'll need to head over to the College Campus and [if HP of Hayato is 11]try to locate it[else]deal with the creatures in your way[end if].";
	else if HP of Hayato is 14:
		say "     You imagine for a moment all the fun you'll be able to have with the demon ogre once you've removed that chastity belt. Thinking about it starts to get you rather excited. You'd best get that mask to Nermine so you can get the key and get down and dirty with him.";
	else if HP of Hayato is 15:
		say "     Now that you've got the key to unlock his belt, you should [bold type]talk to him[roman type] in order to proceed with whatever you want to do.";
	else if HP of Hayato >= 16:	[***]
		say "[hayatosexmenu]";

Section 5 - Belt Unlock

to say HayatoBeltUnlock:
	now HayatoDoneTalking is true;
	say "     With the key in your hand, you are now able to free the oni from his chastity belt. With a smile, you tell Hayato that you have made it, and got the key from Nermine. 'You have it with you?!' he asks, and you show it to him, holding it between your fingers in plain view of his big eyes. 'Well, things get real, now...' he responds, and for a moment, he seems to show fear of what is to come. 'I... know I agreed on having you help me take this belt off, but seeing the key and being so close to the idea of having it off me...' he does not finish his sentence, but you have an idea of how he is feeling, right now. Perhaps you should comfort him, in some way before proceeding any further with this.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - In fact, you also had another goal in mind when doing this. Make a move on the big oni.";
	say "     ([link]N[as]n[end link]) - Pat on his shoulder and talk to him.";
	if Player consents:
		Linebreak;
		say "     It is clear that he is scared of having that freedom return to him, but you are here to make him feel comfortable... desired... And while you carefully get closer to him, you rub your hand against his broad shoulder, then down to his bulging triceps and biceps, grabbing his gaze and looking into his eyes as you reach of his hand, and once you have got his full attention, you whisper to him that everything will be okay, because you are here for him. You want him to suffer no more, and to allow himself to receive the pleasure he deserves... which you can and want to provide. He does not say anything, but does not stop you, either. Remaining on his seat, you slide in beside him and take it slow, at first. You lift your hand, and let him make the first move...";
		say "     You do not want to force him, and you want that to be clear, so you let him take his time to come to you, instead. He eventually lifts his large hand as well, and slides it across yours, a moment you use to put your arm around his waist, laying your free hand on top of his muscular chest. His heartbeat can be felt almost humping against your palm, a strong and powerful one, as you give him a few gentle rubs across those large pectorals. He lets out a very faint, nearly inaudible moan, as you brush your fingertips across one of his red nipples, his need for stimulation building as his unsatiated arousal grows. He exhales, as if out of breath, and rapidly grabs your by the wrists, stopping any action of yours at that moment.";
		WaitLineBreak;
		say "     'Please...' he says, in an almost begging tone. 'Please use that damned key right now... you're killing me.' Now, looks like your efforts worked, and he wants that old belt gone for good! And you are happy to oblige. Working the key into the lock, you actually turn it around easily, despite its obvious age. The gears in the mechanism run so smoothly that you begin to doubt its looks, but concerns aside, you continue the procedure. The bans around his waist and between his legs step out further with each turn of the key until they finally release, and that is not the only thing that comes free. Now unrestrained from its bonds, his crimson cock surges to full erection, sending the unlatched metal clattering across the ground.";
		say "     'Oops... I... Uh... We don't need that thing anymore, right? I-I hope...' he says, looking at how he just sent the device away with the force of a boner popping, which in his case, is quite significant. But anyway, as it stands now free from its containment, you are not even sure how such a large cock could even fit within the restraint. The oni's transformed manhood is a thick pillar of red flesh, hard and throbbing with need. While shaped like a man's cock, it is considerably larger and thicker with throbbing veins. It is a little over a foot in length and leaks precum steadily. Like the rest of him, it is a bright red in color, only darkening to a near-black shade of red at the glans. Below it hangs his ponderous ballsack, containing his large, firm testicles. You cannot even fathom how full and pent-up they must be...";
		WaitLineBreak;
		say "     You know what you want to do, and you look over to his eyes, as if asking for permission. He seems unsure, but a look over his equipment tells you that he wants it. At first, you brush against his shaft very softly, and then comfort him, reminding him that everything is fine and this is perfectly normal. 'I... Oh, that feels...' he moans, and you think this is the right time to proceed. Lowering yourself down between his legs, you bring your mouth to his erection and start licking over it. It twitches and unleashes a healthy gush of precum, which you lap up eagerly. The oni pants, his yellow eyes rolling back in his head as you work your mouth over his virgin shaft and start sucking on it. You guzzle down several rich mouthfuls of his precum before pulling off again, taking delight at his groan of disappointment. As much as you'd like to keep on sucking him, you worked too hard to get this to blow his first time on a blow job.";
		if Player is female:
			say "     Moving back up, you pull yourself into his lap, [if scalevalue of Player < 3]hugging your arms around as much of his broad chest as your small body can hold[else if scalevalue of Player is 3]wrapping your arms around the larger fellow's broad chest[else]draping your arms around his shoulders and neck while you kiss him[end if]. You grind your pussy down onto that pulsing rod of his and shift your hips to lower yourself down onto it. You watch as his gruff face is overcome with ecstasy as you push your cunt down around his cock, taking the transformed man's virginity. With that thick rod inside you, you take it slow at first, mainly for the sake of making the pent-up oni last a little longer. Despite your efforts, it ends up being a little short, but you are treated to such a thick geyser of cum while the demon ogre cries out in lustful release after his self-imposed abstinence that it is well worth it. The feel of those seemingly unending pulses of his spurting rod as his tainted seed stuffs you full and overflows from your cunt sends you into orgasm as well, your needy vagina milking the oni for more and more until he finally collapses backwards in a daze. You grin and pull off of him slowly, smiling smugly at the messy pool of cum covering his lower body and the garage floor between his legs. Your womb sloshes with his semen, stuffed full and hot with his demonic load.";
		else:
			say "     Moving back up, you pull yourself into his lap, [if scalevalue of Player < 3]hugging your arms around as much of his broad chest as your small body can hold[else if scalevalue of Player is 3]wrapping your arms around the larger fellow's broad chest[else]draping your arms around his shoulders and neck while you kiss him[end if]. You grind your ass down onto that pulsing rod of his and shift your hips to lower yourself down onto it. You watch as his gruff face is overcome with ecstasy as you stretch your anus down around his cock, taking the transformed man's virginity. With that thick rod inside you, you take it slow at first, mainly for the sake of making the pent-up oni last a little longer. Despite your efforts, it ends up being a little short, but you are treated to such a thick geyser of cum while the demon ogre cries out in lustful release after his self-imposed abstinence that it is well worth it. The feel of those seemingly unending pulses of his spurting rod as his tainted seed stuffs you full and overflows from your asshole sends you into orgasm as well, your needy hole milking the oni for more and more until he finally collapses backwards in a daze. You grin and pull off of him slowly, smiling smugly at the messy pool of cum covering his lower body and the garage floor between his legs. Your belly sloshes with his semen, stuffed full and hot with his demonic load.";
		WaitLineBreak;
		say "     After he recovers, Hayato smiles up at you from the floor and releases a long, satisfied sigh of relief. 'Oh, that feels so much better. I was starting to ache so badly down there. I do hope you'll come and visit my dingy cave again soon...' he says with a bit of worry in his voice. Given how he has not gone crazy with lust after his release, you, of course, use the opportunity to reassure him that everything, indeed, went fine, as you were saying. 'Okay, okay, you were right... It's so much better like this... I really have to thank you.' He does, you let him know, but for now, you are more than happy to invite him back to your safe haven, as this place is way far from safe and you did not go through all this trouble just to have him run into anything dangerous.";
		say "     He seems surprised, as he was not expecting such a thing. 'Wait, you're inviting me to your shelter? But... I'm still a demonic ogre, are you sure that's a good idea?' he asks, and once again, you find yourself in the position to reassure him that everything will, again, be completely and absolutely fine. Even more, you remind him that he should have listened to you in the first place when he questioned you, but all in a playful fashion. 'Ah, well, in that case... I guess it'll be fine, right? Anything is better than this hole...' he replies, and seems to actually be very eager at the prospect of living with you, judging by the twitch his cock gives. 'Uh, my only concern is whether I'll even fit inside. Is it a big place?' While you are helping him up, you pat his shoulder and tell him not to worry, that you can probably squeeze him in somewhere.";
		if player is female:
			NPCSexAftermath Player receives "PussyFuck" from Hayato;
		else:
			NPCSexAftermath Player receives "AssFuck" from Hayato;
		move Hayato to Darkened Alcove;
		move player to Darkened Alcove;
		now HP of Hayato is 16;
		increase score by 25;
		unleashredoni;
	else:
		Linebreak;
		say "     You reach for him, giving him a friendly pat on the shoulder and reassure him that everything will be fine. He will be able to lead a normal life without the belt, and you are here to help him achieve that. 'I suppose...' he takes a deep breath, then lets out a sigh. 'Okay. Give me the key.' he asks you, and you do as he says.";
		say "     When the oni takes the key from you, he immediately proceeds to work it into his belt's lock. Turning it around rather easily, despite its obvious age, he then has the gears in the mechanism run so surprisingly smoothly that you begin to doubt its looks, but concerns aside, you continue to observe the procedure. The bans around his waist and between his legs step out further with each turn of the key until they finally release, and that is not the only thing that comes free. Now unrestrained from its bonds, his crimson cock surges to full erection, sending the unlatched metal clattering across the ground. 'Oh, damn! I... Suppose we won't need that anymore, right?! T-totally wasn't expecting this to happen...!'";
		WaitLineBreak;
		say "     Looking at his more than a foot-long of a cock (you actually cannot help but stare at the thing), you reassure him that it is all pretty normal, as he never got any release whatsoever since long ago. 'I'm... sorry you had to see this. Uhm... I think I need to take care of this right away... Maybe? I don't know anything, anymore.' You figure it is probably for the best that you let him relieve himself before to proceed into other matters, but before you walk outside, he asks you to stop. 'Wait, wait... I can... hold it. I... Well, I've been doing it for so long, I should just... Look, thank you, really, but I just need to... You know, find a safe place or something where I can be kept... safe. Safety's first, always!'";
		say "     Seeing the oni in such an awkward situation, you decide to brush it off and even throw a joke or two into the conversation. Somehow, you make him feel better about all this, and he begins to calm down. A safe place, he asked? Well, you happen to have one, and perhaps it is time to forward the invitation at once. After all, you did not got through all this trouble just to have him run into anything dangerous.";
		WaitLineBreak;
		say "     He seems surprised, as he was not expecting such a thing. 'Wait, you're inviting me to your shelter? But... I'm still a demonic ogre, are you sure that's a good idea?' he asks, and once again, you find yourself in the position to reassure him that everything will, again, be completely and absolutely fine. Even more, you remind him that he should have listened to you in the first place when he questioned you, but all in a playful fashion. 'Ah, well, in that case... I guess it'll be fine, right? Anything is better than this hole...' he replies, and seems to actually be very eager at the prospect of living with you, as you proved to be quite good of a company during these days. 'Uh, my only concern is whether I'll even fit inside. Is it a big place?' While you are helping him up, you pat his shoulder and tell him not to worry, that you can probably squeeze him in somewhere.";
		move Hayato to Darkened Alcove;
		move player to Darkened Alcove;
		now HP of Hayato is 16;
		increase score by 25;
		unleashredoni;

Section 6 - Sex with Hayato

to say hayatosexmenu:
	if lastfuck of Hayato - turns < 6:
		say "     Given the fact that you had sex with the oni very recently, you suppose you should wait a bit longer. You don't want to keep increasing his already high sex drive, or bad things could happen...";
	else:
		say "     Looking over the oni's large, muscular form gets you aroused. In the mood for some fun, you approach him with a smile which he readily returns. Moving next to him, you press your body to his and slip a hand under his striped loincloth, grabbing his erecting maleness. The fearsome ogre gives you a tender kiss. Having got the compliant oni by the horn, you consider what you'd like to do for fun with him.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Give fellatio";
		now sortorder entry is 1;
		now description entry is "suck him off";
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Vaginal";
			now sortorder entry is 3;
			now description entry is "have him fuck your cunt";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Anal";
			now sortorder entry is 4;
			now description entry is "have him fuck your ass";
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Receive fellatio";
			now sortorder entry is 2;
			now description entry is "fuck his face";
			choose a blank row in table of fucking options;
			now title entry is "Fuck him";
			now sortorder entry is 5;
			now description entry is "take your turn on top";
		if HP of hayato is 50:
			choose a blank row in table of fucking options;
			now title entry is "Get bent over";
			now sortorder entry is 6;
			now description entry is "be taken roughly in the ass";
		if HP of hayato is 50:
			choose a blank row in table of fucking options;
			now title entry is "Get face fucked";
			now sortorder entry is 7;
			now description entry is "have the dominant oni roughly use your face";
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> ";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: Do you want to [description entry]?";
				if Player consents:
					let num be sortorder entry;
					now sextablerun is 1;
					if num is 1:
						say "[hayatosex1]";
					else if num is 2:
						say "[hayatosex2]";
					else if num is 3:
						say "[hayatosex3]";
					else if num is 4:
						say "[hayatosex4]";
					else if num is 5:
						say "[hayatosex5]";
					else if num is 6:
						say "[hayatosex6]";
					else if num is 7:
						say "[hayatosex7]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		wait for any key;
		clear the screen and hyperlink list;

to say hayatosex1:
	say "     Deciding you want a taste of his heavy payload, you move between Hayato's legs and raise up his loincloth, giving you free access to him impressive manhood. With it hard and throbbing in your hand, you bring your mouth in and start licking and kissing at it, enjoying the soft moans of the buff demon ogre. 'Oh, that feels so good. Mmm...' You play your tongue across his red shaft and up to his darkened glans several times, lapping up the copious amounts of precum he's leaking.";
	say "     [one of]After nuzzling down to his balls and licking his pendulous sac[or]While rolling his hefty, orange-sized balls around in your hand[or]After a few teasing nibbles along his throbbing member[at random], you bring your lips to his glans, open wide and guide it into your mouth. The sexy oni releases a long groan of pleasure and strokes one of his strong hands over your head and across your shoulders. You work your lips slowly down over his cock, taking his thick meat down your throat while your tongue plays along it. It is slow going at first given its size, but you manage to get it all in somehow. After taking a moment to enjoy the fullness in your mouth and throat, you start bobbing over his manhood while sucking that pulsing rod.";
	say "     You are able to take your good, sweet time with him, lavishing attention upon his leaking rod. You find having your way with the oni's shaft very pleasurable; his big, virile cock so delightfully responsive. And having the strong, muscled oni moaning loudly as you take what you want from him makes it all the better.";
	say "     And speaking of taking what you want, as you [one of]give his balls a firm squeeze[or]plunge his cock fully down your throat again[or]fellate your tongue wildly across his glans[at random], he groans deeply and blasts thick bursts of cum from his throbbing manhood. You suck it down as best you can, his heavy flow easily filling your mouth and flowing down into your belly. Even gulping it down as quickly as you can, some overflows from your lips, staining his red flesh with streaks of white. His cum has a strong taste, but is delicious nonetheless, its musky flavor speaking of its rich, virile nature. And certainly there's plenty of it as well, allowing you to enjoy a tasty meal of oni semen that fills your belly with sloshing, hot cum. Once his long climax comes to an end, you release his softening shaft, lick your messy lips and give him a creamy kiss before leaving the dazed, grinning oni to recover his wits.";
	NPCSexAftermath Player receives "OralCock" from Hayato;

to say hayatosex2:
	say "     Wanting some relief, you look over at the docile oni and grin. Noticing you pulling out your [cock size desc of Player] cock, his own manhood stirs. Offering it to the sitting fellow, he licks his thick lips with his bright red tongue, but hesitates. Running a hand through his coarse hair, you tell him that you know he wants it and to just be a good cockslut and get to work. The next pass of his tongue has it slide across your glans before he assents and opens his mouth to take it in[if Cock Length of Player > 36]. It takes quite a bit of effort even for the muscular oni to push his maw and throat over your massive meat, but he continues with growing enthusiasm until he's managed to stretch himself around it all[else if Cock Length of Player > 24]. It takes him some effort to him to get your enlarged meat into his maw and down his throat, but he does so with growing enthusiasm until he's succeeded[else if Cock Length of Player > 12]. He works the full length of your meat into his maw and throat with growing enthusiasm until it's all in there[else]. He takes the full length of your meat into his maw with a growing enthusiasm[end if].";
	say "     While working his mouth and tongue over your [Cock of Player] shaft, the red oni [one of]pants and moans around your cock while busily pumping his own hard and fast[or][if CockName of Player is not listed in infections of InternalCockList]eagerly rubs your [Ball Size Adjective of Player] [Balls] in his strong hand[else if Player is female]stuffs a thick finger into your cunny and works it in and out[else if anallevel is 3]teases a finger at your anus before stuffing it into your tight hole[else]kneads your ass with his strong hand[end if][or]grabs your ass and moans, clearly wanting you to fuck his face[or]has an expression of lustful delight on his otherwise fearsome face[at random]. You rub your hands through his rough hair and over those horns of his. When your own excitement crests, you grab onto those horns and pull him into each thrust you make, having your way with the muscular demon ogre's mouth until you cum a [Cum Load Size of Player] load of gooey semen down his throat. As he's swallowing down your seed, he pumps his own red pillar until his jizz splatters everywhere. Sated now, you push his head away and leave the big guy in an orgasmic daze while some of your excess seed leaks from the corner of his mouth.";
	NPCSexAftermath Hayato receives "OralCock" from Player;

to say hayatosex3:
	if lust of hayato is even:
		say "     Deciding you want another ride on the oni's thick pole, you climb up into his lap facing him and pull his loincloth up, giving you free access to his impressive manhood. With it hard and throbbing between your legs, you [if scalevalue of Player < 3]nuzzle at the oni's manly chest[else if scalevalue of Player is 3]nuzzle at his strong shoulders and neck[else]press your [bodydesc of Player] body against his mighty chest and kiss his fearsome face[end if], enjoying the soft moan he gives as you do. 'Oh, I want you so bad. Please, let me fuck you,' he pants. His cock pulses with obvious need as it dribbles precum against your ass as you grind against it.";
		say "     [one of]After some more teasing grinding against his cock that has him clawing at the floor and begging you to be let in[or]After tantalizing him with several passes of your pussy along his shaft[or]After faking changing your mind and moving to pull away[at random], you guide his cock to your dripping folds and ease yourself down onto it. You work your pussy lips slowly down over his cock, taking his thick meat into your vagina gradually[if Cunt Tightness of Player < 8 or Cunt Depth of Player < 13]. It is slow going at first given its size, but you eventually manage to get it all stuffed into you somehow[else]. Your [cunt size desc of Player] cunt is able to take his impressive shaft with relative ease, leaving you free to enjoy taking it inch by inch[end if]. Your slow progress turns the muscled oni into putty in your hands, the buff guy moaning and panting as his red rocket throbs and spurts precum into you.";
		say "     You ride up and down in his lap, pushing yourself down onto his cock with increasing gusto. The feel of that thick pillar of red meat pulsing inside you as it slides in and out sending waves of delight through you. You find having your way with the oni's shaft very pleasurable; his big, virile cock so delightfully responsive. And having the strong, muscled oni moaning loudly as you take what you want from him makes it all the better.";
		say "     And speaking of taking what you want, as you [one of]give his balls a firm squeeze[or]plunge fully down onto his cock again[or]gyrate your hips and squeeze your inner walls around his cock[at random], he groans deeply and blasts thick bursts of cum from his throbbing manhood. You can feel each large blast shoot inside you, splattering against your cervix before being forced inside by the pressure of the next blast. His heavy flow easily fills your vagina to the brim and flows into your womb, working to fill it with his virile seed, though a considerable amount overflows around his shaft as well, staining his red flesh with streaks of white. His cum is quite thick, likely a result of his long build-up. And certainly there's plenty of it as well, allowing you to enjoy a womb-filling load of sloshing, hot cum. Once his long climax comes to an end, you rise off his softening shaft, a heavy flow of his seed running down your legs. You make a show of bending over, giving the dazed, grinning oni a clear view of your well-fucked hole before leaving him to recover his wits.";
	else:
		say "     Feeling a need to be filled, you push aside some books on the nearby reading desk and hop up onto it. With your legs raised, you give Hayato a wanton gaze, telling him to get to work. Holding your legs wide, your wet pussy is on tempting display for the muscular oni. Between the teasing and the tantalizing offer, he cannot refuse and moves into position.";
		say "     Taking his cock in hand again, you get him lined up and tell him to stick it in you. Having gotten yourself quite worked up for it, when he starts slow, you don't want to wait. Giving his large length a tug while pulling him forward with your legs around his strong sides, you growl that you told him to stick it in you. Obediently, he doesn't hold back and thrusts firmly into you, driving a good portion of his impressive manhood into you. You cry out in delight and grind over his red rod, demanding more - a request he's eager to fulfill, pumping until it all is filling you full.";
		say "     Each thrust of that mighty cock has you [one of]moan[or]groan[or]whimper[or]cry out[at random], your inner walls squeezing around it in over-stretched ecstasy. He has an expression of lustful delight that you can clearly read upon his fearsome face - and you can't help but feel a swell of pride[if Player is male] (and of your cock[smn])[end if] at the knowledge that you introduced him to such pleasures. These thoughts drive you to push him to orgasm by working your hips and wet hole around his crimson rod while pulling him harder into every thrust.";
		say "     When it all becomes too much for the [if lust of Hayato + Libido of Hayato < 5]inexperienced [end if]oni, he grabs the desk with his claws hands. You can hear the scrape of his claws and the cracking of cheap wood along with his climactic growl as he unleashes his hot seed into your stuffed pussy. Liquid heat pours into your cunt and floods your womb as his hefty balls deliver their heavy load unto you. The constant pulsing throbs of his spurting shaft and the hot flow of his semen sends you over the edge and you cum as well, soaking your crotches with your sticky juices. By the time he's drained, your belly feels full and warm with his load. You run a hand over your [if scalevalue of Player < 4]stretched[else]full[end if] tummy as you unlock your legs and let your spent lover stumble to the ground with a sigh of sexual satisfaction. You reach down and lightly stroke his thick rod, telling him what a fine job he did.";
	increase lust of hayato by 1;
	NPCSexAftermath Player receives "PussyFuck" from Hayato;

to say hayatosex4:
	if Libido of hayato is even:
		say "     Deciding you want another ride on the oni's thick pole, you climb up into his lap facing him and pull his loincloth up, giving you free access to his impressive manhood. With it hard and throbbing between your legs, you [if scalevalue of Player < 3]nuzzle at the oni's manly chest[else if scalevalue of Player is 3]nuzzle at his strong shoulders and neck[else]press your [bodydesc of Player] body against his mighty chest and kiss his fearsome face[end if], enjoying the soft moan he gives as you do. 'Oh, I want you so bad. Please, let me fuck you,' he pants. His cock pulses with obvious need as it dribbles precum against your ass as you grind against it.";
		say "     [one of]After some more teasing grinding against his cock that has him clawing at the floor and begging you to be let in[or]After tantalizing him with several passes of your pucker across his tip[or]After faking changing your mind and moving to pull away[at random], you guide his cock to your crinkled hole and ease yourself down onto it. You work your asshole slowly down over his cock, taking his thick meat into your back passage gradually[if scalevalue of Player < 4 and the player is not twistcapped]. It is slow going at first given its size, but you eventually manage to get it all stuffed into you somehow[else if Player is twistcapped]. Your stretchable insides are able to take his impressive shaft with relative ease, leaving you free to enjoy taking it inch by inch[else]. Your enlarged body is able to take his impressive shaft with relative ease, leaving you free to enjoy taking it inch by inch[end if]. Your slow progress turns the muscled oni into putty in your hands, the buff guy moaning and panting as his red rocket throbs and spurts precum into you.";
		say "     You ride up and down in his lap, pushing yourself down onto his cock with increasing gusto. The feel of that thick pillar of red meat pulsing inside you as it slides in and out sending waves of delight through you. You find having your way with the oni's shaft very pleasurable; his big, virile cock so delightfully responsive. And having the strong, muscled oni moaning loudly as you take what you want from him makes it all the better.";
		say "     And speaking of taking what you want, as you [one of]give his balls a firm squeeze[or]plunge fully down onto his cock again[or]gyrate your hips and squeeze your inner walls around his cock[at random], he groans deeply and blasts thick bursts of cum from his throbbing manhood. You can feel each large blast shoot inside you, splattering hard against your prostate before being forced deep inside by the pressure of the next blast. His heavy flow easily fills your bowels to the brim, filling you with his virile seed, though a considerable amount overflows around his shaft as well, staining his red flesh with streaks of white. His cum is quite thick, likely a result of his long build-up. And certainly there's plenty of it as well, allowing you to enjoy a belly-stuffing load of sloshing, hot cum. Once his long climax comes to an end, you rise off his softening shaft, a heavy flow of his seed running down your legs. You make a show of bending over, giving the dazed, grinning oni a clear view of your well-fucked hole before leaving him to recover his wits.";
	else:
		say "     Feeling a need to be filled, you push aside some books on the nearby reading desk and hop up onto it. With your legs raised, you give Hayato a wanton gaze, telling him to get to work. Holding your cheeks spread, your tight ass is on tempting display for the muscular oni. Between the teasing and the tantalizing offer, he cannot refuse and moves into position.";
		say "     Taking his cock in hand again, you get him lined up and tell him to stick it in you. Having gotten yourself quite worked up for it, when he starts slow, you don't want to wait. Giving his large length a tug while pulling him forward with your legs around his strong sides, you growl that you told him to stick it in you. Obediently, he doesn't hold back and thrusts firmly into you, driving a good portion of his impressive manhood into you. You cry out in delight and grind over his red rod, demanding more - a request he's eager to fulfill, pumping until it all is filling you full.";
		say "     Each thrust of that mighty cock has you [one of]moan[or]groan[or]whimper[or]cry out[at random], your inner walls squeezing around it in over-stretched ecstasy. He has an expression of lustful delight that you can clearly read upon his fearsome face - and you can't help but feel a swell of pride[if Player is male] (and of your cock[smn])[end if] at the knowledge that you introduced him to such pleasures. These thoughts drive you to push him to orgasm by working your hips and wet hole around his crimson rod while pulling him harder into every thrust.";
		say "     When it all becomes too much for the [if lust of Hayato + Libido of Hayato < 5]inexperienced [end if]oni, he grabs the desk with his claws hands. You can hear the scrape of his claws and the cracking of cheap wood along with his climactic growl as he unleashes his hot seed into your stuffed asshole. Liquid heat pours into your rectum and floods your bowels as his hefty balls deliver their heavy load unto you. The constant pulsing throbs of his spurting shaft and the hot flow of his semen [if Player is male]sends you over the edge and you cum as well, spraying your gooey [Cum Load Size of Player] load across your front[else]has you moaning and squirming in delight[end if]. By the time he's drained, your belly feels full and warm with his load. You run a hand over your [if scalevalue of Player < 4]stretched[else]full[end if] tummy as you unlock your legs and let your spent lover stumble to the ground with a sigh of sexual satisfaction. You reach down and lightly stroke his thick rod, telling him what a fine job he did.";
	increase Libido of Hayato by 1;
	NPCSexAftermath Player receives "AssFuck" from Hayato;

to say hayatosex5:
	if HayatoHunger is 0:
		say "     Deciding it's time for you to take your turn atop the docile oni, you keep stroking his cock as you gently guide him over onto all fours. It is not until you're moving your own erection against his ass that he realizes your intent and shifts to get back up. Giving his cock a firm squeeze, you tell him that you'd let him be on top the first time, so it's only fair that you get a turn. Whether it's his good nature or lingering effects of the chastity belt is unclear, but he relents and accepts taking a turn on bottom when you tease his manhood a little longer.";
	else:
		say "     In the mood to have another go at the docile oni's ass, you continue playing with his cock while guiding him over onto all fours. He shows little reluctance this time, accepting your unspoken request by raising his red-skinned bottom and bracing his strong body. You smile at this and caress his enlarged cock, [one of]telling him that you appreciate the view[or]teasing about what a fine bottom he's becoming[or]causing him to moan with need[or][if anallevel is 3]slipping a lubed finger into his anus to spread him open[else]teasing his crinkled hole[end if][or]tantalizing him with your shaft between those muscled cheeks until he begs for it[in random order].";
	say "     You press your cock against his back door, taking your time to coax it open slowly[if HayatoHunger is 0] for his first time[end if]. You're quite hard and throbbing as you ease [if Cock Length of Player > 2]inch after inch[else]your small shaft[end if] into him, letting your pre get his hole slick. He whimpers [if Cock Length of Player < 12]a little[else]momentarily[end if] at first while balling his clawed hands into fists as he grows used to the penetration, but pushes back onto your manhood all the same. Keeping a grip on his cock the whole time, you continue stroking him, further encouraging him to press on. And from how rock hard it's gotten, you can tell he's enjoying it quite a lot.";
	say "     [if Cock Length of Player > 36]After managing to sink fully into him, even his large, muscular torso's been stretched somewhat by your massive manhood[else if Cock Length of Player > 24]After managing to sink fully into him, you can feel a roundness pressing his strong abs outwards as they're stretched outwards by your hefty manhood[else]With your manhood sunk fully into him, you can feel his tight hole squeezing down around you[end if][one of]. Draping yourself across his back and gripping your free arm around his chest, you throw yourself into action and start pounding away at that ass of his. Taking delight in how he moans, growls and pants with excitement, you [if scalevalue of Player > 3]lick and nibble at his ear[else if scalevalue of Player is 3]nuzzle and kiss along his neck and shoulders[else]nuzzle against his back[end if][or]. Gripping his meaty rear, you knead the firm buttock as you slowly build up the speed of your thrusts. You ease him from thrusts that are frustratingly slow that have him longing for more, up through a steady and enjoyable rhythm until you're pounding him hard and fast near the end[or]. Placing your other hand on his heavy ballsack, you rub and caress them while you thrust into him with a good, steady rhythm that soon has him panting with excitement[if CockName of Player is not listed in infections of InternalCockList]. You even rub his scrotum against your own, teasingly making the balls touch to get him to blush a deeper crimson[end if][in random order]. Your continued pumping of his pre-drooling penis is finally rewarded when he growls and blasts thick streams of gooey seed across the floor. As he climaxes, Hayato's rectum spasms and clenches like a vice around your cock, driving you to paint his insides with your [Cum Load Size of Player] load. Left sticky and panting, he flops onto the floor when you pull out of him, the scary demon ogre reduced to orgasmic bliss by the ass-fucking he's received.";
	if HayatoHunger is 0, now HayatoHunger is 1;
	NPCSexAftermath Hayato receives "AssFuck" from Player;

to say hayatosex6:
	setmonster "Red Oni";
	choose row MonsterID from the Table of Random Critters;
	say "     Suddenly however you're shoved against the nearest wall, proving that the oni is not compliant at all. 'So, remember how I said I'd like to take charge during some of our... sessions?' He growls, brushing his manly features against your [bodydesc of Player] body. You definitely recall this, as you had been fighting other mutants like him at the time. While you're thinking back, the big guy in front of you is leaning over you and practically brushing his cock against your [if scalevalue of Player < 3]chest, the size difference forcing him to wrap his big arms around you to keep you in his grasp and against the wall. The oni smirking down at you, shivers going down your spine[else if scalevalue of Player is 3]waist, allowing him to pin you against the wall and give you a fierce grin[else]own crotch leaving the two of you face to face, causing him to give you quite the feral grin[end if]. Before you can even react, you're flipped around and bent against the wall, your face pushed flat.";
	say "     Whatever clothing you're wearing, if any is quickly removed in a rapid fashion by the horny oni, as his clawed hands grip at your [if scalevalue of Player > 3]rather plump ass cheeks, spreading them apart and teasing your puckered hole with his cock, the tip pushing in easily but not all the way[else if scalevalue of Player < 4 and the player is not twistcapped]small ass cheeks, spreading them apart to poke at your wrinkled hole with his cock. It takes some effort to push the tip in due to the size difference but he manages, however, he doesn't shove in all the way[else if Player is twistcapped]small ass cheeks, separating them from each other to put his tip at your hole. Surprisingly he easily pushes in rather easily but doesn't go in all the way[end if]. Not feeling the full length of it in you causes you to give out a groan of need which in turn makes Hayato chuckle at you. 'How about you beg for it slut?' The oni demands, turning the tone he used on the others onto you. Rather instantly your face flushes with emotions, most of it you're sure is lust, but none the less what he says gets to you.";
	WaitLineBreak;
	say "     Wanting to feel all of him in your hole you acquiesce to his demands, vocally begging for his cock. This causes Hayato to chuckle in triumph before he starts to push in agonizingly slow, each inch bringing new sensations to your body. His ministrations were lighting your senses on fire, causing you to practically moan like a whore, which makes the laugh you heard earlier deepen in timber. 'Looks like someone's getting into it, I approve slut,' he says, an audible grin in his voice. Despite the sweet long time he takes to push himself all the way in, Hayato eventually is balls deep in you, a sensation that makes you feel absolutely wonderful. However, that doesn't last that long as he soon pulls out all the way to the tip.";
	say "     As soon as you let out a whine from the loss of the earlier feeling he chuckles once more, clearly enjoying teasing you. 'Na ah, I want you to beg once more but this time for me to fuck you... to slam into you repeatedly, nice and hard.' Hayato demands once more, but this time with a more stringent request. You inwardly groan but realize you won't get what you want unless you do it. So, in a raspy voice, filled with lust and carnal desire, you moan for him to ravish your hole with his large cock, to practically fuck your brains out till almost nothing is left. Your words have a massive effect on your Oni friend as a primal growl reverberates behind you before you feel him whispering in your ear. 'Well, I'd be remiss if I didn't help my slut out after such a passionate request,' the whisper said in such a deep, husky tone.";
	WaitLineBreak;
	say "     Right after he finishes saying that, you're shoved once more against the wall but this time so that you're bent over. He quickly takes advantage of your shock to slam his cock all the way into you, a loud whorish moan slipping from your mouth. Unlike last time, the Oni doesn't stay inside you, instead he pulls out and then pushes back in, setting a rapid pace to fucking you, using his impressive strength to hold your arms in place as he does this to make sure you don't move. All the while this happens, the sounds of sex fills the area, from the sloshing of precum in your hole as he pulls in and out to the sound of his balls slapping against your cheeks. If it was just that, you would be fine but the scent of intercourse also fills the room, putting you into a haze and somewhat blanking your mind.";
	say "     The blank-minded state causes you to push your hips back, as much as you can while being pinned, so as to meet his thrusts. Hayato appears to appreciate that as he leans over your [bodydesc of Player] body and growls as he lightly bites your neck and begins to thrust harder. [if scalevalue of Player < 3]The sight, if anyone came across it would be hilarious as you don't actually fit nicely under him but the Oni manages to fuck you rather well[else if scalevalue of Player is 3]The sight, if anyone came across it would be cute (despite the sex) as the Oni has to arch his back to fuck you and bite you at the same time[else]If anyone came across the current scene they'd be feeling a little steamy seeing two quite big people going at it, especially how roughly your Oni friend is fucking you[end if]. But despite everything, you're enjoying all of it, moaning and groaning, and practically rutting back against your friend. You are utterly loving Hayato dominating you the way he is now and can't get enough of it.";
	WaitLineBreak;
	say "     However, every good thing has to come to an end, which this one is signified by the swelling of the almost rock hard cock you can feel pistoning in and out of your hole. As Hayato approaches his climax he lets out a loud growl before slamming into you completely all the way and biting into your neck, surprisingly careful enough as not to draw blood. Soon after burying himself balls deep, you feel warm cum filling you rapidly in large amounts, proving that the Oni is one virile male. The sensation of being filled [if Player is male]causes you to moan in your own climactic pleasure as you spill your [Cum Load Size of Player] load all over the wall you're bent against[else]has you groaning and moaning in ecstatic pleasure[end if]. When you can feel your dominant partner finish cumming he pulls out of you [if scalevalue of Player < 4]causing cum to pour out of you in vast quantities[else]causing you to leak small amounts of cum[end if]. Barely managing to turn around, you can see him smirking at you. 'You did well slut, I definitely would love to try this again,' he says, chuckling in his deep voice. You nod shakily with a smile as you collect yourself. Hayato on the other hand goes back to where you started this whole thing.";
	NPCSexAftermath Player receives "AssFuck" from Hayato;

to say hayatosex7:
	say "     Before you can do what you want though, suddenly you're pushed to the ground with a grinning oni looking at you. 'I think it's time for you to take care of me this time,' he says in a dominant tone that tells you he's taking charge. [if scalevalue of Player < 3]He orders you onto your knees and leans onto the wall so that you are face first with his crotch[else if scalevalue of Player is 3]He leans against the wall so that the position you're in makes you face first with his crotch[else]With how he's standing, your face is positioned a few inches from his crotch[end if]. The manly musk of his cock emanates and reaches you, bringing you into a somewhat sexual haze as you push your face into the cloth that covers his impressive manhood. Your actions cause the Oni to chuckle at you and hold you against his hardening length.";
	say "     However, it appears that your partner in this dalliance isn't going to be patient for long as he unties the knots that keep his loincloth in place. Quickly after it drops to the ground, revealing his large rock hard cock. 'Get to work slut.' He orders rather gruffly. The demand is something you don't mind at all, gladly moving forward and licking a long strip from his balls to the tip of his bulbous head, lapping up any leaking precum, savoring the taste. Your actions cause Hayato to let out a deep groan that just encourages you more as you move on down to his balls and take one of them into your mouth. 'That's right you whore, wash my balls with your tongue, I bet you're enjoying this,' The red skinned humanoid moans, pushing your head closer against his crotch.";
	WaitLineBreak;
	say "     Soon after he pulls you off his balls, the one orb in your mouth popping out. 'I think it's about time you get to the main course, don't you?' Hayato says with a chuckle as he positions the tip of his cock at the entrance of your mouth. Gladly opening for his hard length, it slides on in, the precum starting to spill down your throat. Eager to begin you start swirling your tongue around the Oni's large dick, managing to gather some of his fluids and savor the taste. On your partner's end he slowly inches his cock bit by bit into you, until it hits the back of your throat. With a thinking look on his face that quickly turns to a smirk he grabs a hold of your head before yanking.";
	say "     Quite quickly does the head of his dick pop past your gag reflex. This allows him to push further down your throat until his balls rest against your chin, a feat you don't know whether to be proud about or worried for what's going to happen next. Before you can do either however, Hayato takes control of the situation and quickly pulls you off his cock before rapidly dragging you back down. It soon becomes obvious that the Red Oni's intent is to use your face as a makeshift fleshlight, swiftly fucking your face with strong hip thrusts, caring more about his need to get off than your need to breathe, although he does give you an occasional few seconds every so often.";
	WaitLineBreak;
	say "     As minutes go by with the strong Oni roughly using your face you can tell he's getting closer and nearer to his climax. Although despite proof of that, he has a mischievous look on his face that tells you he has something up his sleeve. What it is, you don't possibly know at the moment but something stirs in you, making you feel an urge to see what he has in store for you. Soon enough you feel Hayato's balls tighten against your face during one of the moments they slap against your face but before he can shoot into your mouth he pulls out, leaving you rather confused. With a smirk the Red Oni begins to masturbate furiously as he speaks one line to you. 'I think a paintjob would do you nice,' he says, dominance oozing from his tone.";
	say "     Seconds later Hayato orgasms, his cum releasing itself all over your face in ropes, coating you in large amounts. [if Player is kinky]You rather eagerly scoop the jizz off of yourself and into your mouth, moaning at the taste. This causes your friend to let out a loud chuckle at your actions. 'You're such a slut, you know that, don't you?' he says with a smirk in your direction[else]Sitting there with the dominant male's sperm on you seems right and you don't move to wipe it off. This causes your friend to chuckle loudly. 'Ah, I was right, it is a nice look on you,' he says a wide smirk aimed in your direction[end if]. A few minutes later though he tosses you a towel. 'You might want to clean up before it dries.' Hayato says moving to sit back down. [if Player is kinky]Taking the towel, you wipe the leftover cum off your face before looking over at him. You then shrug and just toss the towel down next to him, leaving him to what he was doing before[else]You accept the towel and wipe the cum off your face and then look in his direction. Shrugging you just toss the towel next to him and then head off, leaving him to what he was doing before[end if].";
	NPCSexAftermath Player receives "OralCock" from Hayato;

Section 7 - Events

Table of GameEventIDs (continued)
Object	Name
Noh Mask	"Noh Mask"

Noh Mask is a situation.
ResolveFunction of Noh Mask is "[ResolveEvent Noh Mask]". Noh Mask is inactive. The level of Noh Mask is 9.
Sarea of Noh Mask is "Campus".
when play begins:
	add Noh Mask to BadSpots of FurryList;
	add Noh Mask to BadSpots of MaleList;
	add Noh Mask to BadSpots of FemaleList;

to say ResolveEvent Noh Mask:
	if HP of Hayato is 11:
		say "     Recalling Nermine's mention of the noh mask she wants, you search around some likely possibilities for where it may be. You fortunately find it hanging on the wall of the Japanese Language professor's office. Unfortunately though, that office is busily occupied by a trio of felines in ninja outfits with a humanoid female pinned to the desk beneath them. The woman's clothing is torn, exposing much of her exaggeratedly proportioned body. Her eyes are very large and visible through her overhanging bangs of blue hair. As the ninjas run their greedy paws over her smooth skin and grope her breasts, she moans and squirms. 'Ecchi! No, bad kitties!' she says before breaking down into a long moan as one of them slips a pair of fingers into her wet pussy.";
		say "     It looks like they'll be here for a while, so you'll have to deal with them if you want to get the mask.";
		say "     [bold type]Shall you attack the ninjas?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[nohmaskninja]";
		else:
			say "     You decide to postpone getting the mask, at least for now. Hayato will have to wait a little longer.";
			now HP of Hayato is 12; [didn't fight]
	else if HP of Hayato is 12: [lost or didn't fight]
		say "     Returning in search of the Japanese noh mask, you find them still going at it with the anime babe. She's pinned down onto the desk by one of them as he pounds into her. The others are [one of]groping her large boobs[or]taking turns getting blow jobs[or]recovering after fucking her[at random].";
		say "     It looks like they'll be here for a while, so you'll have to deal with them if you want to get the mask.";
		say "     [bold type]Shall you attack the ninjas?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "[nohmaskninja]";
		else:
			say "     You decide to postpone getting the mask, at least for now. Hayato will have to wait a little longer.";
			now HP of Hayato is 13;
	else if HP of Hayato is 13:
		say "     Returning in search of the Japanese noh mask, you find the anime babe sitting on the office desk. She's flipped up her short skirt and is fingering herself wildly. 'Oh, there you are!' she exclaims upon spotting you. 'Reconsidered helping me with that scene, have you?' she asks with a naughty grin. 'I could really go for it right now.' And with that, she's off the desk and advancing towards you.";
		say "[nohmaskanimebabe]";
	else:
		say "ERROR-Hayato-[HP of Hayato]E: This event (Noh Mask) should not be available.";
		now Noh Mask is resolved;


to say nohmaskninja:
	say "     As you advance of the group, one of the ninjas notices you with a flick of his ear, turning quickly to face you. The others continue to molest the pinned woman, leaving you to their comrade while they rape the squirming, moaning female.";
	challenge "Ninja Cat";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Dispatching the first of the ninjas, you advance. The second one breaks off, moving to intercept you.";
		challenge "Ninja Cat";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the second feline dealt with, you press onwards. The last of them is forced to release the anime hottie. When he turns to face you and slips a paw into his robes, you expect another volley of shuriken to come, but what comes out instead is a smoke bomb. Smashing it at the tabby's tabbied feet, he is enveloped in a cloud of smoke and then is gone. You spin around, making sure he isn't going to jump you from behind, but it's soon clear that you've driven them off. You relax and move to the desk to help the poor woman.";
			WaitLineBreak;
			say "     [bold type]SMACK![roman type][line break]";
			say "     You tumble comically into a corner of the room, sent for a loop by the woman you just [']rescued['] with a big paper fan. 'Baka! You ruined my big scene. Being raped by ninjas is really big this season. And just when it was getting good too... though maybe we've got enough budget left for you and I to have some fun climax.' And with that said, she rushes at you with giggling glee.";
			say "[nohmaskanimebabe]";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After your defeat by the shadowy feline, you are driven from the office so they can focus on enjoying their main prize. As you leave, you can hear the giggling cries of the anime babe. 'Oh no! Please don't touch me there. Yes, just like that.' You decide it would be best to try again later.";
		if HP of Hayato < 12:
			now HP of Hayato is 12; [lost]
	else if fightoutcome >= 30:
		say "     Fleeing from the shadowy feline, you dash back down the hall. As you run, you can hear the giggling cries of the anime babe. 'Oh no! Please don't touch me there. Yes, just like that.' You decide it would be best to try again later.";
		if HP of Hayato < 12:
			now HP of Hayato is 12; [lost]


to say nohmaskanimebabe:
	challenge "Anime Babe";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having beaten and dealt with the anime babe, you head over to the wall behind the desk and pluck the noh mask off the wall. It is a porcelain mask depicting the stylized face of a geisha girl. The expression is one of faint amusement or coy playfulness. Grabbing some paper from the waste bin, you bundle some padding around it and pack it away safely. Hopefully Nermine will be satisfied with this and you'll be able to get the key. From thinking of the key, your mind drifts to Hayato and his muscly figure, looking forward to enjoying some fun with him once you can get him out of the restraint.";
		now HP of Hayato is 14;
		now Resolution of Noh Mask is 1; [Defeated Anime Babe, Got Mask]
		now Noh Mask is resolved;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After the anime babe's had her fun with you, she splays out across the desk and gives a satisfied moan. 'Oh, that was a wonderful scene. Certainly a fine replacement for the ninja one. Now, was that all you came here looking for?' Still recovering from the raw, lustful sex, you point up to the mask, saying that you need it. She smiles says that you can take it as payment for such a good adult-action episode.";
		say "     Under the effects of your recent contact with her, that makes more sense to you than perhaps it ought to. But regardless, you get up and take the noh mask from the wall. It is a porcelain mask depicting the stylized face of a geisha girl. The expression is one of faint amusement or coy playfulness. Grabbing some paper from the waste bin, you bundle some padding around it and pack it away safely. Hopefully Nermine will be satisfied with this and you'll be able to get the key. From thinking of the key, your mind drifts to Hayato and his muscly figure, looking forward to enjoying some fun with him once you can get him out of the restraint.";
		now HP of Hayato is 14;
		now Resolution of Noh Mask is 2; [Lost to Anime Babe, Got Mask]
		now Noh Mask is resolved;
	else:
		say "     Fleeing from the buxom woman, you dash back down the hall. As you run, you can hear the pouting. 'Oh, who am I going to have my big finale scene with now?' If you're to get the noh mask you wanted, you'll have to try again later.";
		now HP of Hayato is 13;
	now fightoutcome is 0;

Section 7-1 - Youkai Lair Quest

Table of GameEventIDs (continued)
Object	Name
YokLairUnlock	"YokLairUnlock"

YokLairUnlock is a situation.
ResolveFunction of YokLairUnlock is "".
Sarea of YokLairUnlock is "Nowhere".

[ --- Event for Youkai Lair - Xaedihr Path ---]

Table of GameEventIDs (continued)
Object	Name
YokLairXaedihr	"YokLairXaedihr"

YokLairXaedihr is a situation.
ResolveFunction of YokLairXaedihr is "".
Sarea of YokLairXaedihr is "Nowhere".

[ --- Event for Youkai Lair - Mogdraz Path ---]

Table of GameEventIDs (continued)
Object	Name
YokLairMogdraz	"YokLairMogdraz"

YokLairMogdraz is a situation.
ResolveFunction of YokLairMogdraz is "".
Sarea of YokLairMogdraz is "Nowhere".

[ --- Event for Youkai Lair - Lilith Path ---]

Table of GameEventIDs (continued)
Object	Name
YokLairLilith	"YokLairLilith"

YokLairLilith is a situation.
ResolveFunction of YokLairLilith is "".
Sarea of YokLairLilith is "Nowhere".

[ --- Event for Youkai Lair - Nermine Path ---]

Table of GameEventIDs (continued)
Object	Name
YokLairNermine	"YokLairNermine"

YokLairNermine is a situation.
ResolveFunction of YokLairNermine is "".
Sarea of YokLairNermine is "Nowhere".

[ --- Youkai Lair Event --- ]

Table of GameEventIDs (continued)
Object	Name
Youkai Lair	"Youkai Lair"

Youkai Lair is a situation.
ResolveFunction of Youkai Lair is "[ResolveEvent Youkai Lair]". Youkai Lair is inactive.
Sarea of Youkai Lair is "Capitol".

to say HayatoDiscussLair:
	say "     You wanted to discuss your options on finding this odd lair with Hayato, so you bring up the subject to him and ask about what he thinks.";
	WaitLineBreak;
	if YokLairUnlock is not resolved:
		if Resolution of YokLairNermine < 99:
			say "     'As I said before, anyone with knowledge on demons and spirits could know something, or be able to help us. I can certainly think of someone who would know a lot about stuff like this... The [bold type]jackal woman[roman type] in the [bold type]Mall[roman type], as all sorts of odd trinkets end up somehow either in her possession or something similar. I think she would know how to find a place like this, if she doesn't know its location, already...' Hayato seems confident that [bold type]Nermine[roman type] would be able to help you.";
		if Resolution of YokLairNermine is 0:
			now Resolution of YokLairNermine is 1;
		if demonologist is tamed and Resolution of YokLairXaedihr < 99:
			WaitLineBreak;
			say "     You also mention that you actually know a certain demonologist who might be able to help you, and the red oni seems quite interested. 'Someone who's your friend, you say? That would be a good option. Better that than having to resort to the [']help['] of actual demons.' he said, putting on a quoting tone on the [']help['] word. You are very aware that most demons have selfish motives, so [bold type]Xaedihr[roman type] could very well be one of your safest options.";
			if Resolution of YokLairXaedihr is 0:
				now Resolution of YokLairXaedihr is 1;
		if Hellfire Club is known and Resolution of YokLairMogdraz < 99:
			WaitLineBreak;
			say "     Speaking of demons, you also know a certain demon lord who could be of assistance, even though you cannot help but be afraid of any terms he may come up with. Hayato doesn't seem too thrilled by this. 'A demon lord? I... I'm not sure about that. It's a powerful demon you're talking about... I'm pretty sure his help won't come cheap, if you understand what I mean...' He is right, and you know it. Hellfire Demon Lord [bold type]Mogdraz[roman type] is a businessman who prioritizes profit and self-benefit over anything else. If you intend to get help from him, you might have to prepare yourself for his quite expensive demands. But you might also find in this an opportunity to gain his favor if it interests you, on the other hand...";
			if Resolution of YokLairMogdraz is 0:
				now Resolution of YokLairMogdraz is 1;
		if HP of Lilith is 1 and Resolution of YokLairLilith < 99:
			WaitLineBreak;
			say "     Still on the subject of demons, you happened to have met a powerful demoness who could help you find this place and enter it, with some risks, seeing that she is, indeed, a demoness. Hayato doesn't seem too thrilled by this. 'A powerful demoness, you say... Well, I'm pretty sure she's going to ask for something in return, and that ain't gonna be cheap, if you understand what I mean...' He is right, and you know it. Dealing with demons is always a shot in the dark, and it has the tendency to ricochet. If you do intend on asking [bold type]Lilith[roman type] for help, make sure you are prepared for her potential demands.";
			if Resolution of YokLairLilith is 0:
				now Resolution of YokLairLilith is 1;
	else if YokLairUnlock is resolved:
		say "     'All we have to do now is scout for an entrance to the [bold type]Youkai Lair, in the area surrounding the Capitol Building[roman type], right? Don't forget to bring that [bold type]visage[roman type] thing with you. I'll meet you there once we're ready to go.'";

[ --- Youkai Lair - Xaedihr Path ---]

to say XaedihrTalkYokLair:
	say "     Before you approach the sorcerer with this subject, you go call Hayato to join you...";
	WaitLineBreak;
	say "     The red oni stands behind you as the conversation is about to begin, but before you get the chance, he puts a hand over your shoulder in order to get your attention for a few seconds. 'I... Just wanted to thank you. I'm not sure I could've done any of this without you.' he says, though you remind him that nothing has been done yet, and you still have a long way to go. While Xaedihr might be able to help, a lone sorcerer can only do so much. 'I'm aware, but having reached this far is already an accomplishment. I'm certain he'll be reasonable enough to help us take care of this matter, with us having one common goal.' Well, with that out of the way, nothing stops you from presenting the case to the dark mage, who stands in his usual corner taking notes on his personal tomes and reading books.";
	say "     You walk towards him with the red oni behind you, and call him over to take a seat, as this is going to be a long conversation. 'Oh, something serious, isn't it?' asks Xaedihr, with a tone you would expect to be sarcastic at first, but after seeing the look in your faces, he actually takes it seriously. 'Alright, what's the matter?' he asks, while still standing. You look over Hal, and let him do the explaining. 'You should know by now how I ended up transformed into this, correct?' inquires the oni, as the mage gives him a sigh. 'If this is about turning you back to a human or something, I'm afraid that would require just too much, if it is even possible without permanent damage. You're not as shapeshiftable as a certain someone, here...' the sorcerer exclaims, as he shifts his gaze towards you. But he quickly realizes that is not the case, as he is answered with silence...";
	WaitLineBreak;
	say "     'Hm... It's not about that, I see.' he makes a pause, as he now takes a seat. You have arranged a neat talking spot with a few chairs around a table that you could put together, though Hayato can only sit on the floor due to his size... 'Alright, what is this all about?' Now that you've got the sorcerer's full attention, Hayato begins to explain everything from the beginning. How he was turned, how did he meet you and how things evolved from there, to when you reported sightings of wild red onis and after you both came to the conclusion that some sort of lair should exist around here, where all the onis are coming from. He mentions the particular detail that he was turned by a specific oni, an even larger one than himself. 'And you are telling me this because...?' he asks, expecting a quick follow-up.";
	say "     You intervene here, claiming you thought that, due to his unique abilities, he might be able to help you locate this place and do something about it, to keep the onis from assaulting the city. You explain that you suspect they are raising an army of onis inside, by assaulting their victims and turning them into more and more red onis. Things wouldn't look good if this got out of hand. He lets out another sigh. 'Now you know why I hate most demons... They only cause trouble when they lose the notion of limits. Anyway... You want me to help you locate this place, and then what? You want to go in there, make your own justice...? What is this all about?' he asks you. As you look back to Hayato, you consider an answer...";
	LineBreak;
	say "     [bold type]What drives you to locate this dangerous demon lair[roman type]? You get a feeling the sorcerer expects you to have a reason he considers valid...";
	say "     [link](1)[as]1[end link] - For revenge. You want to teach whoever did this to Hayato a lesson.";
	say "     [link](2)[as]2[end link] - For fun. It should be a blast kicking some oni ass.";
	say "     [link](3)[as]3[end link] - To protect the city. These demons are a danger to everyone.";
	say "     [link](4)[as]4[end link] - To help Hayato. Do you really need a reason other than to offer him closure?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] if your motives are centered around revenge, [link]2[end link] if it is just for fun, [link]3[end link] if it is to protect the city or [link]4[end link] if you want to say you simply intend to help Hayato solve this matter.";
	if calcnumber is 1:
		LineBreak;
		say "     You answer that you simply intend to avenge Hayato. You want to show that oni who turned him into one of them that he should mind his business and get back to where he belongs... You want him to regret having done what he did to him and all those people he assaulted. Xaedihr, however, does not seem too impressed by your response. 'I figured. This is just a personal vendetta, isn't it? Forget it, then. I'm not allowing yourselves to get killed. Or worse, to join them.' Hal steps forward and intervenes 'What? No, please! You've got to help us find that place! They're dangerous! We can't just let them roam freely, we've got to do something...!'";
		say "     The sorcerer closes his eyes and shakes his head. 'Not with your impulsive actions. I might look into this lair myself, and if I find it, I will seal it away. Until then, I suggest you forget about it. Consider your quest resolved.' He says nothing more, and closes the subject definitely.";
		WaitLineBreak;
		say "     You look back at the red oni, and he cannot hide the disappointment in his face. 'I don't doubt your friend's capabilities, but...' he sighs, without finishing his sentence. 'Maybe we can find another way? I'm sure [bold type]someone else might be able to help us[roman type] locate that damned place...'";
		say "     It seems you have failed to convince Xaedihr to help you, but there are more people who might assist you. Perhaps [bold type]other powerful demons, or a knowledgeable sorceress[roman type]... You do know one, right? In the [bold type]mall[roman type] tending to a shop?";
		now Resolution of YokLairXaedihr is 99; [failed to earn his assistance]
	else if calcnumber is 2:
		LineBreak;
		say "     Do you really even need a reason other than just wanting to get there and kick some demon ass by yourself? You think it would just be fun messing with these creatures and teaching them their place. Now, you do make Xaedihr laugh with your statement. 'Oh, you're funny... I'm sure the demons would also find you funny if you told them that. You want to enter their territory and just kick them in the balls like it's all a breeze? By all means, go on ahead!' - he then shifts his tone to a much more serious one - 'Just not with my help, though. Find someone else to get yourselves killed. End of discussion.' He breaks the conversation and abandons any further interaction with you and Hal.";
		WaitLineBreak;
		say "     You look back at the red oni, and he cannot hide the disappointment in his face. 'What kind of reply was that? Do you really want to just...?' he sighs, without finishing his sentence. 'Ah, well... Maybe we can find another way? I'm sure [bold type]someone else might be able to help us[roman type] locate that damned place...'";
		say "     It seems you have failed to convince Xaedihr to help you, but there are more people who might assist you. Perhaps [bold type]other powerful demons, or a knowledgeable sorceress[roman type]... You do know one, right?";
		now Resolution of YokLairXaedihr is 99; [failed to earn his assistance]
	else if calcnumber is 3:
		LineBreak;
		say "     Of course, the only valid reason you can see is that you want to protect the city against this menace. In no way you could leave this matter unattended knowing the danger it poses to everyone else. Xaedihr seems to like this response, and compliments you with a smile. 'Wise, my friend. That is a good enough reason to take things into your own hands. But I must warn you, places like this are very, very dangerous. You might lose your soul as soon as you enter, and the same goes for your friend... If you want to do this, you have to be absolutely sure you bring enough firepower to face those powerful demons in case things go wrong.' Both you and Hayato pay close attention to his words as he explains things in detail.";
		YoukaiLairXaedihrPath1;
	else if calcnumber is 4:
		LineBreak;
		say "     Do you really need any reason other than wanting to help Hayato solve this issue once and for all? You wish to provide him the closure he deserves and get rid of this menace. For his sake and for the sake of others who might face the same fate as him, or even worse. Xaedihr, however, does not seem too thrilled by your motivations. 'A stubborn motive, and a quite dangerous one to have, as well. You wish to bring your friend closure by putting you both in danger, and that also means you have no aim other than just getting it done. You might end up having a bad time there, not to mention how powerful these demons can be if you go unprepared... But I can't help but feel sympathetic for your reasons.'";
		say "     The sorcerer makes a pause, considering this matter carefully. 'Anyway, you are not being a total moron about it, so... I guess I'll help you. Under one condition, though. You must prepare. Bring enough firepower to face your enemies in case things go wrong, and remember there are people who would appreciate your success. This is not just about closure, this is about all the people who are under the threat of an imminent demon invasion.' With that said, now both you and Hayato pay close attention to his words as he explains things in detail.";
		YoukaiLairXaedihrPath1;

to YoukaiLairXaedihrPath1:
	WaitLineBreak;
	say "     'Finding this place is easy for me, but in order for you to be able to breach such a dangerous place, you have to think wisely... What do you think a bunch of demonic creatures and evil spirits would do if they saw a mortal walking into their domain, you wonder?' He makes a pause, looking at you both, and resuming before you can give out an answer. 'It doesn't really take a genius to realize what would happen. They would consume your soul, condemn you to an eternity of pain... It's not as tempting as becoming a slave to lust demons, by any means. These are the real deal.' His expression presents a serious tone to his words as he explains the recommended procedure, picking up his tome and flipping to very specific pages.";
	say "     'First of all, you have to look like you are one of them. This could be achieved in many different ways... But... right now you only have one possible way.' He takes a couple of seconds to read something on his book, and then turn to you. 'By utilizing a [bold type]visage[roman type] that I am, fortunately, able to craft. You will look like one of them without the need to become transformed the way Hayato was. This would also solve the next problem I am going to refer to. Your [bold type]essence[roman type], which is something your friend lacks despite his appearance and, which in turn, you would lack as well, will be a dead giveaway to them. This visage will provide that and more, given that you acquire what I need.' He then turns to Hayato, looks at him from head to feet, then back at you. 'It's not like your friend is a fully fake oni, by any means. It's just that the essence he carries through the transformation is negligible. It can be enhanced, however. Safely. And I do happen to know how without having to send you into a regretfully painful errand.'";
	WaitLineBreak;
	say "     Xaedihr then takes a moment to breathe, and follows up with a sigh... 'Anyway... I will have to extract some semen from the red oni.' Hayato's eyes widen at those words, as they were quite unexpected coming from a person like the dark mage himself. But before he can say anything, the half-demon continues 'I would of course use a technique that would make short of his stamina. I understand if you don't agree with this procedure, but it is the only option.'";
	Linebreak;
	say "     With the half-demon's proposition in the air, you only have to consider if either you want it or not. 'So, shall I begin?' When you turn to Hayato, he lets you know he is fine with it, and actually seems a little curious.";
	say "     ([link]Y[as]y[end link]) - Let Xaedihr extract Hayato's [']essence['] using that quite pleasurable technique.";
	say "     ([link]N[as]n[end link]) - You don't agree with this. Do not allow things to proceed.";
	if player consents:
		Linebreak;
		say "     After having considered your options, you decide to let the mage have a go with Hal, since he did not seem to mind the idea that much. 'I can work with that. Hayato, please, remove your gear. We shall begin immediately.' Before he could get naked as instructed, Xaedihr's purple tendrils were already emerging from the alternative plane of existence (and from the floor) they belong, in preparation for the task ahead. Hayato feels the need to ask 'Uh, so... How will this...?' but before he can finish, the tendrils wrap themselves around his legs and crawl towards his meat, balls and ass. His eyes widen as one gentle tentacle pokes into his ass and slips itself inside, while a few others wrap themselves around his shaft and nuts, with only delicate squeezing at first.";
		say "     'There is nothing to fear. My tendrils are never aggressive when I don't want them to be, so just relax and enjoy yourself. It will make this procedure more quick.' While the situation seems quite... scientific, the large oni seems to be feeling quite good, as he builds quite the solid erection in a matter of a few seconds. Judging by the look on his face, he never experienced anything like this. Xaedihr turns to you and explains what is happening in high detail. 'So, what my tendrils are doing is simply precise stimulation. By providing the prostate enough poking and rubbing, males are way more susceptible to orgasm, which means they do so much more quickly. All you've got to do is to follow up with the best stroking you can give, and wetness helps a lot. It is sort of what you do when you want to milk a male.'";
		WaitLineBreak;
		say "     You see Hayato barely being able to hold his moaning, with pleasure quite evident in his expression. You notice the tendril in his ass wiggling a lot as the others around his massive cock move and stroke him with amazing dexterity, picking up the pace soon after the oni has been thrown into bliss. 'Would you gather his genetic material for me?' says Xaedihr to you, handing you an empty bottle. 'He must be close, so get there quickly.' Nodding, you walk up to Hayato and try to position yourself in a way you can gather his cum without earning yourself an accidental bath. With enough time and patience, Hayato finally reaches his climax, and shoots a considerable load which, obviously, does not end up completely bottled up.";
		say "     The stream of jizz covers the whole floor and continues far, far ahead... Making a mess of the library's entrance until his powerful orgasm subsides. But you managed to collect enough for the sorcerer, and he sends his tendrils away. You see them slowly crawling back to the floor, unwrapping themselves off Hayato's cock and pulling away from his ass, sliding down his legs and back into non-existence. The oni catches his breath as his senses return to him. 'I... I wasn't prepared for that.' he comments, and you see a slight hint of a smile on Xaedihr's face, but he is quick to return to the matter at hand.";
		NPCSexAftermath Hayato receives "Other" from Xaedihr;
		WaitLineBreak;
		say "     'The reason I insisted on using my way is that, while the semen carries a lot of your essence, it wouldn't suffice. Having my tendrils feeling you allowed me to collect additional material that would ensure the success of this craft. Well, I probably should have said that before, but I wasn't quite sure it would work. It did, however.' he explains to the oni, and then turns to you. 'Anyway, give me a moment while I attempt to craft this thing.' The mage turns to his books and materials in his corner while you wait...";
		WaitLineBreak;
		say "     While that happens, you turn to Hayato, who seems to be dressing himself back while looking at the mess he has done. 'Uh... do you need help cleaning that?' With more important things to care about, you should not be worried about that puddle and trail of oni cum that is just going to start to get dry on the floor, right? Or, perhaps, you should do something about it... Since you have to wait for Xaedihr to finish the crafting anyway, maybe this is a good a time as any to get ready for some cleaning. 'We have to wait anyway, so... I'll help you out with that. It was... fun, though. The way his tendrils touched me... It felt really good... Do you think he does it on request?' he asks you...";
		say "     'I can hear you, you know?' says Xaedihr from his corner, but at the same time, his focus seems unmoved. You suppose he simply just has a great brain for multitasking, maybe. Anyway, you start to clean the mess off your floor and some time passes...";
		WaitLineBreak;
		say "     After some time, Xaedihr returns to you with an odd looking object. 'This is it, the visage. As long as you carry it, you will be perceived as a Red Oni by the inhabitants of that place. And, by the way, the place you are looking for is a [bold type]Youkai Lair, located in the area surrounding the Capitol Building[roman type]. Be very careful while in there. I suggest [bold type]scouting for an entrance and wait for an opportunity[roman type] to go in safely.' he warns you, as he hands you the so-called visage he just crafted.";
		WaitLineBreak;
		say "     [bold type]You have unlocked the Visage Of The Red Oni. Use it to navigate certain areas in the Youkai Lair.[roman type][line break]";
		ItemGain visage red oni by 1 silently;
		WaitLineBreak;
		say "     Before you are ready to leave, Xaedihr still warns you of a few additional things. 'Remember that you're dealing with evil spirits and demons from another realm, and their rules might not be the same as ours. Make sure you inform yourselves well about the youkais and don't do anything stupid. Respect their values, rules and traditions, don't go on refusing offers and being general dickheads while in their domain. And never lose this visage. Without it, you [bold type]are[roman type] doomed, both of you.' All you have left to do is to thank Xaedihr for his help, and looking at Hayato, you let him know that you are all set to go. 'Right' - he replies - 'Let's just hope for the best, now.'";
		now Resolution of YokLairXaedihr is 2; [Youkai Lair unlocked through Xaedihr's Path]
		now Resolution of YokLairMogdraz is 99;
		now Resolution of YokLairLilith is 99;
		now Resolution of YokLairNermine is 99;
		now YokLairUnlock is resolved;
		now Youkai Lair is active;
	else:
		Linebreak;
		say "     You let the mage know you don't want this to continue. Hayato does not say anything, but you can tell he finds that decision quite odd, as it would be a very harmless and easy way to acquire this so called visage. 'Well... Fine! Go about your business, then. We've nothing else to discuss.' Xaedihr dismisses you as quickly as he hears your reply, and turns to his own matters without any regard for what (and if) you have to say.";
		say "     'I... didn't see the problem? I mean, I could have just... you know, done it myself or... He just wanted my cum, right?' You are sure that wasn't as simple as just making the oni cum, but nonetheless, you let him know you have made your decision. Perhaps you can still acquire the help of a real demon, or a certain sorceress in the [bold type]mall[roman type] with better success...";
		now Resolution of YokLairXaedihr is 99; [failed to earn his assistance]

[ --- Youkai Lair - Mogdraz Path ---]

to say MogdrazTalkYokLair:
	now MogdrazDoneTalking is true;
	say "     Before you bring this subject to Mogdraz, you will want to have Hayato present. You arrange a private meeting with Mogdraz and go get your red oni friend to join you in his chambers afterwards.";
	WaitLineBreak;
	say "     The demon lord welcomes you like a proper polite gentleman, allowing you entrance to his meeting quarters where you will have all the privacy you need. Fortunately, the hellfire demons are large creatures as well, so Hayato finds a suitable place to take a seat along with you, facing Mogdraz before engaging in the conversation ahead. 'So, what do I owe you this visit? It is not everyday you offer me a deal I don't know of.' he asks, observing your friend attentively as you are expected an answer. Naturally, there is not much to consider. You are here for his help in breaching a certain place that is highly populated by demons, and you do not know how to find it nor how to enter it.";
	if Resolution of MogdrazRomance >= 8: [Mogdraz is romanced, so he is more willing to help]
		say "     Mogdraz turns his full attention at your request, and begins to think about it. 'Hm... Now, that is quite a request, I have to say. Usually I would not do it without requesting anything in payment, but... Well, I suppose if it is for you... I think I may have a good way to help you.' Hayato is quite impressed at the fact you managed to get a free deal out of the Demon Lord, though perhaps you should have told him you were on romantic affairs with the devil, and that would have helped explain this odd occurrence. 'What you are looking for is a Youkai Lair, located in the area surrounding the Capitol Building. I have several agents on the spot collecting information on these demons and spirits to ensure they are not a threat. If that is what you are worried about... I would personally deal with any unwanted invasion, if I had to. It would harm my business.'";
		say "     That solves one of the reasons, but you would prefer a more solid solution, perhaps. 'And of course, I know what you are thinking. It would also benefit me, so we are both in the same page. Erecting some sort of seal around that lair would be a quite advantageous measure, as it would permanently neutralize a potential invader. That means I would have to provide you means to access their realm and, for once, I don't really know what you might find there... Surely, I could send one of my most trusted allies and that would fix the issue I'm going to talk about soon, but I don't like taking chances. You would do, and... consider that favor a payment for this request, if you will. I'd be be very thankful.'";
		WaitLineBreak;
		say "     When he proceeds to explain the procedure you have to follow in order to breach this Youkai Lair, his expression turns into a serious one as he leans over his desk with both his hands on top. Then he grabs a pencil and a piece of paper, and scribbles something on it, shapes of buildings and other lines that seem to make some sort of map. 'This is its location. Right here, in the center, and underground. Way, way underground... The onis seem to come and go through hidden tunnels with their exits placed across several garages around the perimeter. It seems to me that they have a decent tunnel network that provides them with the mobility and presence they need. My agents have been trying to keep them under control, but we can only do so much, of course.'";
		say "     He then points towards the middle. Not quite on the center, but a little to the side... 'Here is the spot where you should attempt to enter. This particular entrance seems to be less fortified, with only a couple of onis or so keeping guard at all times. They are quite powerful, so I don't suggest that you fight them. Instead, I shall provide you with a [bold type]visage[roman type] that will mask your true identities. I was able to procure a Red Oni visage through the Void Realm that will serve you well, and it will work for both, in case you want to work as a pair. Once you've got it with you, the visage will deceive the demons and spirits into thinking that you are one of the true Red Onis, thus allowing you to pass... Hopefully.'";
		WaitLineBreak;
		say "     Hopefully, he said? That really does not sound reassuring, does it? 'The chances it will work are high, as long as you don't do anything stupid or out of place. Don't refuse any offerings, don't try to escape any traditional ritual, but avoid them in the first place, if you can... Since you won't be able to replicate many of them, I'm sure. In any case, try to inform yourself about these creatures before going into their world, just to be safe. Do not fail, in any circumstance, or this journey will prove disastrous. Do you understand?' With nothing else to ask, you nod positively. 'Good. Scout the entrance around the [bold type]Capitol Building[roman type] and look for an opportunity while you're carring the visages. Do not lose them.'";
		say "     Following his warning, Toron, the bartender, appears from behind you, carrying a strange object that seems to be this so called [bold type]visage[roman type] the Demon Lord has been talking about. He hands it over to you, and you keep it close and safe in your [bold type]inventory.[roman type][line break]";
		WaitLineBreak;
		say "     [bold type]You have unlocked the Visage of the Red Oni. Use it to navigate certain areas in the Youkai Lair.[roman type][line break]";
		ItemGain visage red oni by 1 silently;
		WaitLineBreak;
		say "     With the deal having been finalized, you are escorted out of Mogdraz's Chambers and outside the Club. Hayato follows after you, and while he did not notice anything... off, specifically, he still thinks it is quite odd that Mogdraz did not ask anything in return. 'So, what sort of deal did you have with him? He was so friendly... It gave the me chills, I think I'd prefer if he wasn't! Are, by any chance...?' He does not finish that question, but you do give him the sign that you have [']something['] going with him. Hayato cannot help but chuckle to himself. 'Alright, alright... Guess you are into the big demons a lot, huh...!' With a nod, you let the red oni return to the library as you consider your next steps.";
		move player to Hellfire Club;
		now Resolution of YokLairMogdraz is 2; [Youkai Lair unlocked through Mogdraz's Path]
		now Resolution of YokLairXaedihr is 99;
		now Resolution of YokLairLilith is 99;
		now Resolution of YokLairNermine is 99;
		now YokLairUnlock is resolved;
		now Youkai Lair is active;
	else:
		say "     Mogdraz shows a grin you are too familiar with, a sense of an opportunity crossing his mind along with a hint of judgement. 'Wanting to either save the world or find some closure for a personal reason? How interesting. I may have what you are looking for, but... Such methods require a rather significant commitment, besides... a [bold type]deal[roman type], if you may.' You were sure this was going to happen, as it is the only coin of exchange the hellfire demon lord utilizes to set his trades. 'What you are looking for is a Youkai Lair, located in the area surrounding the Capitol Building. I have several agents on the spot collecting information on these demons and spirits to ensure they are not a threat. If that is what you are worried about... I would personally deal with any unwanted invasion, if I had to. It would harm my business.'";
		WaitLineBreak;
		say "     That solves one of the reasons, but you would prefer a more solid solution, perhaps. 'And of course, I know what you are thinking. It would also benefit me, so we are both in the same page. Erecting some sort of seal around that lair would be a quite advantageous measure, as it would permanently neutralize a potential invader. That means I would have to provide you means to access their realm and, for once, I don't really know what you might find there... Surely, I could send one of my most trusted allies and that would fix the issue I'm going to talk about soon, if we agree on a deal, but I don't like taking chances. You would do, if...' - he then makes a pause, and looks directly at you - 'we agreed on a [bold type]soul contract[roman type] to ensure your loyalty to me.'";
		say "     A soul contract, he says. Hayato's expression shows that he really does not like the idea. 'Either you or your friend, if you care so much for that little thing you carry inside you. I would be, however, willing to take just a portion of your soul, but if your friend prefers to volunteer, I would require its entirety, instead. A mere token of loyalty, as I have previously stated. You shall be provided your freedom as long as your life is allowed to take its natural course. It's as if nothing changed, and you might even live a more... comfortable life. But once death takes you... Well. At least you'll know your fate. Any soul of mine, once it has left its shell... stays with me.'";
		WaitLineBreak;
		say "     'The reason I need this is that the dangers lying in that place are far more concerning than what your minds can even fathom. Your failure would pose a risk to me, and this way, I can have some control over the situation in case things go wrong. We can never be too careful, you know... Having them hold control of either of you could prove catastrophic to my people's safety, as you know of this location... and so would they. This will ensure they won't know. Like I said, a mere token of loyalty.' As Mogdraz is finished with the explanation, he prompts you with a question. 'So, are we doing a soul contract, or... should we dismiss this reunion right away?' he asks, and you are expected to answer now. Your red oni friend clearly disagrees with this deal, but he will let you do what you think is best. He won't agree on giving out his own soul, however, unless you find a way to persuade him.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Accept the deal and choose a procedure[bold type]. Warning[roman type]: there is no way back once you accept it.";
		say "     ([link]N[as]n[end link]) - You would rather keep your souls intact.";
		if player consents:
			Linebreak;
			say "     You feel Mogdraz's joy hearing your words of acceptance, as he enthusiastically replies 'Splendid! Now, you just made my day...!' He then invokes a sheet of paper out of thin air with a set of quill and ink, as it was once done in older times, but before he hands it over, he looks at both you and Hayato before throwing you another question. 'Very well, then, which one of you shall I claim? Or... partially claim.' A grin draws itself across his face, one that would send shivers down your spine by just looking at it. Your oni friend really does not like this, and if you intended on providing his soul, you will still need to persuade him.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Let Mogdraz claim ownership of a portion of your soul.";
			say "     ([link]N[as]n[end link]) - [bold type](Charisma Roll) [roman type]Convince Hayato to hand his soul over to the Demon Lord.";
			if player consents:
				Linebreak;
				YoukaiLairMogdrazPath1;
			else:
				Linebreak;
				say "     Turning to Hayato, you politely ask him if he would be keen on giving out his soul to the Demon Lord. 'Wait, what?! You're not seriously suggesting that I...?' You stop him there, and explain things carefully, that it actually won't matter much as long as he's living, that this is merely a token of loyalty which he does not need to fear.";
				WaitLineBreak;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Charisma Check):[line break]";
				if diceroll + bonus >= 13:
					say "     Your words are well received, fortunately. Hayato seems more at ease, now that you have reassured him. 'I... I still don't like it, but... I guess if there's not much harm in that, after all... Uh... well... Where do I have to sign, then...?'";
					say "     'Down here, if you may.' says Mogdraz, pointing at the right location and handing him the quill. You see only demonic characters written on the contract, ones that you cannot understand, but it seems Hayato is able to read it just fine. After he has gone through the whole document, he writes his own name, which to you is also unreadable, and as soon as he is done, the paper simply disappears in thin air after flames... But you both know the contract has been sealed. 'Very well, now that business is over, I shall repay what I'm owed. Gladly.' says Mogdraz, smiling at you in an almost too friendly manner. It still sends you shivers.";
					say "     But you can see that Mogdraz seems [bold type]pleased with your actions[roman type], since you provided him with your friend's soul... Hopefully, you will not regret it.";
					increase Lust of Mogdraz by 10;
					add "Soulbound to Mogdraz" to traits of Hayato;
					WaitLineBreak;
					YoukaiLairMogdrazPath2;
				else:
					say "     But your words are not well received, and Hayato almost gets furious at you. 'Harmless?! I'm trading my whole soul for this! How is that not harmless?! Well, if there's actually no danger involved, I don't see why you're not the one doing it, then! Go on, sign it yourself to prove your point!' Mogdraz looks inquisitively at you after hearing Hayato's words. 'I take no unwilling soul. Yours will have to do.' Looks like you failed to persuade Hayato and are left with no other choice but to provide your own.";
					WaitLineBreak;
					YoukaiLairMogdrazPath1;
		else:
			Linebreak;
			say "     You really don't want to take any part in this. The price is too high, and Hayato really isn't comfortable with any of the options, you can tell. 'A pity. Well, I suppose this meeting is over, then. I'm not going to ask you to reconsider, as I'd rather have a willing soul... But I do wish you good luck on your quest. Which would be close to impossible without my help, but alas... Maybe you do know of another way, after all, or you would be more desperate to accept my offer.'";
			WaitLineBreak;
			move player to Hellfire Club;
			say "     With these last words, Mogdraz escorts you and Hayato out of his chambers, and you leave the place altogether. 'I know I said he would demand something pricey, but plainly asking us to pay with our souls?! I never liked dealing with demons, and I don't think you should be doing that, either...'";
			say "     It seems asking Mogdraz for help is out of the equation, and if you are not too keen on dealing with any more demons, perhaps a certain sorceress could still provide you the help you need for a much more reasonable price. Should you pay a visit to the [bold type]mall[roman type], this time?";
			now Resolution of YokLairMogdraz is 99; [failed to earn Mogdraz's help]

to YoukaiLairMogdrazPath1:
	say "     Making your final considerations, you give Mogdraz your final word, that you should be the one providing what he asks for. 'Nothing pleases me more than hearing that. Very well... Just sign your name down below.' he says, handing you the contract written in a demonic language, which shifts before your eyes into something you can understand. It reads as he says, a portion of your soul would become his, and you would be allowed to live as nothing ever happened, but when the time comes, you have to do your Lord's bidding. Well, besides this essentially turning you into an almost slave to the Demon Lord, it actually sounds pretty harmless. You sign your name down immediately.";
	say "     As soon as you are done, the contract burns into non-existence, but you know that you have sealed the deal. 'Very well, now that business is over, I shall repay what I'm owed. Gladly.' says Mogdraz, smiling at you in an almost too friendly manner. It still sends you shivers.";
	say "     But you can see that Mogdraz seems [bold type]very pleased with your actions[roman type], which might prove quite advantageous in the future.";
	increase Lust of Mogdraz by 20;
	increase Loyalty of Mogdraz by 1;
	increase Hunger of Mogdraz by 25; [Player offered a quarter of their soul to Mogdraz]
	WaitLineBreak;
	YoukaiLairMogdrazPath2;

to YoukaiLairMogdrazPath2:
	say "     When he proceeds to explain the procedure you have to follow in order to breach this Youkai Lair, his expression turns into a serious one as he leans over his desk with both his hands on top. Then he grabs a pencil and a piece of paper, and scribbles something on it, shapes of buildings and other lines that seem to make some sort of map. 'This is its location. Right here, in the center, and underground. Way, way underground... The onis seem to come and go through hidden tunnels with their exits placed across several garages around the perimeter. It seems to me that they have a decent tunnel network that provides them with the mobility and presence they need. My agents have been trying to keep them under control, but we can only do so much, of course.'";
	say "     He then points towards the middle. Not quite on the center, but a little to the side... 'Here is the spot where you should attempt to enter. This particular entrance seems to be less fortified, with only a couple of onis or so keeping guard at all times. They are quite powerful, so I don't suggest that you fight them. Instead, I shall provide you with a [bold type]visage[roman type] that will mask your true identities. I was able to procure a Red Oni visage through the Void Realm that will serve you well, and it will work for both, in case you want to work as a pair. Once you've got it with you, the visage will deceive the demons and spirits into thinking that you are one of the true Red Onis, thus allowing you to pass... Hopefully.'";
	WaitLineBreak;
	say "     Hopefully, he said? That really does not sound reassuring, does it? 'The chances it will work are high, as long as you don't do anything stupid or out of place. Don't refuse any offerings, don't try to escape any traditional ritual, but avoid them in the first place, if you can... Since you won't be able to replicate many of them, I'm sure. In any case, try to inform yourself about these creatures before going into their world, just to be safe. While the deal you struck with me will keep one of you safe, the other may suffer unpleasant consequences for failing. Was I clear enough?' With nothing else to ask, you nod positively. 'Good. Scout the entrance around the [bold type]Capitol Building[roman type] and look for an opportunity while you're carring the visages. Do not lose them.'";
	say "     Following his warning, Toron, the bartender, appears from behind you, carrying a strange object that seems to be this so called [bold type]visage[roman type] the demon lord has been talking about. He hands it over to you, and you keep it close and safe in your [bold type]inventory.[roman type][line break]";
	WaitLineBreak;
	say "     [bold type]You have unlocked the Visage of the Red Oni. Use it to navigate certain areas in the Youkai Lair.[roman type][line break]";
	ItemGain visage red oni by 1 silently;
	WaitLineBreak;
	say "     With the deal having been finalized, you are escorted out of Mogdraz's Chambers and outside the Club. Hayato follows after you, and he cannot hide his concern... 'I really hope this was worth it, you know... I get the feeling this was a price too high to pay for whatever he gave us... But I could be wrong... I suppose...' With an understanding nod, you let the red oni return to the library as you consider your next steps.";
	move player to Hellfire Club;
	now Resolution of YokLairMogdraz is 2; [Youkai Lair unlocked through Mogdraz's Path]
	now Resolution of YokLairXaedihr is 99;
	now Resolution of YokLairLilith is 99;
	now Resolution of YokLairNermine is 99;
	now YokLairUnlock is resolved;
	now Youkai Lair is active;

to MogdrazHayatoYokLairSoulCheck: [Happens if Mogdraz is romanced after setting the deal With Hayato]
	TraitLoss "Soulbound to Mogdraz" for Hayato;
	say "     Suddenly, you feel a weight lifting out of your very being, and somehow this makes you think of [bold type]Hayato[roman type]. That is odd... Did Mogdraz, by any chance, [bold type]lifted the soul contract on him[roman type], now that you are in closer terms? That is a good thing, you assume.";

[ --- Youkai Lair - Lilith Path ---]

to say LilithTalkYokLair:
	say "     Before you bring this subject to Lilith, you will want to have Hayato present. You arrange a meeting with her and go get your red oni friend to join you in the chapel afterwards.";
	WaitLineBreak;
	say "     You explain the situation as briefly as possible, as you know best to not waste much of her time. 'Oh, my... You're saying... That you want to find this place and breach it, just like that? Well, but that would require a large amount of effort, wouldn't it? And large efforts need to be well paid... How about you let me turn your mighty oni friend into a full subservient demon? Wouldn't that be delightful...' Hayato frowns his eyebrows, and gives you a creeped out look. There is no way you would also agree with that, right? But then, she continues to speak, after giggling a bit. 'You should have seen the look on his face, just now... Oh, it would make such good use of that big and strong body of his, but I suppose... I do have another request.' You listen attentively to her next words, as they might be the only exchange you can make happen.";
	say "     'As you may know, there is... A problem in this district. They're also big and red, but they're far from being as charming as your companion. Yes, you do know who I'm talking about, don't you? Those so called hellfire demons have been a nuisance since they moved in, and they've been causing me and my children a lot of needless trouble. Now, would you do me a big favor and retrieve something for me? Something that has been stolen by them, right under my nose. Thinking I wouldn't see them, those idiots... But that's besides the point. I need that particular object back, and they should learn their place, so... It's a double win.' An object, she says, yet she is not being clear about what kind of object it is. Perhaps you should question her in order to understand what you would be getting into?";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Question what kind of object is that.";
	say "     ([link]N[as]n[end link]) - Just let her continue.";
	if player consents:
		Linebreak;
		say "     Of course, you have to ask what is it that you would be retrieving for her, but you are met with a blunt response. 'Now, that's none of your business, is it? It's something that belongs to me, so it should be in my possession, as all thing one owns. Wouldn't you agree?' While she is clearly being very cryptic about what sort of trinket you would be [']stealing['] back to her, you suppose it is not actually an essential information in order to perform this job adequately, given her attitude...";
		WaitLineBreak;
	else:
		Linebreak;
		say "     Perhaps not. You know she would not like it, so you let her proceed uninterrupted, instead.";
		WaitLineBreak;
	say "     'I shall provide you the location of this trinket of mine, and you will simply grab it and return it to me. Understood?' Well, that does not seem like much of an explanation, but it seems she is demanding an answer right now.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - You understand, and shall do whatever she asks.";
	say "     ([link]N[as]n[end link]) - No, you don't want to do this for her and get involved with the Hellfire Demons.";
	if player consents:
		Linebreak;
		say "     You nod, letting her know of your consent. 'Splendid, I suppose.' she commends you, not with much enthusiasm in her tone, but rather as if something she predicted just happened. Hayato eyes you with uncertainty, suggesting that, perhaps, you would have been better seeking someone else's help, instead. 'Now, this trinket of mine has been brought to a local abandoned warehouse within the northern section of the district. Which means that I need to send someone they wouldn't suspect, at first. If you're careful enough, nobody will see you, I'm sure... So if you end up pissing them off, that's on your lack of caution...'";
		say "     When she finishes her explanation, you still do not know what kind of trinket you are supposed to bring, so you have to ask how it looks like. She lets out a sigh. 'If it helps, it's a red colored jar. You may take this little ring as well, it will help you locate your objective.' she adds, as she hands you over a ring with a big red gem on top of it. 'Now go, before anything happens to it. I can't imagine what they would be doing to my precious artifact as we speak...'";
		WaitLineBreak;
		say "     Both you and Hayato leave the chapel with this request in mind, and immediately begin to wonder about a plan... Which comes to nothing but the obvious. 'We need to go there and look for this abandoned warehouse, and rely on this little thing to tell us where it is. Damn, I don't like this at all... I just hope it's worth it, in the end...' You reassure your oni friend that everything will be alright, and that you just need to retrieve this object for her as quietly as possible. Although, Hayato's concerns are very valid, due to the fact that he is not quite the sneaky type... 'If I go with you, your chances of remaining undetected will be brought down to zero, you know... I think I won't be able to help you with this one.'";
		say "     But then, as you are talking and walking through the streets of Red Light District, the ring begins to glow. 'Wait, that can't be. We barely left the chapel... Is it... Is it working properly?' To be honest, you have no idea. You are as clueless as the oni when looking at the ring, glowing brighter by the second. It is then that you hear some footsteps coming your way, so you immediately run towards an alley to remain hidden (as much as possible) before whoever is coming in your direction sees you. 'Wasn't it supposed to be in a warehouse?! What's going on?!' whispers Hayato to you, and you can't help but express as much confusion as him. It seems you are about to find out what happened, as the footsteps come closer, and in consequence, louder...";
		WaitLineBreak;
		say "     To your surprise, you see a single red deviless, who you can identify as a hellfire demoness, taking a turn into one of the dark alleys to the south. She seems to be carrying something enveloped in cloth, and looks like she is sneaking her way through. 'How odd is that? Looks like someone just stole it again...' says your friend, as you both see the ring starting to diminish the more she gets away from you. Knowing that this is your target, you proceed to stalk her immediately, before she gets out of your sight. Hayato lets you go in the front as he tries his best to not make the ground shake with each step, which inevitable has him have to stay back at some distance from you. He simply signals you to keep going...";
		say "     So you do, and walk in the same alley as the deviless. Expecting a fight, you keep your guard up as you attempt to track her down through the desolate path, and at some point, you cannot even see Hayato anymore. Still, the ring glows, and you try your best to not lose your lead. Then, you turn to the side, and follow through another alley that is seemingly silent and empty...";
		WaitLineBreak;
		let bonus be (( perception of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Perception Check):[line break]";
		if diceroll + bonus >= 12:
			say "     Suddenly, a shadow leaps behind you, and attempts to push you against the wall, but you saw that coming. With a swift strike, you manage to disarm the attacker and gain the upper hand, escaping the imminent danger of her sharp blade. 'Curse you!' she mutters as she stands up, backing away from you. It appears that she dropped the trinket and ran away as soon as she realized you could retaliate effectively. Well, that was quite easy! All you have to do is to return to Hayato with the trinket in your hands. He is nearby, and seems glad to see you are doing fine with the objective accomplished.";
		else:
			say "     Suddenly, a shadow leaps behind you, and with a push, you are brought between the wall and her, the deviless holding the trinket in one hand and a sharp blade on the other, brushing it against your throat menacingly. 'Why have you been following me? You're looking for this, isn't it? So you're her dog, fetching anything she throws at you... Pathetic.' It seems you are in trouble, as every movement you do could get you a nasty wound, judging by how little she has to do in order to seriously hurt you. 'Oh, Master Mogdraz will be quite happy once I arrive with your unconscious, all ready for enslavement... Just you wait as I enter the club, having captured Lilith's agent by baiting them out with such ease... I'm going to live in infernal luxury! All thanks to you!'";
			say "     What she doesn't see in her monologue is Hayato swinging his club hard at her, sending her flying towards the end of the alley. 'I'm baffled at the fact she didn't see me coming. You're okay, friend?' you assure him that you are, and you actually managed to get the trinket from her hands before she was thrown away by the oni's massive weapon.";
		WaitLineBreak;
		say "     'So, you've got it?' he asks, and you nod. You take the wraps off and there it is, the red jar Lilith asked for. Someone was, indeed, trying to bait you into a trap. Now you are being caught in the fight between these two groups just because you want to enter another demonic realm. 'All we have to do is to bring this to Lilith, right? Hopefully, that'll be enough...' he adds, and that really seems to be it. With your deed done, you make your way back to the chapel, which ended up being not too far from where you ended up at.";
		WaitLineBreak;
		say "     As you make it back to Lilith, she eyes you with a very inquisitive look, as if your arrival was completely unexpected. In fact, it was, for all of you. 'I... Trust you didn't find any problem on your way there?' she asks, and you begin to explain what happened, exactly. Her gaze fires a flare of wrath for very brief seconds, but she quickly gains her usual relaxed and seductive posture. 'I see... So they wanted to bait my special agent away and enslave them...? To [bold type]ENSLAVE[roman type] them?! How pathetic! The audacity...! Did they really think it would be so easy? That I would send just about anyone to collect my... precious jar? Speaking of which, you can leave that there.' she adds, as she points towards some area where she wants you to leave it.";
		say "     'Very well, I suppose I promised you that I'd help you find this... What was it, a lair with onis? Hm... I should consider organizing a haul myself, bring some interesting creatures from there for some... fun.' she says, with a suggestive tone. 'It shouldn't be too difficult. In fact, I've heard rumors. My informants have told me of some strange activity around the [bold type]Capitol Building[roman type] which involved big red demon ogres such as your friend, except way more savage and aggressive. I have reasons to believe they come from some form of [bold type]Youkai Lair[roman type] located within that area, so it would be a good place to start scouting, if I were you. Maybe an underground garage, or a tunnel...'";
		WaitLineBreak;
		say "     You have received its location, but before you go, Lilith still has something to say. 'Obviously, if you try to get in, you'd be clocked on spot. I suggest you take this.' She hands some sort of mask to you, shaped like a red oni's face. 'This is a visage. I managed to have it... collected, from the Void. It will provide you with the best disguise you'll need to enter that realm without risking your little soul. As for what you do while in there, I don't really care. If you do find a way to keep them in their place and quiet, I'd be grateful, I guess. One less disturbance that I'll have to worry about. These hellfire naughties give me enough trouble to keep me and my children occupied.'";
		WaitLineBreak;
		say "     [bold type]You have unlocked the Visage of the Red Oni. Use it to navigate certain areas in the Youkai Lair.[roman type][line break]";
		ItemGain visage red oni by 1 silently;
		WaitLineBreak;
		say "     'Anyway, if our business is done, then I suggest you shall be on your way. I'll have to find a place for my beautiful red jar...' she says, as she turns her attention to other matters. Hayato then speaks to you, once you are both walking out of the chapel. 'That wasn't so bad... I guess we got lucky?' he says, and you can't help but feel unsure. That jar had something about it, but you cannot quite point out what, exactly. You do have a nasty feeling about it...";
		say "     But, for now, your job is done, and Lilith was pleased enough to help you find the [bold type]Youkai Lair[roman type] within the area surrounding the [bold type]Capitol Building[roman type]. Maybe some scouting will be necessary, still, but at least you have the means to enter safely.";
		now Resolution of YokLairLilith is 2; [Youkai Lair unlocked through Lilith's Path]
		now Resolution of YokLairXaedihr is 99;
		now Resolution of YokLairMogdraz is 99;
		now Resolution of YokLairNermine is 99;
		now YokLairUnlock is resolved;
		now Youkai Lair is active;
	else:
		Linebreak;
		say "     You absolutely disagree with these terms, and Lilith pays no attention to you afterwards. 'Well now you're just wasting my time... If you don't want to do a simple favor for me, then I shall do nothing for you. Anyway, if you're done, then I suggest you leave, as I have nothing else to offer.' These are her final words before she retreats the conversation and leaves both you and Hayato alone.";
		say "     'These demons... They're all business and favors and deals... How can you get along with them?' You don't really know how to answer him, but for now, what matters is that you cannot count with Lilith's help. Maybe some other demon could help you, or someone knowledgeable on the matter... Maybe a certain sorceress in the [bold type]mall[roman type], even... Have you tried, there?";
		now Resolution of YokLairLilith is 99; [failed to earn Lilith's help]

Table of GameEventIDs (continued)
Object	Name
HellfireLetterYokLairLilith	"HellfireLetterYokLairLilith"

HellfireLetterYokLairLilith is a situation.
ResolveFunction of HellfireLetterYokLairLilith is "".
Sarea of HellfireLetterYokLairLilith is "Nowhere".

instead of going up from Grey Abbey Library while (Resolution of YokLairLilith > 2 and Resolution of YokLairLilith < 99 and HellfireLetterYokLairLilith is not resolved):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: HELLFIRE LETTER FROM ASSISTING LILITH DURING THE YOUKAI LAIR PRE-EVENT[line break]";
	say "[HellfireLetterYokLairLil]";

to say HellfireLetterYokLairLil:
	say "     As you return to the Library, you seem to find a small letter attached to the door at the entrance. You bring your hand to it in order to read what is in it, and the letters are unintelligible for a second, before they begin to rearrange themselves before your eyes. They say '[bold type]We know[roman type]' and only that, before the whole thing vanishes in flames that nearly burns through your hands, if you were not to drop the letter immediately as it was set on fire. What was this?! These flames, and the demonic nature of such a thing... Did the Hellfire Demons send you a letter because you assisted Lilith? Maybe they [bold type]really know...[roman type][line break]";
	decrease Loyalty of Mogdraz by 1;
	now HellfireLetterYokLairLilith is resolved;
	wait for any key;

[ --- Youkai Lair - Nermine Path ---]

to say NermineTalkYokLair:
	if Resolution of YokLairNermine is 1:
		say "     Before you bring this subject to Nermine, you arrange for a proper meeting with you and Hayato, as you want to have your oni friend present when discussing matters like these...";
		WaitLineBreak;
		say "     When both of you arrive at her shop, the jackaless seems to sense your distress. 'Nermine sees the visitor is happy with purchase, so much that the customer has properly befriended the oni.' Right... You never mentioned Hayato that the shopkeeper was actually putting him on sale, and he seems very confused by her observation... But you urge to move on, and proceed to mention that you may require her help in finding this sort of lair where all the onis seem to be coming from. 'Nermine knows of this. The [bold type]Youkai Lair[roman type] is what the dear customer seeks, but a deal is required, as not all things are to be offered for free. There is a trinket that belongs to her, which was lost in that realm. If the dear visitor agrees on retriving this item for her upon arriving its location, Nermine will gladly offer her assistance.'";
		say "     It appears that the jackal woman will only offer her aid if you agree on bringing this object back to her once you make it to the Lair, which means you will have [bold type]one additional objective[roman type] while inside, and you may not leave until that is completed.";
		WaitLineBreak;
		say "     [bold type]Do you wish to accept Nermine's offer and follow through her path to gain access to the Youkai Lair[roman type]? If you refuse, you will be able to explore other options, and if none suit your preferences, you may come back to accept the jackaless['] help, instead.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Yes, accept Nermine's offer.";
		say "     ([link]N[as]n[end link]) - No, for now.";
		if player consents:
			Linebreak;
			YokLairNerminePath1;
		else:
			say "     Thinking twice, you'd rather think about this some more, so you let Nermine know that you will be back later and talk about this with her again if the need arises. 'Nermine understands that the favor she asks might be a complicated one, but should the visitor reconsider, let her know.' the jackaless adds, as you finish the conversation at once.";
			say "     Hayato turns to you in the end, clearly having given that little episode some thought. 'So... That chastity belt was... an excuse to sell me? Was I deceived?' You tell him there is nothing to worry about, as you ensured his safety and freedom in the end. 'I don't know if I can trust her anymore, now...! I think I'd rather deal with demons, to be honest! She seemed like such a nice lady...! Oh, these relentless merchants...'";
			now Resolution of YokLairNermine is 2;
	else if Resolution of YokLairNermine is 2:
		say "     Before you bring this subject back to Nermine, you arrange for a proper meeting with you and Hayato, as you want to have your oni friend present when discussing matters like these...";
		WaitLineBreak;
		say "     When both of you arrive at her shop, the jackaless welcomes you. 'Nermine's dear customer has returned, hopefully having reconsidered her offer?' she asks, and you are, obviously, expected to answer her question.";
		say "     [bold type]Do you wish to accept Nermine's offer and follow through her path to gain access to the Youkai Lair[roman type]? If you refuse, you will be able to explore other options, and if none suit your preferences, you may come back to accept the jackaless['] help, instead.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Yes, accept Nermine's offer.";
		say "     ([link]N[as]n[end link]) - No, for now.";
		if player consents:
			Linebreak;
			YokLairNerminePath1;
		else:
			say "     Thinking twice, you'd rather think about this some more, so you let Nermine know that you will be back later and talk about this with her again if the need arises. 'Nermine understands that the favor she asks might be a complicated one, but should the visitor reconsider, let her know.' the jackaless adds, as you finish the conversation at once.";

to YokLairNerminePath1:
	say "     After giving it some thought, you have decided to accept her offer. 'That makes Nermine very happy, hearing that the customer has agreed on helping her. Of course, in return, Nermine will provide a way to enter the Youkai Lair under disguise from the evil spirits who inhabit this realm. Hungry spirits and demons who feast on the mortal's souls like starving savages seeking raw flesh. The visitor must tread gingerly as danger is unavoidable, if not carrying Nermine's trinket.' She goes get this trinket she is talking about, amidst her numerous items of uncalculated age and value, then returns to you with only a mask in her hands.";
	say "     'Nermine calls this a visage. The Visage Of The Red Oni. Nermine procured this item knowing of its value, and now comes the right moment to give it to the visitor, to bring safety. Never go without it, or Nermine would be sad to have lost a great customer to the youkai predators.' Then, she has you take the visage before continuing to speak.";
	WaitLineBreak;
	say "     [bold type]You have unlocked the Visage of the Red Oni. Use it to navigate certain areas in the Youkai Lair.[roman type][line break]";
	ItemGain visage red oni by 1 silently;
	WaitLineBreak;
	say "     'As for Nermine's favor, the visitor should just bring back her [bold type]Jade Mask Of The Kitsune[roman type], once found. Nermine doesn't know where, exactly, but it is an invaluable artifact, very important to her, and Nermine doesn't want the youkais to have what is hers. Do not leave until this mask is in the visitor's possession, and this is the only favor Nermine requests in return for her assistance. Nermine wishes good luck to the customer, and should the eager explorer find a way to keep the youkais sealed in their world, she recommends doing so! Dangerous creatures should not be left to roam about freely, and would be bad for Nermine's business, as well.'";
	say "     You know what your job is, and all that is left is to find this place. 'The [bold type]Youkai Lair[roman type] resides within the area surrounding the [bold type]Capitol Building[roman type]. Should the visitor stumble across its entrance, proceed only with the visage, Nermine must warn again.' Grateful for her help, you thank her before leaving the shop after Hayato.";
	WaitLineBreak;
	say "     He then turns to you, once you are done talking to the jackaless. 'I guess she ended up offering us a way in... I'm wondering how dangerous it will be to retrieve this item for her... Leaving without it isn't an option, right? Knowing her, she probably rigged this... visage, to ensure we complete the task. I wouldn't take any chances, friend...' he says, and he is probably right. Whatever you do, [bold type]make sure you don't attempt to leave the Youkai Lair without her Jade Mask[roman type] or things may get ugly in the end...";
	now Resolution of YokLairNermine is 3;
	now Resolution of YokLairXaedihr is 99;
	now Resolution of YokLairMogdraz is 99;
	now Resolution of YokLairLilith is 99;
	now YokLairUnlock is resolved;
	now Youkai Lair is active;

[ --- Youkai Lair Event --- ]

to say ResolveEvent Youkai Lair:
	say "     You decide to scout for an entrance to the Youkai Lair while making your stay close to the Capitol Building...";
	say "     However, things seem agitated, to say the least. The whole area is a mess, and you find it very difficult to encounter an opportunity to breach the Youkai Lair right now. Perhaps you should wait until things calm down, and you and Hayato are able to go in without much trouble. Just make sure you [bold type]do not lose your visage...[roman type][line break]";
	say "     [bold type]<<< Author's Note: This content will be expanded in the future, as things take time to be developed! >>>[roman type][line break]";

Section 7-2 - Youkai Lair Items

Table of Game Objects (continued)
name	desc	weight	object
"visage red oni"	"This is the Visage Of The Red Oni, a mask that will allow you to travel through the Youkai Lair disguised as a Red Oni. "	0	visage red oni

visage red oni is a grab object. it is not temporary.
Usedesc of visage red oni is "[VisageRedOni use]";

to say VisageRedOni use:
	say "     You could put on the mask, but it would be fairly useless in here. Just make sure you are carrying it with you when you pay the Youkai Lair a visit.";

instead of sniffing visage red oni:
	say "Unsurprisingly, when you smell the mask, it does have a demonic scent to it. It almost feels like it belongs to a real red oni, which probably explains why it is so effective.";



Section 8 - DELETED CONTENT

[ PREVIOUS UNLOCK SCENE

setmonster "Red Oni";
choose row MonsterID from the Table of Random Critters;
say "     Having gotten the key this time, you move in on Hayato again. Longing for company, he remained seated as you slide in beside him. You take it slow at first, a few casual touches and an arm around his waist. He moans softly as you brush your fingertips across one of his red nipples, his need for stimulation building as his unsatiated arousal grows. Pressing your chest to his[if Breast Size of Player > 0], rubbing your bosom against his firm abs[end if], you suck on one of his nipples while sliding a hand down to his covered crotch.";
say "     'Oh, I really wish I'd kept that key right now,' he moans, running a hand down your back as the other steadies himself on a metal pipe. You grin up at him and reveal the key to him, smiling wider at his gasp and look of longing. He starts to mutter a halfhearted objection, so you silence it with a passionate kiss while your fingers work the key into the lock.";
say "     Despite its obvious age, it turns easily and the gears in the mechanism run smoothly. The bands around his waist and between his legs steps out further with each turn of the key until they finally release. And that's not all that is released. Free from its bonds, his crimson cock surges to full erection, sending the unlatched metal clattering across the ground.";
say "     Now free from their containment, you're not even sure how his large equipment could even fit within the restraint. The oni's transformed manhood is a thick pillar of red flesh, hard and throbbing with need. While shaped like a man's cock, it is considerably larger and thicker with throbbing veins. It is a little over a foot in length and leaks precum steadily. Like the rest of him, it is a bright red in color, only darkening to a near-black shade of red at the glans. Below it hangs his ponderous ballsack, containing his large, firm testicles. The feel of them in your hand and the knowledge that they are heavy with his pent-up semen - virgin semen at that - practically makes your mouth water.";
WaitLineBreak;
say "     Lowering yourself down between his legs, you bring your mouth to his erection and start licking over it. It twitches and unleashes a healthy gush of precum, which you lap up eagerly. The oni pants, his yellow eyes rolling back in his head as you work your mouth over his virgin shaft and start sucking on it. You guzzle down several rich mouthfuls of his precum before pulling off again, taking delight at his groan of disappointment. As much as you'd like to keep on sucking him, you worked too hard to get this to blow his first time on a blow job.";
if Player is female:
	say "     Moving back up, you pull yourself into his lap, [if scalevalue of Player < 3]hugging your arms around as much of his broad chest as your small body can hold[else if scalevalue of Player is 3]wrapping your arms around the larger fellow's broad chest[else]draping your arms around his shoulders and neck while you kiss him[end if]. You grind your pussy down onto that pulsing rod of his and shift your hips to lower yourself down onto it. You watch as his gruff face is overcome with ecstasy as you push your cunt down around his cock, taking the transformed man's virginity. With that thick rod inside you, you take it slow at first, mainly for the sake of making the pent-up oni last a little longer. Despite your efforts, it ends up being a little short, but you are treated to such a thick geyser of cum while the demon ogre cries out in lustful release after his self-imposed abstinence that it is well worth it. The feel of those seemingly unending pulses of his spurting rod as his tainted seed stuffs you full and overflows from your cunt sends you into orgasm as well, your needy vagina milking the oni for more and more until he finally collapses backwards in a daze. You grin and pull off of him slowly, smiling smugly at the messy pool of cum covering his lower body and the garage floor between his legs. Your womb sloshes with his semen, stuffed full and hot with his demonic load.";
	NPCSexAftermath Player receives "PussyFuck" by Hayato;
else:
	say "     Moving back up, you pull yourself into his lap, [if scalevalue of Player < 3]hugging your arms around as much of his broad chest as your small body can hold[else if scalevalue of Player is 3]wrapping your arms around the larger fellow's broad chest[else]draping your arms around his shoulders and neck while you kiss him[end if]. You grind your ass down onto that pulsing rod of his and shift your hips to lower yourself down onto it. You watch as his gruff face is overcome with ecstasy as you stretch your anus down around his cock, taking the transformed man's virginity. With that thick rod inside you, you take it slow at first, mainly for the sake of making the pent-up oni last a little longer. Despite your efforts, it ends up being a little short, but you are treated to such a thick geyser of cum while the demon ogre cries out in lustful release after his self-imposed abstinence that it is well worth it. The feel of those seemingly unending pulses of his spurting rod as his tainted seed stuffs you full and overflows from your asshole sends you into orgasm as well, your needy hole milking the oni for more and more until he finally collapses backwards in a daze. You grin and pull off of him slowly, smiling smugly at the messy pool of cum covering his lower body and the garage floor between his legs. Your belly sloshes with his semen, stuffed full and hot with his demonic load.";
	NPCSexAftermath Player receives "AssFuck" by Hayato;
say "     After he recovers, Hayato smiles up at you from the floor and releases a long, satisfied sigh of relief. 'Oh, that feels so much better. I was starting to ache so badly down there. I do hope you'll come and visit my dingy cave again soon,' he says with a bit of worry in his voice. Given how he's not gone crazy with lust after his release, you decide to invite him back to your safe haven. He seems a little surprised and very eager at the prospect of this to guess by the twitch his cock gives, his only concern one about whether he'll even fit inside. Helping him up, you grin and pat his shoulder, telling him you can probably squeeze him in somewhere.";
move Hayato to Darkened Alcove;
move player to Darkened Alcove;
now HP of Hayato is 16;
increase score by 25;
unleashredoni;


	else if HP of Hayato is 21 and player is not neuter and a random chance of 1 in 3 succeeds:
		say "     As you chat with Hayato, your thoughts return to the problem of the Oni Lair you discovered.";
		say "     [bold type]Shall you draft him into joining you in dealing with it or shall you wait a while longer before investigating?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     Hoping that you're ready for this, you give the big guy's shoulder a firm shake, telling him to get up. As he starts to rise, he asks you what the rush is and you tell him that you're going back to deal with the oni lair and that he's coming with you. He staggers back at this and starts to protest, but you emphasize that the problem's only going to get worse if something isn't done about it soon. And if he doesn't confront his fear of the oni, he'll also fear himself and never fully feel he's in control of his new self.";
			say "     Reluctantly forced to agree, he takes a deep breath, summons up his courage and heads out with you into the city again, this time returning to the Capitol District where you first found him.";
			say "[onilairassault]";
		else:
			LineBreak;
			say "     Deciding that you have more pressing matters, you put off the problem for another time.";

	else if HP of Hayato is 20:
		say "     Seeing Hayato has reminded you that you'd located the oni lair and so you sit down to discuss the matter with him. You describe what you saw, including the rather grisly entrance. He gets quite disturbed by this, momentarily angry enough to smash a nearby chair with his club before reining in his anger.";
		say "     'I am sorry about that,' he says, relinquishing his club and bowing his head in apology. 'It upsets me to think what the oni are doing - and that I could very well have been like them. But I do not know what can be done about them. You should also remember, oni are often depicted as solitary creatures, living in mountain caves or other remote lairs. If they are indeed in those ruins, then the great oni is likely there, ruling over them.' Fear creeps back into his voice, still scared of the monstrous oni that attacked him.";
		if Player is neuter:
			say "     Seeing how you lack a gender of your own at present, you find it hard to work up the gumption to go deal with the problem right away, if at all. Perhaps you should do something about your neutered state first.";
			now HP of Hayato is 21;
		else:
			say "     How shall you respond? Shall you prompt him to confront his fear and join you in an [link]assault on the lair (1)[as]1[end link], tell him to [link]wait (2)[as]2[end link] and mentally prepare himself to face his fears or remind him that he's safe now and [link]forget it (3)[as]3[end link].";
			now calcnumber is -1;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>";
				get a number;
			if calcnumber is 1:
				say "     Feeling that you have to strike while the iron's hot, you give the big guy's shoulder a firm shake, telling him to get up. As he starts to rise, he asks you what the rush is and you tell him that you're going back to deal with the oni lair and that he's coming with you. He staggers back at this and starts to protest, but you emphasize that the problem's only going to get worse if something isn't done about it right away. And if he doesn't confront his fear of the oni, he'll also fear himself and never fully feel he's in control of his new self.";
				say "     Reluctantly forced to agree, he takes a deep breath, summons up his courage and heads out with you into the city again, this time returning to the Capitol District where you first found him.";
				say "[onilairassault]";
			else if calcnumber is 2:
				say "     Not wanting to rush out the door right now, but feeling that Hayato should face this at some point, you suggest that he start mentally preparing himself in case an opportunity to deal with the matter arises. You add that the problem will only get worse if something isn't done about it. The oni will continue their rampage and will just grow in numbers if something isn't done about it. He isn't pleased to hear it, but he nods, knowing you're right. He calms himself and tries to meditate, focusing himself for the eventual assault.";
				now HP of Hayato is 21;
			else if calcnumber is 3:
				say "     Wanting to put the big guy at ease, you pat his shoulder and tell him to not worry about it. You remind him that he's safe here and just has to wait for rescue comes. Reassuring him that the military can deal with it when they arrive, you let him know that you'll be avoiding the area as well. Your reassurances help put him at ease. You likely won't have to worry about the matter any further.";
				now HP of Hayato is 30;
]

Table of GameEventIDs (continued)
Object	Name
Oni Lair	"Oni Lair"

Oni Lair is a situation.
ResolveFunction of Oni Lair is "[ResolveEvent Oni Lair]". Oni Lair is inactive. The level of Oni Lair is 9.
Sarea of Oni Lair is "Nowhere".
when play begins:
	add Oni Lair to BadSpots of MaleList;
	add Oni Lair to badspots of DemonList;

to say ResolveEvent Oni Lair:
	if debugactive is 1:
		say "DEBUG -> HP of Hayato: [HP of Hayato] <- DEBUG[line break]";
	if HP of Hayato is 19:
		say "     As your exploration takes you towards a collapsed office tower, you notice several odd things about it. The building has fallen onto its side and is largely ruin, having taken out several other buildings during its fall. This isn't too strange in and of itself, as several skyscrapers in this area were similarly knocked down during the eruption and quake, but the first few floor are mostly intact... you think. It is difficult to be certain, as it appears that concrete rubble has been piled up in front of the windows. Whether this was done to fortify the building or to block outside scrutiny is unclear, but it definitely would have taken an exceptional feat of strength to do so.";
		say "     Since the building fell forward, the front entrance is blocked and buried by the tower's rubble. Knowing there has to be a way in since it's sealed up from the inside, you start to circle around the building in search of it. As you move around the back, a disturbing sight comes into view. The parking garage ramp has been converted into a gruesome entrance, lined with skulls (human and otherwise) on poles and littered with scraps of bones and cloth. The yawning mouth into darkness is like the cave of some monster's lair. Realizing what you've found is probably the lair of the oni creatures, you start to back away quickly, hoping you can get away unnoticed.";
		WaitLineBreak;
		let bonus be (( perception of Player minus 10 ) divided by 2 );
		let fbonus be 0;
		if "Bad Luck" is listed in feats of Player, decrease fbonus by 2;
		if "Curious" is listed in feats of Player, decrease fbonus by 1;
		if "Wary Watcher" is listed in feats of Player, increase fbonus by 1;
		if "Stealthy" is listed in feats of Player, increase fbonus by 1;
		if "Experienced Scout" is listed in feats of Player, increase fbonus by 1;
		let dice be a random number from 1 to 20;
		say "     You roll 1d20([dice])+[bonus]+[fbonus]: [dice + bonus + fbonus]: ";
		if bonus + dice > 15:
			say "As you're slipping away from the building, your suspicions are confirmed when you look behind you to see one of the red ogres emerging from an alleyway. Taking cover among the rubble, you wait for it to move past and descend into its lair before making your escape.";
			increase score by 10;
			increase morale of Player by 1;
		else:
			say "As you're slipping away from the building, you are too focused on the cavernous entrance. You end up moving into full view of a red oni emerging from an alleyway on its way back to the lair. The demon ogre grins evilly at the prospect of one last victim before returning to its cave-like lair.";
		challenge "Red Oni";
		if fightoutcome >= 10 and fightoutcome <= 19:				[WIN]
			say "     Defeating the oni sends it back into its lair, snarling angrily. Knowing this will bring the wrath of its brethren upon you, you make haste to get away from here as quickly as possible. Now that you know where their lair is, you should probably talk to Hayato about it.";
		else if fightoutcome >= 20 and fightoutcome <= 29:		[LOSE]
			say "     After the red oni is done with you, he drags you to the entrance of the lair. At first, you fear (anticipate?) being dragged inside and assaulted by the whole of oni tribe, but are instead tied up to a large piece of rubble just outside. Your sticky, messy body is left there for its brethren to use as they return and as a warning to others who get too curious about the ruins. Once your captor is out of sight inside, you struggle against your bonds and are thankfully able to free yourself before any more of those creatures come home and find you there.";
		else:													[FLEE]
			say "     You manage to slip past the red oni and make a break for it. It snarls angrily at you, but rather than pursue you, it turns and rushes towards the ruins. It calls for its brethren to take up the hunt as you reach the alley and push yourself all the harder to get away. You don't stop running until you get all the way back to the area around those rusty walkways.";
			move player to Rusty Walkways;
		now HP of Hayato is 20;
	else:
		say "ERROR-Hayato-[HP of Hayato]E: This event (Oni Lair) should be closed at this time!";
	now Oni Lair is resolved;

to say onilairassault:
	now inasituation is true;
	say "     Your journey back to the devastated area around the Capitol building is thankfully peaceful, probably having the formidable oni by your side has encouraged the other creatures to keep their distance. As you walk with Hayato, you try to talk with him to encourage him along, but he remains nervous. It is clear that he's still worried about his self-control. Knowing that he will need to be braver if this is to succeed, you tell him to man up and just draw strength from his new body. Continuing to hide from it won't help him now and that he'll need to fight them - oni to oni. He grumbles a little at this, but nods. With further encouragement, he does his best to stand tall by your side as you march up to the gates of the oni lair.";
	say "     The entrance to the oni lair is foreboding, with the grisly signs of the creature's warning totems on display before it. But added to that are a pair of muscled oni just inside. Clearly standing guard, they snarl and march out as you both arrive. They growl and laugh roughly as they emerge.";
	WaitLineBreak;
	say "     'What is this, another of our kind come to join the Great Oni's clan? You are right to come here. The clan grows strong and soon we will spread and crush the gnats of this city,' he laughs, speaking to Hayato.";
	say "     'Yes, they are right to fear our wrath and shall fall before us. Join us and share in the spoils,' the other adds.";
	say "     'And you bring an offering for us - a toy to play with.'";
	say "     'Or perhaps a meal,' the second suggests, eyeing you with a more mundane and deadly hunger.";
	say "     Hearing you threatened, something snaps in Hayato and he growls. 'No, this is my friend. You will not harm [if Player is female]her[else]him[end if], or anyone!' And with that, he's charging forward, club raised. You rush to join him in battle, each taking on one of the guards.";
	[***]
	say "     'It's too bad the Great Oni and the rest of the clan are out on a picnic. Still, we can more than kick your asses.' 'Yeah!'";
	say "[bracket]Full version of Oni Lair to come later. Enjoy step 1 for now. - the Mgmt[close bracket][line break]";
	WaitLineBreak;
	now HP of Hayato is 97;
	challenge "Red Oni";
	if fightoutcome >= 10 and fightoutcome <= 19:				[WIN]
		say "     Your final blow causes your foe to stumble back, slumping against one of the boulders of rubble. Knocking its head against the concrete, it falls unconscious. Looking over to check on your companion, you find Hayato having already beaten his foe. Not stopping there, Hayato has the defeated oni pinned with his face to the ground and his meaty ass in the air. He's giving the guard a thorough plowing, driving his throbbing rod into his ass again and again. The creature growls angrily, but he's also quite hard and panting as that thick, crimson cock fucks him hard.";
		say "     Seeing you done with your foe, your companion slaps the oni's ass. 'Nggg. Get over here and [if Player is male]stuff this fool's mouth[else]put this fool's mouth to use[end if].' The sight of Hayato allowing himself to let loose and take a dominant role is quite arousing.";
		say "     [bold type]Shall you join him in teaching this brute a hard lesson?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			if Player is male:
				LineBreak;
				say "     Seeing how this is the one who threatened to eat you, you feel it only fitting that he be force-fed your [Cock of Player] cock. Grabbing him by the horns, you pull his face to your crotch. When a particularly hard thrust from Hayato has him cry out, you thrust your [cock size desc of Player] shaft into his mouth[if Cock Length of Player > 9] and down his throat[end if]. Your would-be assailant sets himself to licking and sucking your [Cock of Player] rod right away, though he continues to growl and struggle. And from the way he's hard and drooling precum steadily, it's clear the creature is more upset about having lost than about the fucking itself.";
				say "     'Show some respect to your betters and ride that cock like I know you want it, you slut,' Hayato growls as he reaches around to pump at the demon ogre's drooling erection. 'I want to see you sucking harder.' Between the assault on both fronts and that hand stroking him off, the oni's struggles cease quickly and his hips press all the harder against Hayato's, welcoming each thrust from the increasingly dominant oni.";
				say "     This release of Hayato's inner oni leads to quite the powerful release from the big guy, his oversized balls pulsating as they unleash blast after blast of thick semen into his foe. When this causes the oni between you to cum as well (his load barely half what Hayato can produce), Hayato mocks him again for being a weak slut before grabbing your head and pulling your face forward into a forceful kiss. His tongue delves into your mouth and this last thing is enough to push you over the edge into orgasm, feeding your hot [Cum Load Size of Player] load down the demon ogre's throat. When you're all finished, the oni beneath you is left too worn out from his struggles and the buggering and passes out.";
			else:
				LineBreak;
				say "     Seeing how this is the one who threatened to eat you, you feel it only fitting that he be forced to eat out your [cunt size desc of Player] cunt. Grabbing him by the horns, you pull his face to your crotch. When a particularly hard thrust from Hayato has him cry out, you grind your pussy against his face, leaking your juices onto his tongue. Your would-be assailant sets himself to licking and sucking your juicy snatch right away, though he continues to growl and struggle. And from the way he's hard and drooling precum steadily, it's clear the creature is more upset about having lost than about the fucking itself.";
				say "     'Show some respect to your betters and ride that cock like I know you want it, you slut,' Hayato growls as he reaches around to pump at the demon ogre's drooling erection. 'I want to see you licking faster.' Between the assault on both fronts and that hand stroking him off, the oni's struggles cease quickly and his hips press all the harder against Hayato's, welcoming each thrust from the increasingly dominant oni.";
				say "     This release of Hayato's inner oni leads to quite the powerful release from the big guy, his oversized balls pulsating as they unleash blast after blast of thick semen into his foe. When this causes the oni between you to cum as well (his load barely half what Hayato can produce), Hayato mocks him again for being a weak slut before grabbing your head and pulling your face forward into a forceful kiss. His tongue delves into your mouth and this last thing is enough to push you over the edge into orgasm, soaking the other demon ogre's face in your juices. When you're all finished, the oni beneath you is left too worn out from his struggles and the buggering and passes out.";
		else:
			LineBreak;
			say "     Hayato gives a bit of a growl when you don't come over to join him and focuses his disappointment into fucking him fallen foe all the harder. Grabbing him by one of the horns, the demon ogre's made to look at you. 'You see that, scum. [if Player is female]She[else]He[end if] doesn't even want to have anything to do with a wretch like you.' The defeated guard growls and snarls back even as he's buggered roughly by the more powerful oni. And from the way he's hard and drooling precum steadily, it's clear the creature is more upset about having lost than about the fucking itself.";
			say "     'Show some respect to your better and ride that cock like I know you want it, you slut,' Hayato growls as he reaches around to pump at the demon ogre's drooling erection. Between being fucked by Hayato and that hand stroking him off, the oni's struggles cease quickly and his hips press all the harder against Hayato's, welcoming each thrust from the increasingly dominant oni.";
			say "     This release of Hayato's inner oni leads to quite the powerful release from the big guy, his oversized balls pulsating as they unleash blast after blast of thick semen into his foe. When this causes the oni between you to cum as well (his load barely half what Hayato can produce), Hayato mocks him again for being a weak slut before grabbing your around the waist and pulling you into a forceful kiss. His tongue delves into your mouth even as he floods his foe's ass with his hot load. Once the victorious oni's done and pulled his cock free, the oni beneath him is left too worn out from his struggles and the buggering and passes out.";
[		***beat them, adventure continues.";]
		WaitLineBreak;
		say "     When you and Hayato venture inside, you find that the two guards were indeed telling the truth. It seems the rest of the oni aren't here right now. There's the remains of sandwich fixing, open packets of drink mix and the plastic wrapper for a picnic basket. You're strangely disappointed at having missed them, but relieved as well. Certainly Hayato's seeming much more confident for having gone face to face with his infection. You gather up the remaining supplies you can salvage from the mess and head back to the bunker together.";
		say "     Upon your return, Hayato pulls you into his arms and gives you another forceful kiss. 'Mmm... I'm feeling so much better after all that. That felt so good to take charge like that and take what I wanted.' He gives your ass a firm squeeze and grinds his crotch against your side, throbbing with growing need. 'How about we do things my way on occasion?' he asks with a lustful growl. From the look on your face you clearly have no objection with this train of thought.";
		ItemGain food by 2;
		increase score by 20;
		now lastfuck of Hayato is turns + 8;
		now HP of Hayato is 50;
	else if fightoutcome >= 20 and fightoutcome <= 29:		[LOSE]
		say "     While Hayato was winning his fight against the one oni, getting double-teamed after you've gone down becomes too much for him and he's forced to the ground. You're pulled over beside him and the two guards take turns fucking you both. After that, you and Hayato are made to fuck each other for the amusement of the other two guards. By this point, you've both lost your senses, becoming more and more into monstrous oni like the two big, sexy ogres spraying their seed across your rutting bodies.";
		say "[onilairlost1]";
	else:													[FLEE]
		say "     You turn to make your escape and head as quickly as you can away from the oni lair. Glancing back, you see Hayato look at you in surprise as you flee. Taking advantage of the opportunity, his weakened foe leaps atop him and they start wrestling on the ground. The third oni, having lost his opponent, joins in with a growl. Taking one last look from the alleyway, you watch as the fight concludes and turns into a roughhousing threesome. You're no longer able to tell which of them is which. Regardless, it's clear that Hayato's lost himself to the infection.";
		now HP of Hayato is 98;
		now Hayato is nowhere;
		move player to Rusty Walkways;
	now inasituation is false;

to say onilairlost1:
	now HP of Hayato is 96;
	setmonster "Red Oni" silently;
	choose row MonsterID in Table of Random Critters;
	turn the Player into a "Red Oni" silently; [NOTE: Avoid attributeinfect output in a game over (@Stadler#3007)]
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if Libido of Player < libido entry, now Libido of Player is libido entry;
	WaitLineBreak;
	end the story saying "Reduced to wild oni, you join the Great Oni's clan.";
	now battleground is "void";
	WaitLineBreak;
	now skipturnblocker is 1;
	follow the turnpass rule;
	stop the action;

to unleashredoni:
	setmonster "Red Oni";
	choose row MonsterID from the Table of Random Critters;
	if Name entry is "Red Oni":
		now area entry is "Capitol";
		now non-infectious entry is false;

Hayato ends here.
