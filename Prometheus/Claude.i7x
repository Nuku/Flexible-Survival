Version 1 of Claude by Prometheus begins here.

[Blanche's third son. Curious]

[   hp of Claude - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Computer Lab:
				say "     [bold type]Claude waves goodbye to you as he rushes out mumbling something about getting the best spot. You see him heading for the staits to the second floor.[roman type][line break]";
			else if Player is in Grey Abbey 2F:
				say "     [bold type]Claude brightly waves to you before going over to snuggle with Blanche and Bianca on the sofa.[roman type][line break]";
			move Claude to Grey Abbey 2F;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Grey Abbey 2F:
				say "     [bold type]Claude gives you a hug before heading downstairs behind his mother.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Upon seeing you, Claude rushes over and gives you a cuddle before wandering off to see what else is going on in the library.[roman type][line break]";
			move Claude to Grey Abbey Library;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Grey Abbey Library:
				say "     [bold type]Overhearing his mother, Claude follows behind her. The idea of a blanket nest sounding quite appealing to him.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Claude smiles at you as he nestles himself in some blankets before shuffling over to be next to Blanche.[roman type][line break]";
			move Claude to Computer Lab;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Computer Lab:
				say "     [bold type]Reluctantly leaving the warmth of his blanket coccoon, Claude hugs you and tells you that he and Ernest are going out scavenging. He brightens up a little as he remembers that he might get to makes ome new friends.[roman type][line break]";
			move Claude to Nowhere;
		[else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon] [Covered in Ernest's time table]
			if a random chance of 4 in 5 succeeds:
				if Player is in Grey Abbey Library: [Ernest]
					say "     [bold type]Back from scavenging, Ernest gives you a hug before going off to look for a book.[roman type][line break]";
				if Player is in Breakroom: [Claude]
					say "     [bold type]Hungry from the scavenging trip, Claude is permitted to get his food before everyone else, though he does hug you in passing.[roman type][line break]";
				move Ernest to Grey Abbey Library;
				move Claude to Breakroom;]
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Breakroom and Claude is in Breakroom:
				say "     [bold type]Brushing crumbs from his chin, Claude gives you a hug before mentioning that he is heading to the bunker.[roman type][line break]";
			else if Player is in Bunker:
				say "     [bold type]Claude wanders past you, absent-mindedly greeting you before going over to chat with Bianca, Wendis, and Lumi.[roman type][line break]";
			move Claude to Bunker;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Bunker:
				say "     [bold type]Their conversation over, Claude gives you a hug before going back upstairs to the library,[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]You see Claude walk past you with a book on massages tucked under one arm. Upon seeing you, he gives you a hug before continuing on his way.[roman type][line break]";
			move Claude to Grey Abbey Library;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Grey Abbey Library:
				say "     [bold type]Claude puts his book back on the shelf before walking past you back tot he computer lab, kissing you on the cheek as he passes by.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Claude enters the computer room and snuggles in a blanket, keeping an eye on Erenest's activity as he dozes.[roman type][line break]";
			move Claude to Computer Lab;
	else if Charisma of Blanche > 0:
		if hp of Claude is 0:
			now hp of Claude is 1;
			move Claude to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Claude	"Claude"

Claude is a person.
ScaleValue of Claude is 3. [human sized]
Body Weight of Claude is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Claude is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Claude is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Claude is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Claude is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Claude is 10. [length in inches]
Breast Size of Claude is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Claude is 2. [count of nipples]
Asshole Depth of Claude is 10. [inches deep for anal fucking]
Asshole Tightness of Claude is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Claude is 1. [number of cocks]
Cock Girth of Claude is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Claude is 10. [10 Inches]
Ball Count of Claude is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Claude is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Claude is 0. [number of cunts]
Cunt Depth of Claude is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Claude is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Claude is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Claude is false.
PlayerRomanced of Claude is false.
PlayerFriended of Claude is false.
PlayerControlled of Claude is false.
PlayerFucked of Claude is false.
OralVirgin of Claude is true.
Virgin of Claude is true.
AnalVirgin of Claude is true.
PenileVirgin of Claude is true.
SexuallyExperienced of Claude is true.
TwistedCapacity of Claude is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Claude is true. [steriles can't knock people up]
MainInfection of Claude is "".
Description of Claude is "[ClaudeDesc]".
Conversation of Claude is { "Woof grrr" }.
The scent of Claude is "     Claude has an amalgamation of smells, likely from close contact with many different people due to his 'social tendencies'."

[Female form]
[
ScaleValue of Claude is 3. [human sized]
Body Weight of Claude is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Claude is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Claude is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Claude is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Claude is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Claude is 6. [length in inches]
Breast Size of Claude is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Claude is 2. [count of nipples]
Asshole Depth of Claude is 10. [inches deep for anal fucking]
Asshole Tightness of Claude is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Claude is 0. [number of cocks]
Cock Girth of Claude is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Claude is 0. [10 Inches]
Ball Count of Claude is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Claude is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Claude is 1. [number of cunts]
Cunt Depth of Claude is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Claude is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Claude is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Claude is false.
PlayerRomanced of Claude is false.
PlayerFriended of Claude is false.
PlayerControlled of Claude is false.
PlayerFucked of Claude is false.
OralVirgin of Claude is true.
Virgin of Claude is true.
AnalVirgin of Claude is true.
PenileVirgin of Claude is true.
SexuallyExperienced of Claude is true.
TwistedCapacity of Claude is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Claude is true. [steriles can't knock people up]
MainInfection of Claude is "".
Description of Claude is "[ClaudeDesc]".
Conversation of Claude is { "Woof grrr" }.
The scent of Claude is "     Claude has an amalgamation of smells, likely from close contact with many different people due to her 'social tendencies'."
]

to say ClaudeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Claude] <- DEBUG[line break]";
	if Claude is Male:
		say "     Claude is an anthropomorphic male wolf who is covered from head to toe in well-kept white fur, which is a surprise considering some of his activities out in the city. He seems to take a certain pride in his appearance, keeping his fur clean and combed to a similar degree as Bianca. He is overly trusting to the point of naivety at times, much to the lament of his mother who frequently helps him tidy up after his most recent [']friend['] leaves him after they've had their fun with him. So far, he has had enough sense to avoid those that might try to keep him. Like the rest of his family, he walks around naked, revealing his sheath and balls to the rest of the world, a factor that likely attracts these [']friends['] while he is out and about. Sometimes the effects of his socialization are greater than others...";
		say "     Accustomed to drawing the eyes of others, it takes Claude a few moments to realize that you are gazing over his body, but when he does he directs a wide smile and does a few poses before resuming what he was doing before. He seems to cause great exasperation in his scavenging-partner, Ernest, the contrast in their outlooks on life causing friction between the two. Ernest might be more successful with his criticism were Claude not one of the best scavengers, frequently returning with gifts and spoils from the friends and [']friends['] that he has made while out in the city. Given that he is happy and that no serious harm has yet come to him, Blanche has so far allowed him to find his own way in the world, though she does seem to make sure there is always another pair scavenging near him and Ernest, just in case. He may not wield much authority among his siblings, but has built up a network of friends out in the city.";
	else if Claude is Female:
		say "     Claudia is an anthropomorphic female wolf who is covered from head to toe in well-kept white fur, which is a surprise considering some of her activities out in the city. She seems to take a certain pride in her appearance, keeping her fur clean and combed to a similar degree as Bianca. She is overly trusting to the point of naivety at times, much to the lament of her mother who frequently helps her tidy up after her most recent [']friend['] leaves her after they've had their fun with her. So far, she has had enough sense to avoid those that might try to keep her. Like the rest of her family, she walks around naked with her B-cup breasts and puffy canine spade on display, a factor that likely attracts these [']friends['] while she is out and about. Sometimes the effects of her socialization are greater than others...";
		say "     Accustomed to drawing the eyes of others, it takes Claudia a few moments to realize that you are gazing over her body, but when she does she directs a wide smile towards you and does a few poses before resuming what she was doing before. She seems to cause great exasperation in her scavenging-partner, Ernest, the contrast in their outlooks on life causing friction between the two. Ernest might be more successful with his criticism were Claudia not one of the best scavengers, frequently returning with gifts and spoils from the friends and [']friends['] that she has made while out in the city. Given that she is happy and that no serious harm has yet come to her, Blanche has so far allowed her to find her own way in the world, though she does seem to make sure there is always another pair scavenging near her and Ernest, just in case. She may not wield much authority among her siblings, but has built up a network of friends out in the city.";

[Character Notes - Claude:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Gendershifting
- Sexual Party Games
- Sex while Dancing
]

Section 2 - Talking

instead of conversing the Claude:
	if "First Talk" is not listed in Traits of Claude:
		say "     'I was wondering if you were ever going to talk to me,' Claude complains light-heartedly. 'I was asking myself if I should be the one to start a conversation, but a part of me thought that that might be rude. You'd talk to me when you had the time. I'm just glad that it didn't take any longer or I might have just burst.' He places an arm around your shoulder [if ScaleValue of Player is not 3]as best he can [end if]as he continues to talk. 'Making friends is rather important to me, so the thought that one of my parents might avoid me was agony, but I'm glad that I was just overreacting. Now that that's over I can relax knowing that you'll make time for me when you can. I can give you a back rub if you get too stressed, be an ear to talk to if you need to vent, or introduce you to some of the friends that I have made out in the city, assuming that their open to getting to know you. They're all good people, even if they can be a little handsy at times. Anyway, if you want to talk, I'll be around. It's great talking with you.' He seems sincere in his friendliness, if a little over enthusiastic.";
		TraitGain "First Talk" for Claude;
	else:
		say "[ClaudeTalkMenu]";

to say ClaudeTalkMenu:
	say "     What do you wish to talk about with the friendly white wolf?";
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
	now description entry is "Boop Claude on the nose";
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
					say "[ClaudeTalk1]";
				if (nam is "Boop"):
					say "[ClaudeTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Claude looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ClaudeTalk1: [Small Talk]
		say "     '[one of]I think that you understand me better than the rest of my family when it comes to the importnace of making friends out in the city. If you hadn't helped Mom when you did, none of us would have ever been born[or]Sometimes when I meet up with friends we end up playing games together. Board games, Tabletop games, and sometimes if they find batteries, we take turns playing handheld video games. I gotta say, it's a great way to have fun. One day I want to have things like that.[or]I have the worst time trying to pull Ernest away from whatever he is doing to go scavenging out in the city. If he were invested any further into his work or reading, he may end up never coming out of the library[or]If you ever want a massage, I'd be more than happy to help you to relax and forget the hardships of the city for a while. While you could have the massage with your clothes on, for a more deep seated relaxation it's better if you are naked. Though I say that, none of my siblings actually wear anything so I'm not sure what the difference wearing clothes would make[at random].'";

to say ClaudeTalk2: [Boop]
	say "     From the moment you look Claude in the eyes, you find yourself filled with the urge to give him a boop to see how he would react, only to find yourself getting your snoot booped instead. Momentarily going cross-eyed looking at the furry digit now having pre-emptively booped your snoot, Claude giggles and says 'Nothing says family closeness like a boop to the snoot!' his demonstration of familial affection brings a smile to your face as you reward him with head floofing pats and finish with a boop to his snoot in return.";

Section 3 - Sex

instead of fucking Claude:
	say "     That would be great, but even Bianca says that I should give it some more time. I know, it's annoying and you aren't the first to think so, but Mom was pretty serious when I brought up the idea of doing it with some of my friends, so I should at least discuss it with her before borrowing her mate.' That felt like a convoluted way of saying no, but there is still hope for the future. (WIP)";

Section 4 - Events

[Candy]

Claude ends here.
