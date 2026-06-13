Version 1 of Gryphon Characters by SgtPepper234 begins here.
[Version 1 - New File]

Table of GameCharacterIDs (continued)
object	name
Karisha	"Karisha"

Karisha is a woman.
ScaleValue of Karisha is 4. [1 - Pet, 2 - Halfling, 3 - human sized, 4 - Amazon, 5 - Giant/wyvern]
Body Weight of Karisha is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Karisha is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Karisha is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Karisha is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Karisha is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Karisha is 5. [length in inches]
Breast Size of Karisha is 5. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Karisha is 2. [count of nipples]
Asshole Depth of Karisha is 12. [inches deep for anal fucking]
Asshole Tightness of Karisha is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Karisha is 1. [number of cocks]
Cock Girth of Karisha is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Karisha is 14. [length in inches]
Ball Count of Karisha is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Karisha is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Karisha is 1. [number of cunts]
Cunt Depth of Karisha is 10. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Karisha is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Karisha is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Karisha is false.
PlayerRomanced of Karisha is false.
PlayerFriended of Karisha is false.
PlayerControlled of Karisha is false.
PlayerFucked of Karisha is false.
OralVirgin of Karisha is false.
Virgin of Karisha is false.
AnalVirgin of Karisha is false.
PenileVirgin of Karisha is false.
SexuallyExperienced of Karisha is true.
TwistedCapacity of Karisha is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Karisha is false.
MainInfection of Karisha is "Blue Gryphon Herm".
Description of Karisha is "     [if PlayerFriended of Karisha is false]A tall and gorgeous hermaphrodite gryphon struts about the room, busying herself with various tasks. She is poised and graceful in her movements and you detect just a hint of haughtiness in her manner, though your keen eye can tell you she tries to hide it, or perhaps is working to disavow herself of such a trait. She is at least seven feet tall and, unlike the rest of the hermaphrodite gryphons you've spotted in the city so far, is not dressed in fine silks but rather a simple blue skirt and neat cotton tank top which betrays[else]Karisha, a tall and gorgeous hermaphrodite gryphon, struts about the room, busying herself with various tasks. She appears to be more relaxed in your presence now that she is familiar with you, and doesn't maintain the facade of indifference she might have with a stranger. She is at least seven feet tall and, unlike the rest of the hermaphrodite gryphons you've spotted in the city so far, is not dressed in fine silks but rather a simple blue skirt and neat cotton tank top which reveals[end if] a tremendous amount of side-boob. You can also see a large bulge at the front of her skirt, betraying her herm status.[line break]".

An everyturn rule:
	if time is pre dawn: [pre dawn: 0 or -8]
		move Karisha to Soup Kitchen;
	else if time is early night: [early night: 3 or -5]
		now Karisha is nowhere;

instead of conversing the Karisha:
	if PlayerFriended of Karisha is false:
		say "[KarishaNeutralTalkMenu]";
	[else:
		say "[KarishaFriendTalkMenu]";

to say KarishaFriendTalkMenu:
	say "";]

To say KarishaNeutralTalkMenu:
	let TalkDone be false;
	say "     [bold type]You approach the large herm gryphon to engage with her. She smiles slightly and looks appraisingly at you, waiting for you to say something.[roman type][line break]";
	now Sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Introductions";
	now sortorder entry is 1;
	now description entry is "Introduce yourself and ask who she is";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Soup Kitchen";
	now sortorder entry is 2;
	now description entry is "Ask her about the place where she works";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her Job";
	now sortorder entry is 3;
	now description entry is "Ask her why she works in a soup kitchen";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Qytat Seems Divided";
	now sortorder entry is 4;
	now description entry is "Ask her why the city is broken up between the herms and single-sexed";
	[]
	if "QuintusKarishaTask1" is not listed in Traits of Karisha:
		choose a blank row in table of fucking options;
		now title entry is "Offer Assistance";
		now sortorder entry is 5;
		now description entry is "Ask her if there is anything you can do to help her";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Task Reminder";
		now sortorder entry is 5;
		now description entry is "Ask her what you need to do again";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while Sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			LineBreak;
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			now Sextablerun is 1;
			if title entry is:
				-- "Introductions":
					say "[KarishaIntroduction]";
				-- "The Soup Kitchen":
					say "[SoupKitchenWorkplace]";
				-- "Her Job":
					say "[KarishaJob]";
				-- "Qytat Seems Divided":
					say "[QytatStatusQuo]";
				-- "Offer Assistance":
					say "[KarishaHelp1]";
					now TalkDone is true;
				-- "Task Reminder":
					say "[KarishaRemind1]";
			wait for any key;
			if TalkDone is false:
				say "[KarishaNeutralTalkMenu]"; [looping back into itself - change this if any of the talk options lead to quests]
		else if calcnumber is 0:
			LineBreak;
			now Sextablerun is 1;
			say "     You step back from the tall hermaphrodite and leave. She huffs off, muttering about time-wasters.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], or 0 to exit.";
	clear the screen and hyperlink list;

To say KarishaIntroduction:
	if PlayerMet of Karisha is false:
		say "     Introductions are in order. You offer your name in exchange for hers. 'I am Karisha,' she replies. 'Karisha of House Rex, at your service.'";
		now PlayerMet of Karisha is true; [player knows her name]
	else:
		say "     She looks at you somewhat coldly and sniffs, 'I believe I have already told you, I am Karisha of House Rex!'";

To say SoupKitchenWorkplace:
	say "     You enquire about the soup kitchen she works in. 'It's a place of respite for the poor souls living out here in the city square,' she explains. 'We provide food for the hungry so that they need not beg or debase themselves in the world below for simple sustenance.'";

To say KarishaJob:
	say "     Karisha raises her eyebrows at the question before responding, 'You mean why am I, a hermaphrodite of a noble house, working in the poorer quarters?' You nod. 'Well, why shouldn't I? Someone needs to feed these poor souls, and I have the resources to do so. It would be amoral of me to do nothing knowing I had the means to help. The only thing necessary for the triumph of evil is for good people to do nothing.'";

To say QytatStatusQuo:
	say "     You mention the obvious tensions in the city and ask the herm about it. She scowls as she recalls the reason for the city's division. 'The rulers of this city have forgotten that it was the unity of the people that built this wondrous place. Qytat was meant to be a haven for all gryphons. We ascended together as one people as our greatest engineers worked to create the wonder that is Qytat a'th Lundrues. Centuries ago we worked together, hermaphodite and single-sex alike, to secure our place in the heavens! But there were some who felt their contribution was greater than others, and gradually a rift grew between us. Ancient houses proclaimed their superiority over the rest and the blood feuds began... Now we are poised to destroy everything we worked so hard to create.'";

To say KarishaHelp1:
	say "     Her eyes light up at the offer of assistance. 'I would be very grateful for your help actually. I am only one person, you see, and not many single-sex are willing to aid a herm, even if she is doing her level best to assist those beneath her station,' she adds coldly. 'However, I have heard that there is a male gryphon who appreciates what I do here, and might be able to send some help my way. His name is Quintus and he lives in the informal settlement east of the Qytat fountain. Speak to him and ask if he is willing to assist in the good work we do here, can you do that?'";
	say "     ([link]Y[as]y[end link]) - Yes, you will help the tall herm.";
	say "     ([link]N[as]n[end link]) - No, perhaps later.";
	if Player consents:
		LineBreak;
		say "     'Thank you. I will wait for your return.'";
		TraitGain "QuintusKarishaTask1" for Karisha;
	else:
		LineBreak;
		say "     'I am sorry to hear that. I hope you will reconsider.'";

To say KarishaRemind1:
	say "     'I need you to go to Quintus and ask if he can provide assistance to my soup kitchen. He lives in the informal settlement east of the Qytat fountain.'";

Table of GameCharacterIDs (continued)
object	name
Dekkan	"Dekkan"

Dekkan is a man.
ScaleValue of Dekkan is 3. [human+ sized]
Body Weight of Dekkan is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Dekkan is 1. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Dekkan is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Dekkan is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Dekkan is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Dekkan is 5. [length in inches]
Breast Size of Dekkan is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Dekkan is 2. [count of nipples]
Asshole Depth of Dekkan is 12. [inches deep for anal fucking]
Asshole Tightness of Dekkan is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Dekkan is 1. [number of cocks]
Cock Girth of Dekkan is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Dekkan is 15. [length in inches]
Ball Count of Dekkan is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Dekkan is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Dekkan is 0. [number of cunts]
Cunt Depth of Dekkan is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Dekkan is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Dekkan is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Dekkan is false.
PlayerRomanced of Dekkan is false.
PlayerFriended of Dekkan is false.
PlayerControlled of Dekkan is false.
PlayerFucked of Dekkan is false.
OralVirgin of Dekkan is false.
Virgin of Dekkan is true.
AnalVirgin of Dekkan is true.
PenileVirgin of Dekkan is true.
SexuallyExperienced of Dekkan is false.
TwistedCapacity of Dekkan is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Dekkan is false.
MainInfection of Dekkan is "Blue Gryphon Male".
Description of Dekkan is "     The wizened old gryphon seems preoccupied with his duties, but when he does eventually spot you he comes over. 'Welcome, my child. My flock convenes daily at brightest morn. Please feel free to come and listen to the sermon, as all are welcome. Now if you will excuse me, I have much to do.'[line break]".

An everyturn rule:
	if time is pre dawn: [pre dawn - arrives in the church]
		if Player is in Qytat Church:
			say "[line break]     The old priest, Dekkan, flies in through one of the open doors in the walls and lands at his pulpit. After a nod and a smile in your direction, he begins his sermon preparations.";
		move Dekkan to Qytat Church;
	else if time is early night: [evening - Dekkan goes home]
		if Player is in Qytat Church:
			say "[line break]     Dekkan calls out a farewell as he flies off home.";
		now Dekkan is nowhere;

instead of conversing the Dekkan:
	if time is early morning:
		say "     The old priest is a little busy with his sermon right now. Either come back later or listen to what he has to say.";
	else:
		if PlayerFriended of Dekkan is false:
			say "[DekkanNeutralTalkMenu]";
		[else:
			say "[DekkanFriendTalkMenu]";]

to say DekkanNeutralTalkMenu:
	let TalkDone be false;
	say "     [bold type]The old priest briefly stops what he is doing when you indicate you would like to speak with him. 'Hello there, outsider, how might I be of assistance?'[roman type][line break]";
	now Sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Learn more about the Church";
	now sortorder entry is 1;
	now description entry is "What is this place";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask who he is";
	now sortorder entry is 2;
	now description entry is "Ask who he is";
	[]
	if "QuintusDekkanTask1" is not listed in Traits of Dekkan:
		choose a blank row in table of fucking options;
		now title entry is "Offer your services";
		now sortorder entry is 3;
		now description entry is "Ask the priest if there is anything you can help him with";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Remind me what I need to do";
		now sortorder entry is 3;
		now description entry is "Ask the priest what he wants you to do";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while Sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			LineBreak;
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			now Sextablerun is 1;
			if title entry is:
				-- "Learn more about the Church":
					say "[DekkanChurchDescription]";
				-- "Ask who he is":
					say "[DekkanPersonalDescription]";
				-- "Offer your services":
					say "[DekkanAssistance1]";
					now TalkDone is true;
				-- "Remind me what I need to do":
					say "[DekkanRemind1]";
			wait for any key;
			if TalkDone is false:
				say "[DekkanNeutralTalkMenu]"; [looping back into itself - change this if any of the talk options lead to quests]
		else if calcnumber is 0:
			LineBreak;
			now Sextablerun is 1;
			say "     You step back from the old gryphon and excuse yourself. He carries on with his duties.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], or 0 to exit.";
	clear the screen and hyperlink list;

[to say DekkanFriendTalkMenu:
	say "     [bold type]Dekkan briefly stops what he is doing when you indicate you would like to speak with him. 'Hello, my friend, stay awhile and listen.'[roman type][line break]";
	now Sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Class Divisions";
	now sortorder entry is 1;
	now description entry is "Ask Dekkan how the revolution is going";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask how he is";
	now sortorder entry is 2;
	now description entry is "Ask how he is";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer your services";
	now sortorder entry is 3;
	now description entry is "Ask the priest if there is anything you can help him with";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while Sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			LineBreak;
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			now Sextablerun is 1;
			if title entry is:
				-- "Class Divisions":
					say "[DekkanChurchDescription]";
				-- "Ask how he is":
					say "[DekkanPersonalDescription]";
				-- "Offer your services":
					say "[DekkanAssistance2]";
			wait for any key;
			say "[DekkanNeutralTalkMenu]"; [looping back into itself - change this if any of the talk options lead to quests]
		else if calcnumber is 0:
			LineBreak;
			now Sextablerun is 1;
			say "     You step back from Dekkan and excuse yourself. He carries on with his duties.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], or 0 to exit.";
	clear the screen and hyperlink list;]

to say DekkanChurchDescription:
	say "     The old priest waves a hand behind his back indicating the vast open space. 'Why, this is our place of worship. Our fellow gryphons come here for solace in whatever god they may have. I fell easily into my role here because I was at one time a priest before... everything. I do not preach much except peace these days. There is trouble brewing. The history of our people is one where the hermaphrodites have through chance and trickery secured their class and wealth superiority over the males and females. In recent years as tensions grew, fights broke out. This all came to ahead when our world was so recently thrust into yours, outsider, resulting in a tense standoff between the two groups in our flying city. Regardless, this is neutral ground and I try to talk sense into those that will listen to it here.'";

to say DekkanPersonalDescription:
	if PlayerMet of Dekkan is false:
		say "     'I am Dekkan. Priest of the... well priest of this church. We are non-denominative here. Our people may worship whomever or whatever they choose. I facilitate their worship through service to the community and the upkeep of this building.'";
		now PlayerMet of Dekkan is true; [player knows his name]
	else:
		say "     The gryphon priest looks at you with a raised eyebrow. 'Have you forgotten me already? I'm Dekkan...'";

to say DekkanAssistance1:
	say "     'Now that you ask, there is something you could assist me with. I need to speak with Quintus, the leader of the primary rebellion faction here in the city. I must convince him to speak out against the violence in this city. Nothing good can come of it. He can be found in the amphitheater west of the fountain. Convince him to come here and speak to me, and I will vouch for you to the rest of the gryphon community. What say you?'";
	say "     ([link]Y[as]y[end link]) - Yes, you will help the old priest.";
	say "     ([link]N[as]n[end link]) - No, perhaps later.";
	if Player consents:
		LineBreak;
		say "     'Thank you. I will wait for your return.'";
		TraitGain "QuintusDekkanTask1" for Dekkan;
	else:
		LineBreak;
		say "     'I am sorry to hear that. I hope you will reconsider.'";

to say DekkanRemind1:
	say "     'I need you to find Quintus in the informal settlement located west of the Qytat fountain, and ask him to come and speak with me.'";

[to say DekkanAssistance2:
	say "";]

Table of GameCharacterIDs (continued)
object	name
Barkeep	"Barkeep"

Barkeep is a man.
Barkeep is in Qytat Tavern.
ScaleValue of Barkeep is 3. [human sized]
Body Weight of Barkeep is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Barkeep is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Barkeep is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Barkeep is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Barkeep is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Barkeep is 5. [length in inches]
Breast Size of Barkeep is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Barkeep is 2. [count of nipples]
Asshole Depth of Barkeep is 12. [inches deep for anal fucking]
Asshole Tightness of Barkeep is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Barkeep is 1. [number of cocks]
Cock Girth of Barkeep is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Barkeep is 15. [length in inches]
Ball Count of Barkeep is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Barkeep is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Barkeep is 0. [number of cunts]
Cunt Depth of Barkeep is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Barkeep is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Barkeep is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Barkeep is false.
PlayerRomanced of Barkeep is false.
PlayerFriended of Barkeep is false.
PlayerControlled of Barkeep is false.
PlayerFucked of Barkeep is false.
OralVirgin of Barkeep is false.
Virgin of Barkeep is true.
AnalVirgin of Barkeep is true.
PenileVirgin of Barkeep is true.
SexuallyExperienced of Barkeep is false.
TwistedCapacity of Barkeep is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Barkeep is false.
MainInfection of Barkeep is "Blue Gryphon Male".
Description of Barkeep is "     Before you stands a muscled, topless gryphon male, polishing a beer mug with a dirty rag. He looks up at you and grunts. You try to get him to serve you but all you get in response is, 'I don't serve outsiders in my tavern. Come back when you've proved you're not just a waste of our time.'[line break]".

Table of GameCharacterIDs (continued)
Object	Name
Quintus	"Quintus"

Quintus is a man.
Quintus is in Qytat Tent.
ScaleValue of Quintus is 3. [human+ sized]
Body Weight of Quintus is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Quintus is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Quintus is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Quintus is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Quintus is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Quintus is 5. [length in inches]
Breast Size of Quintus is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Quintus is 2. [count of nipples]
Asshole Depth of Quintus is 12. [inches deep for anal fucking]
Asshole Tightness of Quintus is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Quintus is 1. [number of cocks]
Cock Girth of Quintus is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Quintus is 12. [length in inches]
Ball Count of Quintus is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Quintus is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Quintus is 0. [number of cunts]
Cunt Depth of Quintus is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Quintus is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Quintus is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Quintus is false.
PlayerRomanced of Quintus is false.
PlayerFriended of Quintus is false.
PlayerControlled of Quintus is false.
PlayerFucked of Quintus is false.
OralVirgin of Quintus is false.
Virgin of Quintus is true.
AnalVirgin of Quintus is true.
PenileVirgin of Quintus is false.
SexuallyExperienced of Quintus is true.
TwistedCapacity of Quintus is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Quintus is false.
MainInfection of Quintus is "Blue Gryphon Male".
Description of Quintus is "     [if PlayerFriended of Quintus is false]You see before you a muscular gryphon male, shirtless and ripped. His body tone is well defined with an obvious six pack and large pecs visible beneath the downy white feathers on his torso. The gryphon's biceps could put a minotaur to shame. His brow looks constantly furrowed as though in deep thought, and his eagle-eyes look fierce. His[else]Quintus stands before you, shirtless and ripped. His body tone is well defined with an obvious six pack and large pecs visible beneath the downy white feathers on his torso. The gryphon's biceps could put a minotaur to shame. His brow looks constantly furrowed as though in deep thought, and his eagle-eyes look fierce. Quintus['][end if] lower half is covered only by a loincloth-type rag which does little to conceal his manly package. Your eyes don't linger there too long lest you get caught staring.[line break]".

instead of conversing the Quintus:
	if PlayerFriended of Quintus is false:
		say "[QuintusNeutralTalkMenu]";
	[else:
		say "[QuintusFriendTalkMenu]";

to say QuintusFriendTalkMenu:
	say "";]

To say QuintusNeutralTalkMenu:
	let TalkDone be false;
	say "     [bold type]You ask to speak to the gryphon male, who grunts his assent.[roman type][line break]";
	now Sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Introductions";
	now sortorder entry is 1;
	now description entry is "Introduce yourself and ask who he is";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Informal Settlement";
	now sortorder entry is 2;
	now description entry is "Ask him about the place where he lives";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Qytat is on edge";
	now sortorder entry is 3;
	now description entry is "Ask him about the tension between the herms and single-sexed";
	[]
	if "QuintusDekkanTask1" is listed in Traits of Dekkan:
		choose a blank row in table of fucking options;
		now title entry is "Ask to talk to the priest";
		now sortorder entry is 4;
		now description entry is "Ask him to come with you to visit the old priest";
	[]
	if "QuintusKarishaTask1" is listed in Traits of Karisha:
		choose a blank row in table of fucking options;
		now title entry is "Ask for help with Karisha";
		now sortorder entry is 5;
		now description entry is "Ask him to assist Karisha in the soup kitchen";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while Sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			LineBreak;
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			now Sextablerun is 1;
			if title entry is:
				-- "Introductions":
					say "[QuintusIntroduction]";
				-- "Informal Settlement":
					say "[InformalLivingSpace]";
				-- "Qytat is on edge":
					say "[QytatStatusQuoQuintus]";
				-- "Ask to talk to the priest":
					say "[QuintusDekkan1]";
					now TalkDone is true;
				-- "Ask for help with Karisha":
					say "[QuintusKarisha1]";
					now TalkDone is true;
			wait for any key;
			if TalkDone is false:
				say "[QuintusNeutralTalkMenu]"; [looping back into itself - change this if any of the talk options lead to quests]
		else if calcnumber is 0:
			LineBreak;
			now Sextablerun is 1;
			say "     You step back from the studly male gryphon and excuse yourself. He carries on talking with his associates.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options], or 0 to exit.";
	clear the screen and hyperlink list;

To say QuintusIntroduction:
	if PlayerMet of Quintus is false:
		say "     After first introducing yourself, you wait for him to return the courtesy. He stares you down for a moment, perhaps evaluating what level of threat you may pose. Deciding no harm can come of it, he simply states, 'I am Quintus.'";
		now PlayerMet of Quintus is true;
	else:
		say "     The fierce male looks appraisingly at you for enough time that you feel uncomfortable, before stating, 'I have told you that already. I am Quintus.'";

To say InformalLivingSpace:
	say "     The gryphon looks around. 'This?' he says, indicating his surrounds. 'This is my home. Or at least this is where we are forced to live. Did you not see the square outside? Did you not see the homeless rabble? We have taken this space as our refuge because we refuse to be forcefully evicted from the city we helped to build.'";

To say QytatStatusQuoQuintus:
	say "     He gives a dry chuckle at the question. 'Noticed, did you? Was it the tents of the homeless, or looks of disgust we single-sexed get from the herms?' His face returns to its usual severe state as he goes on. 'This city is a powder keg, ready to explode. We have been forced from our homes and our place among the city council. Decisions that affect our people are made by those with a vested interest in keeping us underfoot and themselves powerful. We have tried reason, we have been diplomatic, but none of that matters or will effect any change.' He sighs and for a moment looks almost sad. 'Still, that is my city as you see it. I am sorry that you have visited us in such times.'";

To say QuintusDekkan1:
	if "QuintusDekkanTask1Success" is not listed in the Traits of Quintus:
		say "     You tell him about the old priest's request to speak and he sighs deeply. 'I have told that old coot that I am not interested in quelling my flock. The citizens of Qytat a'th Lundrues have tried to be diplomatic and it has not got us anywhere but here.' He indicates the ramshackle tent about him as he considers your request a moment longer. 'Still, I suppose it cannot hurt to talk to the old bird; he means well and perhaps our goals are not so unaligned. Tell him I will see him when I have the time. For now I am busy.' I guess you cannot hope for more than that.";
		TraitGain "QuintusDekkanTask1Success" for Quintus;
	else:
		say "     You mention that the old priest is still waiting to hear from him to which Quintus responds, 'I told you already that I would see him when I am able. For now I have no time for idle chitchat. Good day!'";
	say "[line break]     [Bold Type]***Content currently under development. This quest will be continued in the next Qytat a'th Lundrues update.***[roman type][line break]";

To say QuintusKarisha1:
	if "QuintusKarishaTask1Success" is not listed in the Traits of Quintus:
		say "     You mention the soup kitchen in the northeast corner of the square to the ripped gryphon, asking him if he knows about it. 'Of course I know about it,' he responds. 'Run by a herm no less! I am glad at least one of them has some sense to help out the people of this city. She can be a bit full of herself but I believe her heart is in the right place. Why do you ask?' You explain her request for assistance in running the kitchen, that increased hands will enable her to better serve the needy but that no single-sexed wish to aid a herm. Quintus considers the request for a moment before nodding his head. 'I can do that. Lords know that we have too many idle hands right now and if it will help my people I can provide the gryphon-power she needs. Tell her I will send some assistance her way and that if any of them give her trouble because of her sex, to tell me and I will deal with them. Our fight is for equality and it serves no one to perpetuate historical division.'";
		TraitGain "QuintusKarishaTask1Success" for Quintus;
	else:
		say "     You mention the soup kitchen in the northeast corner of the square to the ripped gryphon, to which he waves a hand at you dismissively. 'I told you I would send help to Karisha, now leave me be. I have work to attend to!'";
	say "[line break]     [Bold Type]***Content currently under development. This quest will be continued in the next Qytat a'th Lundrues update.***[roman type][line break]";

Gryphon Characters ends here.
