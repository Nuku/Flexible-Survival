Version 1 of Bianca by Prometheus begins here.

[Blanche's eldest daughter. Seductive]

[   hp of Bianca - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Grey Abbey Garden and Bianca is in Grey Abbey Garden:
				say "     [bold type]Bianca hugs you from behind before telling you that she is going to join her mother on the second floor of the library.[roman type][line break]";
			else if Player is in Grey Abbey 2F:
				say "     [bold type]Bianca winks at you as she reaches the top of the stairs, before snuggling up next to her mother on the sofa.[roman type][line break]";
			move Bianca to Grey Abbey 2F;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Grey Abbey 2F:
				say "     [bold type]Bianca tells you that she is going to the courtyard, blowing a kiss as she departs.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]Bianca beams as she sees you, running over and snuggling up against you, before rushing over to greet Penelope similarly.[roman type][line break]";
			move Bianca to Courtyard;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Courtyard:
				say "     [bold type]Feeling hungry, Bianca gives you a hug before jogging away to the breakroom to get something to eat.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Bianca spares you a quick wave before rushing over to see what Bernard has on offer for her to eat.[roman type][line break]";
			move Bianca to Breakroom;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Breakroom:
				say "     [bold type]Her hunger for food satisfied, Bianca rubs her tummy as she walks by. Rubbing her cheek against you as she passes by, she informs you that she is returning to the den in the computer room.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Bianca walks in and snuggles up against her mother, casting glances at you and Sturm in the hope that you'll join them.[roman type][line break]";
			move Bianca to Computer Lab;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Computer Lab:
				say "     [bold type]Swaying her hips as she leaves, Bianca mischievously grabs her video camera and tells you that she is probably going to be in the library for the next few hours.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Bianca comes out of the computer room swaying her hips, giving you a wink when she sees you before wandering out of sight between the shelves, her video camera clutched in her paws.[roman type][line break]";
			move Bianca to Grey Abbey Library;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Grey Abbey Library:
				say "     [bold type]Bianca runs a paw down your arm as she walks by you on her way down to the bunker.[roman type][line break]";
			else if Player is in Bunker:
				say "     [bold type]Bianca goes over to one of the beds and sits on the edge, beckoning for you to join her, Claude, Wendis, and Lumi as they socialize.[roman type][line break]";
			move Bianca to Bunker;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Bunker:
				say "     [bold type]Bianca blows you a kiss before disappearing up the stairs on her way out into the city on a scavenging trip with Sturm.[roman type][line break]";
			move Bianca to Nowhere;
		[else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night] [Covered in Sturm's time table]
			if a random chance of 4 in 5 succeeds:
				if Player is in Bunker:
					say "     [bold type]Sturm greets you having just returned from a scavenging.[roman type][line break]";
				if Player is in Grey Abbey Garden:
					say "     [bold type]Bianca runs over and gives you a hug, just having returned from scavenging.[roman type][line break]";
				move Sturm to Bunker;
				move Bianca to Grey Abbey Garden;]
	else if Charisma of Blanche > 0:
		if hp of Bianca is 0:
			now hp of Bianca is 1;
			move Bianca to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Bianca	"Bianca"

Bianca is a woman.
ScaleValue of Bianca is 3. [human sized]
Body Weight of Bianca is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Bianca is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Bianca is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Bianca is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Bianca is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Bianca is 10. [length in inches]
Breast Size of Bianca is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Bianca is 2. [count of nipples]
Asshole Depth of Bianca is 10. [inches deep for anal fucking]
Asshole Tightness of Bianca is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Bianca is 0. [number of cocks]
Cock Girth of Bianca is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Bianca is 0. [10 Inches]
Ball Count of Bianca is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Bianca is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Bianca is 1. [number of cunts]
Cunt Depth of Bianca is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Bianca is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Bianca is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Bianca is false.
PlayerRomanced of Bianca is false.
PlayerFriended of Bianca is false.
PlayerControlled of Bianca is false.
PlayerFucked of Bianca is false.
OralVirgin of Bianca is true.
Virgin of Bianca is true.
AnalVirgin of Bianca is true.
PenileVirgin of Bianca is true.
SexuallyExperienced of Bianca is false.
TwistedCapacity of Bianca is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Bianca is true. [steriles can't knock people up]
MainInfection of Bianca is "".
Description of Bianca is "[BiancaDesc]".
Conversation of Bianca is { "Woof grrr" }.
The scent of Bianca is "     Bianca smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say BiancaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Bianca] <- DEBUG[line break]";
	say "     Bianca is an anthropomorphic female wolf covered in lush, well-groomed white fur. She has a sensual body, all soft swells and curves, that aids her frequently seductive demeanor. She seems to wield moderate authority over her siblings, being Blanche's eldest daughter and well-versed at manipulation and persuasion, a tool that you are confident that she makes use of out in the city. So talented at sweet-talking, one might be forgiven for thinking her tongue was made of pure honey is she didn't so often stick it out teasingly and reveal that it is ordinary and pink. Like her mother and siblings, Bianca forgoes clothing, unashamedly leaving her C-cup breasts and black canine vulva exposed to the eye. For a moment, you ponder the effect that this might have on some of the residents of the city before shaking your head to dispel the thought. You didn't need to imagine long.";
	say "     Catching your eye as you resume looking at her, Bianca winks at you and waves, smiling brightly and adjusting her posture to better accentuate her assets. Like all her brothers and sisters, she is devoted to her mother and siblings, though she does seem especially fond of Sturm, gazing [if IncestList is not warded and IncestList is not banned]longingly [else]admiringly [end if] at him when she has nothing else to do. Her sexually-forward nature occasionally earns a concerned word or two from her mother, but for the most part Blanche is content for her daughter to find her own path in the world, a constant presence in support of her should she need it.";

[Character Notes - Bianca:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Voyeur
- Group Sex
- Filming
- Exhibitionism
]

Section 2 - Talking

instead of conversing the Bianca:
	if "First Talk" is not listed in Traits of Bianca:
		say "     'I don't think we've talked like this before. Mommy seemed to take all of your attention. I'm glad that you have time now, but don't forget about them or the others,' Bianca says, cuddling up to your side. 'Now that we're here, perhaps we can liven up this place and improve on the decorating. You've rather let the dust and dirt get away on you.' You ask how she plans on fixing that. 'I don't know, but Ernest will likely have some ideas and I should be able to get some of my other siblings to put in the work.' Unimpressed, you tell her that she should be helping too. 'I would make a joke about there being two kinds of people, but I get the impression that you want a serious answer. Labor assignment and scheduling is Mom's speciality and none of us have had any reason to complain so far. Given my talent for the aesthetic, I'm still planning out our bedroom design. If I get time, I suppose I can lend a paw dusting.' With a sigh, you accept that Blanche likely knows her children better than you. Sturm is unlikely to complain even if he has to do it all by himself.";
		TraitGain "First Talk" for Bianca;
	else:
		say "[BiancaTalkMenu]";

to say BiancaTalkMenu:
	say "     What do you wish to talk about with the seductive white wolf?";
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
	now description entry is "Boop Bianca on the nose";
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
					say "[BiancaTalk1]";
				if (nam is "Boop"):
					say "[BiancaTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Bianca looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BiancaTalk1: [Small Talk]
		say "     '[one of]I may look all style, no substance, but I do my part as much as everyone else. It's just that my part usually revolves around looking pretty to get presents from people instead of rummaging through the trash[or]I don't suppose you've seen any shampoo while out in the city? I'm making do, but you don't get fur like this without proper care[or]Sturm wants to know if you have any plans to expand into the nearby buildings. I think he's worried how cramped the library will become if you provide shelter to everyone you meet, but doesn't think that they should be abandoned either[or]Ernest and Claude might argue a lot, but they are just as attached to each other as I am to Sturm[at random].'";

to say BiancaTalk2: [Boop]
	say "     Looking around to make sure that Sturm isn't watching, you boop Bianca on the nose. 'How scandalous. You don't really believe that he'd attack you do you?' your daughter chuckles, gazing at you with adoration. Smiling at her in return, you wriggle your finger around a bit, her damp nose following suit. Suddenly, you find your wrist firmly grabbed. 'If you're going to be doing that to my sister, don't behave like you are doing something sordid,' Sturm growls, somehow having appeared at your side. He looks ready to scold you further, but upon noticing Bianca's wagging tail, he turns on his heel and stalks away. You have no idea how he managed to sneak up on you, but it would seem that he will permit you booping his sister. Perhaps you should share the love and boop him later.";

Section 3 - Sex

instead of fucking Bianca:
	say "     'While I appreciate the offer, Sturm would give me the cold shoulder if I didn't get to know you first. He'd forgive me eventually, but I remember how he treated you at the office den and I don't want that directed at me. I'm sure it won't be more than a few months before I find out all your darkest secrets and we can explore your more carnal interests.' (WIP)";

Section 4 - Events

instead of going down from Grey Abbey Library while (SarahCured > 3 and Charisma of Blanche > 0 and "Sarah - Perceptive Prude" is not listed in traits of Bianca and a random chance of 1 in 2 succeeds):
	say "     'Are you the one who called Mommy a sex maniac?' Bianca asks Sarah with a smirk. You entered the bunker to find Blanche's eldest daughter starting a conversation with the husky med-student, though you find her choice of opening question blunt. With a sigh, Sarah looks up from rolling some bandages, flinching when she notices the wolf's lack of clothes. 'Don't any of you wear clothes?' she mutters to no-one in particular before taking a breath and replying more calmly. 'I didn't call her a sex maniac, I just questioned her decision to have so many children, especially with the current state of the city. I'm assuming that you were all born recently, though if your mother is older than she looks, I suppose it is possible that one or two of you might have had time to grow up before the city went to Hell. If so, she can't have been that long out of school...' A shadow of sadness crosses your daughter's face. 'Yes, we were born into this. Sturm and I are the oldest, but Mom had been pregnant before. She miscarried.'";
	say "     Sarah immediately stands up and hugs Bianca, the smaller canine being partially absorbed into the curvy wolf's lush fur. 'I'm sorry to hear that. I've seen how devastating that is,' she says sympathetically before stepping back again. [if Charisma of Blanche > 1]'She hasn't told me the whole story, but she got pregnant in her last year of high school. When she told her parents, there was a fight and her boyfriend got hurt[else]'Don't tell anyone. We aren't meant to know, but Sturm overheard her talking to herself. She got pregnant in her last year of high school and when she told her parents there was a fight and her boyfriend got hurt[end if]. The trauma of it all caused her to miscarry. Her dad went to prison for it and she cut herself off from her parents. Ernest thinks that this may be part of the reason that she devotes so much time to showing how much she loves us,' Bianca explains wiping her eyes. The two of them stand in silence for a few moments, lost in thought. Eventually your daughter speaks. 'Anyway. Mum isn't any more a sex maniac now than she was a few years ago. She's just found someone that she trusts again' 'I'm pleased for her. I just hope that none of you end up feeling neglected,' Sarah responds. Watching them get to know each other and start a proper conversation you move away to give them some privacy.";
	TraitGain "Sarah - Perceptive Prude" for Bianca;
	TraitGain "Bianca - Teasing Trollop" for Sarah;
	move Player to Bunker;

Bianca ends here.
