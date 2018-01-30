Version 1 of Mark by Wahn begins here.
[Version 1 - New NPC]


[ JayMarkRelationship                                       ]
[   0: net met yet                                          ]
[   1: met the two of them                                  ]
[   2: met the two of them, player knows their names        ]

[ XP of Mark                                                ]
[   0: not yet moving                                       ]
[   1: started his daily rhythm                             ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Mark is a man.
The description of Mark is "[MarkDesc]".
The conversation of Mark is { "<This is nothing but a placeholder!>" }.
The scent of Mark is "     Mark's fur, while well-kempt, is naturally slightly musky, a trait compounded by the undertone of woodsmoke and sawdust. It's a rustic, pleasant scent with a hint of ever-present arousal.".

to say MarkDesc:
	if debugactive is 1:
		say "DEBUG -> XP of Mark: [XP of Mark] <- DEBUG[line break]";
	say "     Mark is a big and burly polar bear, about seven feet tall and with very broad shoulders. He has the typical snow white fur of his species, with a somewhat anthropomorphic head and a muzzle full of dangerous teeth. Much of the big man's bulk is muscle, filling out the rugged jeans and checkered flannel shirt of his outfit quite well. Overall, the powerful bear's attire is reminiscent of a stereotypical woodcutter, although he clearly has no need for an axe to be reckoned with - the sharp claws on his paw-hands are plenty already.";
	say "     Noticing you looking at him, Mark turns his attention towards you, meeting your gaze with his dark amber eyes. The man then gives you a brief nod, acknowledging your presence";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - Daily Rhythm
[***********************************************************]
[***********************************************************]
[***********************************************************]


an everyturn rule:
	if XP of Mark > 0:
		[if TimekeepingVar is 1 or TimekeepingVar is -7:] [midnight - unused, Mark sleeps]
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Mark sleeps]
		if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - Mark gets up early]
			if player is in Mall Foyer:
				say "     Mark the polar bear comes strolling into the Mall Foyer from the south, dressed in his usual jeans and checkered flannel shirt. The large man has a heavy duty backpack strapped to his back and seems ready for a trip into the chaotic streets outside. But before he does so, Mark stops at the coffee shop that the wolverines have occupied as their local headquarters, chatting with the grumpy mustelids and even sharing a cup of coffee with them.";
			move Mark to Mall Foyer;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if player is in Mall Foyer and Mark is in Mall Foyer:
				say "     Finishing up his coffee and wishing the wolverines a safe day of keeping the Mall protected, Mark adjusts his backpack and leaves, setting out confidently into the chaos-riddled streets of the city.";
			now Mark is nowhere; [stashed in another dimension]
		[else if TimekeepingVar is 5 or TimekeepingVar is -3:] [noon - unused, Mark scavenges]
		[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon - unused, Mark scavenges]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if player is in Mall Foyer:
				say "     Coming in through the entrance to the north, Mark the polar bear arrives in the Mall Foyer, his backpack stuffed with the loot that he picked up out in the city during the day. Setting the heavy pack down on one of the tables in front of the coffee shop that the wolverines have occupied as their local headquarters, the large, white-furred man chats with the mustelids and even hands out some choice items from his backpack - a reward for keeping the Mall (and by extension, his boyfriend) safe, as he only half-jokingly says. Being offered a cup of coffee, Mark sits down and chats with the otherwise grumpy mustelids for a long while.";
			move Mark to Mall Foyer;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night - unused, Mark spends time with Jay]
			if player is in Mall Foyer and Mark is in Mall Foyer:
				say "     Finishing up his coffee and wishing the wolverines a quiet night, Mark picks his heavy backpack up and walks deeper into the Mall, soon vanishing into the bustling crowd of people.";
			now Mark is nowhere; [stashed in another dimension]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Talking
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Mark:
	if XP of Mark is 0:
		say "     ERROR: Mark shouldn't be available to talk to yet. Please report to Wahn on the FS Discord/Forum and quote this tracking number for easier bugfixing: [HP of Mark]";
	else:
		say "[MarkTalkMenu]"

to say MarkTalkMenu:
	LineBreak;
	say "     What do you want to talk about with Mark?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Learn more about him";
	now sortorder entry is 1;
	now description entry is "Ask Mark about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat about his elven lover Jay";
	now sortorder entry is 2;
	now description entry is "Talk to Mark about Jay";
	[]
	if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - Mark is at the foyer and can be joined for scavenging]
		choose a blank row in table of fucking options;
		now title entry is "Accompany Mark into the city";
		now sortorder entry is 3;
		now description entry is "Join the polar bear on a trip";
	[]
	if TimekeepingVar is 3 or TimekeepingVar is -5: [evening - came back from scavenging and is in the Foyer]
		choose a blank row in table of fucking options;
		now title entry is "Ask Mark about his trips into the city";
		now sortorder entry is 4;
		now description entry is "Talk to the polar bear about his scavenging";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about the wolverines";
	now sortorder entry is 5;
	now description entry is "Talk to Mark about wolverine security";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about the military";
	now sortorder entry is 6;
	now description entry is "Talk to Mark about the soldiers in the city";
	[]
	if HP of Santa Claws > 0: [player has been in the Christmas Village]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about Santa Claws";
		now sortorder entry is 7;
		now description entry is "Talk to Mark about the polar bear Santa";
	[]
	if HP of Krampus > 0: [player has been to see Krampus]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about Krampus";
		now sortorder entry is 8;
		now description entry is "Talk to Mark about the goat demon";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Learn more about him"):
					say "[MarkTalk1]";
				if (nam is "Chat about his elven lover Jay"):
					say "[MarkTalk2]";
				if (nam is "Accompany Mark into the city"):
					say "[MarkScavengingTrip]";
				if (nam is "Ask Mark about his trips into the city"):
					say "[MarkScavengingTalk]";
				if (nam is "Ask him about the wolverines"):
					say "[MarkTalk3]";
				if (nam is "Ask him about the military"):
					say "[MarkTalk4]";
				if (nam is "Ask him about Santa Claws"):
					say "[MarkTalk5]";
				if (nam is "Ask him about Krampus"):
					say "[MarkTalk6]";
				if (nam is "Talk about the suit for Jay"):
					say "[MarkSuitQuest]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the large polar bear, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say MarkTalk1: [talk about him]
	say "     As you ask Mark about himself, he shrugs and is quiet for a few seconds, then says, 'Oh, I'm nothing special. Just another guy living in this city. Went through high school, got a job or three after that, until I ended up a waiter. And that's where I ended up meeting the love of my life while I was serving him... hmm, I think it was a dish called Ostropel. Romanian restaurant, you know.' Smiling to himself, he continues, 'Living with Jay has been amazing. We've been together five years now. Not in our current forms, of course. These transformations have brought some change, but we still feel the same way about each other. It's just that I am now the big strong one, and he's my little sex kitten. Not that he isn't as headstrong as ever about getting what he wants - it's just that he has different needs. Even though our roles are completely reversed now, we both still love it.'";
	say "     Changing the topic back to himself, the burly polar bear pats the bicep on his right arm and explains, 'As for what I'm doing these days: it's scavenging, out in the city. Not a glamorous job, but a necessary one. the Mall may have a lot in its storerooms, but things won't last forever, so bringing in whatever I can find just makes sense. And if I can find something special for Jay, even better.' He stops for a moment and looks you up and down. 'You know, there are some places and things that I don't go for alone, even if I'm built like a brick house now. Would you like to head out together sometime?[if TimekeepingVar is not 7 and TimekeepingVar is not -1] If you do, meet me here in the morning and we can talk about it some more.'[else]'[end if]";

to say MarkTalk2: [talk about Jay]
	say "     As you ask the large polar bear about his partner, the man grins broadly and replies, 'He is quite something, isn't he? The perfect little package - sexy, funny and strong in character. And what's best, Jay's a total slut for my cock. Hell, I fuck him a few times a day, and I [italic type]still[roman type] wake up with the guy's trembling hole stretched around my shaft. He just climbs on it and rides me. Best way to be woken up, I can tell you that!' The memories of being with his lover create a noticeable tent in Mark's pants, which he adjusts without any shyness, pushing his dick to the side and creating a clearly visible outline of his huge, hard shaft. 'Fuck yeah, I love that man. Been doing that since the day we met, five years ago, even though things were quite different back then of course. I was his bottom boy, not the other way around.'";
	say "     Waving a hand to indicate his muscular bulk, the man explains, 'Forget this bear you see for a moment and imagine a slender dude. Neither a twink nor a bodybuilder, just thin and fit. Anyways, I was working at a downtown restaurant - 'Tati's', a pretty nice Romanian place, little bit fancy - and there was this attractive hunk of a man with some older guy. Oh yeah, Jay was really hot that night, tailored suit and everything. Gave him some winks, and before I knew it, he took me as dessert. Pushed me into the restrooms and fucked my mouth in the handicapped stall.' A pleased sigh crosses his lips, with Mark looking a bit dreamily. 'Barely took three months before he asked for my hand, and I gave it to him.' Raising a large and clawed paw-hand, the bear wiggles his pinkie finger - the only one small enough to fit the broad gold band of a human-sized ring that he proudly presents to you.";

to say MarkTalk3: [talk about the wolverines]
	say "     Mark glances over to the muscular mustelids stoically keeping an eye on the entrance for a second, then turns his attention back to you. 'I know that some people do not like the guys because of their uncompromising stance on... just about anything, but let's face it: The Smith Haven Mall would not exist as the refuge it has become without them. Wolverine Security keeps everyone safe from being overrun by the beasts out there that think of nothing but sex anymore, and one should always remember that these men and women have needs too - amplified, burning lusts - and are more than strong enough to just take whomever they wanted from among the refugees. Discipline is what the wolverines live by, and their strength of will to stay true to their jobs should be admired.' Stretching out his arm and indicating the foyer, then the Mall overall, he adds, 'You should have heard the bitching and moaning about the no-littering rules being upheld, along with all of the other regulations the Mall has on its books. I think enduring a bit of over-zealousness is a low price to pay for being kept safe, and I for one like the fact that we're not living in a pig sty too.'";

to say MarkTalk4: [talk about the military]
	say "     Mark's expression darkens noticeably as you bring up the military, and with a frown on his face he replies, 'I met some of the men that were deployed to the city in an attempt to re-establish order during the first week. Good and brave men, all of them. No one knew anything back then, and things quickly went from bad, to worse, to totally fucked up. It was almost more than I - or rather he, the old Mark - could handle.' For a moment, he doesn't say anything more, his eyes filled with a far-away look. 'To this day, it always is disheartening for me to find the remnants of uniforms here or there whenever I go scavenging. Just thinking what became of those brave men. Even had to fight off a number of creatures that still had their dog tags on. None of them remembered a sliver of the men that they once were.'";
	say "     Making a fist, then forcing himself to relax his clawed hand, the large polar bear clears his throat and adds, 'As much as it pains me to say this, with all of us trapped in the city, the army was right to quarantine us. Their initial approach wasn't getting anywhere, and an infection like this couldn't be allowed to spread. I've been at the containment barrier myself, and I know for a fact that they have to be merciless to maintain it. If there was any spot that allowed even a handful of people through, the whole remaining sane population would swamp and overrun them. And that's not counting all of the beasts that would flock to such a crowd to have their fun. So for now, everyone is stuck here. Nothing to be done about it.'";

to say MarkTalk5: [talk about Santa Claws]
	say "     A broad grin spreads over the tall polar bear's face, and he rubs the white fur on his lower arm for a second, then replies, 'He's a really good man, I can tell you that. Funny thing is that I don't know his [italic type]real[roman type] name, even though we've become good friends these last few weeks. He just has so completely stepped into the role of Saint Nick that I don't even know if there is much of a difference anymore. I think that he's one of the reasons the Mall actually can exist as it does, without boiling over from all of the people stuffed into it. Stepping into the Christmas Village just... makes many people forget their troubles, if only for a little while, and Santa does his very best to be a force for good. Which includes being held - and fucked - by a big, warm and so very strong man for some.' Mark seems a little bit embarrassed as he adds that last sentence, and you're fairly sure that he is blushing under his fur.";
	say "     Taking a deep breath, the broad-shouldered ursine calms himself down and explains, 'I wasn't taking things well, when the outbreak started. The initial days, then a hope of being evacuated, followed by witnessing the fate of the soldiers who wanted to help us and then fleeing in panic. Jay got us here to the Mall, and even though we were safe inside its walls, I just couldn't cope. To be honest, I don't remember much of it - mostly crying and despair. Then we met Santa, and he offered... you know. To make me feel better. Give me the fierceness that I would need. And it worked.' Flexing his arms to show off the firm muscles of his ursine physique, Mark leaves things at that, clearly content with his new form. You sense that it wouldn't be a good idea to keep digging into that traumatic time for him, so you quietly let the matter drop.";

to say MarkTalk6: [talk about Krampus]
	say "     Raising his eyebrows as you mention the goat demon living in a cave adjoining the Christmas Village, Mark says, 'You mean Santa's kinky friend? Oh boy, I'll admit that Jay and I did some role-play and maybe a little light bondage over the years, but that guy is [italic type]intense[roman type]. Total leather daddy, you know. He's got a whole collection of restraints and whips in that cave. Not really my cup of tea, but apparently he doesn't lack for partners. Sounds of mixed pain and pleasure can often be heard coming from his lair.'";

to say MarkScavengingTalk:
	say "     As you step up to the large polar bear and ask about details on his scavenging trips, Mark grins broadly and pats your back. 'Well, I can't just tell you where all the best spots for salvage are in the city; that'd possibly make us compete. But hey, there are a number of spots out there that have plenty for both of us - you know, those places where one shouldn't really go alone anyways. So how about it - wanna meet me here in the morning and come with for an excursion sometime?' You reply that you'll think about it and the big man nods, giving you a thoughtful look.";

to say MarkScavengingTrip:
	say "     As you step up to the large polar bear and offer to accompany him on a scavenging trip, Mark grins broadly and puts his clawed hand-paw on your shoulder to give you a companionable squeeze. 'Good choice, friend. Together, we'll be able to go for some truly worthwhile targets.' Adjusting the straps of his backpack, the big man then leads you out through the doors of the Mall, and the two of you wander across the parking lot to go explore the chaos-ruled city. Things are slow at first, with Mark guiding you past countless cars and houses that clearly have already been looted. After an hour or so, he suddenly stretches out his arm to the side, preventing you from walking any further, and nods to something a little distance ahead.";
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			say "[MarkScavengingTarget1]"; [pumpkin patch]
		-- 2:
			say "[MarkScavengingTarget2]"; [hawkman nest]
		-- 3:
			say "[MarkScavengingTarget3]"; [swap meet]
		-- 4:
			say "[MarkScavengingTarget4]"; [supermarket trap]
		-- 5:
			say "[MarkScavengingTarget5]"; [ambush]
	now Mark is nowhere;
	follow the turnpass rule;

to say MarkScavengingTarget1: [pumpkin patch]
	say "     [one of]'See that old house over there? The abandoned one? There's something quite interesting in the garden behind it: a pumpkin patch with fruit bigger than Jay is tall. Pretty well hidden from sight too, and I don't think that anyone or anything even knows that it is there. The problem is keeping it that way. Most of the infected have a good sense of smell, so cutting up a pumpkin might bring them sniffing, and if I carry a 300-pound pumpkin off in one piece, I'll be vulnerable to anything wanting to jump me,' the large polar bear says, then pats your shoulder with a clawed paw-hand and grins. 'That's where you come in now.' [or]'Ready for another trip to the pumpkin patch? Hopefully it's still our little secret. We were careful after all. Same plan as before - I carry one of those big things, and you keep lookout,' the large polar bear says, then pats your shoulder with a clawed paw-hand and grins. [stopping]With Mark having assigned you the position of his lookout and guardian, the two of you make a beeline to the house that he indicated earlier. Behind a rusty gate lies an overgrown garden, hiding colossal orange fruit in its furthest corner.";
	WaitLineBreak;
	say "     Inspecting the pumpkins and lightly knocking on a few to find a good and ripe one, Mark finally snaps the vine supplying a quite large example. 'Now remember, I'll barely be able to see where I am going with this in my arms, or spot anything wanting to pounce on us. So please keep your eyes open.' With that said, the snow-white bear crouches down and wraps both arms around the pumpkin, lifting it with a strained grunt. Setting out back towards the Mall, the two of you make surprisingly smooth progress for a long while. Only when you are about [one of]three-quarters[or]half[or]four-fifths[at random] of the way back does your luck finally run out. The first indication of trouble is that you spot the tail-tip of some anthro feline sticking out from behind a dumpster just a little distance ahead.";
	say "     As you stop walking and warn Mark to expect company, three leopardmen emerge from hiding, baring their fangs as they sprint towards you. With a glance to your companion, who[one of] [or] says, 'Those clowns again?' as he [stopping]is carefully lowering his heavy burden to the ground, you step up to meet them, ready to hold the cats off for as long as you need to.";
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
		now inasituation is true;
		if GroupFightCounter is 0:
			say "     Engaging one of the anthro leopards, you get a good look at the powerful feline man. His strong body is covered with leopard-like fur, and as he rises up to two feet and flexes his claw-tipped hands, you get a very good look at his rather erect feline cock. 'This should be fun,' he says with a cruel voice and leaps forward to attack.";
		else:
			say "     As the leader of the leopardmen falls back from one of your blows and stumbles away, the next anthro feline is already there with unsheathed claws, hissing, 'You'll pay for that, prey!'";
		challenge "Leopardman";
		increase GroupFightCounter by 1;
	now inasituation is false; [reset]
	if fightoutcome < 20: [player won]
		say "     As the second leopard stumbles back from your blows and runs off, Mark grabs number three from behind, just lifting him by his throat and throwing him into a dumpster. Slamming the lid down as the yowling cat tries to get up, he sends the last of the muggers into an unconscious daze. 'Good job on taking these punks down! Let's go before they get back up, or anyone else comes to investigate.' With that said, he hefts the pumpkin once more and follows you back to the Mall, soon arriving there without any further problems.";
		say "[MarkPumpkinpayout]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Faltering before the feline assault, you suffer numerous scratches and blows and are ready to call it quits and give in - when suddenly, a towering figure steps up behind the leopardmen. Mark simply grabs their heads in his large paw-hands and smacks the two leopards together with a hollow-sounding *thunk*, then leaves them to collapse at his feet. The third attacker lies groaning on the ground behind him, showing that your companion is more than a match for any simple anthro mugging people in the streets. 'Good job! You distracted them long enough for me to put down the heavy pumpkin without smashing it and then take these punks down. Come on, let's go before they get back up, or anyone else comes to investigate.' With that said, he hefts the pumpkin once more and follows you back to the Mall, arriving there without any further problems.";
		say "[MarkPumpkinpayout]";
	else if fightoutcome is 30: [fled]
		say "     Abandoning the fight, you run off and are chased for a while by one of the leopards, while his two compatriots focus their attention on Mark. It takes some effort to shake the swift feline, which takes you out of your way quite a distance, so it takes a while to swing back to the Mall. As you approach the large building complex, you run into Mark again, a little worse for wear, but without his pumpkin. He isn't in too great of a mood to see you, grumbling, 'I fought those fuckers off, but without a spotter to keep an eye out, I had to leave that pumpkin back there on the street. By now, something will be feeding on it. You know, you didn't have to [italic type]beat[roman type] those assholes, just hold them off long enough. Gonna have to do better if you want to go scavenging with me again.'";

to say MarkPumpkinpayout:
	say "     Making a beeline for the food court, the large polar bear puts down his colossal orange load on the counter of a mall rat run restaurant. Some moments of negotiation follow, ending with Mark being told that his food credits just went way up, and a friendly rat with long blond hair bringing a large bag with fresh food from the kitchen, handing it to you. As you start packing the items into your pack, the white-furred bear grins broadly and gives you a friendly slap on the back. 'Nice working with ya. Could use a wing-man for some more trips out into the city. Feel free to join me anytime, but for now, I'm off to spend some time with Jay. My lil['] man must be hungry for a good dicking by now.'";
	LineBreak;
	say "[bold type]You gain 4 food![roman type][line break]";
	increase carried of food by 4;

to say MarkScavengingTarget2: [hawkman nest]
	say "     [one of]'See that parking deck over there? There's a hawkman nest on top of it. [or]'Let's make another uninvited visit to the hawkman nest. [stopping]I've seen those bastards hunt down people they spotted from the air, robbing and fucking them. So how about we pay the guys a visit in turn, eh?' the polar bear says in an eager tone, cracking his knuckles and striding ahead. You have little choice but to follow after him, not wanting to stay in the open street alone as you now know that there are avian predators around. After a quick sprint up the stairwell of the structure, the two of you arrive at the uppermost deck. Glancing through the little window in the door, you spot a large and untidy nest of mattresses and all sorts of stolen goods has been piled together. Two hawkmen seem to be squabbling over something right now.";
	WaitLineBreak;
	say "     Mark says, 'We're in luck. There are a bunch of hawkmen who live here, but they seem to be out right now. Only those two are standing in our way right now. One each, eh?' As you don't think it matters much whatever you may say, you simply nod to the polar bear and run after him as he kicks open the door to run towards the hawkmen. Shrieking loudly, the avians drop what they were fighting over and jump into the air, ready to repel the invasion of their nest.";
	now inasituation is true;
	challenge "Hawkman";
	now inasituation is false;
	if fightoutcome < 20: [player won]
		say "     Knocking down the hawkman that attacked you personally, you glance over at your companion and see him snatch his own opponent out of the air by a clawed foot, then swing him in an arc to smash into the ground with a thud and the crunch of breaking bones. With a last shriek, Mark's hawkman falls unconscious, breathing shallow as his body starts to mend. 'Don't waste a second thinking about this asshole. He'll be up again before you know it,' the polar bear tells you in a gruff tone, then starts to dig around in the piles of loot, stuffing choice pieces that he finds into his backpack. Quickly doing the same, you manage to snag a medkit, some food and two bottles of pure water before a furious screech makes you look up. Four more hawkmen are approaching quickly, gliding through the air on spread wings.";
		say "     'Time to go. Let's move it!' Mark calls out in a loud voice, shouldering the backpack and waving you to the stairwell. He makes sure to let you go through the door first, even though that exposes him to attack from the first of the hawkmen landing on the roof. He kicks the angry avian back from the door, then slams it shut and runs downstairs after you. Soon arriving on the ground floor, you run out of the building and across the street, vanishing into a side alleyway before the circling hawkmen can spot you. As you are making your way back to the Mall, Mark grins at you and gives a thumbs up. 'Nice working with ya. Could use a wing-man for some more trips out into the city in the future. Feel free to join me anytime. But for now, when we get back I'm off to spend some time with Jay. My lil['] man must be hungry for a good dicking by now.'";
		LineBreak;
		say "[bold type]You gain 1 medkit![roman type][line break]";
		increase carried of medkit by 1;
		LineBreak;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		LineBreak;
		say "[bold type]You gain 2 water bottles![roman type][line break]";
		increase carried of water bottle by 2;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Scratched and beaten by the ferocious hawkman, you collapse on the ground. Yet before you fully realize what is happening to you after that, the world seems to spin and you can feel warm fur against one side of your body. Mark is carrying you! Looks like the polar bear snatched you up and ran, shaking the hawkmen before long. He carries you back towards the Mall for long enough so that your wounds can heal, then eventually sets you back on your feet. 'Well, that situation got a bit out of hand,' he tells you with a grunt, scratching the back of his neck. 'Maybe train a bit or something before you ask me to come along next, eh?'";
	else if fightoutcome is 30: [fled]
		say "     Abandoning the fight, you run off and are chased for ages by a whole flock of hawkmen, with more joining the others as their shrieks echo through the city. It takes some effort to finally shake them, which takes you out of your way quite a distance, making it a while to swing back to the Mall. As you approach the large building complex, you run into Mark again, a little worse for wear. He isn't in too great of a mood to see you, grumbling, 'What was that? You can't just run off and leave me hanging. Gonna have to do better if you want to go out into the city with me again.'";

to say MarkScavengingTarget3:
	say "     [one of]'In that building over there, people often come together for a swap meet. [or]'Back to the swap meet we go. [stopping]Places like this really are the only chance to get many items in this disaster-struck city, but with the state of things out here in the streets, there is always danger involved too. Criminals, ferals and the like,' Mark explains and puts a large paw-hand on your shoulder, giving it a friendly squeeze. 'I appreciate that you are coming along. Someone reliable by my side is worth a lot.' Setting out towards the meet's location, the two of you soon enter through an open rolling door, stepping into what looks like it was once a loading dock of a long-closed department store. A moderately sized group of people is scattered in the available indoor area, talking and bartering about who knows what. At least some of the trades going on have a sexual component too, judging from the slurping sounds of blowjobs audible from darker corners of the large room.";
	WaitLineBreak;
	say "     'Welcome back,' a somewhat squirrelly lizardman standing behind a rickety table says to Mark as the polar bear walks up to him, then glances at you with a calculating gaze. And then, he demonstrates the rather shocking feat of licking his own eyeballs with a long and flexible tongue, as if to see you better and more clearly after. 'Halvar, this is [if player is not defaultnamed][name of player][else]a friend of mine[end if],' Mark introduces the two of you to each other and you shake the trader's hand. He looks to be a kind of gecko, with mostly yellow scales and a blue stripe over his head and down the back. Quite a firm grip too, as the special ability of his hands makes them stick to yours until he peels it off again. 'My pleasure, always good to meet new customers,' the reptile tells you with a wide grin, then turns his attention back to Mark. The two of them begin to haggle about the trade-in for what your companion brought, and the items that he wants to receive in return.";
	if a random chance of 1 in 2 succeeds: [orc thugs]
		say "     While Mark is busy trading, you let your attention wander through the room, checking out people, goods and the general vibe of the place. It certainly is fascinating to see all of the different species and forms of post-humanity present in this setting, interacting in a bazaar atmosphere. Some things that change hands are mundane, others weird and exotic, leaving you to wonder what might be presented next. About fifteen minutes into the negotiation between the lizardman and Mark, with them having made two piles on the table, adding and removing offered and requested items, you notice the mood of the swap meet shift suddenly. This is clearly brought on by two new arrivals in the building: two towering brutes with green skin, bulging muscles and cocky attitudes. Garbed only in loin-cloths and with their tusks on open display as they grin at people that give them worried glances, you have little trouble to recognize them as orc warriors.";
		WaitLineBreak;
		say "     Immediately starting to push around smaller beings, the brutes laugh as people flinch away and give in to their demands, even as the orcs simply take various items and stuff them into big sacks they have brought along. Clearing your throat to warn Mark and Halvar about the green-skinned thugs, you prepare yourself for the soon to come moment of being noticed yourself. 'What do we have here?! Someone brought nice goodies for us,' one of the thugs says with a laugh, stepping forward in an effort to swipe everything laid out on the lizardman's little table into his sack. What he doesn't account for though is Mark, with the polar bear's clawed paw-hand clamping down on his green-skinned arm. 'Oh hey, someone wants to be a 'hero' here,' the muscle-packed orc says in a mocking tone, then drops his sack and throws himself at Mark, bowling him over and starting what basically is a no holds barred wrestling match. You're still waiting for the right moment to get involved in the tangle of boxing, kicking and even biting when the second orc comes charging in with a bloodthirsty battle-cry.";
		now inasituation is true;
		challenge "Orc Warrior";
		now inasituation is false;
		if fightoutcome < 20: [player won]
			say "     After landing another hit on your opponent and seeing him sway back and forth, the orc keels over - forwards, falling right on top of you. Unconscious, the green-skinned brute is really heavy, so you struggle a little to get out from under him until an offered paw from Mark gives a well-received boost by pulling you out. A little cheer goes through the crowd of vendors and visitors, all of them happy to see the orcs brought to their knees and the brave people who fought back on their feet. Several of them congregate around the two orc thugs, taking hold of them by the arms and legs to half-drag, half-carry them away. Maybe just to get them out of here before they wake up, or possibly to have some 'fun' with the weakened hunks in a more private setting. You are too distracted to really notice or care, as a number of people come up to you and Mark to shake your hands, often handing over some presents as well.";
			say "     Mark lets you have the lion's share of the offered items, happy to just finish his own trade with the lizardman and then get moving back to the Mall afterwards. After you set out a little while later, he comments about the whole affair, 'Someone usually comes to make trouble at the swap meets. All too often it is orcs, they just seem to be in a 'what's yours is mine' mindset. The sad thing is that some of the guys who took 'care' of our green thugs might become the next ones who fill that role. I saw one guy chugging an orc brew he found in one of the sacks. That's the way of the world now I guess. With a limitless supply of dumb brutes who think with their dicks.' When you arrive back at the Mall a little while later, he gives your arm a companionable squeeze, then says goodbye, murmuring something about having gotten a present for Jay in his trade.";
			LineBreak;
			if a random chance of 1 in 2 succeeds:
				say "[bold type]You gain 1 healing booster![roman type][line break]";
				increase carried of healing booster by 1;
				LineBreak;
				say "[bold type]You gain 1 pita bread![roman type][line break]";
				increase carried of pita bread by 1;
				LineBreak;
				say "[bold type]You gain 1 pepperspray![roman type][line break]";
				increase carried of pepperspray by 1;
			else:
				say "[bold type]You gain 1 orc cum![roman type][line break]";
				increase carried of orc cum by 1;
				LineBreak;
				say "[bold type]You gain 1 sports drink![roman type][line break]";
				increase carried of sports drink by 1;
				LineBreak;
				say "[bold type]You gain 1 libido suppressant![roman type][line break]";
				increase carried of libido suppressant by 1;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     Being beaten down by the orc, you collapse to the ground and see the big green brute step over you. He chuckles darkly, then pulls his loincloth aside to show you the thick and weighty shaft underneath. It is already more than half-hard - seems like fighting is like foreplay to this guy. 'I'm gonna enjoy breaking you,' the muscled thug says, stroking himself as he looks at you like a piece of meat. Then suddenly, the orc is grabbed from behind, with two white-furred arms wrapping around his midriff to pull him back. With a wrestling-throw, Mark flings the big brute several feet through the air, to land head-first against a wall and collapse to the ground unconscious. 'Phew, that was a close one,' Mark tells you, breathing a bit heavy after having had to take out two orcs by himself.";
			say "     The other people around mostly look away when you get back up, as if to forget that they didn't do a thing to help when you almost got raped by an orc. More or less the only reaction that coalesces is that after a little while, several of them congregate around the two orc thugs, taking hold of them by the arms and legs to half-drag, half-carry them away. Maybe just to get them out of here before they wake up, or possibly to have some 'fun' with the weakened hunks in a more private setting. You can't really bring yourself to care too much, not after the beating you just got at the hands of one of them. While you rub your bruises and wait for them to heal, Mark quickly wraps up his trade with the lizardman.";
			WaitLineBreak;
			say "     After you set out a little while later, he comments about the whole affair, 'Someone usually comes to make trouble at the swap meets. All too often it is orcs; they just seem to be in a 'what's yours is mine' mindset. The sad thing is that some of the guys who took 'care' of our green thugs might become the next ones who fill that role. I saw one guy chugging an orc brew he found in one of the sacks. That's the way of the world now I guess. With a limitless supply of dumb brutes who think with their dicks.' When you arrive back at the Mall a little while later, he gives your arm a companionable squeeze, then says goodbye, murmuring something about having gotten a present for Jay in his trade.";
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you run off and leave the orc in your dust... which isn't hard, since he was likely more interested in loot than another person to fuck. Sadly, you do run into some more lusty enemies soon after, and spend quite a while being chased by a large pack of canines. When you finally manage to swing back to the Mall and approach the large building complex, you run into Mark again, a little worse for wear, and with a grumpy expression. He isn't in too great of a mood to see you, grumbling, 'I fought those bastards off, but not without one of them stealing half of my trade goods. You know, you didn't have to [italic type]beat[roman type] that fucker. If you'd just held him off a little while longer, I'd have helped you take him out. Gonna have to do better if you want to go out with me again.'";
	else: [coyote thief]
		say "     While Mark is busy trading, you let your attention wander through the room, checking out people, goods and the general vibe of the place. It certainly is fascinating to see all of the different species and forms of post-humanity present in this setting, interacting in a bazaar atmosphere. Some things that change hands are mundane, others weird and exotic, leaving you to wonder what might be presented next. Focused as they are on each other, neither Mark nor Halvar notice a sly coyote wearing a black hoodie strolling up to them, then quite casually lifting an item from the polar bear's backpack. You're quite sure that he'd have kept stealing more, but at that moment, the canine notices your eyes on him and hurries away. Given how quickly the coyote is fleeing, even the simple pause to get Mark involved might make you lose him, so you simply go after the thief as fast as you can.";
		WaitLineBreak;
		say "     The anthro male makes his way to a doorway leading deeper into the building and you follow, dashing after him. This escalates into a little bit of a chase through the empty shell of a department store, until you eventually corner the guy and the coyote whirls around to show you his bared teeth. 'I'm just trying to survive, like everyone else. Couldn't you just have kept to yourself asshole?! Fuck you!' he growls, then attacks you without leaving any time to reply.";
		now inasituation is true;
		challenge "Coyote";
		now inasituation is false;
		if fightoutcome < 20: [player won]
			say "     Stumbling back after another blow, the thieving coyote growls at you, then barks out, 'Fine, you can have the stupid stuff!' And with that, he pulls several items out of his pockets, throwing them at you with full force. Having to catch or dodge the projectiles provides enough distraction for the canine to make a getaway. For a second you are tempted to go after him, but given that you got back what he stole, you end up just shrugging and collecting it all. Then you go back to find Mark again. The polar bear welcomes you and seems curious about where you went - until he sees what you hold in your hands that is. Eyes going wide, he takes what is his. Lifting another item that you have, Mark inspects it with interest and then glances at Halvar the lizardman. As it turns out, the thief made off with a number of precious things from his collection too.";
			say "     Both of the men are well-pleased for your quick intervention and reclaiming the stolen goods. As a reward, they hand you some food, water and a healing booster. While you are packing away the goods, Mark and Halvar wrap up their trade, actually exchanging two of the items you brought back with one another. Then the polar bear takes you back to the Mall, shaking your hand after you arrive and saying, 'Thanks for your company on the trip. Nice to have someone reliable along. We should do this again sometime.' With that said, he goes off to find his boyfriend Jay.";
			LineBreak;
			say "[bold type]You gain 1 healing booster![roman type][line break]";
			increase carried of healing booster by 1;
			LineBreak;
			say "[bold type]You gain 1 food![roman type][line break]";
			increase carried of food by 1;
			LineBreak;
			say "[bold type]You gain 1 water bottle![roman type][line break]";
			increase carried of water bottle by 1;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     As you are sent stumbling back after another of the coyote's blows, the canine uses the chance to dash off through a side passage, knocking over a number of boards leaning against a wall from what seems to have been a stillborn renovation. As they fall down in a loud clatter, you are left behind worn out and alone. You wait for a little while to clear your head, then make your way back to the swap meet to find Mark again. As you do so, the polar bear welcomes you and seems curious about where you went, so you explain about the thief. His eyes go wide and he checks his backpack, silently cursing that he allowed the coyote to lift valuable trade goods from him. The lizardman trader similarly goes over his collection of barter items, also finding several of them missing.";
			say "     Both of the men are a little bit grumpy about being stolen from, but thankful that you at least tried to catch the thief. A little while later, Mark and Halvar wrap up their trade and your companion packs away what he bartered for with the lizardman. Then the polar bear takes you back to the Mall, shaking your hand after you arrive and saying, 'Thanks for your company on the trip. A pity about that thief getting away, but at least, you prevented him from stealing more.' With that said, he goes off to find his boyfriend Jay.";
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you run off one way while the coyote runs the other way, as escaping with his purloined items was the guy's intent from the start. Coming to a stop at the other end of a large room in the abandoned department store, you brace against a wall for a little while to clear your head, then make your way back to the swap meet to find Mark again. As you do so, the polar bear welcomes you and seems curious about where you went, so you explain about the thief. His eyes go wide and he checks his backpack, silently cursing that he allowed the coyote to lift valuable trade goods from him. The lizardman trader similarly goes over his collection of barter items, also finding several of them missing.";
			say "     Both of the men are a little bit grumpy about being stolen from, but thankful that you at least tried to catch the thief. A little while later, Mark and Halvar wrap up their trade and your companion packs away what he bartered for with the lizardman. Then the polar bear takes you back to the Mall, shaking your hand after you arrive and saying, 'Thanks for your company on the trip. A pity about that thief getting away, but at least, you prevented him from stealing more.' With that said, he goes off to find his boyfriend Jay.";

to say MarkScavengingTarget4:
	say "     [one of]'See that supermarket over there? I've got it on good authority that it hasn't been looted yet. Of course, that is mainly because of warnings that people who try do not come back. Haven't checked it out on my own because of that, but together, I'm sure we'll be able to handle whatever may stand in our way.' [or]'Let's visit the supermarket again. Those gel creatures will have laid out another bag of bait by now, so let's rip them off.' [stopping]Patting the side of your arm and giving a thumbs up in high spirits, the polar bear then leads the way towards the mid-sized supermarket. Passing by the high windows at its front, you see that it indeed is almost untouched, with shelves still packed with all sorts of goods. Were it not for a number of abandoned and sometimes tipped-over carts, as well as scattered piles of clothing, one could almost believe that the place never got hit by the current chaos. Of course, the store has no power, but thankfully, its sliding entrance door is open far enough to let you pass through.";
	WaitLineBreak;
	say "     Inside, you see the empty row of registers, their conveyor belts still laden with goods, as well as other indications that there must have been a panic in this place. About twenty feet ahead, a large paper bag lies in the middle of the floor, apparently having spilled part of its contents of food and soda cans to give a very tempting target for any scavenger happening to come by. 'Look at that,' Mark whispers to you, his eyes focusing on the sight before you. 'Funny how the bag fell just right to show off its contents, eh? Even the labels are pointing our way. [one of]Get ready for a fight. This [italic type]has[roman type] to be a trap.' [or]Guess that it worked enough times that these things just keep doing that. Get ready to fight them.' [stopping]Slowly, the two of you walk towards the bait, ready for anything. As you are about to reach the bag, a series of splats behind you draws your attention: gel people are pushing themselves out between the slats of the air vents above the door, landing on the tiled floor, and more creatures emerge from beneath the registers and shelves. Within moments, you are surrounded by half a dozen of them.";
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
		now inasituation is true;
		if GroupFightCounter is 0:
			say "     The first gel person to throw herself at you is hot pink and charges at you with arms outstretched. You can see through her, mostly, her gelatin-like flesh tinting the area behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeable than the rest of her.";
			challenge "Pink Gel";
		else if GroupFightCounter is 1:
			say "     Fighting off one gooey person, another attacker immediately takes her place. This one is blue and has a manic grin on his face, moving towards you with a squishy noise. You can see through him, mostly, his gelatin-like flesh tinting the area behind him with its lustrous shade. His upper torso is well defined, with his muscled abs somehow jiggling just a little more than you would expect. Between the shifted person's legs a foot-long flaccid member sways back and forth as he moves.";
			challenge "Blue Gel";
		else if GroupFightCounter is 2:
			say "     As the blue gel falls back to lose some of his cohesion and become a spreading puddle on the ground till he can re-form, another gel person oozes closer. You can see through her, mostly, her gelatin-like flesh tinting the area behind her with its lustrous shade of purple. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeable than the rest of her. Between her legs her foot-long flaccid member sways back and forth as she moves.";
			challenge "Purple Gel";
		now inasituation is false; [reset]
		increase GroupFightCounter by 1;
	if fightoutcome < 20: [player won]
		say "     You beating back another of the numerous attackers gives Mark the chance to snatch up the bag of bait. 'Let's get out of here!' he calls out in an urgent tone, kicking back the first of many gooey reinforcements arriving from the back of the store. Running from the building, the two of you manage to elude a real horde of squishy humanoids, countless victims of the supermarket trap. The goo people follow for half a block, then seem to give up on you and return to their home, no doubt preparing for others who are more gullible and less formidable in a fight. Mark and you split the contents of the bait bag evenly between yourselves, and the large man says, 'Good thing that those goo creatures aren't too dangerous individually. Since they seem to bait their trap with parts of the huge supplies in that market, I'm half-tempted to go back there some time and snatch more supplies.'";
		say "     Packing away your share of the loot, you think to yourself that it really might be worthwhile to join him for another such trip. The two of you make your way back to the Mall, and after giving you a companionable squeeze of the shoulder, Mark goes off to go find his lover Jay.";
		LineBreak;
		say "[bold type]You gain 2 food![roman type][line break]";
		increase carried of food by 2;
		LineBreak;
		say "[bold type]You gain 2 water bottles![roman type][line break]";
		increase carried of water bottle by 2;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Wavering and exhausted, you collapse on the ground and instantly find yourself covered by multiple colorful gel people, putting the world in a confusing jumble of multicolored shades as you see it through their transparent flesh. Your lungs start burning from the lack of air after a few moments, and the urge of just trying to breath, even through it would just mean inhaling a bunch of goop, rises more and more. But all is not lost, as an apparently pink and blue bear suddenly steps into your line of sight, plunging his clawed hand through the gel to wrench you out of the pile-up. Finding yourself shaken around (to free you of splatters of goo) and then thrown over Mark's shoulder, you see a whole horde of previous victims of the supermarket trap ooze forward from the back of the store. Your polar bear companion doesn't wait for them to arrive, or even your own opponents to re-form and attack, instead just running out of the place, carrying you to safety.";
		say "     The gel people follow for half a block, then seem to give up on you and return to their home, no doubt preparing for others who are more gullible and less formidable in a fight. Putting you down on your own feet and stopping to catch his breath, Mark says, 'Well, that went sideways quickly. Still, it is tempting to go back there sometime and maybe snatch the bait out from under them. The original ambush group wasn't that big. If you train up a bit maybe, I bet that we could fight em off and get out before the others arrive.' The two of you make your way back to the Mall, and after giving you a companionable squeeze of the shoulder, the big bear goes off to go find his lover Jay.";
	else if fightoutcome is 90: [fled]
		say "     Abandoning the fight, you turn around and run, calling for Mark to do the same. He kicks a blue gel creature out of his way and follows you, dashing out of the store. Looking back over your shoulder, you see that more and more creatures emerge from the depths of the store, a whole horde of previous victims of the insidious trap in the supermarket. The gel people follow for half a block, then seem to give up on you and return to their home, no doubt preparing for others who are more gullible and less formidable in a fight. Stopping to catch his breath, Mark says, 'Well, that went sideways quickly. Still, it is tempting to go back there sometime and maybe snatch the bait out from under them. The original ambush group wasn't that big. If you train up a bit maybe, I bet that we could fight em off and get out before the others arrive.' The two of you make your way back to the Mall, and after giving you a companionable squeeze of the shoulder, the big bear goes off to go find his lover Jay.";

to say MarkScavengingTarget5: [behemoth attack]
	say "     'See that place up there? It is -' Mark starts to say, but his words are drowned out by a monstrous bellow, followed by [one of]a shrieking harpy, flying past with panicked beats of her wings[or]a screaming husky running past in a panic[or]the shriek of a panicked latex fox dashing past[or]the shriek of a centaur dashing past with hooves clattering on the asphalt[at random]. The creature chasing after the fleeing person is a true monster, a giant behemoth - and you are right in its path! Before either Mark or you have any chance to react, the beast literally runs you over, and a casual swipe of its leg swats the big polar bear to the side, impacting against the side of a building with a loud thud. Your friend collapses to the ground like a puppet with its strings cut, having hit the side of his head on a brick wall.";
	WaitLineBreak;
	say "     Hurrying over to check if Mark is alright, you see that he is thankfully only unconscious, although the wound is bleeding quite a bit. Then suddenly, you become aware of more thundering footsteps behind you - seems like the behemoth lost track of its intended prey and has decided to return to check you and your companion out in more detail after all. With a roar, the creature attacks!";
	now inasituation is true;
	challenge "Behemoth";
	now inasituation is false;
	if fightoutcome < 20: [player won]
		say "     Another heavy hit on the massive beast sends it flinching back from you, letting out a howl with spittle flying. Then the behemoth whirls around and runs off, having had enough of a beating for today. You let it go and turn back to Mark, who must have regained consciousness at some point during your fight, but is still sitting against the wall and holding his head. His white fur is stained with blood and he groans as he carefully feels his skull. At least it isn't bleeding anymore, or showing any sign of a wound actually, so you guess that his nanites are hard at work at fixing the ursine back to full health. 'Nice bit of fighting there,' your companion says with admiration audible in his voice, then eventually pushes himself up to his feet. 'Still, I think that we should call it a day. Almost getting my head bashed in has put me off the mood for scavenging right now. Let's hope that we'll have better luck next time.' Giving him a thoughtful nod, you accompany the bear back to the Mall, then are given a companionable squeeze of your shoulder before the big man goes off to find his boyfriend Jay.";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     The massive beast's attacks leave you swaying on your feet, at which point it knocks you down with a flick of its snout against your body. Howling in victory, the behemoth stomps closer, focusing on your helpless form with those large predator eyes, as if trying to decide what to do with you now. The question is answered soon, as you can see its cock hardening to its fully-erect length, starting to drip pre-cum. Then the creature steps forward and starts to rub against you, in the mood for a good time. Mentally preparing yourself to be fucked by this giant beast, you are surprised by a flash of white that you see moving behind the behemoth, followed by a pained shriek from the creature and it literally jumping over you in one reflexive leap. Looks like Mark is back up, and he had got a running start, then kicked the giant monster in the balls!";
		say "     All desire for sex banished from the behemoth's mind, it flees, leaving you and your companion behind. 'Phew, good that it was so focused on you and had that obvious weak spot,' the large bear says in relief and comes up to give you a hand up. The fur on his palm is stained red with blood, as is the side of his head, but thankfully the nanites seem to have done their job of healing him back to full health by now. 'Still, I thin that we should call it a day. Almost getting my head bashed in has put me off the mood for scavenging right now. Let's hope that we'll have better luck next time.' Giving him a thoughtful nod, you accompany the bear back to the Mall, then are given a companionable squeeze of your shoulder before the big man goes off to find his boyfriend Jay.";
	else if fightoutcome is 30: [fled]
		say "     Turning around and running as fast as you can, you are chased by the massive beast for quite a while until you finally manage to shake it. Alone and exhausted in an area you don't really know, you make your way back to the Mall afterwards, and run into Mark shortly before reaching the place. The fur on his palm is stained red with blood, as is the side of his head, but thankfully the nanites seem to have done their job of healing him back to full health by now. 'Ah, good to see that you made it. The last thing that I remember is seeing that behemoth, then waking up against that wall. Did you lead it away or something? Anyways, I'll just call it a day. Almost getting my head bashed in has put me off the mood for scavenging right now. Let's hope that we'll have better luck next time.' Giving him a thoughtful nod, you accompany the bear back to the Mall, then are given a companionable squeeze of your shoulder before the big man goes off to find his boyfriend Jay.";

to say MarkSuitQuest:
	say "     You approach Mark and tell him about the surprise that Santa and yourself are preparing for Jay, which causes the large man to openly gape at you. 'You're having a suit for Jay [italic type]made[roman type]? I - um - never though of that. Now I feel stupid for carrying a measuring tape and a piece of paper with his sizes with me for a week and a half, trying to [italic type]find[roman type] something that will fit my little man in the midst of all this chaos out there.' Rubbing the back of his neck in embarrassment, Mark falls silent for a moment, then laughs about himself and throws an arm around your shoulders. The big man gives you a friendly squeeze and thanks you for your efforts, then asks, 'So, how long did they say it would take?'";
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Fucking
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Mark:
	if 2 > 1:
		say "     <Sorry, this part of Mark is still WIP>";
	else:
		if (lastfuck of Mark - turns < 6): [he got fucked in the last 18 hours = 6 turns]
			say "     <Reason why Mark doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
		else: [ready for sex]
			say "     As you walk up to Mark, <positive reaction at being approached for sex>";
			wait for any key;
			say "[MarkSexMenu]";

to say MarkSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Mark suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Mark off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get a blowjob"):
					say "[MarkSex1]";
				if (nam is "Suck Mark off"):
					say "[MarkSex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the slender elf, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say MarkSex1: [oral on the player]
	say "     A";

to say MarkSex2: [oral on Mark]
	say "     A";

Mark ends here.
