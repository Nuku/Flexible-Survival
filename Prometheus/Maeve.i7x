Version 1 of Maeve by Prometheus begins here.

[Blanche's fourth daughter. Willful]

[   hp of Maeve - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		[if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight] [Covered in Bernard's time table]
			if Player is in Courtyard: [Bernard]
				say "     [bold type]As Bernard walks out of the library, fresh back from scavenging, his eyes light up upon seeing you and he runs over to hug you, only parting when Sturm and Lumi call him over to begin sparring.[roman type][line break]";
			if Player is in Grey Abbey 2F: [Maeve]
				say "     [bold type]Maeve waves upon seeing you as she reaches the top of the stairs, smiling at you as she goes to snuggle with Blanche.[roman type][line break]";]
		if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Grey Abbey 2F:
				say "     [bold type]Maeve tells you that she is going to the bunker to hang out with Bernard and Ernest, before sliding down the railing of the stairs.[roman type][line break]";
			else if Player is in Bunker:
				say "     [bold type]Maeve excitedly rushes into the room, talking to you briefly while she waits for Bernard and Ernest to arrive. Once they appear, she excuses herself and the three of them descend into conversation.[roman type][line break]";
			move Maeve to Bunker;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Bunker:
				say "     [bold type]Maeve follows behind Bernard to help him prepare breakfast for the family in the breakroom.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Maeve walks in, tightly hugs you, then begins to sort through their stock of food for suitable breakfast ingredients as directed by Bernard.[roman type][line break]";
			move Maeve to Breakroom;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Breakroom:
				say "     [bold type]With breakfast over, Maeve quickly tidies up before hurrying out of the room after Bernard, calling over her shoulder that she is going to the computer room.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Maeve hurries in, nearly crashing into you in her haste. After a quick (but sincere) apology, she goes over to snuggle with Bernard and Blanche beneath the blankets.[roman type][line break]";
			move Maeve to Computer Lab;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Computer Lab:
				say "     [bold type]Disappointed that she has to leave the warmth of the blankets, nonetheless, Maeve tells you that she is going to get some fresh air in the courtyard before leaving with a wink.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]Maeve comes out of the library and goes to sit on the edge of the fountain, deep in thought.[roman type][line break]";
			move Maeve to Courtyard;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Courtyard:
				say "     [bold type]Maeve stands up and heads back towards the library, giving you a hug as she leaves.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Maeve appears from towards the garden, grabs her magic kit from where she had left it on the bookshelf and drags Bernard away to resume practicing.[roman type][line break]";
			move Maeve to Grey Abbey Library;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Grey Abbey Library:
				say "     [bold type]Carefully putting her magic kit back on the shelf, Maeve follows after Bernard towards the breakroom, briefly stopping to give you a hug.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Maeve enters the breakroom and helps Bernard to begin preparing dinner, greeting Blanche and Lumi when they arrive.[roman type][line break]";
			move Maeve to Breakroom;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Breakroom:
				say "     [bold type]With a hug goodbye, Maeve tells you not to have too much fun while she and Bernard are out scavenging.[roman type][line break]";
			move Maeve to Nowhere;
	else if Charisma of Blanche > 0:
		if hp of Maeve is 0:
			now hp of Maeve is 1;
			move Maeve to Breakroom;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Maeve	"Maeve"

Maeve is a woman.
ScaleValue of Maeve is 3. [human sized]
Body Weight of Maeve is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Maeve is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Maeve is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Maeve is 10.
Mouth Circumference of Maeve is 3.
Tongue Length of Maeve is 10.
Breast Size of Maeve is 3.
Nipple Count of Maeve is 2.
Asshole Depth of Maeve is 10.
Asshole Tightness of Maeve is 2.
Cock Count of Maeve is 0.
Cock Girth of Maeve is 0.
Cock Length of Maeve is 0.
Ball Count of Maeve is 0.
Ball Size of Maeve is 0.
Cunt Count of Maeve is 1.
Cunt Depth of Maeve is 10.
Cunt Tightness of Maeve is 2.
Clit Size of Maeve is 3.
[Basic Interaction states as of game start]
PlayerMet of Maeve is false.
PlayerRomanced of Maeve is false.
PlayerFriended of Maeve is false.
PlayerControlled of Maeve is false.
PlayerFucked of Maeve is false.
OralVirgin of Maeve is true.
Virgin of Maeve is true.
AnalVirgin of Maeve is true.
PenileVirgin of Maeve is true.
SexuallyExperienced of Maeve is false.
TwistedCapacity of Maeve is false.
Sterile of Maeve is true.
MainInfection of Maeve is "".
Description of Maeve is "[MaeveDesc]".
Conversation of Maeve is { "Woof grrr" }.
The scent of Maeve is "     Maeve smells of a multitude of things, only a few of which you can identify. Beneath all of this you can still detect her natural wolfy aroma."

to say MaeveDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Maeve] <- DEBUG[line break]";
	if hp of Maeve is 1:
		say "     Maeve is an anthropomorphic female wolf with silky white fur. Always coming up with hare-brained schemes, she is the type to attempt something without fully thinking through the execution or the possible outcomes, leaving her in awkward situations that require the her family, usually Bernard, to help her out of. She is not above using her usual nakedness to grab someones attention before lulling them into a sense of safety, false or otherwise, her C-cup breasts swaying hypnotically in time with her hips, the black lips of her vulva peeking out occasionally. While she has no training in proper hypnotism, you doubt that she would be above learning such arts to compliment her current grasp of magic tricks and misdirection.";
		say "     You realize that you have been staring at Maeve for longer than you had intended and that she is looking back at you, a cheeky smirk on her face. Outwardly friendly and agreeable, it can be difficult at times to be sure that she isn't working some angle or buttering someone up for later fun. Despite her mischievous ways, she is well liked by her family, especially when she is hyping her next [']get rich quick['] scheme that any sensible person would be skeptical of, or performing magic tricks using sleight of hand. She is especially close to Bernard, the contrast between them only serving to further complement their respective capabilities when out scavenging.";

[Character Notes - Maeve:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Hypnosis
- Role-reversal
-
]

Section 2 - Talking

instead of conversing the Maeve:
	if "First Talk" is not listed in Traits of Maeve:
		say "     'How has the city been treating you [BlancheMommyDaddyTitle]? Made any incredible discoveries lately?' Maeve says playfully, which causes you to cock one of your eyebrows at her. Considering there are a lot of things that are incredible about the city these days you can't help but wonder what she is looking for specifically. 'While it's true that there are a lot of weird [']n wacky things going on in the city, I was more wondering if you had seen or found anything in the realm of the occult while you were out.' Hearing this, you can't help but chuckle and tell her that you haven't been to the realm of the occult lately and thus haven't been able to bring her back any souvenirs. Maeve laughs at your glib and says, 'Funny. Here I was under the impression that you had been spirited away into another realm during your long absences from the Library. Regardless of the conspiracy theories, I'm happy that I'm wrong about that.' She then gives you a hug that you return in kind.";
		TraitGain "First Talk" for Maeve;
	else:
		say "[MaeveTalkMenu]";

to say MaeveTalkMenu:
	say "     What do you wish to talk about with the ambitious white wolf?";
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
	now description entry is "Boop Maeve on the nose";
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
					say "[MaeveTalk1]";
				if (nam is "Boop"):
					say "[MaeveTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Maeve looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say MaeveTalk1: [Small Talk]
		say "     '[one of]If you find any playing cards, tarot cards, or grimoires in good condition during your travels in the city, could you please bring them back as souvenirs? While the grimoires most likely would be fakes, they would have cool designs and I really enjoy collecting them. Especially as it seems to irritate Ernest due to his obsession with science[or]While Bianca isn't really one for taking a starring role, she does like talking more than Bernard, but some of the things she talks about are... a little weird, I guess? Though regardless of the weirdness its worth exploring when it comes to trying new things[or]I'm thankful that Bernard is such a hard worker and is willing to try out the plans I come up with. I try to make them as successful as possible but sometimes things just get out of paw. Fortunately, his muscles are nearly as large as his heart and he is more than capable of settling things when push comes to shove[or]Do you want to see a magic trick? I'd be more than happy to have your help as an assistant if you want to join in. I'll even teach you how to do tricks of your own if you would be so inclined. If you couldn't tell, Bernard and Mommy are the only ones who happily join in, Everyone else prefers just to watch[at random].'";

to say MaeveTalk2: [Boop]
	say "     Standing before Maeve you get the ever growing urge to strengthen the ties that bind by booping her snoot, though you make sure to get close and raise the comfort level by giving her head pats before suddenly going in for the boop. When your finger touches her nose you hear a loud 'BZZZT' as Maeve begins to laugh until tears appear. After getting herself under control she says 'I saw that look from a mile away as its the one Sturm has whenever he wants to give affection to others, naturally I felt the need to try out this handy custom made nose buzzer that I had Ernest make for me.' hearing this you can't help but laugh as well, the both of you laughing up a storm.";

Section 3 - Sex

instead of fucking Maeve:
	say "     'That would be wonderful, but for such a special event I really should dedicate myself to working on the rehearsal, don't you think?' You can't really think of any reason to say otherwise and are actually feeling a more than little touched that she considers spending such a time with you as a special moment. (WIP)";

Section 4 - Events

[]

Maeve ends here.
