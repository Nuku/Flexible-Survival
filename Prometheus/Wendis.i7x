Version 1 of Wendis by Prometheus begins here.

[Blanche's third daughter. Joy]

[   hp of Wendis - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Grey Abbey Library:
				say "     [bold type]Wendis brightly tells you that she is going to the computer room and that you can join her if you want to, before skipping away.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Wendis runs over and gives you a hug, before jumping up and down waiting for Penelope to pick her up, cheering when she is on her sister's shoulders.[roman type][line break]";
			move Wendis to Computer Lab;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Computer Lab:
				say "     [bold type]Grumbling at Penelope for ending their snuggling, Wendis sulkily trudges out the door into the library, too focused on such an injustice to notice your presence.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Looking a little grouchy, Wendis seems to cheer up upon seeing you, rushing over to cuddle with you before wandering over to watch Blanche and Sturm play chess.[roman type][line break]";
			move Wendis to Grey Abbey Library;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Grey Abbey Library:
				say "     [bold type]Deciding that it is time for breakfast, Wendis hurries towards the breakroom as quickly as her little legs will carry her.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Other than Bernard and Maeve, Wendis is the first one to arrive through the door, putting her at the head of the queue waiting for breakfast.[roman type][line break]";
			move Wendis to Breakroom;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Breakroom:
				say "     [bold type]Licking around her lips, Wendis tells you that she is going out to the garden, squealing excitedly as she is seized by Penelope and hoisted onto the larger wolf's shoulders.[roman type][line break]";
			else if Player is in Garden:
				say "     [bold type]Following just behind Penelope, Wendis waves to you before going off to [if Lumi is booked or Lumi is bunkered]play ball with Lumi around the garden[else]intermittently play and read her sister's book over her shoulder[end if].[roman type][line break]";
			move Wendis to Garden;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Garden:
				say "     [bold type]Clambering up Penelope's back, Wendis proudly tells you that the two of them are going out scavenging.[roman type][line break]";
			move Wendis to Nowhere;
		[else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon] [Covered in Penelope's time table]
			if a random chance of 4 in 5 succeeds:
				if Player is in Garden: [Penelope]
					say "     [bold type]Having finished her scavenging for the day, Penelope returns to the garden, giving you a cuddle in greeting before going over to see if Sturm wants a sparring match.[roman type][line break]";
				if Player is in Bunker: [Wendis]
					say "     [bold type]Wendis rushes in, leaping up to give you a hug before hurrying over to where Bianca, Claude, and Lumi are seated on some beds. Her scavenging trip probably went well then.[roman type][line break]";
				move Penelope to Garden;
				move Wendis to Bunker;]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Bunker and Wendis is in Bunker:
				say "     [bold type][roman type][line break]";
			else if Player is in Makeshift Rec Room:
				say "     [bold type]Entering the room, Wendis immediately rushes towards her easel, calling hello to you before she begins sorting through her paints and brushes.[roman type][line break]";
			move Wendis to Makeshift Rec Room;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Makeshift Rec Room:
				say "     [bold type]Somehow having avoided getting paint on herself, Wendis finishes washing her brushes before heading towards the door towards the library.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Wendis walks in and hugs you before wandering off with Casper, the two of them discussing body art and clothes.[roman type][line break]";
			move Wendis to Grey Abbey Library;
	else if Charisma of Blanche > 0:
		if hp of Wendis is 0:
			now hp of Wendis is 1;
			move Wendis to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Wendis	"Wendis"

Wendis is a woman.
ScaleValue of Wendis is 2. [child-sized] [Not a child, just short]
Body Weight of Wendis is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Wendis is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Wendis is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Wendis is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Wendis is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Wendis is 8. [length in inches]
Breast Size of Wendis is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Wendis is 2. [count of nipples]
Asshole Depth of Wendis is 10. [inches deep for anal fucking]
Asshole Tightness of Wendis is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Wendis is 0. [number of cocks]
Cock Girth of Wendis is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Wendis is 0. [10 Inches]
Ball Count of Wendis is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Wendis is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Wendis is 1. [number of cunts]
Cunt Depth of Wendis is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Wendis is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Wendis is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Wendis is false.
PlayerRomanced of Wendis is false.
PlayerFriended of Wendis is false.
PlayerControlled of Wendis is false.
PlayerFucked of Wendis is false.
OralVirgin of Wendis is true.
Virgin of Wendis is true.
AnalVirgin of Wendis is true.
PenileVirgin of Wendis is true.
SexuallyExperienced of Wendis is false.
TwistedCapacity of Wendis is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Wendis is true. [steriles can't knock people up]
MainInfection of Wendis is "".
Description of Wendis is "[WendisDesc]".
Conversation of Wendis is { "Woof grrr" }.
The scent of Wendis is "     Wendis smells of sweets, though where she found them she has yet to share. You also think you can catch a hint of Penelope's scent on her too."

to say WendisDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Wendis] <- DEBUG[line break]";
	if hp of Wendis is 1:
		say "     Wendis is an anthropomorphic female wolf with soft and fluffy white fur covering her petite frame. Much smaller than her siblings, maybe only four foot tall at most, she frequently takes advantage of her appearance to tug on the heartstrings of the more friendly occupants of the city while out scavenging. Care-free and friendly, possibly to the point of naivety, she is usually cheerful, her tail wagging wildly behind her as she attempts to brighten her siblings['] day. Despite her height, she is no child, two B-cup breasts hidden beneath the lush fur of her chest and a delicate curve to her waist. Like the majority of her family, she eskews wearing clothes, meaning that occasionally you catch sight of her puffy vulva beneath her restless tail.";
		say "     Noticing that she has caught your attention, Wendis rushes over to you and hugs you with all her might before leaping back and hopping from one hind-paw to the other with excitement, inadvertently jiggling her modest chest about as she moves. Often seen hanging around the neck of her older sister, Penelope, who seems to be her favorite person in the world, she spends a significant amount of her time boosting the morale of siblings who have had limited success in their scavenging runs or practicing her aim at throwing stones due to her physiological limitations. It would be hard to find anyone who dislikes her.";

[Character Notes - Wendis:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Size Difference (as smaller partner)
- Sexual Art
-
]

Section 2 - Talking

instead of conversing the Wendis:
	if "First Talk" is not listed in Traits of Wendis:
		say "     '[BlancheMommyDaddyTitle]!' Wendis shouts gleefuly, throwing herself into your arms. You swing her around before placing her back on the ground again, smiling at her exuberance. 'How are you today? Have you been doing anything interesting? Which of us is your favorite? Do you have any treats for me?' Wendis's barrage of questions is intimidating in a very different way to Sturm's scowls. It makes you wonder whether she manages to take advantage of her siblings and Blanche with her sweet demeanor. 'You're looking at me funny. Did I do something wrong?' she says with worry, interrupting your thoughts. As she clings to your side, you half dismiss your previous idea. Her family may spoil her, but her joyful personality suggests that there is no malice or megalomania behind it.";
		TraitGain "First Talk" for Wendis;
	else:
		say "[WendisTalkMenu]";

to say WendisTalkMenu:
	say "     What do you wish to talk about with the small white wolf?";
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
	now description entry is "Boop Wendis on the nose";
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
					say "[WendisTalk1]";
				if (nam is "Boop"):
					say "[WendisTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Wendis looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say WendisTalk1: [Small Talk]
		say "     '[one of]I suspect that some of the others conspired to steal my height. Especially Penelope and Bernard. If you get the chance, take it back for me[or]Can you imagine how terrifying it would be to have a wolf thrown at you? I can, but Penelope won't toss me[or]Ooh. Stay right there. The light is catching you just right[or]The world would be a lot better if people cared more about happiness than power. But then I suppose power makes some people happy. Usually the wrong people[at random].'";

to say WendisTalk2: [Boop]
	say "     Looking almost like a soft toy, you can't resist booping Wendis on the nose. She giggles and squirms, meeting your gaze and begging for you to do it again with her eyes. When you do so, she laughs and flings her arms around you. '[BlancheMommyDaddyTitle] love me beeest. [BlancheMommyDaddyTitle] loves me beeest,' she sings as she hugs and kisses you. You have to admit that it is quite the enthusiastic response, though no less adorable. 'That was delightful, but you do realize that I'm not a child despite my short stature and overflowing optimism,' she says, suddenly more serious. 'Perhaps you can join some of us when we play some of our erotic games.' With that made clear, she relaxes and snuggles up to you, enjoying the contact.";

Section 3 - Sex

instead of fucking Wendis:
	say "     'That sounds fun, but I think that I'm still getting to know you. There are some really dirty books if you look in the right places and Bianca lets me look at her collection of pictures that she found while scavenging, perhaps she'd let you look too? We also occassionally play a game where we pose hypothetical lewd situations to each other and have to answer what we would do in them[if IncestList is not warded and IncestList is not banned]. Even Mommy joins in and then it's really fun[end if]. You could play it with us too if you want.' While Wendis has said no, it sounds like she is very open to the idea in future.";

Section 4 - Events

[instead of going north from Back Of The Library while (loyalty of Zoe > 4 and Charisma of Blanche > 0 and "Zoe - Street Artist" is not listed in traits of Wendis and a random chance of 1 in 2 succeeds):
	say "     ";
	say "     ";
	TraitGain "Zoe - Street Artist" for Bianca;
	TraitGain "Wendis - Amateur Artist" for Zoe;
	move Player to Makeshift Rec Room;]

Wendis ends here.
