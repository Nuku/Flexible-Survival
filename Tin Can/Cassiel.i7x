Version 1 of Cassiel by Tin Can begins here.
[Version 1 by Tin_Can: Creation]


[ Cassiel, the angelic priestess                                        ]

[HP of Cassiel                                                          ]
[   0: starting start, not made friends with                            ]
[   1: Initial state of Cassiel                                         ]

[Future Content Notes:                                                  ]
[Add quest for hellhound cure                                           ]
[Add more talk options such as personal history and church cleanup      ]

an everyturn rule: [bugfix for old exports]
	if HP of Cassiel > 0 and Cassiel is in NPC Nexus:
		move Cassiel to Church Hall;

the linkaction of Cassiel is "[Cassiellinkaction]".

to say Cassiellinkaction:
	say "Possible Actions: [link]talk[as]talk Cassiel[end link], [link]smell[as]smell Cassiel[end link][line break]";

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
Cassiel	"Cassiel"

Cassiel is a woman. The HP of Cassiel is usually 0.
[physical details as of game start]
ScaleValue of Cassiel is 3. [human sized]
SleepRhythm of Cassiel is 0. [0 = awake at all times, 1 = awake in the day, 2 = awake at night]
Cock Count of Cassiel is 0. [no cock]
Cock Length of Cassiel is 0. [no cock length]
Ball Size of Cassiel is 0. [no ball size]
Ball Count of Cassiel is 0. [no balls]
Cunt Count of Cassiel is 1. [1 pussy]
Cunt Length of Cassiel is 7.
Cunt Tightness of Cassiel is 2.
Nipple Count of Cassiel is 2. [2 nipples]
Breast Size of Cassiel is 4.
[Basic Interaction states as of game start]
Humanity of Cassiel is 90.
PlayerMet of Cassiel is false.
PlayerRomanced of Cassiel is false.
PlayerFriended of Cassiel is false.
PlayerControlled of Cassiel is false.
PlayerFucked of Cassiel is false.
OralVirgin of Cassiel is true.
Virgin of Cassiel is true.
AnalVirgin of Cassiel is true.
PenileVirgin of Cassiel is true.
SexuallyExperienced of Cassiel is false.

The description of Cassiel is "[CassielDesc]".
The conversation of Cassiel is { "Hello"}.

The scent of Cassiel is "[CassielScent]";

to say CassielScent:
	say "     Upon taking a sniff of the priestess you find that she has quite the heavenly scent. One part roses, one part box of newborn kittens that just got out of a well-supervised bubblebath.";

to say CassielDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Cassiel: [HP of Cassiel], Dexterity: [Dexterity of Cassiel], LIBIDO: [Libido of Cassiel], LUST: [lust of Cassiel], Strength: [Strength of Cassiel], Stamina: [Stamina of Cassiel] <- DEBUG[line break]";
	say "     Standing at a height of five feet, Cassiel is a chimera of species and though they range widely from reptile to mammal, they all somehow mix together well enough to give her an almost dignified look. The priestess has a slender build with a moderadte bust that is covered by her loose-fiiting white robes. Her face is human with a fair-skinned complection and bright blue eyes. Instead of human ears soft and floppy golden rabbit ears sit atop her head covered by a mane of long hair of the same color.";
	say "     From what you can see under her robes starting below the neck her skin is covered in almost glowing silvery scales. Her scaled arms end in taloned hands that are surpisingly dextrous despite their look. Peeking out behind her robes in a golden feline tail that sways back and forth on its own accord, as well as a set of angelic wings that hang from her back. To finish off the golden theme she stands upon a pair of fluffy golden rabbit feet.";

Section 2 - Talking with Cassiel

instead of conversing the Cassiel:
	if HP of Cassiel is 0: [not encountered yet]
		say "     ERROR: Cassiel shouldn't be where a player can see her yet! Please report to Wahn on the FS discord or forum and quote this tracking number for easier bugfixing: [HP of Cassiel]";
	else:
		say "[CassielTalkMenu]";

to say CassielTalkMenu:
	say "     What do you want to talk to Cassiel about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Chit-chat";
	now sortorder entry is 1;
	now description entry is "Make some small talk with the priestess";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Hellhound Curse";
	now sortorder entry is 2;
	now description entry is "Ask Cassiel if she has a way to remove the hellhound curse put upon you";
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
				if (nam is "Chit-chat"):
					say "[Cassiel_Small_Talk]";
				else if (nam is "Hellhound Curse"):
					say "[Cassiel_HellHound_Talk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the angelic priestess and say goodbye, Cassiel smiles back and gives a small bow in return.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Cassiel_Small_Talk: [Small talk with Cassiel]
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			say "     'Have you been down to the beach recently? I like to go down there when the sun starts to set. All those pretty colors dancing across the waters and that strange green line that appears before the sun goes away.' The priestess smiles softly, pausing as if recalling the moment. 'Mmh, though the other day I thought I saw something strange floating out there, some sort of castle?'";
		-- 2:
			say "     'The church doesn't get as many visitors as it used to. Though I suppose that's not too surprising with how things are out there. Maybe when things start to calm down again we can have mass again. Before all this happened I used to read stories to kids after all the sermons were finished.'";
		-- 3:
			say "     'You know I used to frequent a bookstore down at the Smith Haven Mall. Made friends with the owner there.' Cassiel gently brushed the side of her chin with the back of her talon. 'I hope Beverly and Turtle are okay... She was such a nice woman and I'd hate for anything to have happened to her...'";
		-- 4:
			say "     'I've heard rumors that there was a demon of some sort living in a chapel nearby.' Cassiel's brow furrowed as her cheeks puffed up a bit in annoyance. 'I'd hate to think of what sinful acts they're doing inside such a holy place. If I weren't busy granting this place protection I'd certainly give them a piece of my mind...'";
		-- 5:
			say "     'Have you been to the resturant on the boardwalk? I'm surprised they're still open despite everything that's happened. On occassion I find myself there when I get hungry, you have to try one of their cheeseburgers!  They are quite delicious.'";
	wait for any key;
	say "[CassielTalkMenu]";

to say Cassiel_HellHound_Talk:
	say "     When you ask if Cassiel has a cure for the curse the hellhounds have put on you Cassiel replies with a sad shake of her head. 'I'm sorry, I've been combing through some of the text down in the basement but I haven't come across anything that might help yet. But I won't give up! I'll tell you once I find a lead, so please be patient.' (Will be expanded in a future update!)";

Cassiel ends here.
