Version 1 of Lumi by Prometheus begins here.

[Blanche's fifth daughter. Steady]

[   hp of Lumi - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Garden:
				say "     [bold type]Panting slightly, Lumi nudges your hand to pat her before heading towards the courtyard.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]Wagging her tail upon seeing you, Lumi comes over tot talk to you while she waits for Sturm and Bernard to arrive, before the three of them begin to train together.[roman type][line break]";
			move Lumi to Courtyard;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Courtyard:
				say "     [bold type]Fatigued from sparring, Lumi tiredly tells you that she is going to lie down in the computer room for a bit, her tongue quivering out the side of her mouth with each breath.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Lumi trots through the door, mustering a brief wag of her tail before she flops on a pile of blankets beside Casper, her brother idly stroking her.[roman type][line break]";
			move Lumi to Computer Lab;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Computer Lab:
				say "     [bold type]Her energy restored, Lumi bounces around as she waits for Casper to be ready to go out scavenging with her.[roman type][line break]";
			move Lumi to Nowhere;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if a random chance of 4 in 5 succeeds:
				if Player is in Garden: [Lumi]
					say "     [bold type]Just back from scavenging, Lumi gives you a lick before excitedly playing ball with Wendis, the two of them rushing around while Penelope keeps half and eye on them.[roman type][line break]";
				if Player is in Bunker: [Casper]
					say "     [bold type]You watch Casper come down the stairs, just back from scavenging, returning the affection when he comes over and gives you a hug upon spotting you.[roman type][line break]";
				move Lumi to Garden;
				move Casper to Bunker;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Garden:
				say "     [bold type]Carefully collecting her tennis balls together, Lumi returns them to her stash before hurrying inside the library.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Lumi leaps up to give you a hug before [if Fang is booked or Fang is bunkered]going off to watch Blanche with Fang[else]vanishing on an expedition into the library for treasure[end if].[roman type][line break]";
			move Lumi to Grey Abbey Library;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Grey Abbey Library:
				say "     [bold type]Lumi comes bounding out from between the shelves, shouts hello in passing, before rushing downstairs to the bunker.[roman type][line break]";
			else if Player is in Bunker:
				say "     [bold type]Lumi excitedly rushes down the stairs and over to where Bianca, Claude, and Wendis are gathering, eager to join in on the conversation.[roman type][line break]";
			move Lumi to Bunker;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Bunker:
				say "     [bold type]With it being dinner time, Lumi rushes off towards the breakroom, only stopping briefly to leap up and give you a hug before disappearing at speed.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Lumi hurries in, no doubt the smell of food having reached her sensitive nose, barely moments after Bernard and Maeve had begun to cook it.[roman type][line break]";
			move Lumi to Breakroom;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Breakroom:
				say "     [bold type]Licking the last remains of food from around her mouth, Lumi bounds out the door, excitedly telling you that she and Penelope are going to practice sparring in the garden as she rushes out.[roman type][line break]";
			else if Player is in Garden:
				say "     [bold type]Lumi rushes over, making sure that there is a clear area before approaching you to give you a hug. When Penelope arrives, the two begin to spar.[roman type][line break]";
			move Lumi to Bunker;
	else if Charisma of Blanche > 0:
		if hp of Lumi is 0:
			now hp of Lumi is 1;
			move Lumi to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Lumi	"Lumi"

Lumi is a woman.
ScaleValue of Lumi is 3. [human sized]
Body Weight of Lumi is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lumi is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lumi is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lumi is 10.
Mouth Circumference of Lumi is 3.
Tongue Length of Lumi is 10.
Breast Size of Lumi is 1.
Nipple Count of Lumi is 2.
Asshole Depth of Lumi is 10.
Asshole Tightness of Lumi is 2.
Cock Count of Lumi is 0.
Cock Girth of Lumi is 0.
Cock Length of Lumi is 0.
Ball Count of Lumi is 0.
Ball Size of Lumi is 0.
Cunt Count of Lumi is 1.
Cunt Depth of Lumi is 10.
Cunt Tightness of Lumi is 2.
Clit Size of Lumi is 2.
[Basic Interaction states as of game start]
PlayerMet of Lumi is false.
PlayerRomanced of Lumi is false.
PlayerFriended of Lumi is false.
PlayerControlled of Lumi is false.
PlayerFucked of Lumi is false.
OralVirgin of Lumi is true.
Virgin of Lumi is true.
AnalVirgin of Lumi is true.
PenileVirgin of Lumi is true.
SexuallyExperienced of Lumi is false.
TwistedCapacity of Lumi is false.
Sterile of Lumi is true.
MainInfection of Lumi is "".
Description of Lumi is "[LumiDesc]".
Conversation of Lumi is { "Woof grrr" }.
The scent of Lumi is "     Lumi smells of the city, though as she more frequently ends up dirty than her siblings, this should be of little surprise. No doubt she will wash herself later only for this scent to return as soon as she goes scavenging again."

to say LumiDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Lumi] <- DEBUG[line break]";
	if hp of Lumi is 1:
		say "     Lumi is an anthropomorphic female wolf with dense white fur covering her wiry frame, but as she spends the majority of her time on all fours, it is easy to mistake her for being feral. Her behavior is closest to that of a wolf compared to her brothers and sisters and some of her features reflect this too, her stooped posture when she is on two paws being the most noticeable difference, though the longer claws are difficult to miss. Given this, it is unsurprising that she forgoes clothing, especially as garments would likely only slow her down. Perhaps sensing your eyes on her, she rolls on her side, giving you an excellent view of the slight bumps of her A-cup breasts and the canine vulva beneath her gently wagging tail. She seems to be enjoying your attention.";
		say "     Possibly the most capable scavenger among Blanche's children, Lumi enjoys searching for treasure, almost to the point of obsession. Though her family no doubt appreciates the result of this, it is also a source of frequent teasing from her siblings, though rarely to the point where Blanche needs to scold them. Her finds are especially prized by her brother, Casper, due to his own interests, the two of them bonding over what they can offer each other. Despite her more wild behavior, she is just as capable of intelligent thought as the rest of her family, though she seems a little more forthright and stubborn than the majority of them. Prone to playing roughly, she occasionally manages to best even Sturm in their tussles, her ever-shifting quadrupedal method of fighting difficult to adapt to or counter at times. She does not wield much authority among her siblings despite her proficiency at scavenging, nonetheless, she is loved no less by her family.";

[Character Notes - Lumi:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Feral-play
- Feral Ritualism
-
]

Section 2 - Talking

instead of conversing the Lumi:
	if "First Talk" is not listed in Traits of Lumi:
		say "     'I don't know if the others have said it, but thank you for having us come to live with you. It feels a lot safer here than it did at the old den and it means that we're all a lot more relaxed,' Lumi says, meeting your eye sincerely. 'There's less pressure on having to find exactly the right thing while scavenging and we can grab items of personal interest. I can collect balls, Casper can get fabric and comics, and Sturm can see that not everyone needs to be treated as a threat. So, thank you. It has really been for the best. No doubt you know a little about me, but let me tell you a little about myself in my own words. I'm Lumi. I really like looking for treasure, so scavenging is enjoyable to me in its own right. I seem to have turned out a little more feral than my siblings, but none of them quite know why, similar to the mystery behind the size difference between Penelope and the rest of us. If you ever need anything or anyone found, I'm your girl.'";
		TraitGain "First Talk" for Lumi;
	else:
		say "[LumiTalkMenu]";

to say LumiTalkMenu:
	say "     What do you wish to talk about with the animalistic white wolf?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 1;
	now description entry is "Have an idle conversation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Lumi on the nose";
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
				if (nam is "Small Talk"):
					say "[LumiTalk1]";
				if (nam is "Boop"):
					say "[LumiTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Lumi looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LumiTalk1: [Small Talk]
	say "     '[one of]The greatest treasure may be family, but that shouldn't stop me from trying to find some of the lesser treasures too. Their still valuable and shiny[or]This place is full of so many different smells. I don't know how you manage to keep track of them all, and the city has even more[or]I don't know how I would manage without Casper. I just get so fixated on some things and he's able to make me see the things that I might otherwise miss. He's the best[or]Being on all fours just feels so much more natural, though I can see the advantages that being on two brings too[at random].'";

to say LumiTalk2: [Boop]
	say "     As she is already more animalistic than her siblings, it doesn't take much for you to convince yourself to boop Lumi on the nose. 'Wow. Really playing into the stereotype there,' she comments, wagging her tail. 'I hope that you weren't planning on stopping there. Rub between my ears. Tell me I'm a good girl,' she complains when you take your finger away. Chuckling, you comply, smiling as a dopey smile spreads across her muzzle and her tail wags even faster. 'Ahhh... That's a really good feeling. Who needs drugs when they can have pats?' She is shameless in her enjoyment of being treated like this. 'Remind me to pay you back for this someday. Mommy always tells us that no good deed should go unrewarded.'";

Section 3 - Sex

instead of fucking Lumi:
	say "     'Sorry not yet. As much as we all love you, I don't think that we know you very well yet and you wouldn't lose anything by familiarizing yourself with us either. Give me time to see what sort of person you are, then I'll decide whether or not I want to mate with you. Things are looking good so far,' Lumi replies, tucking her tail beaneath her apologetically. She has a point, you have to admit.";

Section 4 - Events

[]

Lumi ends here.
