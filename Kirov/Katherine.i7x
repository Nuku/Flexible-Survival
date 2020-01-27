Katherine by Kirov begins here.

"Adds Katherine the German Shepherd Bitch as an NPC to the game to hold variables and for future expansion"

[ Engergy of Katherine		- counts the number of consecutive victories by the player over the gsb monster ]

[ HP of Katherine			- status of Katherine ]
[ 0 - Not yet met					]
[ 1 - Roaming the wild as a gsb 	]
[ 2 - Brought back to the library	]
[ 3 - Started quest					]
[ 4-8 - Quest counters				]
[ 9 - Lover Katherine				]
[ 50 - Mindless Katherine			]
[ 90 - Opted not to recruit			]
[ 91 - Betrayed Katherine			]


[ MaxHP of Katherine        - reserved for temporary use ]

[ XP of Katherine			- Katherine's trust of the player ]

[ Level of Katherine		- Prevents spamming of chitchat to exploit supplies ]

Section 0 - Setup and Declaration

Table of GameCharacterIDs (continued)
object	name
Katherine	"Katherine"

Katherine is a woman.
ScaleValue of Katherine is 3. [human sized]
Body Weight of Katherine is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Katherine is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Katherine is 7. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Katherine is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Katherine is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Katherine is 5. [length in inches]
Breast Size of Katherine is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Katherine is 2. [count of nipples]
Asshole Depth of Katherine is 8. [inches deep for anal fucking]
Asshole Tightness of Katherine is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Katherine is 0. [number of cocks]
Cock Girth of Katherine is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Katherine is 0. [length in inches]
Ball Count of Katherine is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Katherine is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Katherine is 1. [number of cunts]
Cunt Depth of Katherine is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Katherine is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Katherine is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Katherine is false.
PlayerRomanced of Katherine is false.
PlayerFriended of Katherine is false.
PlayerControlled of Katherine is false.
PlayerFucked of Katherine is false.
OralVirgin of Katherine is false.
Virgin of Katherine is false.
AnalVirgin of Katherine is true.
PenileVirgin of Katherine is true.
SexuallyExperienced of Katherine is true.
TwistedCapacity of Katherine is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Katherine is false. [steriles can't knock people up]
MainInfection of Katherine is "German Shepherd Bitch".
The description of Katherine is "[KatherineDescription]".
The scent of Katherine is "Katherine has a familiar, somewhat earthly scent common among dogs, but there is a hint of your own scent mixed in from all the times you've claimed her as yours.".
The conversation of Katherine is { "Woof!" }.
The fuckscene of Katherine is "[KatherineSexCheck]".

to say KatherineDescription:
	if debugactive is 1:
		say "     DEBUG -> Energy: [Energy of Katherine], HP: [HP of Katherine], XP: [XP of Katherine], Level: [Level of Katherine] <- DEBUG[line break]";
	say "     Katherine is a tall and athletic woman with the form of an anthro German shepherd. She is covered in long, shaggy fur with the black and brown shadings typical for the breed. Despite the aura of toughness that surrounds her, she unconsciously lifts and wags her tail when she sees you looking at her, a clear sign that you've tamed the bitch.";

instead of conversing the Katherine:
	say "[KatherineTalkMenu]";

HP of Katherine is 0.
MaxHP of Katherine is 0.
XP of Katherine is 0.
Level of Katherine is 0.

Section 1 - Discussion

to say KatherineTalkMenu:
	if debugactive is 1:
		say "     DEBUG -> Energy: [Energy of Katherine], HP: [HP of Katherine], XP: [XP of Katherine], Level: [Level of Katherine] <- DEBUG[line break]";
	say "     Katherine wags her tail furiously as you step up to her. She smiles, waiting to hear what you have to say. [bold type]What did you want to talk to her about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chitchat";
	now sortorder entry is 1;
	now description entry is "Talk about whatever comes to mind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her";
	now sortorder entry is 2;
	now description entry is "Ask the shepherd about herself";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	now calcnumber is -1;
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
				if nam is "Chitchat":
					say "[KatherineChitchat]";
				else if nam is "Her":
					say "[KatherineSelf]";
				wait for any key;
		else if calcnumber is 0:
			say "     Taking a step back, you depart the converstation for now. Katherine gives you a smile and a small wave goodbye before returning to her own musings.";
			now sextablerun is 1;
	clear the screen and hyperlink list;

to say KatherineChitchat:
	let cclist be a list of texts;
	now cclist is {};
	if HP of Katherine < 50:
		[ Normal Katherine ]
		add "[KatherineCC1]" to cclist;
		if Level of Katherine is 1:
			add "[KatherineCC2]" to cclist;
			now Level of Katherine is 0;
		add "[KatherineCC3]" to cclist;
		if Korvin is in Makeshift Rec Room:
			add "[KatherineCC4]" to cclist;
		add "[KatherineCC5]" to cclist;
		[]
		if HP of Katherine > 8:
			[ Lover Katherine ]
			say "     ";
	else:
		[ Mindless Katherine ]
		say "     ";
	sort cclist in random order;
	say "[entry 1 of cclist]";
	increase XP of Katherine by 1;

[ Katherine's random musings ]
to say KatherineCC1:
	say "     'It was tough trying to survive out there on my own. But I'm glad I found you. Food, water, shelter. As long as we pool our resources, we've got it all. We've got a nice little camp here, and I feel like we can really start putting things back together best we can.'";

to say KatherineCC2:
	say "     'So I was out scavenging yesterday. You'll never believe what I found!' she exclaims. 'I was rummaging through some abandoned vehicles and found some poor sucker's emergency supplies. They must have succumbed before they could use it themselves. Here's a bit of what I found.' She tosses you a pack, and you reach in to grab an item of interest, handing the rest back to her.";
	if a random chance of 1 in 2 succeeds:
		increase carried of food by 1;
	else:
		increase carried of water by 1;

to say KatherineCC3:
	say "     Katherine stretches her arms up in the air, unintentionally giving you a nice view of her well-toned body. 'Just got back from a jaunt out in town not too long ago,' she explains. 'No luck, unfortunately. Had a run in with a dangerous looking wyvern before I could find any loot.'";

to say KatherineCC4:
	[ Comment on Korvin ]
	say "     'So who's that other shepherd you managed to tame? I won't lie, he looks kinda cute.' Katherine smiles at you, but then she hastens to add, 'Not that I'd ever be unfaithful to you Alpha.' You chuckle and give her a pat on the head, to which she eagerly wags her tail, pleased that she still has your favor.";

to say KatherineCC5:
	say "     'I'm actually rather glad I turned into a dog instead of something else. All the fur means I can stay nice and warm without worrying about clothes, and this senstive nose has been a life saver while out looking for supplies.'";

[ Discuss Katherine's past, eventually leading to her quest ]
to say KatherineSelf:
	if HP of Katherine < 2:
		say "ERROR: You should not be able to talk to Katherine at this point. Please report this on the Discord server.";
	else if HP of Katherine is 2:		[ Katherine is at the library ]
		if XP of Katherine < 4:			[ Trust not high enough to start quest ]
			say "     'I... Well... To be honest, I don't really remember much before things... changed. I've been so focused on just trying to survive, and this infection hasn't just been physical. I've felt my mind slipping more than once whenver I was around other German shepherds, back in the city.' Katherine shuffles her feet as she speaks, looking down at the ground. 'It's something that's been bothering me ever since I settled down here.' The canine looks back up at you, hardening her expression. 'I'm sorry,' she says. 'I'm not really comfortable discussing this right now. Maybe if I've had some time to think, I'll remember more later.'";
			if XP of Katherine < 3:
				increase XP of Katherine by 1;
		else:							[ Beginning of quest ]
			say "     Katherine's smile turns melancholy as you bring up the topic. 'I've been thinking, actually,' she says, clutching a paw to her chest. 'I really don't know who I was before the outbreak, and the thought's really been eating away at me.' She looks you in the eye, and you get a sense that she's about to confide in you. 'I haven't ever shown anyone this, but I feel I can trust you.' She pulls out a chain necklace hidden within the tufts of fur on her chest, reluctantly handing it to you to examine without taking it off. Strung on the end is a silver ring, and etched onto the inner surface is a name just a bit too worn to make out clearly. Squinting, you're just barely able to read 'Katherine H-' before she pulls the ring back. You're not certain you could have even gleaned that had you not known her name already.";
			say "     'I've held on to it for as long as I can remember,' the shepherd reveals to you. 'It's one of the few connections to the past I still have, and I think it's what's kept me from loosing my mind completely.' She hides the precious artifact within her floof once again. 'I've hidden a few more items in a stash out in town, but they don't mean much to me with my memory as it is. I though maybe you... I...' She falters for a moment before mustering up a reserve of courage. 'Would you come with me to take a look at them? I know it's a long shot, but maybe there's something there you'd recognize. It would mean a lot to me, finding out at least something of my past.' [bold type]Do you embark on a quest to help her rediscover her past?[roman type][line break]";
			if Player consents:			[ Player accepts quest ]
				say "     ";
			else:						[ Player does not accept quest ]
				say "     Upon hearing your answer, Katherine's pointed ears flatten against her head momentarily before she perks back up, quickly disguising her moment of weakness with a hearty laugh. 'Ha, no worries. It was kind of a silly request anyway.' She lightly pats your shoulder before walking away. As you watch her depart, she turns her head to address you once more. 'But if you change your mind, come talk to me again,' she says, a glimmer of hope in her eyes. You give her a nod before returning your attention to what lies ahead.";

Section 2 - Sex

to say KatherineSexCheck:
	if lastfuck of Katherine - turns < 4:
		if HP of Katherine < 50:
			[ Normal Katherine ]
			say "     ";
		else:
			[ Mindless Katherine ]
			say "     ";
	else:
		say "[KatherineSexMenu]";

to say KatherineSexMenu:
	if HP of Katherine is 9 or a random chance of 1 in 5 succeeds:
		say "     Katherine smiles as you approach, recognizing the familiar twinkle in your eye. Your bitch knows you well. Before you can even say anything, she drops down onto all fours and slowly crawls over to you. She paws at your clothes, eager to play with you. 'Does my Alpha want to have some fun with their bitch?' She wags her tail as you stare down at her, deciding how you want to take her. [bold type]What would you like to do?[roman type][line break]";
	else if HP of Katherine > 49:
		say "     ";
	else:
		say "     Katherine smiles as you approach, recognizing the familiar twinkle in your eye. She saunters over into your personal space, swaying her hips seductively and grabbing you by the waist. 'So,' she whispers in a husky tone. A shudder shoots up your spine in excitement. 'Did you want to have a little fun?' The dog has quickly taken control of the situation, but she's at least giving you the option of how you'd like to pass the time. [bold type]What would you like to do with her?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Her";
		now sortorder entry is 1;
		now description entry is "Show the bitch a good time by fucking her pussy";
		[]
		if HP of Katherine is 9:
			choose a blank row in table of fucking options;
			now title entry is "Doggystyle";
			now sortorder entry is 2;
			now description entry is "Engage in some pet play and fuck her like a dog";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Blowjob";
			now sortorder entry is 3;
			now description entry is "Have her worship your cock";
			[]
		else if HP of Katherine is 50:
			choose a blank row in table of fucking options;
			now title entry is "Blowjob";
			now sortorder entry is 2;
			now description entry is "Have her worship your cock";
			[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Receive Oral";
		now sortorder entry is 4;
		now description entry is "Put the bitch's mouth to work on your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat Her Out";
	now sortorder entry is 9;
	now description entry is "Make your bitch feel good by licking her pussy";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	now calcnumber is -1;
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
				if nam is "Fuck Her":
					say "[KatherineFuck1]";
				else if nam is "Doggystyle":
					say "[KatherineDoggy1]";
				else if nam is "Blowjob":
					say "[KatherineBlowjob1]";
				else if nam is "Receive Oral":
					say "[KatherineOral1]";
				else if nam is "Eat Her Out":
					say "[KatherinePleasure1]";
				now lastfuck of Kathrine is turns;
				now Level of Katherine is 1;
				increase XP of Katherine by 1;
				wait for any key;
		else if calcnumber is 0:
			say "     Deciding you're not in the mood afterall, you wave the German shepherd off, leaving her to her own devices.";
			now sextablerun is 1;
	clear the screen and hyperlink list;

to say KatherineFuck1:
	now MaxHP of Katherine is Energy of Katherine;
	now Energy of Katherine is 7;
	say "[gsbFuckKatherine]";
	now Energy of Katherine is MaxHP of Katherine;

to say KatherineDoggy1:
	say "     ";

to say KatherineBlowjob1:
	say "     ";

to say KatherineOral1:
	now MaxHP of Katherine is Energy of Katherine;
	now Energy of Katherine is 7;
	say "[gsbOralKatherine]";
	now Energy of Katherine is MaxHP of Katherine;

to say KatherinePleasure1:
	now MaxHP of Katherine is Energy of Katherine;
	now Energy of Katherine is 7;
	say "[gsbPleasureKatherine]";
	now Energy of Katherine is MaxHP of Katherine;

Katherine ends here.
