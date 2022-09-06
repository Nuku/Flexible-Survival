Version 3 of Blanche by Prometheus begins here.
[ Originally by Stripes]
[ Version 2.2 - Cowgirl scene added + mechanics tweaks + debug data]
[ Version 2.3 - Blanche's Brood Event added. Start of being able to move her to the library - By Prometheus]
[ Version 3 - Blanches moves to the library - By Prometheus]

"Adds a White Wolf named Blanche to the Flexible Survival game."

[	HP of Blanche		]
[ 0 - not saved			]
[ 1 - saved				][sleeping mat]
[ 2 - talked to her		]
[ 3 - sex (F/F)			]
[ 4 - sex (M/F)			]
[ 5 - knocked up		]
[ 6 - advanced preg		]
[ 7 - first litter		][mattress]
[ 8 - talked post-pups	]
[ 9 - knocked up again	]
[10 - advanced preg		]
[11 - another litter	][small bed]
[12 - cycling knocked up	][silk sheets]
[13 - cycling adv preg	]
[14 - cycling litters	]

[	Libido of Blanche = turn knocked up		]

[	lust of Blanche = last time knocked up	]

[	thirst of Blanche = pup count	]

[   Charisma of Blanche - Progression (sort of)  ]
[   0 - At Office                                ]
[   1 - At library                               ]


Section 1 - Progression Events

Table of GameEventIDs (continued)
Object	Name
Wolfrape	"Wolfrape"

Wolfrape is a situation.
ResolveFunction of Wolfrape is "[ResolveEvent Wolfrape]". The level of Wolfrape is 16.
Sarea of Wolfrape is "Capitol".
when play begins:
	add Wolfrape to badspots of HermList;
	add Wolfrape to BadSpots of FemaleList;
	add Wolfrape to BadSpots of FurryList;

to say ResolveEvent Wolfrape:
	say "     While searching the city, you hear sounds of both ecstasy and agony floating from a nearby alleyway. Cautiously, you approach and peer inside. An anthro white wolf female has been caught and pinned by one of the herm drakes. The demonic features of the reptile herm contrast the clean, pure coloration of the white wolf woman. The wolf's blouse is ripped into tatters as her captor's sharp claws digs into her shoulders to keep her restrained, leaving the wolf woman to only be able to pitifully to be spared as the dragon-creature drills into her from behind.";
	say "     You could try to help the poor wolf, but dare you face such a formidable creature? [if level of Player < 10]It seems like a terribly vicious and dangerous beast. [end if]The lustful ebonflame drake continues thrusting, drilling its cock into her painfully, its excitement growing. If you plan to help her, you'd best do it now.";
	say "     [bold type]Shall you intervene?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		now blanchefight is true;
		say "     You charge into the alley, trying to take the large creature by surprise. It growls angrily at being interrupted mid-coitus and pulls painfully out of the wolf-woman. You manage a quick blow to the creature as it kicks its previous prey into the corner to retrieve later. The wolf is stunned for the moment, leaving you to face this monster alone.";
		challenge "Ebonflame Drake";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having defeated the formidable creature and driven it back into hiding, you rush over to the female wolf. She is still quite dazed from her assault, but mumbles some thanks as you help her to her feet. You consider taking her back with you, but are unsure how safe this unknown wolf could turn out to be. You are spared from the decision as she starts indicating directions for you to follow. She leads you to a partially ruined office building just a few blocks away. The entrance is buried in rubble, but there's a concealed back entrance to the five-story building which she unlocks.";
			move player to Office Den;
			AddNavPoint Office Den;
			WaitLineBreak;
			project the figure of Blanche2_icon;
			say "     Once safely concealed in the wolf's hidden den, she hugs you tightly and gives you a passionate kiss which surprises both of you. As if suddenly realizing what she's done, she takes a step back, blushing at her ears. 'Oh, I'm sorry. It's this... infection thing. I'm sure you know what it does to you. I am really thankful though for your help.' She brushes her fur nervously and, realizing that she's nude, grabs one of a few spare blouses she has folded on the bookcase. She slides it on, but doesn't bother to do it up after throwing you a quick glance.";
			say "     She grabs a can of ravioli from the shelf as well, pressing it into your hands. 'Please take this. I'd give you more, really, but it's about all I can spare right now. You were really brave to try and help me against that monster. I don't like going out there much because there are so many of them. You could... if you need somewhere safe to hide that is... maybe stay here... with me.' She speaks softly, but with obvious longing in her voice. Perhaps she's lonely and simply wants companionship, though from the way she's looking at you, perhaps she wants more.";
			now HP of Blanche is 1;
			ItemGain food by 1;
			increase score by 20;
			now battleground is "void";
			now Resolution of Wolfrape is 1;	[Saved Blanche]
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     After the draconic beast has suitably punished you for the interruption, she heads back to her original prize and pushes her over onto all fours. The female wolf moans weakly, but cannot prevent the drake from mounting her again. The dragon's lustful moaning starts up again, but the wolf's whimpers and moans of pain are soon silenced as the drake clamps the wolf's muzzle shut. Holding her muzzle upwards, the powerful beast kisses and licks at the wolf's face, moaning how lovely she'll look filled with her whelps. The wolf's eyes go wide at this, but she's too overwhelmed by the mix of pain and pleasure from the rough mating to do anything. The dragon creature growls loudly and lustfully as it drives hard into its prey one last time, causing the wolf to yelp then struggle, then become very still. The lizard cock glows from within the wolf's belly and soon you can tell the canine is being filled with molten sperm. The white wolf's belly expands as it is filled, and glows red as its new cargo of life shine through her skin and fur. Once the wolf is full and bloated with the drake's cum, the dark creature pulls out and starts dragging the wolf away with her. When you recover enough to get up, you get away from this spot as quickly as you can.";
			now Resolution of Wolfrape is 2;	[Lost Blanche to Ebonflame Drake]
		else if fightoutcome > 30:
			say "     Unable to stand up to the powerful creature's assault, you turn and run away. The angered drake sends a wave of fire after you, burning the stray trash in the alley before pouncing back on her original prey. You can hear the sounds of lust. The cries of pain start back up again, but they are quickly silenced, probably by a large, clawed hand around the wolf's muzzle. The sounds fade away as you continue further away, though you do hear loud roar of the beast cumming into its prize.";
			now Resolution of Wolfrape is 3;	[Ran and left Blanche to Ebonflame Drake]
	else:
		say "     Deciding not to intervene, you watch as the wolf moans pitifully, an expression of growing rapture on her face as the drake thrusts into her from behind. The dragon growls and slams her prick home causing the wolf to yelp then struggle, then become very still. The lizard cock glows from within the wolf's belly and soon you can tell the canine is being filled with molten sperm. The white wolf's belly expands as it is filled, and glows red as its new cargo of life shine through her skin. Once the wolf's been filled, the drake grabs her, dragging her off somewhere. As quietly as you can, you back away.";
		now Resolution of Wolfrape is 99;	[Did not try to save Blanche]
	now blanchefight is false;
	now wolfrape is resolved;

Table of GameEventIDs (continued)
Object	Name
Blanche's Brood	"Blanche's Brood"

Blanche's Brood is a situation.
ResolveFunction of Blanche's Brood is "[ResolveEvent Blanche's Brood]".
Sarea of Blanche's Brood is "Nowhere".

when play begins:
	add Blanche's Brood to badspots of MaleList;

instead of navigating Office Den while (hp of Blanche > 7 and Blanche's Brood is unresolved):
	say "[NavCheck Office Den]";
	if NavCheckReturn is false, stop the action;
	move player to Office Den;
	say "[ResolveEvent Blanche's Brood]";

to say ResolveEvent Blanche's Brood:
	if debugactive is 1:
		say "     DEBUG: Blanche organizes scavenging trips[line break]";
	say "     As you enter Blanche's den you are met once again by the Sturm's appraising gaze, the large white wolf giving you little more than a nod in greeting before returning his full attention to watching over the scorched city surrounding the nondescript building. Given that this is one of the harshest areas in the city, you can imagine the strain that he puts himself under to ensure that his mother and the rest of his family remain safe, though you are sure that the others occasionally take their turn at guard duty to allow him some time to rest or relax. The door opens before your hand can reach it and the naked frame of Blanche appears in the doorway, your proximity causing her to let out a pleased gasp. '[if player is male]My two favorite men side by side[else if player is female]My favorite woman comes to see me[else]My rescuer comes to see me[end if]!' the wolfess MILF exclaims, giving you a warm hug. 'Come inside. Yes, you too Sturm, we were just about to organize an excursion into the city for food, water, and building materials, and your joint expertise would come in handy.'";
	say "     Sturm looks reluctant to leave the door unguarded, but the constant harrying and reassurance from his mother eventually convinces him that he can spare a few minutes to take part in the discussion and he follows behind you as you enter the office building. You come to a stop in what you assume is the living area where [if HP of Blanche < 11]three [else]nine [end if]other wolves are standing around a table with a heavily-edited city map spread across it. They give you a friendly wag before returning their attention to their mother who takes the prime position to see the map, Sturm shouldering past you to stand beside her and leaving you to stand opposite them with everything upside-down and wondering why he treats you with what feels like passive hostility.";
	WaitLineBreak;
	say "     Your musings are cut short by discussion of where to scavenge beginning, voices being raised and opinions loudly stated. One of the younger wolves seems to believe that they can make do with scavenging only in the Capitol District in order to save their energy and to remain close by should they need help from the rest of their siblings. You reply that while they might spend less time traveling, the creatures around here are more ruthless than many in other areas of the city, Sturm, surprisingly, echoing agreement, adding that doing so risks not everyone coming back, his appraisal causing the younger wolf to nod his head in acceptance of the logic. Further suggestions of varying plausibility are put forth over time, most of them being countered for one reason or another by Sturm, who seems zealously protective of all of his siblings, garnering your respect for his loyalty and insight despite his usually surly demeanor towards you.";
	say "     As a lull in the conversation occurs, you suggest that they could try the park. There's clean water, fresh fruit, and not too many areas where creatures might be able to surprise them. On top of that, the infected there are less dangerous than the dragotors and orc slavers that roam the hellscape around their home. Sturm pulls a face as you mention the danger of where they live but grudgingly agrees that the park is likely to be a decent place to scavenge. 'Didn't I tell you that [SubjectPro of Player] would have something to add?' Blanche teasingly asks her eldest son, earning a scowl from the large white wolf. He does however give you a nod of recognition and for the rest of the discussion you don't see him glowering at you at all.";
	WaitLineBreak;
	say "     Eventually, the meeting comes to an end with the decision having been made to scavenge in the park, though when it will happen has yet to be decided. Blanche's various children return to their various duties such as tidying bedrolls, checking medical supplies, and keeping watch outside, a few of them coming over to talk to you as they pass by. To your surprise, Sturm does so too. 'You know the city better than I do,' he grudgingly greets you, skipping any pleasantries. You agree, but reply that he seems quite knowledgeable himself and he seems to be doing well protecting his mother. 'Someone should, and you seem to feel that you have better things to do,' he snarls. The white-furred wolf pauses to take a breath before continuing in a more civil tone. 'Mom has so much love in her. We would do anything for her. We all would,' he quickly adds upon noticing one of your eyebrows rise. 'Just make more time to be with her. I may be her favorite child, but she misses you when you are gone.' With that, he stomps away muttering under his breath, leaving you to shake your head and watch the activity around you.";
	now Resolution of Blanche's Brood is 1;
	now Blanche's Brood is resolved;

Table of GameEventIDs (continued)
Object	Name
Scavenging the Park	"Scavenging the Park"

Scavenging the Park is a situation.
ResolveFunction of Scavenging the Park is "[ResolveEvent Scavenging the Park]".
Sarea of Scavenging the Park is "Nowhere".

instead of navigating Office Den while (hp of Blanche > 7 and daytimer is day and Best Wolf is not listed in companionList of Player and Scavenging the Park is unresolved):
	say "[NavCheck Office Den]";
	if NavCheckReturn is false, stop the action;
	move player to Office Den;
	say "[ResolveEvent Scavenging the Park]";

to say ResolveEvent Scavenging the Park:
	if debugactive is 1:
		say "     DEBUG: Blanche organizes scavenging trips[line break]";
	say "     Sturm glowers at you as you enter the den, causing a sinking feeling within you that one of your children would harbor such bitterness towards you. Noticing his expression, Blanche clips him around the ear with a frown. '[SubjectProCap of Player] hasn't done anything wrong. Why do you bear [ObjectPro of Player] such ill-will?' she softly growls. Looking suitably chastened, the large male wolf greets you. 'Father. We were just readying for our initial scavenging trip to the park. It must be fate that you would appear at the right time,' Sturm explains, unable to keep the sarcasm out of his voice at the end, earning a stern poke in the side from his mother. 'We would be delighted if you had the time to accompany us,' Blanche says brightly, though you notice that she keeps one eye on her eldest son to keep him in check. For all her faults, she seems to hold absolute authority over her family.";
	say "     Having come here to visit her anyway, you see nothing wrong with escorting them on this little expedition and readily agree to go with them. 'Wonderful. We're all going, so it'll be like a family outing,' she beams before bustling around making sure that everyone has a backpack. While she is distracted, you approach Sturm and remind him that his mother will be safer with you there, a point that he grudgingly concedes. 'You at least have more experience than some of my siblings,' he grumbles. He pauses for a moment before sighing and continuing, 'Mom's right. I shouldn't be so hostile towards you. While you are seldom around, no one else seems to mind and Mom says you risked your life to save her from an ebonflame drake when you first met. I'll try to be better, but it might take me some time, so be patient please.' This is probably the most vulnerable you've seen him and you reassure him that he can have as much time as necessary, relieved that he might be able to move past his surly treatment of you.";
	WaitLineBreak;
	say "     'Is everyone all set?' The moment is interrupted by Blanche calling out to everyone before slinging a backpack over her shoulder. A chorus of yeses answer her and everyone files out of the building with Sturm rushing to the front, leaving you in about the middle of the column next to Blanche. Perhaps due to the size of the group, you are largely left alone by the hostile residents of the city, leaving you free to converse with the wolf MILF. 'Thank you for doing this,' she says, beaming at you in her typically cheerful manner. 'It's a shame that we aren't going to the park merely for a picnic though. Just you, me, and the children sitting on a rug eating sandwiches and drinking lemonade...' You agree that the nanite apocalypse has rather put a dampener on such activities but point out that it did allow you to meet her in the first place. 'That's true, and I wouldn't give up Sturm for that. He's my good boy.'";
	say "     Some of her other children gives Blanche a hurt look at such a specific example, causing her to hurriedly reassure them that she has no regrets about any of them and loves them all. You chuckle internally at this faux pas, knowing well that it won't be the last time she makes it, though with how much devotion Sturm shows her, even compared to his siblings, you can hardly blame her if she returns his feelings. You just hope that he'll look up to you similarly one day, especially after your earlier conversation. 'They grow up so fast,' Blanche muses as she returns, her child suitably soothed. You ask whether she had any children before the nanites overwhelmed the city. Giving you a strangely sad look, Blanche replies, 'No. I got pregnant in my last year of high school. But my life went to hell and I ended up miscarrying.' You quickly apologize for bringing up such an awful memory, but she waves you off. 'You weren't to know. I'll tell you more later, but I don't want our children listening in. I haven't even told Sturm.'";
	WaitLineBreak;
	say "     Digesting this information, you walk in relative silence for the rest of way until the column comes to a halt outside the gates to the park. [if PlayerMet of Diego is true]Diego [else]A coyote [end if]is leaning up against one of the columns, grinning mischievously. 'Taking the kids out for a day in the park? Don't you know the city's dangerous these days?' [SubjectPro of Diego] teases Sturm, [PosAdj of Diego] smirk slipping a bit as you and Blanche approach too. 'I see you brought your mother and her [if player is male]boyfriend [else if player is female]girlfriend [else]this time.' Sturm growls in response, seemingly familiar with the coyote, taking a step towards [ObjectPro of Diego], but the brown-furred canine backs away, raising [PosAdj of Diego] hands appeasingly. 'Relax kid. I'm not going to cause any trouble. I have [italic type]some[roman type] moral standards,' [SubjectPro of Diego] says in a conciliatory tone.";
	say "     Sturm snorts, but advances no farther, allowing [if PlayerMet of Diego is true]Diego [else]the coyote [end if]to retreat into the park. Hopefully you won't have another run in with [ObjectPro of Diego] while you are here. Having reached your destination and seen off the initial threat of the coyote, Blanche has her children gather around to remind them of your objective in the park. 'We're looking for clean water or food that we can easily take back to the den. Do not steal from others and don't exchange [']favors['] for resources. Bianca, Claude, this is mainly directed at you. Don't bother scavenging for building materials this time. It's a long walk back home and food and water are more important,' the wolfess clarifies, her tone brooking no argument. 'Sturm has the most experience with scavenging, so I'll let your brother [if HP of Blanche < 11] lead your group[else]split you into groups[end if]. I don't think that I will be of much help so [if Player is not defaultnamed][Name of Player] and I shall see what we can find in the central picnic area[else]I'll see what I can find in the central picnic area[end if]'.";
	WaitLineBreak;
	say "     Sturm nods his acceptance of this plan and quickly organizes his siblings further before they gradually branch off from the path to look for food and water deeper in the park away from where you and Blanche are heading. 'Now that they are all busy, I can continue our earlier conversation before we do some scavenging of our own,' the wolf matriarch quietly informs you, glancing around to make sure that none of her progeny are nearby. Sitting down on a bench, she pats for you to sit beside her, an offer which you readily take her up on. This close to her, you can easily smell her natural aroma emanating from her, a mixture of arousal and clean fur. 'I was one of the top students in my final year of high school and I wouldn't have had much difficulty getting into a prestigious college, something which my parents were extremely proud of, especially as I was an only child. They weren't the most affectionate people, always demanding that I do better, but I loved them anyway. I didn't really know much different,' Blanche explains.";
	say "     [bold type]Do you wish to listen to Blanche talk about her past?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Listen. Who knows what you might learn.";
	say "     ([link]N[as]n[end link]) - Zone out while occasionally nodding your head to feign politeness.";
	if Player consents: [Listen]
		LineBreak;
		say "     'My father was a senior member of the city council as well as holding senior positions in multiple organisations including my school and my mother was an IT manager for a local branch of a big corporation, the name doesn't matter. It seemed like a picture-perfect life. There were always people wanting to be friends with me, not all of them for selfless reasons, but my best friends were Wolf and Lupa, whom I had known since elementary school.' She pauses for a moment, reminiscing with a small smile. 'Wolf had stood up to some of the bigger kids who were trying to take my lunch. You know, the typical mean things that children try to get away with when they are younger. He kept getting back up each time they knocked him over, each time a little more bloody and bruised until his older sister, Lupa, appeared and beat them up. Even after all that, Wolf still asked if I was alright before being taken to the nurse. Lupa nearly ended up suspended, but she was let off with only a stern warning because she was protecting her brother. They barely left my side at school from then on and Wolf became my childhood sweetheart.'";
		WaitLineBreak;
		say "     'Until I was about fourteen my parents didn't have a problem with them, finding our friendship endearing as one does, but once I was fourteen they felt that they were a distraction from my studies so if either of them wanted to see me outside of school they had to sneak in or visit while my parents weren't home, which admittedly was rather frequently given the number of late nights they seemed to work. As I continued to get good grades at school, they gave me permission to sometimes invite them and my other friends over at weekends to hang out, but I wasn't often allowed to visit them at their own homes. I was kept on a tight leash, if you'll excuse the canine pun. When I was sixteen, Wolf and I began dating properly, or as well as we could with my parents constant interference, and it was one of the happiest periods in my life, especially when Lupa, rather than my parents would chaperone us on our dates as she was amenable to our demonstrations of affection. We did get some strange looks for other people though.'";
		say "     Blanche takes a breath to collect her thoughts, the melancholy expression returning as she picks at a knot in her fur. 'As time went by, I grew attracted to Lupa, though I still had feelings for Wolf. As you can imagine, I was quite torn between the two, but I can't have been that subtle as one day while we were walking home together, they informed me that they were willing to share and that outwardly I could continue to date Wolf but in private I could be with either or both. If I wanted to explore my sexuality, this seemed a fool-proof plan, especially as being a lesbian or bisexual was treated even worse than it is today. Or at least before where I worked became surrounded by lava,' she jokes, trying to cheer herself up. 'At first I was scared of this. Would it make me a slut? But over time I warmed up to the idea of being in a three-way relationship. If it made me happy, why should I care? Eventually I summoned the courage to agree to their proposal and we began to fool around from time to time.'";
		WaitLineBreak;
		say "     'Most of the time this had to be done at their house so that we weren't caught. Their father was in the military and frequently on deployment, but when he was home nearly all of his time was spent with Wolf and Lupa, whether it was playing games with them, taking them out for hikes in the forests, or reading them bedtime stories. He was a little gruff at times, but he loved his children in a way that my parents lacked. I'd have traded all the privileges that I grew up with to have had a father like him. Their mother was the manager of a supermarket and always seemed to be exhausted. It wasn't uncommon to see her spend the evening watching television while struggling not to doze off. I wonder now how much of a strain it was for her to raise two children alone with such success. I didn't give her enough credit at the time. Just between you and me, I have enough trouble with mine, and they grow up a lot faster.";
		say "     'In my final year of high school there was one night that, curious as to what it would feel like, I asked Wolf not to pull out when he came. It was a stupid thing to do in hindsight, but at the time it felt exciting and I can hardly blame him for agreeing despite Lupa's protestations. Her fears came true and I discovered that I was pregnant a few weeks later. I still had several months of school left so of course I was unmarried and there was no way that I would be able to conceal it from my classmates, teachers, or even worse, my parents. I would become a social pariah and my parents['] reputation would be ruined. Unsure what to do, I made what may have ended up being the worst decision in my life. Accompanied by Wolf and Lupa, I asked my parents for help. Parents are meant to love and protect you no matter what. Mine did not.'";
		WaitLineBreak;
		say "     Tears stream down Blanche's face, the memory still raw and painful. She wipes them away with a paw and continues with a sob. 'My mother wouldn't stop crying, only pausing every now and then to scream that I was a harlot or a whore before crying some more. My father initially just stood there, his anger building up until he couldn't contain it any more. The rest is mostly a blur, but I remember Wolf putting himself between my father and me, everyone shouting, my mother clawing at Lupa's face, and the sound of glass breaking as Wolf fell on a table. I don't remember much after that other than being put in an ambulance while my parents were escorted away by police officers. Their money and standing wouldn't protect them from what they had done.'";
		say "     'I found out in hospital that I had miscarried. I didn't get to testify against my parents, the prosecution had enough evidence without involving me, though maybe they talked to me and I just don't remember. I was taken to live with an aunt on the east coast so I never saw Wolf and Lupa again, but I was told that they would recover in time despite their injuries. My aunt was cold towards me, but I managed to graduate high school before she told me that I had to make a life of my own and that she hoped that she would never see me again. My life since then has been fairly uneventful, even college is a blur, but that's effectively how I ended up here.' There are still damp patches on Blanche's face, but she seems to have run out of tears for the moment, looking very drained nonetheless. You wrap your arms around her and tightly hug the white wolf, feeling her relax in your embrace. 'All I want is for my children to be safe and I'm not sure whether the office den can provide that much longer but I don't want to let them down like I did Wolf and Lupa.'";
	else: [Zone Out]
		say "     Barely listening to what Blanche has to say, you idly stare into the sky over her shoulder, occasionally nodding your head or murmuring agreement when you think it appropriate. Time seems to fly and soon you catch the end of what she is saying. 'My life since then has been fairly uneventful, but that's effectively how I ended up here.' There are still damp patches on Blanche's face, but she seems to have run out of tears for the moment, looking very drained nonetheless. You wrap your arms around her and tightly hug the white wolf, feeling her relax in your embrace. 'All I want is for my children to be safe and I'm not sure whether the office den can provide that much longer but I don't want to let them down like I did Wolf and Lupa.'";
	WaitLineBreak;
	say "     With a smile, you propose that Blanche join you at the library as it's a lot safer for both her and her children after all. 'Oh no. I couldn't impose on you like that,' she stammers in response. Any further discussion is cut off by the return of some of the wolf MILF's brood, their backpacks full of water bottles, fresh fruit, and even a baguette from the look of it, drawing Blanche's attention away from you. 'Oh my! Look how well you've done. Maybe we'll have to come here again in future. Once Sturm gets back, we can return home and Mommy will see what she can cook up as a reward,' she praises them, patting a few on the head while the others are kissed on the nose. 'Wait. Who are those people?' Blanche worriedly says, shepherding her children behind her as a group of four hermaphroditic wolf-human hybrids with painted markings approach. 'You have stolen from us and must pay the price!' the lead one calls out as they halt a couple of meters away.";
	say "     With a sigh, Blanche folds her arms, inadvertently emphasizing her bust. 'I told them not to steal from anyone. What belongs to you and I'll return it now,' she apologizes. 'All of it. Everything in the park belongs to us and we do not permit thieves,' one of the other hybrids spits, taking a menacing step forward. 'You must all pay the price. Get on all fours and prepare to be mounted!' Despite this threat, Blanche remains unimpressed. 'So no-one has actually stolen anything, you're just being selfish? Not the sort of lesson I want my children to learn from,' she grumbles[if Perception of Player > 15]. You notice Sturm sneaking up on the group, murder in his eyes[end if].The leader of the Painted Wolves holds up their hand to silence the discontent from their group before speaking again. 'All of these are yours? You must be very fertile. You would make an excellent breeding bitch for the tribe and would be very well cared for. Our numbers would swell massively. Come with us and the theft will be forgiven without any of your sons and daughters having to submit. You will all have to become like us though. We do not wish to dilute the blood of our tribe.'";
	WaitLineBreak;
	say "     'That's a very kind offer, but I'm afraid that I must decline. Having threatened to rape my children, I'm tempted to show you what a mother can do, but [if player is not defaultnamed][Name of Player] [else if player is female]their other mother [else]their father [end if]will be much more effective at teaching you a lesson and I don't believe that you've met my eldest son,' Blanche snarls as Sturm makes his move, trapping the rear-most hybrid in a chokehold. Caught by surprise, the painted wolves leave themselves vulnerable as you, Blanche, and your children overwhelm them without giving them a chance to defend themselves, the white wolf matriarch surprisingly potent in her assault. 'We will hunt you down,' the hybrid leader growls before Sturm strikes him in the jaw, knocking him out. Leaving them unconscious where they lie on the ground, you join in the affectionate reunion between them all, even managing to get a quick hug from Sturm who murmurs, 'Thank you for protecting her,' in your ear. Despite your victory, you don't stick around for the painted wolves to regain consciousness or for their tribe to come searching for them, rapidly making your way back to the office den.";
	say "     Counting you and her children in through the door, Blanche locks it behind you before walking over to a large table where the backpacks full of food and water neatly lie. With an exhausted sigh, she slumps into a chair beside it, rubbing her face with her hands. 'That took a dangerous turn,' she moans, Sturm stepping up beside her and rubbing her shoulder comfortingly. 'I believe them when they say that they will hunt us down and I don't trust the fear of the Ebonflame Drakes to keep them away. I don't know how we are going to keep up scavenging when we'll need more people on lookout too.' You remind her of your offer that she and her children could move into the library with you where it is safer and if worse comes to worst, they can escape a lot more easily than they would here but before Blanche can answer, Sturm cuts in. 'We would be very grateful to take you up on that offer. We'll be ready to move out in a few minutes and anything we can't take now can always be returned for later.'";
	WaitLineBreak;
	say "     The wolf matriarch is left speechless as her eldest son begins ordering his siblings around, all of them obeying without question as they re-collect their backpacks and determinedly jam even more inside of them. Some seem to be collecting sentimental items such as scuffed soft toys, others fold up a large map of the city and carefully stow it in a cardboard tube in preparation for transport, and you realize that this place served as both a base of operations as well as a home. Sturm returns and crouches down beside his mother, squeezing her hand affectionately. 'I know that you feel that you will be burdening [ObjectPro of Player], but [SubjectPro of Player] wouldn't have offered if [SubjectPro of Player] didn't want you around. You usually think with your heart, why not now?' Sturm asks her. 'Because I don't want to crowd [ObjectPro of Player] out of [PosAdj of Player] own home with children...' Blanche replies dejectedly. You reassure her that there is more than enough space for her and her family, as well as any more that she might have.";
	say "     With her family's eyes all upon her, Blanche takes a breath before suddenly trapping you in a hug. 'Thank you. Living with you would be wonderful,' she beams, a few stray tears trickling over her muzzle. You are beginning to wonder if she will ever let you go until she finally does as Sturm clears his throat. 'You can get frisky later if you want Mom, but the quicker we leave, the less likely we are to cross paths with any of those wolf-hybrids from the park,' he cautions, his mother reluctantly agreeing before joining her children in their preparation. In the next few minutes a flurry of activity ensures that the den will remain untouched by all but the most determined invader in case they want to return at some point. Even more equipped than when you were going out scavenging, your procession makes its way back to the Grey Abbey Library, their new home.";
	WaitLineBreak;
	say "     Pushing the front doors open dramatically, you welcome Blanche and her children to the library with a flourish. You can see Sturm attempting to look unimpressed by the comparative grandeur but the wide-eyed expression as he stares around gives away his curiosity. 'I can see why you weren't worried about space,' Blanche comments, turning around on the spot at the bottom of the staircase and gazing upwards. 'I could have a hundred litters and there would still be room!' 'M-mom?' Sturm stutters, looking shocked at this outburst from his mother while some of his younger siblings giggle. 'Relax sweetie. It was a joke,' Blanche reassures him, though her mouth twists mischievously at the corner. It would seem that she has found an effective way of teasing her son. 'In there looks cozy. If you don't mind, I'll improvise a den in the corner for my children and me to sleep in at night,' she informs you, gesturing at the door to the [bold type]computer lab[roman type]. Not really seeing a problem with this, you accept this suggestion, watching as the white wolf's children run of to ready a make-shift den, leaving you with just Blanche and Sturm for the remainder of your quick tour.";
	if Fang is booked or Fang is bunkered:
		say "     [if (TimekeepingVar is 6 or TimekeepingVar is -2) and hp of Lux > 3]As you turn away from the computer lab[else]As you pass by the door out to the garden[end if], Blanche abruptly stops and tilts her head upwards, her nose furiously quivering. 'That scent... where do I recognize it from?' she murmurs to herself, taking a few hesitant steps towards the doorway. You are mildly concerned as to whether someone has managed to sneak into the library, especially when Fang seems to be absent, but your fears are unfounded as [SubjectPro of Fang] bounds through the door, snout held high as [SubjectPro of Fang] sniffs the air as vigorously as the white wolf. 'Oh. You have another wolf?' Blanche says with a smile as she catches sight of [ObjectPro of Fang], taking a step towards [ObjectPro of Fang] before her son intercepts her with an arm and regards your [if hp of Fang is 3 or hp of Fang is 4]Alpha [else]guard-wolf [end if]warily. Suddenly, Blanche and Fang's eyes simultaneously widen and they lunge at each other, Sturm being knocked out of the way by his mother. '[if Fang is Male]WOLF[else if Fang is Female]LUPA[end if]!'";
		if hp of Fang is 2: [Omega]
			say "     Leaping up so that [PosAdj of Player] paws are on the wolf MILF's shoulders, your omega begins to enthusiastically lick her face, tail beating at about a million wags per minute. Sturm looks on with utter confusion [if IncestList is not warded and IncestList is not banned]and perhaps a little envy [end if]at the emotional reunion before him. Due to your earlier conversation, you are a little more enlightened and so decide to allow your subordinate this moment of freedom, though you are unsure whether [SubjectPro of Fang] would listen to you at the moment even if you did tell [ObjectPro of Fang] to stop. By the time that [SubjectPro of Fang] drops to all fours again, the fur around Blanche's face is plastered to her skin, thick with saliva and happy tears. 'I didn't think that I would ever see you again. I'm so, so sorry for what happened and I'm not sure that I can ever make it right,' she sobs, kneeling down to press her face into the thick fluff of Fang's neck.";
			WaitLineBreak;
			say "     'In the past. Not your fault,' your omega rumbles. 'Much happened since. Words difficult. Talk more later.' Blanche straightens up and nods, wiping her eyes again before eagerly waving her son forward to introduce him and Fang to each other. 'This is Sturm, my son with [if Player is not defaultnamed][Name of Player][else]my saviour here[end if]. You probably saw the rest of my children earlier. And this is [if Fang is Male]Wolf, my boyfriend [else if Fang is Female]Lupa, my girlfriend [end if]from when I was in high school,' she gushes. 'Huh. You seem smaller than most wolves I've seen,' Sturm comments, casting a critical eye over the quadrupedal wolf. 'I am omega in pack. Used to be bigger. Called Fang now,' Fang mutters, folding [PosAdj of Player] ears back appeasingly as [SubjectPro of Fang] looks at you. Blanche frowns for a moment, whether at her son's rudeness or her [if Fang is Male]ex-boyfriend's [else]ex-girlfriend's [end if]words you are unsure, but she soon returns to smiling as ";
		else if (hp of Fang is 3 or hp of Fang is 4): [Alpha]
			say "     Leaping up so that [PosAdj of Player] paws are on the wolf MILF's shoulders, your Alpha begins to enthusiastically lick her face, tail beating at about a million wags per minute and acting in a manner that you are unaccustomed to seeing from [ObjectPro of Fang]. Sturm looks on with utter confusion [if IncestList is not warded and IncestList is not banned]and perhaps a little envy [end if]at the emotional reunion before him. Due to your earlier conversation, you are a little more enlightened and so gain extra satisfaction from the knowledge that you were able to do this for both Blanche and your Alpha. By the time that [SubjectPro of Fang] drops to all fours again, the fur around Blanche's face is plastered to her skin, thick with saliva and happy tears. 'I didn't think that I would ever see you again. I'm so, so sorry for what happened and I'm not sure that I can ever make it right,' she sobs, kneeling down to press her face into the thick fluff of Fang's neck, having the unintended effect of permeating her fur with his potent scent.";
			WaitLineBreak;
			say "     'In the past. Not your fault,' your Alpha rumbles. 'Much happened since. Words difficult. Talk more later.' Blanche straightens up and nods, wiping her eyes again before eagerly waving her son forward to introduce him and Fang to each other. 'This is Sturm, my son with [if Player is not defaultnamed][Name of Player][else]my saviour here[end if]. You probably saw the rest of my children earlier. And this is [if Fang is Male]Wolf, my boyfriend [else if Fang is Female]Lupa, my girlfriend [end if]from when I was in high school,' she gushes. 'You're um... impressive',' Sturm comments, looking in awe at the size of the quadrupedal wolf. 'I am alpha in pack. Stronger than I used to be. Called Fang now,' Fang states proudly, glancing at you possessively. Blanche looks surprised for a moment, whether at her son's loss for words or her [if Fang is Male]ex-boyfriend's [else]ex-girlfriend's [end if]statement you are unsure, but she soon returns to smiling as ";
		else if hp of Fang is 5: [Beta]
			say "     Leaping up so that [PosAdj of Player] paws are on the wolf MILF's shoulders, your companion begins to enthusiastically lick her face, tail beating at about a million wags per minute and acting in an extremely affectionate manner. Sturm looks on with utter confusion [if IncestList is not warded and IncestList is not banned]and perhaps a little envy [end if]at the emotional reunion before him. Due to your earlier conversation, you are a little more enlightened and so find the moment especially heart-warming given their history together. By the time that Fang drops to all fours again, the fur around Blanche's face is plastered to her skin, thick with saliva and happy tears. 'I didn't think that I would ever see you again. I'm so, so sorry for what happened and I'm not sure that I can ever make it right,' she sobs, kneeling down to press her face into the thick fluff of Fang's neck.";
			WaitLineBreak;
			say "     'In the past. Not your fault,' your beta rumbles. 'Much happened since. Words difficult. Talk more later.' Blanche straightens up and nods, wiping her eyes again before eagerly waving her son forward to introduce him and Fang to each other. 'This is Sturm, my son with [if Player is not defaultnamed][Name of Player][else]my saviour here[end if]. You probably saw the rest of my children earlier. And this is [if Fang is Male]Wolf, my boyfriend [else if Fang is Female]Lupa, my girlfriend [end if]from when I was in high school,' she gushes. 'I feel some sort of connection to you, perhaps because you seem to care for my mother so much,' Sturm muses, casting a curious eye over the quadrupedal wolf. 'I am beta in pack. Protect those I love. Called Fang now,' Fang replies, wagging [PosAdj of Player] tail. Blanche looks puzzled for a moment, whether at her son's reaction or her [if Fang is Male]ex-boyfriend's [else]ex-girlfriend's [end if]words you are unsure, but she soon returns to smiling as ";
		else: [Undecided]
			say "     Leaping up so that [PosAdj of Player] paws are on the wolf MILF's shoulders, your sentinel begins to enthusiastically lick her face, tail beating at about a million wags per minute. Sturm looks on with utter confusion [if IncestList is not warded and IncestList is not banned]and perhaps a little envy [end if]at the emotional reunion before him. Due to your earlier conversation, you are a little more enlightened and so decide to allow your guard this moment of freedom, though you see little reason why [SubjectPro of Fang] should be reigned in. By the time that [SubjectPro of Fang] drops to all fours again, the fur around Blanche's face is plastered to her skin, thick with saliva and happy tears. 'I didn't think that I would ever see you again. I'm so, so sorry for what happened and I'm not sure that I can ever make it right,' she sobs, kneeling down to press her face into the thick fluff of Fang's neck.";
			WaitLineBreak;
			say "     'In the past. Not your fault,' your guard-wolf rumbles. 'Much happened since. Words difficult. Talk more later.' Blanche straightens up and nods, wiping her eyes again before eagerly waving her son forward to introduce him and Fang to each other. 'This is Sturm, my son with [if Player is not defaultnamed][Name of Player][else]my saviour here[end if]. You probably saw the rest of my children earlier. And this is [if Fang is Male]Wolf, my boyfriend [else if Fang is Female]Lupa, my girlfriend [end if]from when I was in high school,' she gushes. 'Huh. You don't look that special,' Sturm comments, casting a critical eye over the quadrupedal wolf. 'I keep home safe. Protect my pack. Called Fang now,' Fang mutters, meeting Sturm's gaze. Blanche frowns for a moment, whether at her son's rudeness or her [if Fang is Male]ex-boyfriend's [else]ex-girlfriend's [end if]words you are unsure, but she soon returns to smiling as ";
		if hp of Lux > 0:
			if hp of Lux is 1: [Pup]
				say "two small fluffy blobs with legs crawl out from behind some shelves and struggle across the floor towards Fang.";
				say "     With a girlish squeal, Blanche drops to the floor beside them, giggling as they clamber over top of her, occasionally pulling at her ears and licking her all over. 'They're gorgeous. Are they yours?' she asks Fang while scritching the puppies['] pudgy tummies. 'Yes. Girl is Lux. Boy is Umbra. Mine and [if Player is not defaultnamed][Name of Player][']s[else][PosPro of Player][end if],' [SubjectPro of Fang] replies, gesturing at you. 'Um. Did you forget your Latin from school? Umbra is feminine...' the white-furred wolfess hesitantly comments, earning a blank stare. 'I remember. Word gender not important. Those are their names,' Fang responds, the simplicity of the statement leaving no room for dispute. Sturm sits down beside his mother to pet the pups, detaching Lux from Blanche's ear and lifting her onto his lap to stroke her. 'I would say that I miss the days when you were this small, but you grew up after a few hours,' Blanche reminisces to her son, cupping the side of his face affectionately.";
				WaitLineBreak;
				say "     The six of you enjoy the moment while you can, some of you remembering life before the nanites. Others amuse themselves by biting the adults on the toes, the fits of giggles ruining any attempts at sounding authoritative when telling them to stop. However, even this moment must come to an end, Lux and Umbra eventually tiring and scrambling over to Fang to curl up beside [PosAdj of Fang] paws for a snooze. With a sigh, Blanche and Sturm clamber back to their feet, several appendages slobbered and chewed upon, and gaze down at the sleeping balls of fluff. 'We'll let them rest while we finish the tour of our new home. We have a lot of catching up to do, so I'll talk with you later. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]?' Blanche asks, receiving a nod in response before Fang curls up protectively around his children, head resting on the ground, but eyes still vigilant. 'Fang seemed nice and the puppies were so cute,' Sturm says as you walk away, earning a smile from his mother. 'Very,' she replies before they look to you to see what you have planned next.";
				TraitGain "Lux & Umbra - Fluffy Pups" for Blanche;
				TraitGain "Lux & Umbra - Fluffy Pups" for Sturm;
				TraitGain "Blanche - Chewable Ear" for Lux;
				TraitGain "Sturm - Kind Hand" for Lux;
				TraitGain "Blanche - Tasty Toes" for Umbra;
				TraitGain "Sturm - Tasty Toes" for Umbra;
				if hp of Fang is 2: [Omega]
					TraitGain "Fang - Shadow of Self" for Blanche;
					TraitGain "Fang - On the Small Side" for Sturm;
					TraitGain "Blanche - Memory of Past" for Fang;
					TraitGain "Sturm - Blunt Talker" for Fang;
				else if hp of Fang is 3 or hp of Fang is 4: [Alpha]
					TraitGain "Fang - Prime Mate" for Blanche;
					TraitGain "Fang - Worthy Alpha" for Sturm;
					TraitGain "Blanche - First Mate" for Fang;
					TraitGain "Sturm - Prime Pack Member" for Fang;
				else if hp of Fang is 5: [Beta]
					TraitGain "Fang - Sweetheart Returned" for Blanche;
					TraitGain "Fang - Father Figure" for Sturm;
					TraitGain "Blanche - First Love" for Fang;
					TraitGain "Sturm - Honorary Son" for Fang;
				else: [Undecided]
					TraitGain "Fang - Changed Sweetheart" for Blanche;
					TraitGain "Fang - Ordinary Wolf" for Sturm;
					TraitGain "Blanche - Old Love" for Fang;
					TraitGain "Sturm - Quick to Judge" for Fang;
			else if hp of Lux is 2: [Child]
				say "two wolves about the size of Shetland sheepdogs scamper out from behind some shelves and patter towards Fang.";
				say "     With a coo of delight, Blanche crouches down and offers them a hand to sniff as they regard her curiously from around their [if Fang is Male]father's [else if Fang is female]mother's [end if]legs. After [SubjectPro of Fang] gives them a nod, they quickly rush over to you, affectionately licking you while their tails wag wildly, before moving on to investigate the newcomers, sniffing around their ankles and basking in the attention that they get given. 'They're adorable. Are they yours?' Blanche asks Fang, kissing the pups as they leap up. 'Yes. Girl is Lux. Boy is Umbra. Mine and [if Player is not defaultnamed][Name of Player][']s[else][PosPro of Player][end if],' [SubjectPro of Fang] replies, gesturing at you. 'Um. Did you forget your Latin from school? Umbra is feminine...' the white-furred wolfess hesitantly comments, earning a blank stare. 'I remember. Word gender not important. Those are their names,' Fang responds, the simplicity of the statement leaving no room for dispute. Sturm kneels beside his mother to pet the wolves, rubbing them under their chins and ruffling Umbra's ears.";
				WaitLineBreak;
				say "     The six of you enjoy the moment while you can, Lux and Umbra dashing around as the adults dote on them, Blanche and Sturm's snowy fur seeming of great interest to them compared to Fang's much darker hues. However, even this moment must come to an end, Lux and Umbra eventually tiring and scrambling over to Fang to curl up beside [PosAdj of Fang] paws for a snooze. With a sigh, Blanche and Sturm clamber back to their feet, their fur matted with puppy lick, and gaze down at the panting wolves. 'We'll let them rest while we finish the tour of our new home. We have a lot of catching up to do, so I'll talk with you later. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]?' Blanche asks, receiving a nod in response before Fang curls around his children, head resting on the ground, but eyes still vigilant. 'Fang seemed nice and the puppies were so soft,' Sturm says as you walk away, earning a smile from his mother. 'Weren't they?' she replies before they look to you to see what you have planned next.";
				TraitGain "Lux & Umbra - Adorable Puppies" for Blanche;
				TraitGain "Lux & Umbra - Adorable Puppies" for Sturm;
				TraitGain "Blanche - Pretty White Wolf" for Lux;
				TraitGain "Sturm - Large White Wolf" for Lux;
				TraitGain "Blanche - Pretty White Wolf" for Umbra;
				TraitGain "Sturm - Source of Pats" for Umbra;
				if hp of Fang is 2: [Omega]
					TraitGain "Fang - Shadow of Self" for Blanche;
					TraitGain "Fang - On the Small Side" for Sturm;
					TraitGain "Blanche - Memory of Past" for Fang;
					TraitGain "Sturm - Blunt Talker" for Fang;
				else if hp of Fang is 3 or hp of Fang is 4: [Alpha]
					TraitGain "Fang - Prime Mate" for Blanche;
					TraitGain "Fang - Worthy Alpha" for Sturm;
					TraitGain "Blanche - First Mate" for Fang;
					TraitGain "Sturm - Prime Pack Member" for Fang;
				else if hp of Fang is 5: [Beta]
					TraitGain "Fang - Sweetheart Returned" for Blanche;
					TraitGain "Fang - Father Figure" for Sturm;
					TraitGain "Blanche - First Love" for Fang;
					TraitGain "Sturm - Honorary Son" for Fang;
				else: [Undecided]
					TraitGain "Fang - Changed Sweetheart" for Blanche;
					TraitGain "Fang - Ordinary Wolf" for Sturm;
					TraitGain "Blanche - Old Love" for Fang;
					TraitGain "Sturm - Quick to Judge" for Fang;
			else if hp of Lux is 3: [Teen]
				say "two wolves bound out from behind some shelves and towards Fang, the young dark-furred wolf of similar size to him while his paler-furred twin is smaller, slightly larger than a border collie.";
				say "     With a gasp of delight, Blanche kneels beside them and strokes their heads, giggling as they lick her face in return, taking the affection of a stranger within their stride. 'You're adorable. Are they yours?' Blanche first addresses the twins before directing the question towards Fang. 'Yes. Girl is Lux. Boy is Umbra. Mine and [if Player is not defaultnamed][Name of Player][']s[else][PosPro of Player][end if],' [SubjectPro of Fang] replies, gesturing at you. 'Hi,' Lux brightly chips in, her brother a little more shyly chiming in a moment later. 'Such beautiful names, and fitting, but did you forget your Latin from school? Umbra is meant to be feminine...' the white-furred wolfess hesitantly comments, the dark-furred wolf too busy washing his sister's ear to take offense. 'I remember. Word gender not important. Those are their names,' Fang responds, the simplicity of the statement leaving no room for dispute. Sturm kneels beside his mother to pet the wolves, Lux licking his face and ensuring that he doesn't feel left out.";
				WaitLineBreak;
				say "     The six of you enjoy the moment while you can, Lux and Umbra relishing the attention as the adults dote on them, tongues lolling out of the side of their mouths when they aren't busy giving wolfy kisses to anyone that they can reach. However, even this moment must come to an end, Lux and Umbra eventually scampering outside in pursuit of a regular sparrow. With a sigh, Blanche and Sturm clamber back to their feet, their fur matted with saliva, and gaze after the energetic wolves. 'We'll let them have their fun while we finish the tour of our new home. We have a lot of catching up to do, so I'll talk with you later. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]?' Blanche asks, receiving a nod in response before Fang pads after his children to keep a vigilant watch for any that might threaten their play. 'Fang seemed nice and Lux and Umbra were so friendly,' Sturm says as you walk away, earning a smile from his mother. 'I'm sure that you'll be able to spend more time with them again,' she replies before they look to you to see what you have planned next.";
				TraitGain "Lux & Umbra - Adorable Children" for Blanche;
				TraitGain "Lux & Umbra - Adoptive Siblings" for Sturm;
				TraitGain "Blanche - Affectionate Mother Wolf" for Lux;
				TraitGain "Sturm - Adoptive Big Brother" for Lux;
				TraitGain "Blanche - Affectionate Mother Wolf" for Umbra;
				TraitGain "Sturm - Adoptive Big Brother" for Umbra;
				if hp of Fang is 2: [Omega]
					TraitGain "Fang - Shadow of Self" for Blanche;
					TraitGain "Fang - On the Small Side" for Sturm;
					TraitGain "Blanche - Memory of Past" for Fang;
					TraitGain "Sturm - Blunt Talker" for Fang;
				else if hp of Fang is 3 or hp of Fang is 4: [Alpha]
					TraitGain "Fang - Prime Mate" for Blanche;
					TraitGain "Fang - Worthy Alpha" for Sturm;
					TraitGain "Blanche - First Mate" for Fang;
					TraitGain "Sturm - Prime Pack Member" for Fang;
				else if hp of Fang is 5: [Beta]
					TraitGain "Fang - Sweetheart Returned" for Blanche;
					TraitGain "Fang - Father Figure" for Sturm;
					TraitGain "Blanche - First Love" for Fang;
					TraitGain "Sturm - Honorary Son" for Fang;
				else: [Undecided]
					TraitGain "Fang - Changed Sweetheart" for Blanche;
					TraitGain "Fang - Ordinary Wolf" for Sturm;
					TraitGain "Blanche - Old Love" for Fang;
					TraitGain "Sturm - Quick to Judge" for Fang;
			else: [Adult]
				say "two wolves hurtle out from behind some shelves, stopping as they see your group before trotting towards Fang, the young dark-furred wolf slightly larger than him while his paler-furred twin is a little smaller.";
				say "     With an excited gasp, Blanche sits beside them and strokes their heads, giggling as they lick her face in return, taking the affection of a stranger within their stride. 'You two are lovely. Are they yours?' Blanche first addresses the twins before directing the question towards Fang. 'Yes. Girl is Lux. Boy is Umbra. Mine and [if Player is not defaultnamed][Name of Player][']s[else][PosPro of Player][end if],' [SubjectPro of Fang] replies, gesturing at you. 'Hello pretty lady,' Lux brightly greets her, her brother echoing her a moment later. 'Such beautiful names, and fitting, but did you forget your Latin from school? Umbra is meant to be feminine...' the white-furred wolfess hesitantly comments, scritching the twins between the ears. 'I remember. Word gender not important. Those are their names,' Fang responds, the simplicity of the statement leaving no room for dispute. Sturm crouches beside his mother to pet the wolves, Umbra pressing himself up against his side as his neck is scritched.";
				WaitLineBreak;
				say "     The six of you enjoy the moment while you can, Lux and Umbra relishing the attention as you all dote on them, rapidly wagging tails and wide toothy grins betraying the depth of their enjoyment at this bonding. However, even this moment must come to an end, Lux and Umbra eventually bidding their new friends farewell before loping outside on patrol. With a sigh, Blanche and Sturm clamber back to their feet, their cheeks slick from wolfy kisses, and gaze after the energetic wolves. 'It's nice to know who will be keeping us safe, but we should probably finish the tour before we get to know them a bit better. We have a lot of catching up to do too, so I'll talk with you later. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]?' Blanche asks, receiving a nod in response before Fang pads after his children to join them in their protection of the library. 'Fang seemed nice and Lux and Umbra were so friendly,' Sturm says as you walk away, earning a smile from his mother. 'I'm sure that you'll be able to spend more time with them again,' she replies before they look to you to see what you have planned next.";
				TraitGain "Lux & Umbra - Flourishing Children" for Blanche;
				TraitGain "Lux & Umbra - Pack Siblings" for Sturm;
				TraitGain "Blanche - Mommy Wolf" for Lux;
				TraitGain "Sturm - New Pack Brother" for Lux;
				TraitGain "Blanche - Mommy Wolf" for Umbra;
				TraitGain "Sturm - New Pack Brother" for Umbra;
				if hp of Fang is 2: [Omega]
					TraitGain "Fang - Shadow of Self" for Blanche;
					TraitGain "Fang - On the Small Side" for Sturm;
					TraitGain "Blanche - Memory of Past" for Fang;
					TraitGain "Sturm - Blunt Talker" for Fang;
				else if hp of Fang is 3 or hp of Fang is 4: [Alpha]
					TraitGain "Fang - Prime Mate" for Blanche;
					TraitGain "Fang - Worthy Alpha" for Sturm;
					TraitGain "Blanche - First Mate" for Fang;
					TraitGain "Sturm - Prime Pack Member" for Fang;
				else if hp of Fang is 5: [Beta]
					TraitGain "Fang - Sweetheart Returned" for Blanche;
					TraitGain "Fang - Father Figure" for Sturm;
					TraitGain "Blanche - First Love" for Fang;
					TraitGain "Sturm - Honorary Son" for Fang;
				else: [Undecided]
					TraitGain "Fang - Changed Sweetheart" for Blanche;
					TraitGain "Fang - Ordinary Wolf" for Sturm;
					TraitGain "Blanche - Old Love" for Fang;
					TraitGain "Sturm - Quick to Judge" for Fang;
		else:
			if hp of Fang is 2: [Omega]
				say "Fang nuzzles against Sturm's hand, enticing him into giving the wolf a quick pat. 'I'll talk to you more once we have finished being shown around. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]? We have a lot of catching up to do,' Blanche asks, receiving a nod in response before Fang resumes [PosAdj of Fang] patrol of the perimeter, leaving the three of you to continue the tour. '[SubjectProCap of Fang] seemed nice,' Sturm says, earning a smile from his mother. '[SubjectProCap of Fang] is,' she replies before they look to you to see what you have planned next.";
				TraitGain "Fang - Shadow of Self" for Blanche;
				TraitGain "Fang - On the Small Side" for Sturm;
				TraitGain "Blanche - Memory of Past" for Fang;
				TraitGain "Sturm - Blunt Talker" for Fang;
			else if (hp of Fang is 3 or hp of Fang is 4): [Alpha]
				say "     Sturm absent-mindedly runs a hand through the thick fur on Fang's neck, causing your Alpha to let out a satisfied groan. 'I'll talk to you more once we have finished being shown around. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]? We have a lot of catching up to do,' Blanche asks, receiving a nod in response before Fang resumes [PosAdj of Fang] patrol of the perimeter, leaving the three of you to continue the tour. '[SubjectProCap of Fang] seemed strong,' Sturm says, earning a smile from his mother. '[SubjectProCap of Fang] did, didn't [SubjectPro of Fang],' she replies before they look to you to see what you have planned next.";
				TraitGain "Fang - Prime Mate" for Blanche;
				TraitGain "Fang - Worthy Alpha" for Sturm;
				TraitGain "Blanche - First Mate" for Fang;
				TraitGain "Sturm - Prime Pack Member" for Fang;
			else if hp of Fang is 5: [Beta]
				say "     Fang licks Sturm's hand, making him jump, though without snatching his hand away. 'I'll talk to you more once we have finished being shown around. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]? We have a lot of catching up to do,' Blanche asks, receiving a nod in response before Fang resumes [PosAdj of Fang] patrol of the perimeter, leaving the three of you to continue the tour. '[SubjectProCap of Fang] seemed caring,' Sturm says, earning a smile from his mother. '[SubjectProCap of Fang] always was,' she replies before they look to you to see what you have planned next.";
				TraitGain "Fang - Sweetheart Returned" for Blanche;
				TraitGain "Fang - Father Figure" for Sturm;
				TraitGain "Blanche - First Love" for Fang;
				TraitGain "Sturm - Honorary Son" for Fang;
			else: [Undecided]
				say "     Fang bumps up against Sturm, enticing him into giving the wolf a quick pat. 'I'll talk to you more once we have finished being shown around. Ok [if Fang is Male]Wolf[else if Fang is Female]Lupa[end if]? We have a lot of catching up to do,' Blanche asks, receiving a nod in response before Fang resumes [PosAdj of Fang] patrol of the perimeter, leaving the three of you to continue the tour. '[SubjectProCap of Fang] seemed friendly,' Sturm says, earning a smile from his mother. 'Some things don't change,' she replies before they look to you to see what you have planned next.";
				TraitGain "Fang - Changed Sweetheart" for Blanche;
				TraitGain "Fang - Ordinary Wolf" for Sturm;
				TraitGain "Blanche - Old Love" for Fang;
				TraitGain "Sturm - Quick to Judge" for Fang;
	if (((Fang is not booked and Fang is not bunkered) and number of bunkered people + number of booked people > 2) or ((Fang is booked or Fang is bunkered) and hp of Lux is 0 and number of bunkered people + number of booked people > 3) or ((Fang is booked or Fang is bunkered) and hp of Lux > 0 and number of bunkered people + number of booked people > 5)): [anyone there besides just Blanche]
		if (number of bunkered people + number of booked people > 3):
			say "Before you can continue, you see some of the other people who have taken up residence here too and decide that it might be best to call everyone in the building together and explain what's going on with Blanche and her family now moving in. [bold type]After you call for them, they gradually appear, with the following reactions:[roman type][line break]";
		else if (number of bunkered people + number of booked people is 3):
			say "Before you can continue, you see some movement from the other inhabitant of the library and decide that it might be best to explain what's going on with Blanche and her family now moving in. [bold type]Calling them over, you lay things out, with the following reaction:[roman type][line break]";
		LineBreak;
		if Alexandra is booked or Alexandra is bunkered:
			if hunger of Alexandra is 1: [Good Alexandra]
				say "     Putting a hand on her hip, Alexandra looks over Blanche and Sturm again before speaking. 'You seem alright enough. I'll try to ensure that you settle in without any problems. My name's Officer Friedrich, but I suppose with the police station in ruins, you can just call me Alexandra.' Sturm nods his thanks while his mother gives the doberman cop a quick hug, the canine tensing up for a moment before relaxing again when it remains a demonstration of gratitude rather than anything more. 'Thank you Alexandra. If any of my children misbehave, I trust your judgement on whether to deal with them yourself or bring them to me. By the ear if necessary,' Blanche replies, stepping back again.";
				TraitGain "Alexandra - Good Cop" for Blanche;
				TraitGain "Alexandra - Authority Figure" for Sturm;
				TraitGain "Blanche - Affectionate Civilian" for Alexandra;
				TraitGain "Sturm - Civilian" for Alexandra;
			else: [Bad Alexandra]
				say "     Alexandra leans back against the wall with her arms crossed, looking the pair up and down dismissively. 'I don't know why you insist on taking them all in. The son looks like he can handle himself, but his mother looks like she would be best suited as a breeding bitch, or is that why you brought her too? Doesn't matter I suppose. As long as she knows I'm top bitch around here.' Blanche's eyes go wide. 'Of course ma'am. I don't have any plans for trying to achieve dominance,' she says earnestly. 'I just want my children to have a safe home.' 'Alright then. I can understand wanting to protect your kids,' Alexandra concedes gruffly, her expression softening slightly. 'The world's a harsh place, so make sure they grow up to be tough enough to make their own way. A mother can't coddle them forever.' With this word of advice, the doberman saunters off, her dominance established over the newcomers, though you do notice her give a subtle wink to Sturm. Despite this, you feel that Blanche and Alexandra have very different approaches to motherhood.";
				TraitGain "Alexandra - Tough Mom" for Blanche;
				TraitGain "Alexandra - Flirty Bad Bitch" for Sturm;
				TraitGain "Blanche - Soft Mom" for Alexandra;
				TraitGain "Sturm - Hunky Male" for Alexandra;
			WaitBreakReactions;
		if hp of Cleo > 3:
			say "     Encouraged by her mother, Cleo reluctantly puts her book down and walks over to Blanche and Sturm to introduce herself. 'Hi. I'm Cleo. Did you lose your clothes?' your daughter asks, surreptitiously allowing her eyes to roam over their bodies nonetheless. Sturm chuckles a bit as his mother answers, 'No sweetie. I just haven't had much of an interest wearing clothes since this all began.' The doberman looks a little confused at the wolf MILF's answer. 'That seems a little strange, but I suppose to each their own. You seem nice enough. If you'll excuse me, I would like to go back to my book,' she eventually replies. 'Without us introducing ourselves? I'm hurt,' Sturm teases, earning a sharp look from his mother. 'Sorry, I'm Blanche and this is my son, Sturm, who seems to have forgotten that not everyone is as comfortable meeting new people, especially naked ones, as him,' she apologizes, Cleo waving a paw dismissively. 'Nah. It's fine. Good intentions and all that.' It would seem that they will get along just fine.";
			TraitGain "Cleo - Innocent Bookworm" for Blanche;
			TraitGain "Cleo - Hidden Pearl" for Sturm;
			TraitGain "Blanche - Naked but Kind" for Cleo;
			TraitGain "Sturm - Naked Extrovert" for Cleo;
			WaitBreakReactions;
		if Amy is booked or Amy is bunkered:
			say "     Amy steps up right next to the two wolves and proceeds to sniff them very thoroughly. 'Always nice to meet new people,' she cheerily states, her tail wagging enthusiastically. Sturm lets his eyes roam over the pretty husky before meeting her gaze and giving her a friendly smile. 'You're beautiful,' you hear him mumble under his breath, and judging from the blush that spreads across Amy's face, she did too. She is distracted from this by Blanche capturing her in a hug. 'It's nice to meet you too sweetie. Such a polite young lady. I look forward to us being friends,' the wolf MILF says warmly, before releasing the smaller woman. It would seem that there shouldn't be any problems with them getting along, especially if Blanche starts to view herself as a mother-figure to the young husky.";
			TraitGain "Amy - Adoptive Daughter" for Blanche;
			TraitGain "Amy - Beautiful Husky" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Amy;
			TraitGain "Sturm - Flatterer" for Amy;
			WaitBreakReactions;
		[if Araqiel is booked or Araqiel is bunkered:
			say "     ";
			TraitGain "Araqiel - Adoptive Daughter" for Blanche;
			TraitGain "Araqiel - Beautiful Husky" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Araqiel;
			TraitGain "Sturm - Flatterer" for Araqiel;]
		[if Artemis is booked or Artemis is bunkered:
			say "     ";
			TraitGain "Artemis - Adoptive Daughter" for Blanche;
			TraitGain "Artemis - Beautiful Husky" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Artemis;
			TraitGain "Sturm - Flatterer" for Artemis;]
		[if Atticus is booked or Atticus is bunkered:
			say "     ";
			TraitGain "Atticus - Adoptive Daughter" for Blanche;
			TraitGain "Atticus - Beautiful Husky" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Atticus;
			TraitGain "Sturm - Flatterer" for Atticus;]
		[if Aurora is booked or Aurora is bunkered:
			say "     ";
			TraitGain "Aurora - Adoptive Daughter" for Blanche;
			TraitGain "Aurora - Beautiful Husky" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Aurora;
			TraitGain "Sturm - Flatterer" for Aurora;
			WaitBreakReactions;]
		if Brutus is booked or Brutus is bunkered:
			if DBCaptureQuestVar is 5: [controlled]
				if Resolution of Demonic Redemption is 7: [somewhat pacified]
					say "     Casting an eye over the wolves, Brutus lets out a short bark of laughter. 'She's used goods and he's a Mommy's boy who thinks he's tough. I'd break him in seconds.' Sturm's fists clench, but Blanche rests a hand on his shoulder to hold him back. 'Something's stopping you though, isn't it,' she shoots back, causing the demon to grind his teeth in frustration, her words not that far off the mark. 'Nothing lasts forever,' he snarls back, smirking as she flinches away. Wondering why you introduced him to them in the first place, you dismiss him again.";
					TraitGain "Brutus - Caged Beast" for Blanche;
					TraitGain "Brutus - Bound Threat" for Sturm;
					TraitGain "Blanche - Used Goods" for Brutus;
					TraitGain "Sturm - Try Hard" for Brutus;
				else: [standard hateful captive]
					say "     Glaring lecherously at the wolf MILF, Brutus growls, 'You brought me a gift. I'll still rape you when I get free, but perhaps I won't break your limbs first.' Seeing Sturm's hackles go up, you quickly dismiss the demon before the two can harm each other, especially as you doubt that the wolf would come out as the victor. 'I won't ask where you found him, but please don't let him near me,' Blanche pleads, Brutus's words having caused her great distress. You wonder why you even introduced him to them in the first place.";
					TraitGain "Brutus - Terrifying Demon" for Blanche;
					TraitGain "Brutus - Dangerous Brute" for Sturm;
					TraitGain "Blanche - Walking Fleshlight" for Brutus;
					TraitGain "Sturm - Weakling" for Brutus;
			else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
				say "     Looming over the wolves, Brutus regards them curiously before finally speaking. 'Welcome. Don't worry, I won't hurt you.' Sturm raises an eyebrow at this, but Blanche steps forward and grasps the demon's fingers. 'It's a pleasure to meet you. I'd give you a hug, but you're a bit larger than me,' she says, shaking his hand before withdrawing again. Sturm settles for a wave, a gesture which Brutus awkwardly returns, looking at you to make sure he hasn't done anything wrong. Giving him a reassuring smile, you dismiss him for now, if only so that Sturm can settle again.";
				TraitGain "Brutus - Welcoming Demon" for Blanche;
				TraitGain "Brutus - Imposing Demon" for Sturm;
				TraitGain "Blanche - Friendly Wolfess" for Brutus;
				TraitGain "Sturm - Cautious Wolf" for Brutus;
			WaitBreakReactions;
		if Bubble is booked or Bubble is bunkered:
			say "     Bubble bounds over to the two wolves, a bright smile fixed on her face. 'Heya new people. I'm Bubble! What're yous names?' she calls out, bouncing from one foot to the other. 'I'm Blanche and this is my son, Sturm. You probably saw my other children when we came in, but I'll let them introduce themselves when they meet you,' the white wolf replies, slightly startled by the appearance of the latex fox. 'Wow. I'm sure you're a cool mom. You have that cool mom look. You also have the MILF look. Must make it difficult for you big boy, especially when she has her breasts swaying around like that' Bubble teases Sturm, making both wolves blush. 'Not afraid to speak your mind, are you,' Blanche mutters, embarrassedly folding her arms across her chest. 'Relax babe. Nothing wrong with letting them hang free,' the latex vixen says, bouncing her own to emphasize the point. 'Anyway, I'll see yous later,' she continues before skipping away, giving you a wink in passing. 'She seemed a bit of an airhead,' Sturm mumbles, his mother nodding her agreement before processing what he has said. 'Even if that was intended as a pun, don't be rude.'";
			TraitGain "Bubble - Bouncing Bimbo" for Blanche;
			TraitGain "Bubble - Airhead" for Sturm;
			TraitGain "Blanche - Cool Mom" for Bubble;
			TraitGain "Sturm - Big Boy" for Bubble;
			WaitBreakReactions;
		if Candy is booked or Candy is bunkered:
			say "     Candy's eyes barely register Blanche's presence, instead being drawn to looking Sturm up and down. 'Mmm, I see something I like. If you ever want a good time, come find me, or better yet have a sample now,' the coon purrs, turning around and glancing over his shoulder as he flips the hem of his skirt up provocatively. 'My, aren't you forward,' Blanche mutters under her breath, watching her son's reaction out of the corner of her eye. 'Um. Perhaps another time. I've only just got here and I don't know you yet,' he replies, though his eyes remain fixed on Candy's twitching hole. 'Sure thing big boy. I'll be around,' the pink raccoon shoots back, leaving with a wink. 'You're making friends already dear,' Blanche teases her son.";
			TraitGain "Candy - Shameless Slut" for Blanche;
			TraitGain "Candy - Flirty Slut" for Sturm;
			TraitGain "Blanche - Disinterested" for Candy;
			TraitGain "Sturm - Potential Lay" for Candy;
			WaitBreakReactions;
		if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
			say "     Your pink raccoon pet scampers over to Sturm straight away, running his hands up the wolf's legs until they begin to grope at his furry sheath and balls. The male wolf seems paralyzed at this treatment, his mother watching on with shock as the coon then turns around and drops to all fours, lifting his tail to present his asshole enticingly to the large wolf. 'Um. No. Not at the moment, thank you. I've only just got here and I want to settle in first,' Sturm stutters, hands dropping to cover his groin. With a huff of disappointment, the pink raccoon rushes off again, shaking his ass as he goes. 'Is their mind completely gone?' Blanche asks incredulously, looking grim when you give her the abridged version of how you [']recruited['] him, carefully leaving out that you allowed it to happen.";
			TraitGain "Candy - Mindless Slut" for Blanche;
			TraitGain "Candy - Mindless Slut" for Sturm;
			TraitGain "Blanche - Disinterested" for Candy;
			TraitGain "Sturm - Potential Fuck" for Candy;
			WaitBreakReactions;
		if Carl is booked or Carl is bunkered:
			if HP of Carl is 30: [subby carl]
				say "     Carl approaches the pair with a hand already stuck out ready to shake. 'Hi there. I'm Carl. It's nice to see some new faces around here,' he greets them with a handshake before turning to you. 'Will they be joining the pack or are they just sheltering here?' You explain that the decision is up to them, but that you expect so. 'Sure thing. I'll be able to show them the ropes.' Sturm looks interested in this proposition while his mother looks a little surprised. 'Um. I don't think that I'll be doing much fighting with anyone, so you probably won't want to waste your time on me,' she mumbles. Carl gives her a supportive smile, 'A little self-defense knowledge can help anyone and we're a pack. We help each other. I don't think I caught your names though,' the husky replies. 'My apologies. I'm Blanche and this is my son, Sturm,' she responded quickly. 'As I said, nice to meet you, but I should return to watch-duty. Don't want any nasty surprises,' Carl says before, with a nod to all of you, retreats upstairs again.";
				TraitGain "Carl - Willing to Teach" for Blanche;
				TraitGain "Carl - Capable Trainer" for Sturm;
				TraitGain "Blanche - In Need of Training" for Carl;
				TraitGain "Sturm - Eager Pupil" for Carl;
			else:
				say "     Carl approaches the pair, giving them a quick look up and down, before offering a hand. 'Hello. I'm Carl. It's nice to meet you,' he greets them with a handshake. 'A pleasure to meet you too. I'm Blanche and this is my son, Sturm. The rest of my family is finding a corner for us in the computer lab,' Blanche replies, her eyes lingering as they gaze at the husky. 'I saw them as you arrived. I spend a lot of my time as lookout, you see. You seem like a close family,' he says with a smile. 'You are in the military, yes? Would you be able to teach me some things to better protect my family,' Sturm hesitantly asks. 'I was in the military, though whether I still am may be debated when this is all over,' Carl replies, scratching the back of his head. 'But sure, I suppose I can give you some pointers at some point. It may be easier if you join me on watch now and then though. That way I can still keep half an eye out the window at the same time. The offer's open to you too ma'am. Self-defense can be of use to everyone. That said, I should really get back to sentry duty. I look forward to talking with you more later.' Giving a nod, the husky soldier returns upstairs again.";
				TraitGain "Carl - Toned Sentry" for Blanche;
				TraitGain "Carl - Combat Tutor" for Sturm;
				TraitGain "Blanche - Combat Amateur" for Carl;
				TraitGain "Sturm - Potential Watchmate" for Carl;
			WaitBreakReactions;
		[if Chirpy is booked or Chirpy is bunkered:
			say "     ";
			TraitGain "Chirpy - Adoptive Daughter" for Blanche;
			TraitGain "Chirpy - Beautiful Husky" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Chirpy;
			TraitGain "Sturm - Flatterer" for Chirpy;]
		if Chris is booked or Chris is bunkered:
			if Libido of Chris is 0: [half-orc]
				say "     Chris strolls over to the two wolves, admiring their pristine white fur. 'Hey there, I'm Chris. Welcome to the library,' he says, smiling. Though he shakes hands with both of them as they introduce themselves, his hand seems to linger a little as he lets go of Sturm, his eyes rapidly examining the large male wolf in a way that suggests interest rather than mere courtesy. 'I can't help but ask, but you seem like you were born the way that you are Sturm, is that right?' he asks, a flicker of hope behind his expression. 'You mean as a wolf? Yes. I can't imagine a world as bland as how Mom describes it,' Sturm laughs, Blanche playfully slapping his arm. 'It was also safer sweetie. We didn't have to scrounge for food. Well, the majority of us,' she says reproachfully. 'Yeah, the prison where I was born definitely wasn't safe. That's why daddy Val wanted me to come here,' Chris chips in. 'Well, I look forward to talking to you more Sturm. Um, you too Blanche,' he adds awkwardly before walking away, casting a look back when he thinks that no-one is looking. You hear Blanche mumble to herself, 'Are all orcs from the prison?'";
				TraitGain "Chris - Prison Born" for Blanche;
				TraitGain "Chris - Nanite Born" for Sturm;
				TraitGain "Blanche - Nice Fur" for Chris;
				TraitGain "Sturm - Potential Buddy" for Chris;
			else if Libido of Chris is 1: [orc breeder]
				if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
					say "     Chris strolls over to the two wolves, admiring their pristine white fur. 'Hey there, I'm Chris. Welcome to the library,' he says, smiling. Though he shakes hands with both of them as they introduce themselves, his hand lingers as he lets go of Sturm, his hungry gaze roaming up and down the wolf's toned form. 'Mmm, I wouldn't mind having your cock thrusting down my throat,' he purrs, causing Blanche to stare incredulously at the slutty orc. 'Well, if you're offering...' the male wolf blurts out without thinking before clapping a hand over his mouth and nervously looking back at his mother before frantically trying to dig his way out of the hole he seems to have dug. 'I mean, maybe another time. We've only just got here and need to settle in first.' 'Looking forward to it. Nothing is as satisfying as being filled with thick, potent cum,' Chris replies before departing, shaking his ass as he leaves. Feeling Blanche's eyes boring into his back, Sturm carefully remains looking forward, though she does give you a wink. It would seem that she is more shocked than disapproving, though you would imagine that they will still be discussing this later.";
					TraitGain "Chris - Vulgar Slut" for Blanche;
					TraitGain "Chris - Eager Cockgobbler" for Sturm;
					TraitGain "Blanche - Easy to Shock" for Chris;
					TraitGain "Sturm - Cum Source" for Chris;
				else: [happy breeder]
					say "     Chris strolls over to the two wolves, admiring their pristine white fur. 'Hey there, I'm Chris. Welcome to the library,' he says, smiling. Though he shakes hands with both of them as they introduce themselves, his hand lingers as he lets go of Sturm, his hungry gaze roaming up and down the wolf's toned form. 'Enjoying the view?' Sturm asks with a smirk, causing Chris to blush a little and nod. 'Look all you want, but if you want more, you'll have to wait until another time. I don't want to shock Mom too much.' Blanche gives you a wink over her son's shoulder but quickly returns to a more passive expression as Sturm turns to look at her. 'It's your choice sweetie, but perhaps get to know him a bit first,' she advises her son. 'You heard your mother, you have to spend time and get to know me,' Chris teases. 'But I'll take a hint. See you later, fluffy-pants.' Departing with a wink to Sturm, Chris returns upstairs, leaving the wolf to fume over the nickname.";
					TraitGain "Chris - Likes Son" for Blanche;
					TraitGain "Chris - Hungry Eyes" for Sturm;
					TraitGain "Blanche - Nice Fur" for Chris;
					TraitGain "Sturm - Fluffy Pants" for Chris;
			else if Libido of Chris is 2: [orc warrior]
				if "Bro" is listed in Traits of Chris or "Bro with Benefits" is listed in Traits of Chris or " with Benefits" is listed in Traits of Chris:
					say "     Chris strides up to the two wolves, giving them an appraising glance as he comes to a stop. Not really finding anything to interest himself about Blanche, his attention is soon directed entirely at Sturm instead. The two size each other up, the wolf unconsciously moving to shield his mother behind him, a movement that the orc doesn't miss. 'Relax. Have you met any orcs that were interested in women? You're much more my type. Sup, I'm Chris,' he says, grinning at the effect that he has on the male wolf. 'My name is Sturm and this is my mother, Blanche,' the lupine warily replies. 'You seem a lot less hostile than the orcs I've met in the past, though no less muscular. Being buff seems to be a thing for orcs.' 'Glad you noticed. I go out into the streets to train against any who think that they are tough enough. No husky or panther-taur is going to best me. You should come with me sometime. It's the best sort of training there is as you get to pound their ass afterwards,' Chris laughs. Blanche looks conflicted about this comment, but holds her tongue, giving you a worried look behind her son's back. 'Anyway, I'll catch you later. I'm in the mood for a slut right now.' With a cheery wave, Chris strolls outside, Sturm glancing after him while his mother gives her son's paw an affectionate squeeze.";
					TraitGain "Chris - Bad Influence" for Blanche;
					TraitGain "Chris - Amiable but Capable" for Sturm;
					TraitGain "Blanche - Disinterested" for Chris;
					TraitGain "Sturm - Training Buddy" for Chris;
				else: [dominant, rapy warrior Chris]
					say "     Chris strides up to the two wolves, giving them an appraising glance as he comes to a stop. Dismissing Blanche with a grunt, he instead focuses his attention on Sturm. The two size each other up, the wolf consciously moving to shield his mother behind him, a movement that the orc doesn't miss. 'If I wanted to hurt her, there wouldn't be anything you could do about it, but I'm interested in your ass, not hers,' he snorts, leering at the wolf. 'I'm Chris. What's your name?' the orc growls. 'Sturm. And this is my mother, Blanche,' the lupine warily replies. 'You don't seem much different to the other orcs I've met. Any reason that you're here and not in one of the wandering slave bands?' 'Simple. I was given the chance to be free of their authority. This way I don't have to share my sluts and I can fuck whoever I want even if I have to beat them into submission. You'd be better coming to me on hands and knees,' Chris boasts, giving Sturm a meaningful glance. Blanche fearfully glances at you behind her son's back, possibly reconsidering moving to the library. 'Maybe I'll find you later. Break you in properly. But I've got other things to do for now. See you around little doggy,' Chris sneers before walking away. Sturm and Blanche exchange concerned glances but neither expresses a desire to leave just yet. Hopefully the orc can behave himself around them.";
					TraitGain "Chris - Worth Avoiding" for Blanche;
					TraitGain "Chris - Worth Avoiding" for Sturm;
					TraitGain "Blanche - Worthless" for Chris;
					TraitGain "Sturm - Potential Slut" for Chris;
			WaitBreakReactions;
		if Colleen is booked or Colleen is bunkered:
			if hp of Colleen is 1: [Sane Sarah, Fluffy Colleen]
				say "     Colleen approaches calmly, giving the wolves a once-over before introducing herself. 'Corporal Varna, pleased to meet you, but you can call me Colleen, especially as I'm not sure of Command's stance on transformed personnel,' she greets them, sticking a paw out invitingly. Sturm gives it a shake but Blanche goes in for a hug immediately, the husky chuckling and returning it cheerfully. 'More of a hugger eh? That's alright. A hug is as good as a handshake. I'm usually in the bunker down the stairs over there if you want us to get to know each other. Just stay away from the hole in the wall.' With the introduction over, Colleen heads back towards her vigil of the tunnel underground. Waving before she vanishes through the door down to the bunker. 'She seems like an interesting character. I'm not quite sure whether [']get to know each other['] was an innuendo or not,' Blanche comments, Sturm grunting his agreement. You doubt that that was what she meant, but that isn't to say that she wouldn't be willing.";
				TraitGain "Colleen - Friendly Husky Soldier" for Blanche;
				TraitGain "Colleen - Pretty Husky Soldier" for Sturm;
				TraitGain "Blanche - Huggable Wolfess" for Colleen;
				TraitGain "Sturm - Handshakeable Wolf" for Colleen;
			else if SarahSlut < 2: [not transformed, or only a little]
				say "     Colleen approaches cautiously at first, eyeing the wolves suspiciously from a few meters away. 'I don't bite dear, nor do I seem to be infectious if that is what you are worried about. However, aren't comfortable coming any closer, hopefully a wave will do,' Blanche says, raising a hand and wriggling her fingers at the soldier. Sturm merely gives her a nod. 'Thanks. I'm trying to avoid being overwhelmed and transformed by the nanites, so for now I'll keep my distance. Pleasure meeting you though,' Colleen calls back before withdrawing again with a wave. 'She seemed a bit uptight,' Sturm mutters, his mother elbowing him in the side. 'Hush. We barely know her, so we shouldn't judge,' she whispers.";
				TraitGain "Colleen - Nanitephobic" for Blanche;
				TraitGain "Colleen - Uptight" for Sturm;
				TraitGain "Blanche - Friendly Wolfess" for Colleen;
				TraitGain "Sturm - Barely Met" for Colleen;
			else if ColleenAlpha is 0: [Slutty Colleen]
				say "     Colleen approaches eagerly, almost pressing her nose up against the two wolves as she inhales their scent. 'Mmm. You smell good. Especially you stud,' she croons, primarily addressing Sturm. A nervous smile creeps across his face at the husky's approval. 'I look forward to getting more acquainted with you both. Very, very acquainted I hope.' Blanche blushes a little as Colleen grasps her backside and gives it a little squeeze, doing the same to Sturm. Her introduction made, the husky sashays off with her tail held high, both mother and son watching her leave. 'She's a lot friendlier than I would expect upon first meeting someone,' Blanche comments, though you get the impression that she doesn't mind that much.";
				TraitGain "Colleen - Forward Greeter" for Blanche;
				TraitGain "Colleen - Eager Bitch" for Sturm;
				TraitGain "Blanche - MILF Wolfess" for Colleen;
				TraitGain "Sturm - Handsome Stud" for Colleen;
			else if ColleenAlpha > 0: [Alpha Colleen]
				say "     Colleen approaches confidently, casting an appraising eye over the wolves. 'You found new pack members? Well they certainly look good, but can they do anything of use?' the husky addresses you. 'I'm not sure that I can offer much personally, but my children are accomplished scavengers. Sturm is a little more capable in combat than the others on top of that. I'm sort of the millstone of the family,' Blanche replies, looking downcast. 'I'm sure that you're just being modest. Perhaps I can help you discover your hidden talent. Your son is welcome to come too. The more the merrier,' Colleen responds, caressing the wolf MILF's shoulder with one hand. You politely cough before she goes too far and she takes a step back. 'Come see me some time. I'm sure we can find something or someone to do,' the husky states before tuning on her heel and wandering off again, leaving Blanche looking quite embarrassed, especially with how Sturm is smirking at her.";
				TraitGain "Colleen - Dominant Woman" for Blanche;
				TraitGain "Colleen - Confident Husky" for Sturm;
				TraitGain "Blanche - Modest Wolfess" for Colleen;
				TraitGain "Sturm - Capable Stud" for Colleen;
			WaitBreakReactions;
		if Dash is booked or Dash is bunkered:
			say "     The young fox rushes out of the Computer Room over to you, likely having already met the rest of Blanche's brood making themselves at home there. At first he is cautious of the two wolves beside you, but when Blanche sits on the ground and beckons him over, he tentatively approaches her. 'You like a growing boy, little fox,' she croons, gently coaxing him onto her lap and stroking him slowly along his back. 'And definitely in need of more love. You can never have too much.' Dash seems to be enjoying the attention, squeaking cheerfully as the wolfess pampers him. He seems even more enthused by the two white wolves when Sturm produces a piece of jerky from somewhere and offers it to the young vulpine. Between being smothered with affection from Blanche and her son plying him with food, you get the impression that he is going to appreciate you inviting them to the library.";
			TraitGain "Dash - Growing Boy" for Blanche;
			TraitGain "Dash - Cute Fox" for Sturm;
			TraitGain "Blanche - Cuddly Woman" for Dash;
			TraitGain "Sturm - Food Provider" for Dash;
			WaitBreakReactions;
		if David is booked or David is bunkered:
			say "     David wanders over, curious to meet the new library residents. 'Hi there. I'm David. Due to their being a government agent, I've been assigned to aid [if Player is not defaultnamed][Name of Player][else][ObjectPro of Player][end if] for the foreseeable future so you'll probably be seeing me around,' he says, gesturing at you. 'Not that I mind really. The library is a lot more comfortable than Camp Bravo.' The soldier laughs and shakes hands with the two wolves. 'I know that not everyone is thrilled by everything that the military is doing in the city, and some of that won't be without reason, but we're the best chance anyone has of getting back to normality, so if you have any problems with me, please talk it through rather than jumping me in my sleep. I should also be able to put in a good word for you after this is all over. Anyway, I should get back to it. Come see me in the bunker if you want to talk. It gets lonely sometimes.' With that, he departs, leaving you to weather the accusatory stare from Blanche. 'You're not really a government agent are you? He seems to have a good heart, but I trust you enough to keep your secret.'";
			TraitGain "David - Naive Soldier" for Blanche;
			TraitGain "David - Gullible" for Sturm;
			TraitGain "Blanche - Friendly" for David;
			TraitGain "Sturm - Friendly" for David;
			WaitBreakReactions;
		if Denise is booked or Denise is bunkered: [might want to put in a check if Denise has kids]
			[
			now tempnum is the remainder after dividing Libido of gryphoness by 4;
			let T be ( Libido of gryphoness / 4 );
			if tempnum is 2:
				say "Pregnant Denise";
			else if T is 1: [1 gryphlet]
				say "One little gryphon";
			else if T > 1: [T gryphlets]
				say "Multiple little gryphon";
			]
			say "     With a flutter of her wing's, Denise lands on a bookshelf and looks down at the wolves cautiously. 'Wary of strangers? I can hardly blame you given what some people in the city are like. I'm Blanche, and this is my son, Sturm. My other children are in the other room,' Blanche calls up to the gryphon sympathetically. 'Your plumage is beautiful, you must take care of it very well. I know that keeping my fur clean is a chore at times, especially without running water,' she adds. 'It's nice when someone understands the effort that goes in. My name is Denise,' the blue gryphon replies, preening slightly at the complement of her feathers. 'It's a pleasure to meet you Denise and I hope that we can talk more in future after our kind host finishes giving us the tour,' Blanche says, exchanging a wave with the gryphon before she soars away again. It doesn't look like it will take much effort for the two of them to become friends. Sturm looks a little put out that he didn't get a chance to say hello though.";
			TraitGain "Denise - Pretty Plumage" for Blanche;
			TraitGain "Denise - Pretty Plumage" for Sturm;
			TraitGain "Blanche - Pristine Fur" for Denise;
			TraitGain "Sturm - Barely Met" for Denise;
			WaitBreakReactions;
		if Dinah is booked or Dinah is bunkered: [Cat]
			say "     Feeling something brush up against you legs, you look down to see Dinah, the cat, rubbing up against you and peering suspiciously at Blanche and Sturm. The male wolf seems largely disinterested in the dometic feline, but Blanche, perhaps remembering her life before the nanite apocalypse, crouches down and attempts to entice the pet towards her. Torn between caution and curiosity, Dinah eventually decides that she can at least give the wolfess['] finger tips a sniff and a lick, relaxing against her touch as Blanche begins to pet the cat from head to tail, a sad smile on her face. 'It has been a while since I last saw a normal cat, as funny as that sounds. There's something relaxing about these moments of normality,' she sighs, scratching her new friend beneath the chin before standing up again. Sturm settles for waving at the cat, receiving an unimpressed stare in return.";
			TraitGain "Dinah - Memory of Normality" for Blanche;
			TraitGain "Dinah - Cat" for Sturm;
			TraitGain "Blanche - Worth Knowing" for Dinah;
			TraitGain "Sturm - Large White Thing" for Dinah;
			WaitBreakReactions;
		if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
			if HP of Elijah is 99: [evil]
				say "     Studying the two wolves for a moment, Elijah states, 'I see you got yourself a breeding bitch. I don't suppose you'd mind if I took her for a ride.' As he reaches towards her, Sturm bats his hand aside and glares at the angel. 'Leave my mother alone,' he growls. Elijah scowls at having his fun interfered with, clenching his fists as though about to fight back. However, after a few seconds he laughs darkly and opens his hands again. 'Your mother ought to have taught you not to strike your betters, but I'm sure that I can teach you this lesson personally at a later point. Perhaps I'll collar you and make you my bitch too. Make you watch as I break you both,' the fallen angel replies with a smirk. 'You and I will be getting well acquainted soon...' he taunts before turning on his heel and striding away to terrorise someone else. 'He scares me,' Blanche mumbles, her son hugging her reassuringly as he replies, 'Ignore him. I won't let anything happen to you, and father has promised to look after us here anyway.' Sturm fixes you with a stare to make sure he has got his point across."; [egotistical, lustful]
				TraitGain "Elijah - Rape Threat" for Blanche;
				TraitGain "Elijah - Threatened Mom" for Sturm;
				TraitGain "Blanche - Breeding Bitch" for Elijah;
				TraitGain "Sturm - Uppity Boy-Bitch" for Elijah;
			else: [good]
				say "     Walking up to the two wolves, Elijah gives them a welcoming smile. 'Greetings, and may you find peace here,' he beams. Blanche looks a little unsure before replying, 'Thank you for the kind words, but I haven't been to church in years, nor would I describe myself as particularly virtuous, so I'm not sure that I would be in anyone's good graces.' Elijah laughs. 'From looking at you and your children, I would say that you have a good heart. Children are the greatest of God's gifts so I don't think you can be that wicked.' The wolf MILF looks comforted by this thought and smiles back at the angel. Feeling Sturm's eyes on him, Elijah turns to him and briefly scrutinises him in return. 'Your love towards your family does you credit. Don't hesitate to let them support you when you need them. We all have periods of vulnerability. Trying to shoulder your burdens alone is a sure way to eventually fall,' the angel says soothingly. Sturm opens his mouth as if to reply before merely nodding and turning away. After a few more brief words, Elijah returns to what he was doing before, leaving the three of you in awkward silence. 'He's left me with a lot to think on,' Blanche mumbles, her son nodding his agreement.'"; ["good boy", let him talk about being glad that god's children are resilient and still keep together and whatnot]
				TraitGain "Elijah - Kind Words" for Blanche;
				TraitGain "Elijah - Wise Words" for Sturm;
				TraitGain "Blanche - Good Heart" for Elijah;
				TraitGain "Sturm - Devoted Son" for Elijah;
			WaitBreakReactions;
		if Eric is booked or Eric is bunkered:
			if HP of Eric > 0 and HP of Eric < 21: [Regular Cuntboy]
				say "     Approaching Blanche and Sturm, Eric gives the two of them a cautious smile before stopping a few feet away and giving a shy wave. 'Hi, I'm Eric. I saw some other wolves going into the computer lab and I wondered whether they were yours,' he softly asks. Eager to talk about her children, Blanche's smile widens as she replies to the student. 'They are. My family is very important to me so I didn't want to leave any of them behind. What a polite young man you are.' At this moment, possibly catching Eric's scent, the wolf MILF looks confused. 'I apologize. I was sure you were male, but my nose is picking up something else. Was I wrong?' she asks. Eric sighs before responding. 'You're not wrong, but neither is your nose. I got transformed a bit before coming here from the college.' Perhaps sensing that this is a sensitive point of discussion, Sturm steps forward with his hand out, the student automatically putting his own hand out for the two of them to shake hands. 'I'm Sturm and this is my mother, Blanche,' he explains, redirecting the conversation. 'I'd love to hear about what you were studying if you ever have the time, or anything else you want to talk about,' Blanche chips in with a reassuring expression. 'Me too,' Sturm adds. 'Sure. I'll let you settle in first though,' Eric says before briefly saying hello to you and disappearing again.";
				TraitGain "Eric - Troubled Past" for Blanche;
				TraitGain "Eric - Potential Friend" for Sturm;
				TraitGain "Blanche - Caring Woman" for Eric;
				TraitGain "Sturm - Potential Friend" for Eric;
			else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
				say "     Approaching Blanche and Sturm, Eric gives the two of them a confident smile before stopping in front of them. 'Hi, I'm Eric. I saw some other wolves going into the computer lab and I wondered whether they were yours,' he asks. Eager to talk about her children, Blanche's smile widens as she replies to the student. 'They are. My family is very important to me so I didn't want to leave any of them behind. What a polite young man you are.' At this moment, possibly catching Eric's scent, the wolf MILF looks intrigued. 'I apologize, but you have an interesting aroma about you,' she states, her nose twitching ceaselessly. Eric smirks before replying, 'That wouldn't surprise me. I had a little, or not so little, modification done after coming here from the college.' Despite this cryptic response, Sturm steps forward with his hand out, the student automatically putting his own hand out for the two of them to shake hands. 'I'm Sturm and this is my mother, Blanche,' he explains, redirecting the conversation. 'I'd love to hear about what you were studying if you ever have the time, or anything else you want to talk about,' Blanche chips in with a reassuring expression. 'Me too,' Sturm adds. 'Sure. I'll let you settle in first though,' Eric says before briefly saying hello to you and disappearing again.";
				TraitGain "Eric - Intriguing Scent" for Blanche;
				TraitGain "Eric - Intriguing Scent" for Sturm;
				TraitGain "Blanche - Intrigued Wolfess" for Eric;
				TraitGain "Sturm - Intrigued Wolf" for Eric;
			else if HP of Eric is 99: [Submissive Cuntboy]
				say "     As Eric is about to approach the wolves, he seems to change his mind and instead stands several meters away looking at them fearfully. 'Hello young man, have you come to say hello?' Blanche calls over. Unfortunately, this seems to spook him and he dashes away deeper into the library. Startled by his reaction, the wolf MILF turns back to you, 'What happened to him? He almost seems like he's been abused!' Not wanting to reveal how close she is in her assessment, you merely state that his rescue from the college might have been easier for him if you had discovered him sooner. Sturm regards you suspiciously for a moment, but seems to accept that you are telling the truth. The two wolves ponder Eric's brief appearance before waiting for you to continue showing them around.";
				TraitGain "Eric - Frightened" for Blanche;
				TraitGain "Eric - Frightened" for Sturm;
				TraitGain "Blanche - Possible Threat" for Eric;
				TraitGain "Sturm - Threat" for Eric;
			WaitBreakReactions;
		if Erica is booked or Erica is bunkered:
			say "     Approaching Blanche and Sturm, Erica gives the two of them a confident smile before stopping in front of them. 'Heya, I'm Erica. I saw some other wolves going into the computer lab and I wondered whether they were yours,' she asks. Eager to talk about her children, Blanche's smile widens as she replies to the student. 'They are. My family is very important to me so I didn't want to leave any of them behind. What a polite young lady you are.' Erica beams at this praise and the way that she sways gleefully seems to catch the eye of the other wolf. Sturm steps forward with his hand out, the student automatically putting her own hand out for the two of them to shake hands. 'I'm Sturm and this is my mother, Blanche,' he says, greeting the young woman properly. 'I'd love to hear about what you were studying if you ever have the time, or anything else you want to talk about,' the young wolf says, his intent look making the student blush. 'Me too,' Blanche chips in. 'Sure. I'll let you settle in first though,' Erica says before briefly saying hello to you and disappearing again, though not without another glance over her shoulder at the white wolves, particularly Sturm.";
			TraitGain "Erica - Polite Student" for Blanche;
			TraitGain "Erica - Pretty Student" for Sturm;
			TraitGain "Blanche - Praised Me" for Erica;
			TraitGain "Sturm - Attracted" for Erica;
			WaitBreakReactions;
		[if Fallen King is booked or Fallen King is bunkered:
			say "     ";
			TraitGain "Fallen King - Rape Threat" for Blanche;
			TraitGain "Fallen King - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Fallen King;
			TraitGain "Sturm - Ready Slut" for Fallen King;
			WaitBreakReactions;]
		if HP of Fiona > 4:
			say "     Fiona stalks over on all fours and begins to rub up against Blanche and Sturm's legs, purring loudly. You are mildly surprised at how friendly she seems to be when, as far as you know, the catgirl has never met them before, but eventually dismiss it as just being her natural good temperament. As Sturm bends down to pat her, she twists out of the way of his descending hand and retreats to a safe distance before rolling on her back and writhing around playfully. 'I was always more of a canine person, but a cat is fine too,' Blanche giggles as she looks over at Fiona. Behind his mother, you can see Sturm inconspicuously trying to hide a developing erection, the catgirl seemingly having quite the effect on him, likely due to pheromones or possibly due to the way in which the feline is nearly constantly displaying her pussy as she rolls around. Eventually, seeing that no-one is going to be enticed into approaching her, Fiona disappears into a shadowy corner again and vanishes from sight. 'I hope she'll let us stroke her next time,' Sturm mumbles, his mother giving him a reassuring smile. You are not so sure. Fiona is rather mercurial.";
			TraitGain "Fiona - Cat is Fine Too" for Blanche;
			TraitGain "Fiona - Enticing Pussy" for Sturm;
			TraitGain "Blanche - Canine Person" for Fiona;
			TraitGain "Sturm - Enticed Wolf" for Fiona;
			WaitBreakReactions;
		[if Gabriel is booked or Gabriel is bunkered:
			say "     ";
			TraitGain "Gabriel - Rape Threat" for Blanche;
			TraitGain "Gabriel - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Gabriel;
			TraitGain "Sturm - Ready Slut" for Gabriel;
			WaitBreakReactions;]
		[if Gobby is booked or Gobby is bunkered:
			say "     ";
			TraitGain "Gobby - Rape Threat" for Blanche;
			TraitGain "Gobby - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Gobby;
			TraitGain "Sturm - Ready Slut" for Gobby;
			WaitBreakReactions;]
		[if Gregory is booked or Gregory is bunkered:
			say "     ";
			TraitGain "Gregory - Rape Threat" for Blanche;
			TraitGain "Gregory - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Gregory;
			TraitGain "Sturm - Ready Slut" for Gregory;
			WaitBreakReactions;]
		[if Gwen is booked or Gwen is bunkered:
			say "     ";
			TraitGain "Gwen - Rape Threat" for Blanche;
			TraitGain "Gwen - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Gwen;
			TraitGain "Sturm - Ready Slut" for Gwen;
			WaitBreakReactions;]
		if Hadiya is booked or Hadiya is bunkered:
			say "     'Oh look. Another bitch not strong enough to defend herself,' Hadiya drawls as she circles around the wolves. 'That's alright. I'm more than happy to protect what's mine. All you have to do is beg.' Seeing that the hyena is making Blanche uncomfortable, which is in turn putting Sturm on edge to defend his mother, you clear your throat loudly to get Hadiya's attention. In her typical fashion, she barely recognizes your presence but seems to have enough sense to know not to push this issue. 'I'm just kidding. I live here too now and I definitely ain't no helpless bitch,' she mutters as she stalks off, shouting a quick apology over her shoulder before disappearing through a door, likely back to her guitar.";
			TraitGain "Hadiya - Abrasive" for Blanche;
			TraitGain "Hadiya - Stuck Up" for Sturm;
			TraitGain "Blanche - Weak Bitch" for Hadiya;
			TraitGain "Sturm - Barely Noticed" for Hadiya;
			WaitBreakReactions;
		if Hayato is booked or Hayato is bunkered:
			say "     Walking up to the two wolves, Hayato gives them a wave before coming to a stop, an easy smile on his face. 'Hey there,' he greets them before his face twists into a quizzical expression. 'Have I seen you before? You haven't by any chance come from the Capitol District have you?' he asks. Blanche looks surprised at the question but nonetheless quickly replies. 'Why yes, we did. Are you familiar with it? I apologize if we've met before.' 'I used to live in a shed there and I think I saw you running from some drakes at one point, but I was on the other side of a lava flow so there wasn't anything that I could do to help. You have my deepest apologies,' the oni responds with embarrassment. They begin to exchange stories about their experiences there, but quickly realize that they might be better doing so later and fall quiet again. Sturm takes the chance to shake hands with Hayato, the two of them looking into each other's eyes as they squeeze their palms momentarily before the oni releases the wolf with a chuckle. 'Not bad, kid. I'm not sure what you're trying to prove, but you'll be making business deals any day now with a grip like that.' Sturm looks confused but doesn't get any more out of Hayato before the oni walks away again after giving you a nod.";
			TraitGain "Hayato - Fellow Capitol Resident" for Blanche;
			TraitGain "Hayato - Laughing Oni" for Sturm;
			TraitGain "Blanche - Fellow Capitol Resident" for Hayato;
			TraitGain "Sturm - Mildly Confrontational" for Hayato;
			WaitBreakReactions;
		if Helen is booked or Helen is bunkered:
			say "     Helen dashes over to the wolves and sniffs around their ankles before becoming more forward, moving onto their groins and backsides. 'She acts like a dog...' Blanche states, looking at you with confusion. You explain that the nanites seem to have done the opposite to her than they have to everyone else, turning a dog into a human. Though it boosted her intelligence beyond what it used to be, the canine instincts are still strong. Hearing this, Blanche bends down and begins to pat Helen, a moment later Sturm joins her, the two of them methodically rubbing and stroking the young woman who seems to be enjoying it immensely, tongue hanging out of her mouth as she rolls on her back to request tummy rubs. Careful not to scrape her tender skin with their claws, the wolves oblige her until one of her legs starts kicking reflexively[if Lust of Helen > 3]. 'New friend?' she suddenly asks, followed by a happy bark as Blanche says, 'Definitely, you seem a good friend to have,' Sturm agreeing a moment later[end if]. As they stop patting her, she flips back onto her hands and knees and shuffles away cheerfully.";
			TraitGain "Helen - Friendly Human Dog" for Blanche;
			TraitGain "Helen - Pretty Human Dog" for Sturm;
			TraitGain "Blanche - New Friend" for Helen;
			TraitGain "Sturm - New Friend" for Helen;
			WaitBreakReactions;
		if Hobo is booked or Hobo is bunkered:
			say "     Hobo excitedly rushes around the wolves, proudly showing off a tennis ball that he must have found somewhere. 'Do you want me to throw the ball for you?' Blanche asks, the dog drops it on the floor and noses it forward, watching intently as it is picked up. Blanche gently lobs it towards an area devoid of furniture smiling as Hobo charges after it. Amusingly, Sturm takes a half-step after it too, almost as if he was about to chase the ball as well, his mother spotting this out of the corner of her eye and smirking. 'Neither of you is to mention this. Ever,' Sturm growls. After playing with Hobo for a few minutes, Blanche tires and Hobo wanders off again, wagging his tail.";
			TraitGain "Hobo - Regular Dog" for Blanche;
			TraitGain "Hobo - Regular Dog" for Sturm;
			TraitGain "Blanche - Nice Wolfess" for Hobo;
			TraitGain "Sturm - Likes Balls Too" for Hobo;
			WaitBreakReactions;
		if Honey is booked or Honey is bunkered:
			say "     Honey buzzes over, hovering in front of the wolves['] faces, inspecting them unabashedly. 'Hi! I'm Honey,' she cheerfully introduces herself. 'Hello. A pleasure to meet such a sweet girl. I'm Blanche and this is my son Sturm. You may have seen my other children when we arrived,' the wolf MILF replies, waving at the small bee. 'You're nice. I like you,' Honey exclaims before flitting away again, busy with one thing or another as usual. 'I hope that I see more of her. You need cheerful people around you, especially when things are as bad as they seem to be at the moment,' Blanche muses before giving you a reassuring smile. 'I'm fine. Really.'";
			TraitGain "Honey - Cheerful Girl" for Blanche;
			TraitGain "Honey - Cute Bee" for Sturm;
			TraitGain "Blanche - Nice Wolfess" for Honey;
			TraitGain "Sturm - Nice Wolf" for Honey;
			WaitBreakReactions;
		if Icarus is booked or Icarus is bunkered:
			say "     Icarus struts towards the wolves, his tail feathers spread out and a cocky glint in his eye. 'It's always a good day when such a beautiful lady such as yourself finds their way into my home,' the blue chaffinch greets them, though the sleazy comment is obviously directed at Blanche. To his embarrassment, she starts to laugh. 'You're not the first person to make a pass at me, and as pick-up lines go, that wasn't particularly creative, but at least it wasn't crude. Also, I don't think that the library is yours exactly,' the wolf MILF replies, her son smirking as Icarus['] expression slips. 'Well then. I'll be in my room if you want me,' the bird snaps stiffly before flapping away without looking back. 'I should probably apologize, but if I had to count the number of men who thought pick-up lines were a good way to start a conversation, I wouldn't have needed to work in an office,' Blanche sighs. 'I'll do it later. There's probably more to him than cheap talk.'";
			TraitGain "Icarus - Pickup Artist" for Blanche;
			TraitGain "Icarus - Sleaze" for Sturm;
			TraitGain "Blanche - Laughed at Me" for Icarus;
			TraitGain "Sturm - Barely Met" for Icarus;
			WaitBreakReactions;
		if Jimmy is booked or Jimmy is bunkered:
			say "     Jimmy wanders over, the pint-size corgi as cheerful as ever as he reaches the wolves and sticks a paw out. 'Hi there. I'm Jimmy. Don't let my size fool you, I'm the Alpha of this den. I hope you have some of those doggy treats with you if you want to join my pack,' he declares, as he shakes hands with them. Blanche opens her mouth to say something then closes it again, looking deep in thought. Unable to contain himself any longer, the corgi descends into full-body laughter. 'Ha. As if anyone would believe that. I'm sort of a refugee here, definitely not in a position of authority. If you need a hug or a handjob, I'm your dog. I try to keep everyone in good spirits,' Jimmy chuckles, Blanche and Sturm laughing along with him. 'Oh, I like you. I'll be sure to come to you if I need a [']hug or a handjob['],' the wolf MILF says, hugging the corgi's head to her pillowy chest. 'For you two, no service is too much,' Jimmy quips, enjoying his snout being pressed into Blanche's cleavage. 'But I should get going and let you two finish the tour.' Having brightened the day of at least two more people, the corgi waddles away again.";
			TraitGain "Jimmy - Adorable Corgi" for Blanche;
			TraitGain "Jimmy - Funny Corgi" for Sturm;
			TraitGain "Blanche - Affectionate MILF" for Jimmy;
			TraitGain "Sturm - Friendly Wolf" for Jimmy;
			WaitBreakReactions;
		[if Joey is booked or Joey is bunkered:
			say "     ";
			TraitGain "Joey - Adorable Corgi" for Blanche;
			TraitGain "Joey - Funny Corgi" for Sturm;
			TraitGain "Blanche - Affectionate MILF" for Joey;
			TraitGain "Sturm - Friendly Wolf" for Joey;
			WaitBreakReactions;]
		if Karen is booked or Karen is bunkered:
			say "     Karen trots over to sniff at the newcomers, her tail wagging as Blanche crouches to pat her. 'I'm Blanche and this is Sturm, my son. I have the urge to tell you what a good girl you are, but I'm sure you already knew that,' the wolfess says cheerfully. 'That, and she isn't feral,' Sturm mutters, kneeling down to join in running his hands through the retriever's thick coat. 'It doesn't hurt to be reminded from time to time,' Karen laughs, enjoying the attention. You look like you've kept yourself in good condition despite the state of the city. Did you find somewhere safe?' Blanche asks, standing up again, her son following suit a moment later. 'Yes and no,' the dog-woman replies. 'My dog sort of took me hostage and felt that I belonged only to him. I was protected for the most part, but Rex was horribly controlling and made me his bitch. I nearly accepted this before my saviour came along,' she continues, nodding towards you. 'I'm very sorry that you had to go through that,' Blanche responds sympathetically. 'People like that don't deserve mates,' Sturm growls in agreement, getting approving looks from the two women. 'Thank you. I'll be sure to catch up with you again after you have settled in,' Karen says before walking away again.";
			TraitGain "Karen - Abuse Victim" for Blanche;
			TraitGain "Karen - Mistreated Retriever" for Sturm;
			TraitGain "Blanche - Sympathetic Wolfess" for Karen;
			TraitGain "Sturm - White Knight" for Karen;
			WaitBreakReactions;
		[if Katherine is booked or Katherine is bunkered:
			say "     ";
			TraitGain "Katherine - Rape Threat" for Blanche;
			TraitGain "Katherine - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Katherine;
			TraitGain "Sturm - Ready Slut" for Katherine;
			WaitBreakReactions;]
		if Klauz is booked or Klauz is bunkered:
			say "     Klauz saunters over to the wolves and begins to circle around them, purring as he begins to rub up against their sides, spreading his scent. 'Oh my. What a friendly lion you are, and so handsome,' Blanche croons, putting one hand down to run through his mane, the felinoid's pheromones influencing her nearly immediately. Sturm's face twists with confusion as his nose twitches. Suddenly, his eyes widen and he clenches his claws into the palm of his hand, while grabbing his mother by the arm with the other hand and sharply pulling her away from the feline. 'You're hurting me! What do you think you're...' she scolds him, before he digs his claws into her elbow, the pain seemingly overwhelming the dulling effect of the pheromones. As her head clears, Blanche looks embarrassed, while her son glares at Klauz. 'I've met your kind in the park before and Diego was kind enough to teach me some tricks. Stay away from my Mom. The rest of my family too,' Sturm growls, the felinoid growling back before slinking away. Blanche hugs her son while you wonder whether this might have escalated if you weren't there..."; [rubbing up against them, trying to entrance them (might be quite effective with Blanche, a bit much for Sturm?)]
			TraitGain "Klauz - Enticing Pheromones" for Blanche;
			TraitGain "Klauz - Felinoid Threat" for Sturm;
			TraitGain "Blanche - Fertile Bitch" for Klauz;
			TraitGain "Sturm - Interfering Wolf" for Klauz;
			WaitBreakReactions;
		if Korvin is booked or Korvin is bunkered:
			if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
				say "     Leaning against the end of a bookshelf and keeping his distance, you see Korvin cautiously study the new residents, his eyes hastily dropping back to look at the floor after he meets Sturm's curious glance. 'Shy, aren't you? What's your name?' the wolf calls to him. You hear the German Shepherd mumble a response and promptly tell him to speak up. 'Korvin, sir,' he says, only mildly louder than before. 'Pleased to make your acquaintance Korvin. I'm Sturm, and this is my mother, Blanche.' The white wolfess gives a little wave causing the dog to blush and turn away, an erection growing. You'll consider whether or not to punish him later but for now decide not to humiliate him in front of the two wolves. Embarrassed, Korvin rapidly disappears down one of the aisles. 'It was nice meeting you,' Blanche calls after him.";
				TraitGain "Korvin - Shy Canine" for Blanche;
				TraitGain "Korvin - Shy Sub" for Sturm;
				TraitGain "Blanche - Forbidden Beauty" for Korvin;
				TraitGain "Sturm - Strong Male" for Korvin;
			else:
				say "     Walking up to the wolves with a confident stride, Korvin looks them up and down with a cocky grin that widens as his eyes crawl over Blanche's wide hips, puffy vulva, and full breasts. 'Damn girl. You're practically begging to be fucked aren't you. It's a wonder no one in the city had already claimed you before the boss here took you in,' he laughs, shamelessly eye-banging her. 'Oh. Um... Thank you, I think?' Blanche stutters unsure how to respond to such crude, yet apparently effective, comments. Sturm has no such difficulties. 'Speak to my mother like that again and you'll be the one begging, just not to be fucked,' the wolf growls looming over the smaller male. Korvin's pride forbidding him from backing down, you quickly intervene to prevent a fight erupting, properly introducing the wolves to the German Shepherd, explaining why they are moving in. Reluctantly, Sturm takes a step back again, still glowering at the smirking canine. 'I look forward to getting to know them,' Korvin says, the mocking tone in his voice readily apparent, and you can guess which of them he wants to [']get to know['] more. With that, he turns and walks away again, Blanche hesitantly waving goodbye while her son snorts disdainfully."; [he's into breeding bitches, and if she's proven to be fertile... that'd draw some interest (keep it at looking/sniffing the air here, otherwise you'd have to go into the tags for relationships between Korvin and the player)]
				TraitGain "Korvin - Crude but Appealing" for Blanche;
				TraitGain "Korvin - Rude Lesser Canine" for Sturm;
				TraitGain "Blanche - Fertile MILF" for Korvin;
				TraitGain "Sturm - Interfering Wolf" for Korvin;
			WaitBreakReactions;
		[if Liliana is booked or Liliana is bunkered: [Equinoid Warrior]
			say "     ";
			TraitGain "Liliana - Rape Threat" for Blanche;
			TraitGain "Liliana - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Liliana;
			TraitGain "Sturm - Ready Slut" for Liliana;
			WaitBreakReactions;]
		[if Macadamia is booked or Macadamia is bunkered:
			say "     ";
			TraitGain "Macadamia - Rape Threat" for Blanche;
			TraitGain "Macadamia - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Macadamia;
			TraitGain "Sturm - Ready Slut" for Macadamia;
			WaitBreakReactions;]
		[if Malik is booked or Malik is bunkered:
			say "     "; [doesn't have much interest in her, might approach Sturm for a possible bro moment - them going out hunting together or so... "leading her boy astray" from Blanche's perspective]
			TraitGain "Malik - Rape Threat" for Blanche;
			TraitGain "Malik - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Malik;
			TraitGain "Sturm - Ready Slut" for Malik;
			WaitBreakReactions;]
		[if Meredith is booked or Meredith is bunkered:
			say "     ";
			TraitGain "Meredith - Rape Threat" for Blanche;
			TraitGain "Meredith - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Meredith;
			TraitGain "Sturm - Ready Slut" for Meredith;
			WaitBreakReactions;]
		if Nadia is booked or Nadia is bunkered:
			say "     Fluttering over to you, Nadia gingerly greets the two wolves. 'Hello. I hope that we can get along. P-please leave my eggs alone and don't hurt my chicks,' she shyly asks, barely looking up from her feet. Crouching slightly so as not to look as threatening, Blanche replies, 'One mother to another, you have my word. You may have seen my other children when we first arrived and I don't know what I would do if they were harmed. I'm Blanche and this is my son, Sturm. I wouldn't mind discussing our children and motherhood with you at a later time either. Whenever it is convenient for you, of course.' Nadia looks up and meets her eyes, the excitement of a kindred spirit greater than her natural meekness. Sturm makes to agree with the request too, but the bird's attention is entirely on Blanche, a kinship forming between the two mothers. 'I was a little scared at first, but I look forward to talking with you more. I'll let you settle in first. I don't suppose you like gardening too?' Nadia asks, looking a little downcast when the wolves shake their heads. 'I can give it a try though,' Blanche cuts in, much to Nadia's delight. 'See you later then,' she says before walking away again.";
			TraitGain "Nadia - Fellow Mother" for Blanche;
			TraitGain "Nadia - Mother Bird" for Sturm;
			TraitGain "Blanche - Fellow Mother" for Nadia;
			TraitGain "Sturm - Large Wolf" for Nadia;
			WaitBreakReactions;
		if Onyx is booked or Onyx is bunkered:
			if (xp of Onyx > 9 and xp of Onyx < 20): [Dom Stallion]
				say "     Onyx strides over to inspect the wolves more thoroughly, a cocky smirk spreading across his face as his eyes roam over Blanche's voluptuous form. 'Hey there, sexy. I'm Onyx. I look forward to getting to know you,' he remarks. The wolfess seems momentarily tongue-tied, her eyes fixed on the dominant horseman's stirring erection, just beginning to squeeze past the ineffective confines of his thong. The view is obstructed by Sturm stepping between them, his arms folded. 'What about me? Are you looking forward to getting to know me too?' he pointedly asks. 'Sure, but not quite as much as her. Wait, you aren't her mate or something, are you?' Onyx replies, sizing up the wolf. 'Not exactly. I'm her son,' comes the response. 'Well then, I'll probably refrain from involving you in a threesome,' the horseman teases. Seeing Sturm's hackles raise, Onyx takes a step back. 'Calm down, it was meant to be a joke. Besides, it's not like I'm some meathead just because I'm a stallion. It's her choice.' Blanche lays a calming hand on her son's shoulder, the tension bleeding from his body a moment later. With a sigh, Sturm apologies. 'Sorry. I don't have many good experiences with other people so I tend to be defensive. Perhaps I can try and make a better impression when I've properly settled in.' 'No worries. I'm sure your caution has been justified in the past,' the stallion replies, the two males shaking hands. Relieved that the situation has resolved itself without your intervention, you wait as the three of them talk for a short moment before Onyx leaves again, Blanche's eyes still following him.";
				TraitGain "Onyx - Confident Hung Stud" for Blanche;
				TraitGain "Onyx - Not Some Meathead" for Sturm;
				TraitGain "Blanche - Sexy MILF" for Onyx;
				TraitGain "Sturm - Justifiably Cautious" for Onyx;
			else if (xp of Onyx > 19 and xp of Onyx < 30): [Sub Stallion]
				say "     Onyx wanders over to inspect the wolves more thoroughly, surreptitiously licking his lips as his eyes roam over Blanche's voluptuous form. 'Hello, I'm Onyx. It's nice to meet you,' he says with an endearing smile. The wolfess seems momentarily tongue-tied, her eyes fixed on the submissive horseman's stirring erection, just beginning to squeeze past the ineffective confines of his thong. With an annoyed sigh at his mother's behavior, Sturm replies, 'It's a pleasure to meet you too. I'm Sturm and this is my mother, Blanche. Please excuse her staring.' He gently elbows her, startling her for a moment before she realizes what she was doing and blushes beneath her fur and begins to hurriedly apologize. 'Don't worry about it. I find it more than a little flattering that I can draw their eye like that. Look all you want,' Onyx laughs. You see Sturm trying to get a better look out of the corner of his eye, but Blanche seems to be self-conscious now, firmly keeping her eyes above the stallion's groin. After a few more words are exchanged, Onyx walks away again, flicking his tail around with the side-effect of revealing his hole to all three of you as you watch him leave. Once he rounds a corner, Sturm turns back to his mother and wordlessly folds his arms, Blanche suddenly finding the ceiling extraordinarily interesting.";
				TraitGain "Onyx - Flirty Hung Stud" for Blanche;
				TraitGain "Onyx - Flirty Show-off" for Sturm;
				TraitGain "Blanche - Voluptuous Wolfess" for Onyx;
				TraitGain "Sturm - Handsome Wolf" for Onyx;
			else: [Not locked]
				say "     Onyx walks over to inspect the wolves more thoroughly, his eyes being almost drawn to roam over Blanche's voluptuous form, shyly ringing his hands as he does so. Hello, I'm Onyx. It's nice to meet you,' he finally says, dragging his eyes upwards to meet the wolves['] gazes. Unfortunately, the wolfess seems to have become distracted too, her eyes fixed on the horseman's stirring erection as it strains against the confines of his thong. Noticing where his mother is staring, Sturm sighs irritably before replying, 'It's a pleasure to meet you too. I'm Sturm and this is my mother, Blanche. I must apologize for her wandering eyes.' Hearing her son's acerbic tone, Blanche blushes and ashamedly looks at the floor, mumbling an apology. 'Don't worry about it. I'm not exactly dressed decently. I couldn't find any more clothes that would fit me comfortably besides this...' Onyx replies, shyly tugging at the waistband of his underwear. You see Sturm trying to sneak a peek out of the corner of his eye, the horseman fortunately too distracted by his clothing situation. After a few more words are exchanged, Onyx wanders away again, the wolves gazing after his departing ass, only turning back when you politely cough.";
				TraitGain "Onyx - Shy Hung Stud" for Blanche;
				TraitGain "Onyx - Shy Horseboy" for Sturm;
				TraitGain "Blanche - Pretty Wolfess" for Onyx;
				TraitGain "Sturm - Polite Wolf" for Onyx;
			WaitBreakReactions;
		if Paula is booked or Paula is bunkered:
			say "     Paula looks at the two wolves, tapping a finger against her lips idly. 'They look in good condition for sex slaves, but I wish that you had given me warning. The dungeon is a mess,' she teases, giving them a wink to show that she is joking. 'Such a sharp tongue and a quick wit. I take it that you were a comedian of some repute?' Blanche fires back, making the sassy fox grin. 'Oh yes. In between my shifts I would go to nightclubs and entertain the crowd. You know, when I wasn't completely exhausted,' she replies. Sturm looks confused, but the two seemed to have enjoyed their initial verbal sparring. 'Did you work in an office like I did?' the wolf MILF asks. 'No. That might have been a luxury by comparison. I was a nurse.' Blanche winces at hearing this before offering her sympathy. 'Eek. That sounds like it would have irregular hours too. I'm sure people were grateful for it though,' she says soothingly. 'It could have been worse. I'm a bit of a bitch at times, but I like helping people, so it wasn't all bad,' Paula concedes. 'Well, it was nice meeting you, I'll return to lurking in the corner and let you get on with settling in,' she adds before blowing a kiss to Sturm and leaving with a wave. The male wolf seems a bit taken aback, but soon recovers.";
			TraitGain "Paula - Witty Vixen" for Blanche;
			TraitGain "Paula - Foxxy Tease" for Sturm;
			TraitGain "Blanche - Witty Wolf" for Paula;
			TraitGain "Sturm - Toned Wolf" for Paula;
			WaitBreakReactions;
		[if Peppy is booked or Peppy is bunkered: [Skunk Kit]
			say "     ";
			TraitGain "Peppy - Rape Threat" for Blanche;
			TraitGain "Peppy - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Peppy;
			TraitGain "Sturm - Ready Slut" for Peppy;
			WaitBreakReactions;]
		[if Philip is booked or Philip is bunkered:
			say "     ";
			TraitGain "Philip - Rape Threat" for Blanche;
			TraitGain "Philip - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Philip;
			TraitGain "Sturm - Ready Slut" for Philip;
			WaitBreakReactions;]
		[if Rachel is booked or Rachel is bunkered: [Mouse Girl]
			say "     ";
			TraitGain "Rachel - Rape Threat" for Blanche;
			TraitGain "Rachel - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Rachel;
			TraitGain "Sturm - Ready Slut" for Rachel;
			WaitBreakReactions;]
		[if Ranae is booked or Ranae is bunkered:
			say "     ";
			TraitGain "Ranae - Rape Threat" for Blanche;
			TraitGain "Ranae - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Ranae;
			TraitGain "Sturm - Ready Slut" for Ranae;
			WaitBreakReactions;]
		if Rane is booked or Rane is bunkered:
			say "     Sauntering over to the wolves, Rane gives an exaggerated bow before gently taking hold of one of Blanche's hands. 'My name is Rane and it is a pleasure to meet such an exquisite beauty,' he says. Surprisingly, the wolfess giggles girlishly and allows the blue oni to continue his flattery. 'That sounds like the sort of things people say in one of romance novels that Mom hid in her desk,' Sturm mutters, causing Rane to smile even more. 'Ah, but despite all of us knowing how cliché it is, she still laughs and enjoys the attention,' he says, standing up straight and turning to the wolf who is forced to concede this point. 'Compliments are an important part of life, especially when you want to make a good impression upon first meeting someone. You, for example, obviously look after your body and it shows. I bet you could give some of the orcs a serious challenge in the Capitol District,' Rane says with a wink. Sturm swells with pride at this praise, the oni's charisma having an effect on him too. 'I should let you settle in, but first I would hear your names,' the large blue man says, smiling and nodding as the wolves introduce themselves. With another wink to his new friends, Rane disappears back into the depths of the library."; [charming to Blanche, winks to Sturm]
			TraitGain "Rane - Handsome Charmer" for Blanche;
			TraitGain "Rane - Worldly Flatterer" for Sturm;
			TraitGain "Blanche - Exquisite Beauty" for Rane;
			TraitGain "Sturm - Wolf Warrior" for Rane;
			WaitBreakReactions;
		[if Ranfer is booked or Ranfer is bunkered:
			say "     ";
			TraitGain "Ranfer - Rape Threat" for Blanche;
			TraitGain "Ranfer - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Ranfer;
			TraitGain "Sturm - Ready Slut" for Ranfer;
			WaitBreakReactions;]
		if Ryousei is booked or Ryousei is bunkered:
			say "     Ryousei walks up to the pair with measured steps before giving them a cordial nod, respectful but fairly shallow. 'Welcome. I assume that you are the mother of the other wolves that I saw earlier?' he addresses Blanche. 'Yes. I love them to pieces. I'm Blanche,' the wolfess replies, curtseying slightly. 'And I take it that you are her eldest son?' the tiger continues, turning to Sturm. Nodding, he replies, 'Sturm. Pleased to meet you.' 'The honor is mine. My name is Ryousei. Do please tell me if you would be interested in sparring at some point. While I'm sure that your current combat technique has served you so far, there is always room for improvement, especially when I have seen how some within this world fight,' the tiger offers. 'I would really appreciate that, thank you. Whatever I need to do to keep my family safe,' Sturm replies, causing a frown to spread across Ryousei's face. 'Careful that you don't sacrifice too much, no matter how noble your goal,' he rumbles, making the wolf flinch back. 'I'm not going to sell my soul or anything like that. Nothing that would make Mom ashamed of me. I just meant that this might not be a chance that I get again,' Sturm mumbles. 'Ah. You have my apologies then. Too many warriors place martial prowess above moral integrity and I do not wish to start a student on the path to corruption,' Ryousei apologizes. 'I expect to see you soon. By your leave Matron Blanche,' the tiger excuses himself and bows before striding away."; [respectful of the 'matron' and whatnot]
			TraitGain "Ryousei - Dignified Tiger" for Blanche;
			TraitGain "Ryousei - Noble Teacher" for Sturm;
			TraitGain "Blanche - Caring Matron" for Ryousei;
			TraitGain "Sturm - Enthusiastic Student" for Ryousei;
			WaitBreakReactions;
		[if Sally is booked or Sally is bunkered:
			say "     ";
			TraitGain "Sally - Rape Threat" for Blanche;
			TraitGain "Sally - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Sally;
			TraitGain "Sturm - Ready Slut" for Sally;
			WaitBreakReactions;]
		[if Sam is booked or Sam is bunkered:
			say "     ";
			TraitGain "Sam - Rape Threat" for Blanche;
			TraitGain "Sam - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Sam;
			TraitGain "Sturm - Ready Slut" for Sam;
			WaitBreakReactions;]
		if Sandra is booked or Sandra is bunkered:
			say "     Sandra bounds over and observes the newcomers with curiosity, moving closer when Blanche waves her fingers at her. 'Hello, I'm Blanche. What's your name?' the wolfess asks. 'Sandra. You're not going to eat me are you?' the rabbit replies, her eyes wide as she stares up at the wolves. 'I won't, but my son Sturm might,' Blanche teases, momentarily baring her teeth. Sturm rolls his eyes. 'Mom, you're embarrassing yourself. I'm not going to eat anyone,' he groans. 'I don't know. It might be worth it for a stud like you,' Sandra replies. There is a moment of silence while what she said sinks in. 'Wait. Did I say that out loud?' With a loud 'Eep', Sandra dashes away, her cheeks scarlet and the two wolves at a loss for words. Finally, Blanche breaks the silence. 'I'm not sure whether to say that she has a crush on you, or whether she just craves what's between your legs,' she ponders. 'Mom! Inappropriate!' Sturm hisses, his own face likely as red as Sandra's was. 'You're a very handsome young man, so I'm sure that it's the former,' the MILF says in a fruitless attempt at consolation. 'MOM!!!'";
			TraitGain "Sandra - Horny Bunny" for Blanche;
			TraitGain "Sandra - Horny Bunny" for Sturm;
			TraitGain "Blanche - Nice Wolfess" for Sandra;
			TraitGain "Sturm - Wolf Stud" for Sandra;
			WaitBreakReactions;
		if (Sarah is booked or Sarah is bunkered) and SarahCured > 3: [remember she's a doctor - she could offer to check on people]
			say "     Sarah confidently approaches the two wolves and offers a hand in greeting. 'More people coming to live here? As long as you're sane, I'm sure that we can all get through this together,' she says cheerfully, shaking their hands. 'Quite sane, except at the full moon. Then we get the urge to howl,' Blanche replies jokingly. 'My family and I decided that we were safer moving here from the Capitol District. You may have seen them earlier moving into the computer lab.' Sarah's smile freezes for a second. 'Those were yours?' she asks haltingly. Noticing the husky's discomfort, the wolf MILF quickly tries to soothe her. 'You don't like children? I'll tell them to leave you alone. I'm so sorry.' Sarah quickly shakes her head, 'It's not that I don't like children, I was a med-student after all, I just feel that a lot of people have become sex maniacs these days.' Sturm raises an eyebrow. 'N-not that I think you're a sex maniac. That came out wrong...' the husky woman looks distinctly flustered, but fortunately, Blanche looks sympathetic rather than insulted. 'Don't worry. I think that I know what you meant. We can discuss our differing philosophies on pregnancy another time, but for now I would prefer to settle in. It was lovely meeting you though.' Sarah takes this chance to leave with a wave, embarrassed but nonetheless relieved. 'She has deep issues,' you hear Sturm mutter under his breath.";
			TraitGain "Sarah - Possible Prude" for Blanche;
			TraitGain "Sarah - Deep Issues" for Sturm;
			TraitGain "Blanche - Possible Nymphomaniac" for Sarah;
			TraitGain "Sturm - Son of a Sex Maniac" for Sarah;
			WaitBreakReactions;
		[if Segis is booked or Segis is bunkered:
			say "     ";
			TraitGain "Segis - Rape Threat" for Blanche;
			TraitGain "Segis - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Segis;
			TraitGain "Sturm - Ready Slut" for Segis;
			WaitBreakReactions;]
		if Serenity is booked or Serenity is bunkered:
			say "     Serenity slithers down the stairs and over to your small group, a book clasped in one of her hands. 'I thought that I heard talking. Have you invited some more people to live with us?' she addresses you. You quickly explain the events leading up to Blanche and her family moving in before giving them a chance to properly introduce themselves. 'Hello. I'm Blanche and this is my son Sturm. It's a pleasure to meet you,' Blanche cheerfully says, leaning in and giving the naga hybrid a warm hug. 'Mmm. You're warm... You may call me Serenity, but don't you know that you should be careful giving snakes hugs? We can be pretty competitive about it,' she warns, teasingly encircling one of the wolfess['] legs with the end of her tail. 'You might not win. With how much Mom cuddles me and my brothers and sisters, she is highly proficient,' Sturm adds, his eyes being drawn to the spots on the naga's hood. Smiling at how sweet his comment was, the two women end their embrace and, after a quick discussion about family, Serenity slips off to return her book while Blanche cuddles her son against her side. You wonder to yourself when the naga plans on mentioning that she is skilled at hypnotism...";
			TraitGain "Serenity - Cuddle Rival" for Blanche;
			TraitGain "Serenity - Entrancing Snake" for Sturm;
			TraitGain "Blanche - Warm Hugger" for Serenity;
			TraitGain "Sturm - Endearing Wolf" for Serenity;
			WaitBreakReactions;
		if Sidney is booked or Sidney is bunkered:
			if level of Sidney is 21: [Vixen]
				say "     Descending the stairs, Sidney catches sight of the wolves and quickly comes over to greet them. 'Hi. I'm Sidney. Are you going to live here, or are you just visiting?' she asks, resting her weight on her back paw, having the side effect of emphasizing her breasts, catching Sturm's attention. 'A pleasure to meet you. My names Blanche, and this is my son, Sturm,' the wolfess replies, turning to shepherd her son forth. 'Sturm dear, stop staring and greet Sidney. I do apologize. I swear that he used to be better behaved, but I suppose that I'm not exactly a good influence with my current aversion to clothing,' Blanche muses. Mildly embarrassed, Sturm steps forward and shakes the elegant fox's hand, making sure to maintain eye contact. 'Don't worry about it. Nothing makes you feel desirable quite like the welcome attention of a young man,' Sidney replies, giving the wolf a flirty wink. Relieved that her son hasn't caused any offence, Blanche converses with the vixen for a bit, complimenting her dress, admiring the hues of her fur, and discussing grooming techniques while Sturm joins in with an opinion every now and then. Eventually it is decided that they can continue talking at another time so that the wolves can settle in, Sidney returning back upstairs with a wave.";
				TraitGain "Sidney - Elegant Vixen" for Blanche;
				TraitGain "Sidney - Sexy Vixen" for Sturm;
				TraitGain "Blanche - Womanly Wolfess" for Sidney;
				TraitGain "Sturm - Appreciative Wolf" for Sidney;
			else if level of Sidney is 22 or level of Sidney is 23: [Otter]
				say "     Descending the stairs, Sidney catches sight of the wolves and quickly comes over to greet them. 'Hi. I'm Sidney. Are you going to live here, or are you just visiting?' she asks, resting her weight on her back paw, having the side effect of emphasizing her breasts, catching Sturm's attention. 'A pleasure to meet you. My names Blanche, and this is my son, Sturm,' the wolfess replies, turning to shepherd her son forth. 'Sturm dear, stop staring and greet Sidney. I do apologize. I swear that he used to be better behaved, but I suppose that I'm not exactly a good influence with my current aversion to clothing,' Blanche muses. Mildly embarrassed, Sturm steps forward and shakes the peppy otter's hand, making sure to maintain eye contact. 'Don't worry about it. I would imagine most young men would react like this if a woman approached them wearing a bikini. He's just a lot less subtle. Not that I mind,' Sidney replies, giving the wolf a flirty wink. Relieved that her son hasn't caused any offence, Blanche converses with the otter for a bit, complimenting her swimwear, admiring the properties of her fur, and discussing swimming while Sturm joins in with an opinion every now and then. Eventually it is decided that they can continue talking at another time so that the wolves can settle in, Sidney returning back upstairs with a wave.";
				TraitGain "Sidney - Cheerful Otter" for Blanche;
				TraitGain "Sidney - Bikini Model" for Sturm;
				TraitGain "Blanche - Womanly Wolfess" for Sidney;
				TraitGain "Sturm - Appreciative Wolf" for Sidney;
			else if level of Sidney is 71: [Wusky]
				say "     Descending the stairs, Sidney catches sight of the wolves and quickly comes over to greet them. 'Hi. I'm Sidney. Are you going to live here, or are you just visiting?' she asks, wagging her tail as she sniffs at their outstretched hands. 'Well aren't you beautiful. My name is Blanche, and this is my son, Sturm,' the wolfess replies, patting the wusky between the ears. 'Your fur is almost as thick as ours,' she continues, digging her fingers into the thick fluff, causing Sidney to sigh contentedly. 'I apologize if this is rude to ask, but what is it like being quadrupedal?' Sturm asks the wusky, sitting on the floor so that their faces are at similar levels. 'My fingers don't have the dexterity that they used to, but other than that it's pretty good. I can run so much faster, balance isn't as much of a problem, and I don't have to decide what to wear,' Sidney replies cheerfully, all of you laughing along with her. Blanche converses with the wusky for a bit, complimenting her coat some more, scritching beneath her chin, and discussing canine things while Sturm joins in with an opinion every now and then. Eventually it is decided that they can continue talking at another time so that the wolves can settle in, Sidney returning back upstairs, wagging her tail still.";
				TraitGain "Sidney - Fluffy Wusky" for Blanche;
				TraitGain "Sidney - Cheerful Wusky" for Sturm;
				TraitGain "Blanche - Fluffy Wolfess" for Sidney;
				TraitGain "Sturm - Curious Wolf" for Sidney;
			WaitBreakReactions;
		[if Skarnoth is booked or Skarnoth is bunkered:
			say "     ";
			TraitGain "Skarnoth - Rape Threat" for Blanche;
			TraitGain "Skarnoth - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Skarnoth;
			TraitGain "Sturm - Ready Slut" for Skarnoth;
			WaitBreakReactions;]
		[if Snips is booked or Snips is bunkered:
			say "     ";
			TraitGain "Snips - Rape Threat" for Blanche;
			TraitGain "Snips - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Snips;
			TraitGain "Sturm - Ready Slut" for Snips;
			WaitBreakReactions;]
		if Snow is booked or Snow is bunkered:
			say "     Rubbing her hands on her front to ensure that they're sufficiently clean, Snow walks over to you and sticks a hand out in greeting. 'Hey there. I'm Snow. Sort of the handy-herm of the place. And who might you be?' she introduces herself with a friendly smile. 'Blanche, and this is Sturm, my eldest son,' the wolfess replies, shaking the squirrel's hand before pulling her for a hug. 'Oh my. They certainly grow them big where you're from. And friendly. Do you make a habit of hugging people that you've only just met?' Snow laughs, awkwardly returning the embrace and shifting uncomfortably as he shaft begins to stir. 'Pretty much. I find a handshake rather impersonal. Acceptable for business, but not for gratitude or affection,' comes the reply as Blanche releases her and steps back. By comparison, Sturm settles for a firm handshake, the wolf and the squirrel inspecting each other. 'Strong silent type?' Snow asks. 'Not at all. Just imagining what you would look like being chased up a tree,' Sturm replies. 'First of all, rude. Second, I'd look as majestic as always. Thirdly, I think that I'd just pound some sense into you instead.' The wolf chuckles at the herm squirrel's response, looking at her with a new respect. 'I'll refrain from testing that. At least for now,' he says, making Snow smirk. 'Anyway. I'll see you two later. Let mister loud mouth here settle in. Nice meeting you.' With that, the [']handy-herm['], as she seems to have styled herself, wanders off back to her makeshift workshop. 'I wonder about you sometimes...' Blanche mumbles, her son merely snorting in reply.";
			TraitGain "Snow - Handy-Herm Squirrel" for Blanche;
			TraitGain "Snow - Sassy Squirrel" for Sturm;
			TraitGain "Blanche - Hugger" for Snow;
			TraitGain "Sturm - Cheeky Wolf" for Snow;
			WaitBreakReactions;
		if Solstice is booked or Solstice is bunkered:
			say "     Solstice saunters over to the wolves, her glossy black feathers a stark contrast to their fluffy white fur. 'I see that you've rescued some more unfortunates from within the city,' she says to you before turning to them. 'Hello there. I'm Solstice. What might your names be?' she asks. 'I'm Blanche,' the wolfess replies. 'And I'm Sturm, her son,' he adds, looking at the vulpogryph with some curiosity. 'Wonderful. Well, I'm an archaeologist. So if either of you ever want to help me discover long lost artifacts or items that would be better appreciated by other parties, I'm your fox-crow monster. Which in itself is a lesson in being careful what you touch. I wonder if I'll get the chance to break this curse...' Solstice says, surprisingly cheerfully for how serious the message is. 'I'm used to working alone, but when you've got the body of a goddess, Blanche, and your son looks a prime specimen of masculinity, there's no knowing what we could accomplish together!' You wouldn't be surprised if the treasure hunter started frothing at the mouth any minute, but she seems to maintain a handle on herself. 'I'm not sure how my figure would help, but we'll consider your proposal properly when we have settled in,' Blanche hesitantly replies, smiling awkwardly while Sturm instead looks excited. 'Fair enough. Come speak to me if you're interested,' Solstice chuckles before wandering off muttering about finding some book.";
			TraitGain "Solstice - Tomb Robber?" for Blanche;
			TraitGain "Solstice - Treasure Hunter" for Sturm;
			TraitGain "Blanche - Body of a Goddess" for Solstice;
			TraitGain "Sturm - Dashing Wolf" for Solstice;
			WaitBreakReactions;
		[if Sonny is booked or Sonny is bunkered:
			say "     ";
			TraitGain "Sonny - Rape Threat" for Blanche;
			TraitGain "Sonny - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Sonny;
			TraitGain "Sturm - Ready Slut" for Sonny;
			WaitBreakReactions;]
		if Spike is booked or Spike is bunkered: [somewhat uncomfortable with hugging, possibly aroused nonetheless - Wahn]
			say "     Walking up to the two wolves, Spike regards them with curiosity, his lean frame all the more apparent beside Sturm's toned form, especially with how fluffy he is. 'Hey there. Are you moving in here?' the young asks, his tail swaying behind him. 'Aren't you the polite young man,' Blanche coos and, before anyone can say anything, captures the dobie in a warm hug and inadvertently pressing his face between her breasts. You see his eyes widen as he begins to put up a struggle, the wolfess quickly releasing him with a look of concern. 'Are you alright? I didn't hurt you did I?' she worriedly asks. 'I'm a grown man. I don't need to be hugged,' Spike replies almost petulantly, though you notice how he shifts his posture to hide his stirring sheath from the wolves. Perhaps in an attempt to console him, Sturm steps forth with his hand outstretched, the doberman gladly clasping it in return. 'To answer your question, yes, we are moving in. Our previous home wasn't safe any more. I'm Sturm and this is my mother, Blanche. Don't worry about her hugging you, she does it to anyone that she likes. It happens to me multiple times a day,' he says with a grin. 'My mom hardly ever hugs me...' you hear Spike mutter before he begins to eagerly ask Sturm questions about his life in the city, the larger wolf answering cheerfully while Blanche looks on with an adoring smile. Eventually, Spike remembers something that he was meant to be doing and rushes off, no doubt thinking of more things to ask Sturm when they next meet.";
			TraitGain "Spike - Youthful Doberman" for Blanche;
			TraitGain "Spike - Buddy" for Sturm;
			TraitGain "Blanche - Over-Affectionate MILF" for Spike;
			TraitGain "Sturm - Buddy" for Spike;
			WaitBreakReactions;
		[if Stella is booked or Stella is bunkered:
			say "     ";
			TraitGain "Stella - Rape Threat" for Blanche;
			TraitGain "Stella - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Stella;
			TraitGain "Sturm - Ready Slut" for Stella;
			WaitBreakReactions;]
		if Sven is booked or Sven is bunkered:
			if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
				say "     Coming up to Blanche and Sturm, Sven halts in front of them his eyes wide. 'Woah. Your fur is so white and fluffy. I'm a little bit jealous, but you probably have problems with the heat,' he compliments them before remembering his manners and sticks a hand out. 'I'm Sven, nice to meet you.' Instead of taking the outstretched hand, Blanche seizes the startled snow leopard in her arms and enthusiastically hugs him against her. 'So soft and polite,' she murmurs before letting him go, the feline's face a little flushed as he gets an eyeful of the MILF's breasts. 'I'm Blanche and this is my darling son, Sturm.' Sturm gives Sven a friendly smile and shakes hands with him. 'I hope that we can be friends. You seem nice and you've got that cool accent too,' the wolf says, the snow leopard eagerly nodding his head. 'Me too. I was an exchange student from Norway, before all of this,' Sven replies, gesturing vaguely at the city in general. 'You poor thing. To be trapped in a city so far from home. If you need some love and affection, don't be afraid to talk to me or my son. I have enough motherly love to share,' Blanche reassures him, the snow leopard's eyes straying to once again look over her body. 'Thank you. I'll, er... bear that in mind,' he stutters. Deciding that it is time for him to depart, Sven gives Sturm a nod and Blanche another quick hug before he strolls away again.";
				TraitGain "Sven - Adorable Snowkitty" for Blanche;
				TraitGain "Sven - Snowkitty Friend" for Sturm;
				TraitGain "Blanche - Sexy Mother-Figure" for Sven;
				TraitGain "Sturm - Wolf Friend" for Sven;
			else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
				say "     Stepping out from behind a tall bookshelf, Sven saunters over towards Blanche, Sturm, and yourself, swinging his hips a little as he does so. 'Hallo,' he says in a somewhat flirtatious tone as he reaches them, letting his eyes wander unashamedly over the wolfess['] round breasts and her son's plump sheath. 'Aren't you adorable. I'm Blanche and this is my darling son, Sturm,' the MILF greets him, immediately giving the snow leopard a hug and inadvertently smooshing his face between her breasts. You're sure that Sven is in heaven at the moment, but as soon as he is released he nonetheless looks to you to ensure that he hasn't displeased you. You wave a hand dismissively of the situation, accustomed enough to Blanche's affection to know that your kitty-slut wouldn't have been to blame anyway. Relieved and a little excited, Sven then turns to Sturm, slowly licking his lips as he looks the wolf up and down. Sturm settles for a handshake, possibly to the snow leopard's disappointment, but you notice that his eyes too are scrutinising the feline's body, and not without effect on his body judging from the glimpse of crimson from his groin. Not wanting the situation to heat up any more, you clear your throat and tell Sven to let the two wolves settle in for now, your subby sex-pet meekly walking away.";
				TraitGain "Sven - Cute Snowkitty" for Blanche;
				TraitGain "Sven - Cute Kittyslut" for Sturm;
				TraitGain "Blanche - Sexy Wolfess" for Sven;
				TraitGain "Sturm - Sexy Wolf" for Sven;
			else: [Sex Pet Path - Not Collared Yet]
				say "     Shyly stepping out from behind a tall bookshelf, Sven keeps his extra long and thick tail raised before himself, partly hiding behind it. 'Hello there,' he says quietly, looking admiringly at the pristine white fur of the wolves. Blanche smiles at the snow leopard and approaches him before giving him a warm hug. 'Hello to you too. Don't worry we won't hurt you. I'm Blanche and this is my darling son, Sturm,' she reassures him, gently stroking his head. You really hope that Sven is okay, especially with how his face is pressed between the MILF's breasts, but he doesn't seem to be struggling and she is quite obviously being affectionate. When she eventually releases him, you can't be sure but you think you see a tear in the corner of his eye before his thick fur absorbs it. To your surprise, Sven blushes and goes in for another quick hug before turning to Sturm. Hey there. I hope you don't mind me asking, but where are you from? I love your accent,' the wolf asks, shaking the snow leopard's hand. 'I'm from Norway. I was an exchange student at the college,' Sven replies, the two males appreciatively gazing at each other's bodies. After the three of them chat a little more, the kitty realizes that they still need to settle in. With another short hug from Blanche and a wave to Sturm, he wanders away again.";
				TraitGain "Sven - Shy Snowkitty" for Blanche;
				TraitGain "Sven - Cute Snowkitty" for Sturm;
				TraitGain "Blanche - Caring Mother-Figure" for Sven;
				TraitGain "Sturm - Handsome Wolf" for Sven;
			WaitBreakReactions;
		if Tehuantl is booked or Tehuantl is bunkered:
			if Tehuantl is male:
				say "     Tehuantl steps into view from between the bookshelves, bearing his shield and Aztec sword as he walks up to the wolves. The jaguar warrior comes to stand before him, sizing up the pair in front of him before giving them a smile that bares the feline's fangs. 'A mother and son. A nurturer who has proven herself fertile and a warrior still reaching his potential. You can call me Tehuantl. If the [master] wishes it so, this warslave can further the male's knowledge of combat.' Having said what he wanted, the anthro feline turns and strides away before either of the wolves can introduce themselves. Turning to you with her arms folded, Blanche pointedly asks, 'What did he mean by calling himself your warslave? He looked like someone off an Aztec engraving, but that doesn't excuse you if you're really enslaving people.' You quickly explain where and how you met Tehuantl, and that he genuinely believes to be an authentic Aztec warrior, the wolfess['] features softening as you continue. 'This city really has all sorts, doesn't it...' She says resignedly.";
				TraitGain "Tehuantl - Aztec Warslave" for Blanche;
				TraitGain "Tehuantl - Jaguar Warrior" for Sturm;
				TraitGain "Blanche - Fertile Nurturer" for Tehuantl;
				TraitGain "Sturm - Developing Warrior" for Tehuantl;
			else: [Female]
				say "     Tehuantl steps into view from between the bookshelves, walking up to the wolves with her hips swaying side to side. She smiles at Sturm, holding her upper body in a pose that exposes her breasts quite nicely. 'Hello young warrior, you can call me Tehuantl,' the feline says in an enticing tone before Blanche clears her throat, a mildly amused expression on her face. 'We've only just arrived and you're already attempting to seduce my son. Quite effectively too from the look of it,' she says. Sturm stands there unashamedly staring at the svelte curves of the jaguar-woman before him, only regaining some control when his mother snaps her fingers in front of his nose a few times. 'Why couldn't there have been women like her around the den rather than stupid drakes and orcs,' you hear Sturm mutter under his breath, though he does have the decency to blush when the women both raise an eyebrow at him. 'I'm sure you'll see me around, and I look forward to getting to know you more,' Tehuantl purrs, caressing a finger over the bottom of the wolf's jaw before strutting away again, ensuring that she swings her hips as she goes. Blanche merely rolls her eyes, but there is the possibility that she is feeling a little insecure.";
				TraitGain "Tehuantl - Svelte Show-off" for Blanche;
				TraitGain "Tehuantl - Sexy Kitty" for Sturm;
				TraitGain "Blanche - Mother Wolf" for Tehuantl;
				TraitGain "Sturm - Enamoured Stud" for Tehuantl;
			WaitBreakReactions;
		if Urik is booked or Urik is bunkered:
			say "     Strolling up casually, Urik looms over the wolves despite being only a little taller than Sturm. He merely gives Blanche a cursory glance, but demonstrates more interest in her son, especially at the defiant glare that the wolf is giving him. 'Hello. I'm Blanche,' the wolfess cheerfully greets him, giving him a wave. 'Urik,' the orc simply replies, giving her a nod before returning his attention to the other wolf. 'And what's your name kid,' he continues, folding his arms across his chest. 'Sturm. A pleasure to meet you, I'm sure,' comes the response, though from the tone, you're sure that he is merely being polite. 'Well, Sturm, you look a little on the skinny side, so if you want to look like a proper man, you should come and train with me when you have the time. Though I may expect something in return. I bet you're good at getting in doggystyle position. How often have you had to raise your tail for men who were stronger than you?' Urik goads him. Blanche flinches at the orc's crude words towards her son, but Sturm merely smirks. 'Not once. So far I've known my limits. But sure, I'll see what you can teach me as long as what you expect in return isn't my ass.' The two men stare at each other before Urik slaps Sturm on the shoulder. 'We'll see, kid. At least you're not a complete coward,' the orc laughs. Giving you a nod, Urik swaggers back upstairs, Blanche looking worriedly between him and her son."; [greets Blanche neutrally/slightly cordial (no interest at all in women), might make a crude comment to Sturm, asking him how good he's at raising his tail and getting into doggy position ]
			TraitGain "Urik - Potential Corruptive Influence" for Blanche;
			TraitGain "Urik - Muscular Orc" for Sturm;
			TraitGain "Blanche - Disinterested" for Urik;
			TraitGain "Sturm - In Need of Bulking Up" for Urik;
			WaitBreakReactions;
		[if Vanessa is booked or Vanessa is bunkered:
			say "     ";
			TraitGain "Vanessa - Rape Threat" for Blanche;
			TraitGain "Vanessa - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Vanessa;
			TraitGain "Sturm - Ready Slut" for Vanessa;
			WaitBreakReactions;]
		[if Velos is booked or Velos is bunkered:
			say "     ";
			TraitGain "Velos - Rape Threat" for Blanche;
			TraitGain "Velos - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Velos;
			TraitGain "Sturm - Ready Slut" for Velos;
			WaitBreakReactions;]
		[if Voria is booked or Voria is bunkered:
			say "     ";
			TraitGain "Voria - Rape Threat" for Blanche;
			TraitGain "Voria - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Voria;
			TraitGain "Sturm - Ready Slut" for Voria;
			WaitBreakReactions;]
		[if Xaedihr is booked or Xaedihr is bunkered:
			say "     ";
			TraitGain "Xaedihr - Rape Threat" for Blanche;
			TraitGain "Xaedihr - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Xaedihr;
			TraitGain "Sturm - Ready Slut" for Xaedihr;
			WaitBreakReactions;]
		if Xerxes is booked or Xerxes is bunkered:
			say "     Xerxes runs over, excited about seeing new people and desperate to properly identify their scent. Almost pressing his nose into the wolves['] thick white fluff, the humanified dog inhales their scent while they hesitantly pat his head. 'Is he alright? This is canine behavior...' Blanche haltingly asks. You explain that the nanites seem to have done the opposite to him than they have to everyone else, turning a dog into a human. Though it boosted his intelligence beyond what it used to be, the canine instincts are still strong. Accepting your story, she becomes more comfortable at treating Xerxes like a dog, rubbing the back of his neck and under his chin while he sniffs at Sturm's crotch[if Lust of Xerxes > 3]. 'New friend?' he suddenly asks, followed by a happy bark as Blanche says, 'Definitely, you seem to be a good boy,' Sturm agreeing a moment later[end if]. As they stop patting him, gives them both a lick on the hand and shuffles away cheerfully.";
			TraitGain "Xerxes - Friendly Human Dog" for Blanche;
			TraitGain "Xerxes - Friendly Human Dog" for Sturm;
			TraitGain "Blanche - New Friend" for Xerxes;
			TraitGain "Sturm - New Friend" for Xerxes;
			WaitBreakReactions;
		[if Yolanda is booked or Yolanda is bunkered:
			say "     ";
			TraitGain "Yolanda - Rape Threat" for Blanche;
			TraitGain "Yolanda - Ready Slut" for Sturm;
			TraitGain "Blanche - Rape Threat" for Yolanda;
			TraitGain "Sturm - Ready Slut" for Yolanda;
			WaitBreakReactions;]
		if Zoe is booked or Zoe is bunkered:
			say "     Zoe cautiously approaches the two wolves but relaxes when she sees Blanche smiling at her, wolfess['] inherent friendliness plain to see. 'Heya. I'm Zoe,' the bunny says, extending a hand. Taking hold of it, Blanche introduces herself too. 'A pleasure to meet you Zoe. I'm Blanche.' As she lets go, everyone notices a green stain on her wrist, and the bunny gasps, 'I'm so sorry. I didn't notice. Oh, your fur...' Her apology is halted by the wolfess laughing and evaluating the number of paint stains that seem to be on the rabbit. 'Don't worry about it sweetie. It'll wash out. I take it that you're an artist?' Hearing someone ask about her passion, Zoe launches into a very animated explanation of her passion for street art, the wolves doing their best to understand what is being said until, eventually, the rabbit has to take a breath. 'And I'm Sturm,' the wolf interjects, causing the bunny to realize that she got distracted from meeting him properly and making her blush. 'You two look very similar,' she states, making the wolves laugh. 'We should do. He's my son,' Blanche giggles, looking with pride at him. 'I'd be interested in hearing about your other interests soon, but for now we should probably finish being shown around. See you later?' Sturm says, Zoe nodding acceptance before departing with a wave. You see Blanche fruitlessly trying to wipe the green paint of her wrist, only managing to spread it to her other hand. With a shrug, she gives up.";
			TraitGain "Zoe - Street Artist" for Blanche;
			TraitGain "Zoe - Cute Bunny" for Sturm;
			TraitGain "Blanche - Friendly Wolfess" for Zoe;
			TraitGain "Sturm - Friendly Wolf" for Zoe;
			WaitBreakReactions;
		now IntroReactionCounter is 0; [reset]
		say "     Introductions having been made, it doesn't take you too long to finish showing Blanche and Sturm around the library from bunker to attic and all the facilities in between. Nonetheless, they seem exhausted by the end so after you bring them back to the computer lab where the rest of their family has made a cozy looking corner for them all to sleep in at night. You would imagine that they have much to talk about. You'll come back later.";
		Move player to Grey Abbey Library;
		move Blanche to Computer Lab;
		move Sturm to Computer Lab;
		move Bianca to Computer Lab;
		now Office Den is unknown;
		now Charisma of Blanche is 1;
		now hp of Sturm is 1;
		now hp of Bianca is 1;
		now Scavenging the Park is resolved;


Section 2 - Office Den

Table of GameRoomIDs (continued)
Object	Name
Office Den	"Office Den"

Office Den is a room. It is fasttravel. It is private. It is sleepsafe.
Description of Office Den is "[officedendesc]".

the scent of Office Den is "[blancheupdate]Unlike the air outside, it's mostly free of the smell of soot and ash. There is a strong, lupine smell in the air from Blanche[if HP of Blanche >= 7] and the others[end if]."

to say officedendesc:
	say "[blancheupdate]";
	if HP of Blanche < 7:
		say "     While the main floor is charred and ravaged, a service door leads to an undamaged basement office area. While half of the basement holds the maintenance area for the small office building, the other half was converted into office space. It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche to set up her hidden living area. There's some motivational posters and rather bland pieces of business art which the white wolf hasn't bothered to remove, or has left in an attempt to keep her spirits up. She's set up a small mat she's found as her bed and stored her few supplies on a shelf. While somewhat modest, at least it's secure and well camouflaged.";
	else if HP of Blanche is 7:
		say "[blanche_pups_intro]";
	else if HP of Blanche < 11:
		say "     While half of the basement holds the maintenance area for the small office building, the other half was converted into office space. It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche and the other wolves to set up their hidden living area. There's some motivational posters and rather bland pieces of business art which have remained on the walls. In addition, some mattresses and sleeping mats have been laid out on the floor, the largest of which is for Blanche. Some supplies have been laid out on a nearby shelf, there being more than before.";
		say "     Along with the wolfess, there's another three wolves milling about and then the fourth large one standing guard at the upstairs door. While they seem respectful to you and don't give you any trouble, it is their mother that they clearly follow.";
	else:
		say "     While half of the basement holds the maintenance area for the small office building, the other half was converted into office space. It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche and the other wolves to set up their hidden living area. There's some motivational posters and rather bland pieces of business art which have remained on the walls, though some new items seem to have appeared as well. In addition, some mattresses and sleeping mats have been laid out on the floor, including an actual small bed set up for Blanche. The nearby shelf is well-stocked with supplies gathered by the industrious wolves[if blanche is pregnant] for their alpha mother[end if].";
		say "     The ground floor is not exempt from these changes either, the wolves having done some work to clean it up inside and make it more livable. From the exterior, it seems in as bad shape as before, but concealed fortifications and barriers have been added inside as well as more hidden guards. With their growing numbers, some of the wolves now reside upstairs.";
		say "     In addition to Blanche and Sturm (the eldest male and the primary on guard), there seems to be at least ten or so other wolves around here at any given time. You can't be certain of their exact numbers at this point, since you do notice some occasionally coming and going from the place. Some are certainly older and others are from the most recent litters.";


Section 2 - Blanche the Wolf

Table of GameCharacterIDs (continued)
object	name
Blanche	"Blanche"

Blanche is a woman. Blanche is in Office Den.
ScaleValue of Blanche is 3. [human sized]
Body Weight of Blanche is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Blanche is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Blanche is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Blanche is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Blanche is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Blanche is 10. [length in inches]
Breast Size of Blanche is 4. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Blanche is 2. [count of nipples]
Asshole Depth of Blanche is 10. [inches deep for anal fucking]
Asshole Tightness of Blanche is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Blanche is 0. [number of cocks]
Cock Girth of Blanche is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Blanche is 0. [0 Inches]
Ball Count of Blanche is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Blanche is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Blanche is 1. [number of cunts]
Cunt Depth of Blanche is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Blanche is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Blanche is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Blanche is false.
PlayerRomanced of Blanche is false.
PlayerFriended of Blanche is false.
PlayerControlled of Blanche is false.
PlayerFucked of Blanche is false.
OralVirgin of Blanche is false.
Virgin of Blanche is false.
AnalVirgin of Blanche is false.
PenileVirgin of Blanche is true.
SexuallyExperienced of Blanche is true.
TwistedCapacity of Blanche is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Blanche is true. [steriles can't knock people up]
MainInfection of Blanche is "".
Description of Blanche is "[blanchedesc]".
Conversation of Blanche is { "Thanks." }.
the fuckscene of Blanche is "[sexwithBlanche]".
the scent of Blanche is "[blancheupdate]She smells of wolf and half-hidden arousal."
The icon of blanche is Figure of Blanche1_icon.

Libido of Blanche is usually 255.
lust of Blanche is usually 255.
blanchetalk1 is a truth state that varies. blanchetalk1 is usually false.
blanchetalk2 is a truth state that varies. blanchetalk2 is usually false.
blanchetalk3 is a truth state that varies. blanchetalk3 is usually false.



to say blanchedesc:
	say "[blancheupdate]";
	if Charisma of Blanche is 1: [At the library]
		if HP of Blanche is 8 or HP of Blanche is 11 or HP of Blanche is 14:
			say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While she has gotten a little fuller-figured after having had [if HP of Blanche is 8]her litter[else if HP of Blanche is 11]a couple of litters[else]several litters[end if], she's just as sexy and has become quite the MILF. Since moving to the library, she also seems much happier and less frightened, especially with her loyal pack to keep her company and protect her. The white-furred wolf usually joins in as Sturm teaches the younger pups how to hunt, gather supplies, and defend themselves.";
		else if HP of Blanche is 9 or HP of Blanche is 10:
			say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While she has gotten a little fuller-figured after having had her litter, [if HP of Blanche is 9]you can still tell she's got another on the way thanks to the swell in her tummy[else if HP of Blanche is 10]her belly is once again round and heavy with a rapidly-advancing pregnancy[end if]. Since moving to the library, she also seems much happier and less frightened, especially with her loyal pack to keep her company and protect her. The white-furred wolf usually joins in as Sturm trains the others how to hunt, gather supplies, and defend themselves.";
		else:
			say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While gained a little weight after having had a few litters, she's still quite hot and has become quite the MILF of a wolf. And with another litter [if HP of Blanche is 13]well [end if]on its way, as can be seen from the [if HP of Blanche is 13]large [end if]swell to her tummy, she couldn't be happier to add to the loyal pack keeping her company and protecting her. These days, the white-furred wolf usually joins in as Sturm trains the others how to hunt, gather supplies, and defend themselves.";
	else if HP of Blanche < 3:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She has a [if turns / 8 is even]pastel blue blouse[else]pink blouse[end if] draped over her shoulders which she hasn't bothered to button up.";
	else if HP of Blanche < 5:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, letting her sexy body be on display for you, a tantalizing sight that makes you look forward to playing with her some more.";
	else if HP of Blanche is 5:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. Her belly has a little added roundness to it, showing that you've knocked up the wolfess. She seems quite pleased about this turn of events, gently caressing her tummy from time to time. She doesn't bother to wear anything now, letting her sexy body be on display for you.";
	else if HP of Blanche is 6:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. Her belly has added considerable roundness to it, clear signs of an advancing pregnancy showing you've knocked up the wolfess. She seems quite pleased about this turn of events, gently caressing her tummy from time to time. She doesn't bother to wear anything now, letting her sexy body be on display for you. Rather than struggle to move around much in her gravid state, she typically remains resting on her sleeping mat.";
	else if HP of Blanche is 7:
		say "     Having stepped out for a while to do a quick patrol around the area at Blanche's behest, you return to find considerably more activity than when you'd left her.";
		say "[blanche_pups_intro]";
	else if HP of Blanche is 8 or HP of Blanche is 11 or HP of Blanche is 14:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While she has gotten a little fuller-figured after having had [if HP of Blanche is 7 or HP of Blanche is 8]her litter[else if HP of Blanche is 11]a couple of litters[else]several litters[end if], she's just as sexy and has become quite the MILF. She also seems much happier and less frightened now that she has her loyal pack to keep her company and protect her. The white-furred wolf usually lounges around while [if HP of Blanche is 7 or HP of Blanche is 8]directing the others as to[else]teaching the younger pups about[end if] hunting and supply gathering.";
	else if HP of Blanche is 9 or HP of Blanche is 10:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While she has gotten a little fuller-figured after having had her litter, [if HP of Blanche is 9]you can still tell she's got another on the way thanks to the swell in her tummy[else if HP of Blanche is 10]her belly is once again round and heavy with a rapidly-advancing pregnancy[end if]. She seems quite happy these days, especially with another litter of pups on the way and with her loyal pack to keep her company and to protect her. The white-furred wolf usually lounges on her mattress while directing the others as to hunting and supply gathering.";
	else:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While gained a little weight after having had a few litters, she's still quite hot and has become quite the MILF of a wolf. And with another litter [if HP of Blanche is 13]well [end if]on its way, as can be seen from the [if HP of Blanche is 13]large [end if]swell to her tummy, she couldn't be happier to add to the loyal pack keeping her company and protecting her. These days, the white-furred wolf usually lounges on her bed while teaching the younger pups about hunting and supply gathering.";

[Character Notes - Blanche:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Pregnancy
- MILF
-
]

Instead of conversing the Blanche:
	say "[blancheupdate]";
	if HP of Blanche is 0:
		say "ERROR-Blanche-0T: Attempting to correct.";
		now HP of Blanche is 1;
		now Wolfrape is resolved;
		AddNavPoint Office Den;
	else if Charisma of Blanche is 1: [At the library]
		say "[BlancheTalkMenu]";
	else if HP of Blanche is 1:
		say "     'I was here working late with a few others on a big project late into the night. At first, we hadn't noticed something was going on, but suddenly the radio station's broadcast was cut off with a strange announcement about some kind of emergency and how everyone should stay hidden in their homes until rescue arrived. We were really confused and went outside to see what was going on.'";
		say "     Blanche pauses for a moment before continuing. 'And that's when it all went crazy. The ground started to shake and a few moments later, there was a blast of fire and noise as a huge cloud blocked out the night sky. Buildings started to crumble around us. Luckily, we'd stepped far enough from the entrance to not be caught under it when the awning collapsed. Fire started to fall from the sky, wrecking more buildings. And that's when we started to see the creatures running around in fear. All of it was just too much and we freaked out. I tried to get the others to head back inside, but they wanted to get home and find their families. Some of them promised to come back, but they never did. I knew it wasn't safe out there. I've been hiding out here ever since.'";
		say "     She moves a little closer to you, pressing herself to your side. 'I'm really glad you found me when you did. It's been getting more difficult dealing with these... well, it's been getting more difficult around here. It's just much better having a friendly face around. Someone to keep me company.' She blushes a little at her ears as she says this, but her body rubs against you all the more. You can smell the scent of her arousal stronger in the air.";
		now HP of Blanche is 2;
	else if HP of Blanche is 2:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things. After I came back from one of those trips, I started to feel funny. It started slowly at first, but soon I was a wolf. I was a little scared before, but I'm not really sure why. I think my new body's much prettier.'[or]She slides up beside you. 'Will you stay for a while and keep me company?' she asks softly, but with a longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 3:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things. After I came back from one of those trips, I started to feel funny. It started slowly at first, but soon I was a wolf. I was a little scared before, but I'm not really sure why. I think my new body's much prettier.'[or]She slides up beside you. 'It was really nice to snuggle up to you, hon. Mmm... I do still need a nice cock to stuff me, but it certainly did help,' she says with a moan of longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 4:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things. After I came back from one of those trips, I started to feel funny. It started slowly at first, but soon I was a wolf. I was a little scared before, but I'm not really sure why. I think my new body's much prettier.'[or]She slides up beside you. 'It felt so nice to finally have someone fuck me properly. You should breed me again soon,' she moans with longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 5 or HP of Blanche is 6:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'll glad for the company once my pups are here,' she says, caressing her [if Blanche is gravid]rounded [end if]tummy.[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I'm glad I gathered those supplies earlier. I'd rather not have to go outside with pups on the way.'[or]She runs a paw sensually along her body. 'Look at what you've done, you sexy stud. Knocked up the poor wolf girl,' she teases.[or]She runs a paw over her [if Blanche is gravid]heavily [end if]rounded tummy. 'It's a little strange knowing a new person growing in here. It feels kind of nice though,' she adds with a contented sigh.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 7:
		say "     Having stepped out for a while to do a quick patrol around the area at Blanche's behest, you return to find considerably more activity than when you'd left her.";
		say "[blanche_pups_intro]";
	else if HP of Blanche is 8:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad I've got you and my lovely pups to keep me company.'[or]'With my cubs here, there's a lot more to do. Thankfully, they're strong and willing to help their mommy out. This place should be much more livable in no time.'[or]'Since we've got extra mouths to feed, my pups are working hard to hunt and scavenge for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]She slides up beside you. 'Being pregnant was such a thrill. Having pups growing inside me just felt right. You should breed me again soon,' she moans with longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[or]'Being a mother makes me feel so fulfilled.'[or]'You gave me such brave, strong pups. I hope you'll help me make a few more,' she says coyly.[at random]";
	else if HP of Blanche >= 8 and blanchetalk1 is false and a random chance of 1 in 3 succeeds:
		say "     'I feel so much safer with my pups here to protect me,' Blanche says, reaching over to give a nearby son a scritch on the ears. He pants happily, telling his mother he's very happy to help her out.";
		now blanchetalk1 is true;
	else if HP of Blanche >= 9 and blanchetalk2 is false and a random chance of 1 in 3 succeeds:
		say "     One of the other wolves comes down the stairs with additional supplies in a cardboard box. After dutifully storing them on the shelf, he's given a loving hug from his [if HP of Blanche > 10]pack [end if]mother.";
		now blanchetalk2 is true;
	else if HP of Blanche is 9 or HP of Blanche is 10:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad I've got you and my lovely pups to keep me company.'[or]'With my cubs here, there's a lot more to do - especially since I've got more pups on the way,' she adds, caressing her [if Blanche is gravid]rounded [end if]belly. 'Thankfully, they're strong and willing to help their mommy out. This place should be much more livable in no time.'[or]'Since there will be extra mouths to feed, my pups are working hard to hunt and scavenge for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]'Being pregnant is such a thrill. Just knowing those pups are growing inside me just feels right.'[or]She runs a paw sensually along her body. 'Look at what you've done, you sexy stud. Knocked up the poor wolf girl again,' she teases.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[or]'Being a mother makes me feel so fulfilled.'[or]'I'm so proud of these brave, strong pups you gave me.'[at random]";
	else if HP of Blanche is 11:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again.'[or]'Things are looking much better here now that I've got all these willing pups to help their mommy by fixing it up. This place is getting much more livable for all of us now.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]She slides up beside you. 'It felt so good to be pregnant again. Just knowing I've got more lovely cubs growing in me felt good. You should breed me again soon so I can enjoy that feeling again,' she moans with longing in her voice.[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'You gave me such brave, strong pups. I hope you'll help me make a lots more,' she says coyly.[at random]";
	else if HP of Blanche >= 12 and blanchetalk3 is false and blanchetalk1 is true and blanchetalk2 is true and a random chance of 1 in 3 succeeds:
		say "     You comment to Blanche about the number of different wolves you've been seeing around the place lately and how you've been having trouble keeping track of them all. 'Oh, they're not [italic type]all[roman type] mine. Just most of them. My pups have come across a few other survivors while out on patrol or on scavenging runs. Since it's much safer here with us, they've come and joined us as members of the pack. We lose a few pups when they go out, so it all balances out.'";
		now blanchetalk3 is true;
	else if HP of Blanche is 12 or HP of Blanche is 13:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again.'[or]'With my cubs here, there's always a lot to do - especially with more pups on the way,' she adds, caressing her [if Blanche is gravid]rounded [end if]belly. 'Thankfully, they're strong and willing to help their mommy by fixing it up. This place is getting much more livable for all of us now.'[or]'Some of the wolves are working on cleaning things upstairs to make sure there's plenty of room for everyone in our growing pack.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]'Being pregnant is such a thrill. Just knowing those pups were growing inside me just feels right.'[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'I'm so proud of these brave, strong pups. Thanks for helping me start this pack-family of mine.'[at random]";
	else:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again.'[or]'This place is getting much more livable thanks to all these hardworking wolves. They're all such good pups.'[or]'Some of the wolves are working on cleaning things upstairs to make sure there's plenty of room for everyone in our growing pack.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]She slides up beside you. 'It felt so good to be pregnant again. Just knowing I've got more lovely cubs growing in me felt good. You should breed me again soon so I can enjoy that feeling again,' she moans with longing in her voice.[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'You gave me such brave, strong pups. I hope you'll help me make a lots more,' she says coyly.[at random]";


to say blanche_pups_intro:
	say "     You are met by a large, intimidating white wolf standing inside the rear foyer to the office building, standing just inside the back door. He stands with his thick arms crossed and gives you a stern glare as he blocks the entrance. Given his similarity to Blanche, you assume that the two must know each other somehow and begin to wonder whether he will let you pass until you watch as his nose twitchs upon inhaling your scent followed by his eyes widening. He hastily steps aside to let you enter, though the look he gives you isn't entirely warm, almost reproachful. Eager to see Blanche again, you rush down the stairs.";
	say "     You find three more new white wolves in the basement office area, though not as big and burly as the one upstairs in the basement office area. Blanche is there as well and seems safe and sound. If anything, she's happier and more relaxed than ever. She busy directing the other wolves around, getting them to reorganize some of the furniture to make more space, when she notices you. 'My darling. You're back! Come meet my lovely pups. You met Sturm already. He's the one on guard duty. Such a big, brave boy. Mamma's favorite.' Blanche is quite cheerful and introduces the three other pups to you as Bianca, Ernest, and Claude. They nod respectfully to you, but they clearly defer to their mother.";
	now HP of Blanche is 8;
	if debugactive is 1:
		say "DEBUG| Post-intro values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [Libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";

to say BlancheTalkMenu:
	say "     What do you wish to talk about with the motherly white wolf?";
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
	now description entry is "Boop Blanche on the nose";
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
					say "[BlancheTalk1]";
				if (nam is "Boop"):
					say "[BlancheTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Blanche looks crestfallen for a moment before [one of]Sturm steps up behind her and traps her in a hug, the two of them enjoying a moment of innocent affection[or]Bianca pads over to her to ask her mother's opinion on some jewellery that she has found, holding various pieces up to her mother's neck and wrists[or]Ernest approaches, eager to get his mother's input on some plan that he has scribbled down on his clipboard[or]Claude creeps up behind her and grabs her and suddenly grabs her by the tail, deftly dodging her attempt to swat him in retribution[at random].";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BlancheTalk1: [Small Talk]
	if HP of Blanche is 8:
		say "     [one of]'I can't thank you enough for letting me move here. I'm glad that I've got my lovely pups to keep me company, but I still miss you when you're away.'[or]'With my cubs here, there's so much for me to do. Thankfully, they're strong and willing to help their mommy out. We might even be able to make this place more like a home than a refugee shelter.'[or]'Since we've got extra mouths to feed, my pups are working hard to hunt and scavenge for our little pack. Don't worry, they'll share with anyone else that needs it here.'[or]'I feel much safer now that I've got my big, strong pups here to help. Not living in a hell-scape is a bonus too.'[or]She slides up beside you. 'Being pregnant was such a thrill. Having pups growing inside me just felt right. You should breed me again soon,' she moans with longing in her voice.[or]'Being a mother makes me feel so fulfilled.'[or]'I hope that you and Sturm are getting along. I know how grouchy he used to be.'[or]'You gave me such brave, strong pups. I hope you'll help me make a few more,' she says coyly.[at random]";
	else if HP of Blanche >= 8 and blanchetalk1 is false and a random chance of 1 in 3 succeeds:
		say "     'I feel so much safer with my pups here to protect me,' Blanche says, reaching over to give a nearby son a scritch on the ears. He pants happily, telling his mother he's very happy to help her out.";
		now blanchetalk1 is true;
	else if HP of Blanche >= 9 and blanchetalk2 is false and a random chance of 1 in 3 succeeds:
		say "     One of the other wolves comes in with additional supplies in a cardboard box. After dutifully storing them on the shelf, he's given a loving hug from his [if HP of Blanche > 10]pack [end if]mother. He seems especially happy when she pulls out some candy bars from behind her back and distributes them amongst her children. With one left, she hands it to you, her tail softly wagging.";
		ItemGain food by 1;
		now blanchetalk2 is true;
	else if HP of Blanche is 9 or HP of Blanche is 10:
		say "     [one of]'I can't thank you enough for letting me move here. I'm glad that I've got my lovely pups to keep me company, but I still miss you when you're away.'[or]'With my cubs here, there's a lot more to do - especially since I've got more pups on the way,' she adds, caressing her [if Blanche is gravid]rounded [end if]belly. 'Thankfully, they're strong and willing to help their mommy out. We might even be able to make this place more like a home than a refugee shelter.'[or]'Since there will be extra mouths to feed, my pups are working hard to hunt and scavenge for our little pack. Don't worry, they'll share with anyone else that needs it here.'[or]'I feel much safer now that I've got my big, strong pups here to help. Not living in a hell-scape is a bonus too.'[or]'Being pregnant is such a thrill. Just knowing those pups are growing inside me just feels right.'[or]She runs a paw sensually along her body. 'Look at what you've done, you sexy stud. Knocked up your poor wolf again,' she teases.[or]'Being a mother makes me feel so fulfilled.'[or]'I hope that you and Sturm are getting along. I know how grouchy he used to be.'[or]'I'm so proud of these brave, strong pups you gave me.'[at random]";
	else if HP of Blanche is 11:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again, though you being around too definitely still improves our lives.'[or]'Things are looking much better here now that I've got all these willing pups to help their mommy by fixing it up. It already feels less like a refugee shelter and more like a home.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack. Don't worry, they'll share with anyone else that needs it here.'[or]'I feel much safer now that I've got my big, strong pups here to help. Not living in a hell-scape is a bonus too.'[or]She slides up beside you. 'It felt so good to be pregnant again. Just knowing I've got more lovely cubs growing in me felt good. You should breed me again soon so I can enjoy that feeling again,' she moans with longing in her voice.[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'I hope that you and Sturm are getting along. I know how grouchy he used to be.'[or]'You gave me such brave, strong pups. I hope you'll help me make a lots more,' she says coyly.[at random]";
	else if HP of Blanche >= 12 and blanchetalk3 is false and blanchetalk1 is true and blanchetalk2 is true and a random chance of 1 in 3 succeeds:
		say "     You comment to Blanche about the number of different wolves you've been seeing around the place lately and how you've been having trouble keeping track of them all. 'Oh, they're not [italic type]all[roman type] mine. Just most of them. My pups have come across a few other survivors while out on patrol or on scavenging runs. Since it's much safer here with us, they've come and joined us as members of the pack. I hope that you don't mind. I make sure that they can be trusted, and they are so well behaved.'";
		now blanchetalk3 is true;
	else if HP of Blanche is 12 or HP of Blanche is 13:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again, though you being around too definitely still improves our lives.'[or]'With my cubs here, there's always a lot to do - especially with more pups on the way,' she adds, caressing her [if Blanche is gravid]rounded [end if]belly. 'Thankfully, they're strong and willing to help their mommy by fixing it up. It already feels less like a refugee shelter and more like a home.'[or]'Some of the wolves are working on establishing safe-houses out in the city as well as nearby to make sure there's plenty of room for everyone in our growing pack.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack. Don't worry, they'll share with anyone else that needs it here.'[or]'I feel much safer now that I've got my big, strong pups here to help. Not living in a hell-scape is a bonus too.'[or]'Being pregnant is such a thrill. Just knowing those pups were growing inside me just feels right.'[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'I hope that you and Sturm are getting along. Nothing is more important to me than family.'[or]'I'm so proud of these brave, strong pups. Thanks for helping me start this pack-family of mine.'[at random]";
	else:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again, though you being around too definitely still improves our lives.'[or]'This place is getting much more homely thanks to all these hardworking wolves. They're all such good pups.'[or]'Some of the wolves are working on establishing safe-houses out in the city as well as nearby to make sure there's plenty of room for everyone in our growing pack.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack. Don't worry, they'll share with anyone else that needs it here.'[or]'I feel much safer now that I've got my big, strong pups here to help. Not living in a hell-scape is a bonus too.'[or]She slides up beside you. 'It felt so good to be pregnant again. Just knowing I've got more lovely cubs growing in me felt good. You should breed me again soon so I can enjoy that feeling again,' she moans with longing in her voice.[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'I hope that you and Sturm are getting along. Nothing is more important to me than family.'[or]'You gave me such brave, strong pups. I hope you'll help me make a lots more,' she says coyly.[at random]";

to say BlancheTalk2: [Boop]
	say "     Lifting a hand up, you boop Blanche on the nose. 'You couldn't help yourself, could you?' she laughs, brushing her fingers over where you touched before booping you in return. 'I will admit that there is something satisfying about doing that, especially to canines. It must be to do with the softness of the nose...' she muses, taking solace in a moment of peacefulness and bonding.";

to say sexwithBlanche:
	say "[blancheupdate]";
	if HP of Blanche is 0:
		say "ERROR-Blanche-0T: Attempting to correct.";
		now HP of Blanche is 1;
		now Wolfrape is resolved;
		AddNavPoint Office Den;
	else if HP of Blanche is 1:
		say "     That's awfully forward of you. Perhaps you should talk to her a little first.";
	else if lastfuck of Blanche - turns < 6:
		say "     'I need a little more time to recover, hon.'";
	else if Player is neuter:
		say "     You're ill-equipped to play with the white wolf right now.";
	else if HP of Blanche < 7:
		now lastfuck of Blanche is turns;
		if HP of Blanche is 2:
			say "     Blanche blushes a little at your offer, but presses herself to you, kissing you passionately. 'Oh, I was so hoping you'd stay to [if Player is male]breed me[else]keep me company[end if]. My body's been needing it so bad lately. I think that's how that beast found me.' She hugs you tighter, shuddering a little. 'But now you're here to help me with [if Player is male]my heat[else]it[end if].'";
		else if HP of Blanche > 2:
			say "     Blanche smiles and kisses you passionately, clearly eager for more fun. 'I'm so glad you've come back for more. I just need it so bad,' she moans, running her paws over your body. She nuzzles along your neck, licking and nibbling softly.";
		if Player is male:
			if HP of Blanche < 4 or a random chance of 2 in 3 succeeds:
				say "[sexwithBlanche01]"; [vaginal]
				if HP of Blanche < 4, now HP of Blanche is 4;
			else:
				say "[sexwithBlanche03]"; [blow job]
		else:
			if a random chance of 1 in 2 succeeds:
				say "[sexwithBlanche05]"; [F/F 69]
			else:
				say "[sexwithBlanche06]"; [F/F fingering]
			if HP of Blanche < 3, now HP of Blanche is 3;
		if debugactive is 1:
			say "DEBUG| Post-sex values:[line break]";
			say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [Libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";
	else if HP of Blanche is 7:
		say "     Having stepped out for a while to do a quick patrol around the area at Blanche's behest, you return to find considerably more activity than when you'd left her.";
		say "[blanche_pups_intro]";
	else:
		say "     Approaching the sexy white wolf, you run a hand along her side and down to her rear. She smiles at you and wags her tail a little in response. She knows you're looking for some intimate fun and the [if Blanche is pregnant]pregnant[else]lovely[end if] MILF is more than happy to provide.";
		blanchesexmenu;


to blanchesexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male and Blanche is not gravid:
		choose a blank row in table of fucking options;
		now title entry is "Missionary position";
		now sortorder entry is 1;
		now description entry is "screw the sexy wolfess";
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Doggy style position";
		now sortorder entry is 2;
		now description entry is "mount the sexy wolfess";
		if HP of Blanche >= 11:
			choose a blank row in table of fucking options;
			now title entry is "Cowgirl position";
			now sortorder entry is 3;
			now description entry is "mount the sexy wolfess";
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
		now description entry is "receive a blow job";
		choose a blank row in table of fucking options;
		now title entry is "Titty fuck";
		now sortorder entry is 6;
		now description entry is "nestle your cock between those ivory tits and have fun";
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Mutual cunnilingus";
		now sortorder entry is 7;
		now description entry is "enjoy a lesbian 69";
		choose a blank row in table of fucking options;
		now title entry is "Mutual fingering";
		now sortorder entry is 8;
		now description entry is "finger one another to orgasm";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Missionary position":
					say "[sexwithBlanche01]";
				else if nam is "Doggy style position":
					say "[sexwithBlanche02]";
				else if nam is "Blow job":
					say "[sexwithBlanche03]";
				else if nam is "Titty fuck":
					say "[sexwithBlanche04]";
				else if nam is "Mutual cunnilingus":
					say "[sexwithBlanche05]";
				else if nam is "Mutual fingering":
					say "[sexwithBlanche06]";
				else if nam is "Cowgirl position":
					say "[sexwithBlanche07]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Blanche is turns;
	if debugactive is 1:
		say "DEBUG| Post-sex values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [Libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";
	wait for any key;
	clear the screen and hyperlink list;


to say sexwithBlanche01:
	say "     The wolf femme leads you quickly over to her [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], slipping your pack and clothes off before stretching out on it. She spreads her legs and runs her paws down her [if HP of Blanche > 7]MILFy [end if]body, playing with her tits before stroking her wet pussy in a rather wanton display[if HP of Blanche is 2]. 'Oh, I've been holding back for so long, but I've needed a good fuck ever since I changed.' She blushes a bit at her words, but spreads her precious flower open while eyeing your stiff erection[else if HP of Blanche is 3]. 'Oh, did you get that for me?' she moans as she eyes your new cock. 'I've been holding back for so long, but I've needed a good fuck ever since I changed.' She blushes a bit at her words, but spreads her precious flower open[else]. 'I want you to fill me again. My hot hole needs to be fucked again.' She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if]. 'Mmm... come claim your prize bitch[if HP of Blanche > 7] again[end if], my sexy hero.'";
	say "     Needing no more invitation, you hop onto the mat and move atop the wanton wolf, running your hands over her body and breasts as she takes hold of your [cock size desc of Player] [Cock of Player] [one of]erection[or]shaft[or]rod[purely at random] and guides it towards her dripping cunt[if Cock Length of Player >= 36]. Given your huge girth, you take it very slow at first, pushing gently to slowly spread her vagina open. The lustful wolf howls in pleasure as you start sliding your enormous cock into her as her needy cunt stretches wide to take you in. Soon her belly is bulging more and more as you feed your cock into her. She rubs her paws over it, moaning in delight at being so full[else if Cock Length of Player >= 24]. Given your huge girth, you take it slow at first, pushing gently to slowly spread her vagina open. The lustful wolf howls in pleasure as you start sliding your giant cock into her as her needy cunt stretches wide to take you in. She rubs her paws over the cute bump in her belly that your big cock stretches out[else if Cock Length of Player >= 12]. Given your large size, you go slow at first, pushing into her gently to slowly spread her vagina open. The lustful wolf moans in pleasure as you start sliding your big cock into her as her needy cunt stretches to accommodate you. Soon you're buried in her hot, dripping hole and she's rubbing over her lower abdomen, feeling the firmness of your big cock buried inside her[else]. You ease yourself into her as her paws stroke your [cock size desc of Player] cock and balls. The lustful wolf moans in pleasure as you bury your throbbing meat inside her hot, dripping hole. She rubs over her lower abdomen, enjoying the pleasure of having a sexy cock buried inside her[end if]. You move your hands up to her bosom, caressing her breasts and teasing her nipples as you begin thrusting steadily into your lupine lover, to her very obvious delight.";
	say "     Her paws move from her belly to your sides, caressing your hips before sliding lower to fondle your [Ball Size Adjective of Player] balls, moaning in pleasure[if Ball Size of Player >= 4]. She pants and licks her lips in anticipation of the ample load you've got for her[end if]. Her inner walls pull and squeeze at your cock in such delightful ways as you fuck her. Leaning forward, you kiss the sexy wolf, inviting her long tongue to dive into your mouth and play against yours[if Cock Length of Player >= 36]. Her paws return to the exposed length of your huge cock, stroking and caressing it to further please you, even urging you to push more into her, stretching her body out further around your massive meat[else]. Reaching behind you, she grabs your ass and squeezes, pulling you towards her[end if]. At her obvious urging, you start thrusting harder and faster, pounding away as the lustful wolf tilts her head back and howls in pleasure again and again as she orgasms. It soon becomes too much for you and you cum hard into her as well, [if Ball Size of Player >= 4]flooding her womb with your hot seed[else]pumping your hot seed into her womb[end if].";
	say "     After you're spent, you slowly ease your shaft from her, making her moan softly[run paragraph on]";
	if Ball Size of Player >= 4 and ( HP of Blanche < 5 or HP of Blanche is 8 or HP of Blanche is 11 or HP of Blanche is 14 ):
		say ". She rubs her paws over her tummy, bloated with your ample seed and smiles happily. 'Mmm... that feels so good. It's like I'm already full of pups,' she moans softly[run paragraph on]";
	else if Ball Size of Player >= 5:
		say ". She rubs her paws over her tummy, bloated with your ample seed and smiles happily. 'Mmm... if I didn't already have pups on the way, that'd have knocked me up for sure,' she moans softly[run paragraph on]";
	else:
		say ". She rubs a paw over her sticky folds, spreading around the semen that's leaking out of her. 'Mmm... that's just what I needed,' she moans softly[run paragraph on]";
	say ". She gives you a big hug and an even bigger kiss before stretching out on her [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if]. 'Be sure to come back and breed me like that again soon,' she rumbles.";
	if HP of Blanche is 4 or ( HP of Blanche > 7 and Blanche is not pregnant and a random chance of 2 in 3 succeeds ):
		say "     Blanche remains resting on her [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] for a while, smiling happily as she caresses her belly. You think nothing of it at first, but after a while you realize that [if Ball Size of Player >= 5]the bulge from your semen's not fully disappeared[else]her tummy's showing a small bulge now[end if]. You've knocked up the white wolf[if HP of Blanche > 4] again[end if]!";
		if HP of Blanche is 14:
			now HP of Blanche is 12;
		else:
			increase HP of Blanche by 1;
		now Libido of Blanche is turns;
		now lust of Blanche is turns;
	NPCSexAftermath Blanche receives "PussyFuck" from Player;

to say sexwithBlanche02:
	say "     After some affectionate kisses and playful groping, Blanche moves onto all fours, presenting herself for you[if Blanche is gravid]. She places some pillows beneath herself to help support her gravid belly[end if]. Her wet pussy makes for a tantalizing sight as she raises her tail and wags it invitingly. Unable to resist such an offer, you place your hands on her round hips and slide your cock into her hot cunt. She releases a pleasured moan and grinds back onto you while her wet tunnel grips your meat[if Cock Length of Player >= 36]. Given your huge girth, the penetration is very slow at first, but motherhood has allowed her vagina to spread more easily. The white wolf howls with lustful enthusiasm as your enormous cock pushes deeper into her, making her feel so wonderfully full as it bulges her belly[else if Cock Length of Player >= 24]. Given your huge size, the penetration is slow at first, but motherhood has allowed her vagina to spread more easily. The white wolf howls with lustful enthusiasm as your enormous cock pushes deeper into her, making her feel so wonderfully full[else if Cock Length of Player >= 12]. Given your large size, the penetration starts slowly, but motherhood has allowed her vagina to spread more easily. The white wolf moans happily as your large cock pushes deep into her, stuffing her so wonderfully full[else]. The penetration is smooth and easy, motherhood having allowed her vagina to spread easily for you before gripping around you once you're in[end if].";
	say "     You take a few preliminary thrusts into the [if Blanche is pregnant]pregnant female[else]wolfy MILF[end if] before adjusting your position to better pound her needy pussy. She gives another rumble of delight at this and moans for more. The wolf paws at her [if HP of Blanche > 11]silk [end if]sheets as you fuck her[if Blanche is pregnant]. In light of her pregnancy, you do hold back somewhat, though you do still pound her good and hard[else]. As you go at it, you find yourself pounding her harder and faster, wild urges driving you to breed this fecund female[end if]. Much to her delight as well. Her motherly breasts sway beneath her as she's rocked by your thrusting[if Blanche is gravid], slapping gently against her furred belly[end if].";
	say "     As you fuck the lovely wolf, you run your hands over her sexy rear and through the soft fun on her sides and hips. After a while though, you move your hands to each side of her as you go to all fours and start fucking her doggy style. There's something primally satisfying about fucking the sexy wolf woman like this, rutting like horny beasts[if Blanche is not pregnant] in an effort to breed[end if]. Your cock slams into her over and over while her wet cunny clutches and squeezes around it. You grab one of her swaying tits and fondle it, rubbing her nipple with your thumb. She tilts her head back and licks your cheek before kissing you.";
	say "     The two of you continue to rut like animals, panting and kissing one another. As you feel your climax approaching, you [if BodyName of Player is listed in infections of caninelist or FaceName of Player is listed in infections of caninelist]bite down onto the back of her neck and [end if]drive yourself fully into her. Your [Cock of Player] cock throbs and pulses as you fire shot after shot of gooey seed into her [if Blanche is not pregnant]waiting womb[else]quivering cunt[end if]. She howls in orgasmic release, adding her feminine juices to the slick mess squishing around your cock and leaking down both your thighs[if Blanche is not pregnant]. You breed her for all you're worth, eager to see her grow heavy with more of your pups[else]. Despite her already being pregnant, you pump as much semen as you can into her, further testament to your virility[end if]. Once you're spent and pull out, Blanche rolls over onto her side, panting heavily with a canine smile plastered across her muzzle. 'Oh, that's just what I needed. You're great.'";
	if HP of Blanche is 4 or ( HP of Blanche > 7 and Blanche is not pregnant and a random chance of 2 in 3 succeeds ):
		say "     Blanche remains resting on her [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] for a while, smiling happily as she caresses her belly. You think nothing of it at first, but after a while you realize that [if Ball Size of Player >= 5]the bulge from your semen's not fully disappeared[else]her tummy's showing a small bulge now[end if]. You've knocked up the white wolf[if HP of Blanche > 4] again[end if]!";
		if HP of Blanche is 14:
			now HP of Blanche is 12;
		else:
			increase HP of Blanche by 1;
		now Libido of Blanche is turns;
		now lust of Blanche is turns;
	NPCSexAftermath Blanche receives "PussyFuck" from Player;

to say sexwithBlanche03:
	say "     Blanche leads you over to the desk and has you sit on the corner of it while she gets on her knees before you. The white wolf nuzzles at your groin and breathes in your heady scent of her hero, lover and mate. She runs her paws over your thighs and caresses your hips before moving on to stroking your [cock size desc of Player] [Cock of Player] penis. She leans in and, glancing playfully up at you, slowly runs her lupine tongue across the length of your meat, eliciting a moan from you. Clearly pleased with the taste of your meat, she leans forward and slides your shaft into her muzzle[if Cock Length of Player >= 24]. Given your massive size, it takes her considerable effort, but her lust overcomes the physical difficulty and her mouth and throat stretch open to take your [cock size desc of Player] cock. The outline of your bulging member is clearly visible against her outstretched throat[else if Cock Length of Player >= 16]. Given your considerable size, she has to go slow at first, but soon enough you're thrusting into her muzzle and throat with a visible bulge from your [cock size desc of Player] cock[else if Cock Length of Player >= 10]. Her lupine muzzle slides down over your erection and the tip of your [cock size desc of Player] cock slides into the wolf's throat[else]. Her lupine muzzle slides down over your erection, taking it fully into her muzzle[end if]. As her muzzle[if Cock Length of Player >= 10], throat[end if] and tongue slide across your shaft, her paws move to rub and caress your balls, hungry for the treat they hold.";
	if a random chance of 1 in 2 succeeds:
		say "     Pleased with the wolf's attention, you rub her ears and stroke her muzzle, telling her what a fine job she's doing and how happy you are to have met her. At your words of praise, she sucks you all the more eagerly[if HP of Blanche < 9 or HP of Blanche is 11 or HP of Blanche is 14]. Her[else]. The pregnant wolf's[end if] long tongue and warm muzzle work tirelessly to get you off. As she bobs her head faster, your precum dribbles onto her tongue and down her throat, giving her a taste of what's fast approaching. Cupping your nuts, she moans softly and sucks down hard, finally pushing you over the edge. You blast shot after shot of thick seed down her throat, filling her with your warm, hot cum. As she swallows this down, [if HP of Blanche < 8]she[else]the horny MILF[end if] jams a paw between her legs and stuffs several fingers into her cunny, pumping herself to an orgasm that has her groan in delight around her muzzleful of meaty cock[if Ball Size of Player >= 5]. Your excessive load leaves the sexy wolf with a tummy so full it's bloated with your semen by the time you're finished and she releases your spent cock[else]. She keeps going until your balls are drained before releasing your spent cock[end if]. She smiles up at you, licking her muzzle and looking very satisfied. Looking lower, you can see her crotch soaked with her own juices and the floor below wet with a puddle of them as well.";
	else:
		say "     Pleased with the wolf's attention, you rub her ears and stroke her muzzle, telling her what a fine job she's doing and how happy you are to have met her. At your words of praise, she sucks you all the more eagerly[if HP of Blanche < 9 or HP of Blanche is 11 or HP of Blanche is 14]. Her[else]. The pregnant wolf's[end if] long tongue and warm muzzle work tirelessly to get you off. As she bobs her head faster, your precum dribbles onto her tongue and down her throat, giving her a taste of what's fast approaching. Cupping your nuts, she slides her muzzle off your cock and starts stroking and licking at your cock emphatically, finally pushing you over the edge. You blast shot after shot of your seed all over her face and body[if Ball Size of Player >= 5], practically coating her ivory fur in your white cum[end if]. Marked [if Ball Size of Player >= 5]thoroughly [end if]as yours, she starts licking your semen from her muzzle and one paw while the other dives between her thighs to frig herself to a howling climax of her own[if HP of Blanche < 8]. She[else]. The sated MILF[end if] smiles up at you, sucking some of her juices from her paw and looking very satisfied. Looking lower, you can see her crotch soaked with her own juices and the floor below wet with a puddle of them as well.";
	NPCSexAftermath Blanche receives "OralCock" from Player;

to say sexwithBlanche04:
	say "     Eyeing those lovely breasts of hers, you run a hand over them and whisper in her ear how you'd love to see your cock nestled between those furry globes. She smiles and licks your cheek, saying she'd love that as well. Laying back on the [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], she smiles up at you while running her paws over her breasts. You move into position atop her and let her guide your cock into the soft embrace of her bountiful bosom[if blanche is gravid]. As well, you can feel the pregnant MILFs rounded belly behind you[end if].";
	say "     [if Cock Length of Player > 20]Blanche leans her head forward and takes several licks along your long shaft[else if Cock Length of Player >= 6]Blanche leans her head forward and takes several licks across your glans[else]Blanche mmms softly[end if] as you start rocking your manhood between those white breasts. She continues to play with her breasts, making quite the show about teasing and tweaking her nipples. The sight of this is very arousing and excites you further. And her as well, as can be seen by how she pants and moans softly while doing so. This gets all the more pronounced as some of her motherly milk starts leaking from her perky nips as they're pinched.";
	say "     The feel of her soft fur and warm breasts around shaft is wonderful. You enjoy the titty-fuck for quite a while, your excitement slowly building until eventually it can no longer be held back[if a random chance of 1 in 2 succeeds]. Removing your [Cock of Player] cock from between her breasts, you stroke it vigorously. With a long groan, you spray your [Cum Load Size of Player] load across her bosom and open muzzle[else]. Thrusting faster, you pump your meat between those breasts until you cum, shooting your [Cum Load Size of Player] load while nestled into that beautiful bosom of hers[end if]. She moans happily and plays excitedly with her tits while you drain your balls and she makes a show of licking up streaks of your seed using her fingers.";
	NPCSexAftermath Blanche receives "Other" from Player;


to say sexwithBlanche05:
	say "     The wolf femme [if Blanche is gravid]beckons you[else]leads you quickly[end if] over to her [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], slipping your pack and clothes off before stretching out on it. She spreads her legs and runs her paws down her body, playing with her tits before stroking her wet pussy in a rather wanton display[if HP of Blanche is 2]. 'Oh, I've been feeling so horny ever since I changed. I just need some relief.' She blushes a bit at her words, but fingers herself while eyeing you lustfully[else]. 'I've been feeling so horny again lately. I just need some relief again.' She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if]. 'Mmm... come claim your prize bitch, my sexy hero.'";
	say "     Needing no more invitation, you hop onto the [if HP of Blanche < 7]mat[else if HP of Blanche < 11]mattress[else]bed[end if] and move alongside the wanton wolf in a 69 position, running your hands over her hips and thighs as you nuzzle and kiss between them[if Blanche is gravid]. Her large belly presses against you and you have to bend a bit to get past it to the juicy prize you desire[end if]. She brings her lupine muzzle to your hot pussy as well and takes in your scent with a soft moan before lapping her long tongue across your sensitive folds. After this brief foreplay, you get right to it, diving your tongues into one another and eating each other out. Lips kiss, tongues slide, fingers tease and juices flow as the scent of your combined arousal grows thick in the air. You lavish attention on the [if HP of Blanche > 7]MILF's needy[else]needy, heat-filled[end if] pussy before you with increasingly loud moans of lustful pleasure as you are treated in kind by her long, lupine tongue[if Player is male]. She licks and sucks at your cock[smn] as well, but her attention is primarily on eating out your dripping snatch[end if]. When you reach your peak and cum, Blanche is not far behind and you are both left panting and soaked at the crotch with your release, your faces covered in delicious pussy juices.";
	say "     After your orgasms, you lie back on the [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] side by side, panting softly in the afterglow of your release. Taking your hand in hers, she smiles. 'Mmm... thank you for that. I really needed to let off some relief[if HP of Blanche < 11]. My body just wants a proper fucking so bad[end if].' She rubs her other paw over her sticky folds.";
	NPCSexAftermath Blanche receives "OralPussy" from Player;
	NPCSexAftermath Player receives "OralPussy" from Blanche;

to say sexwithBlanche06:
	say "     The wolf femme [if Blanche is gravid]beckons you[else]leads you quickly[end if] over to her [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], slipping your pack and clothes off before stretching out on it. She spreads her legs and runs her paws down her body, playing with her tits before stroking her wet pussy in a rather wanton display[if HP of Blanche is 2]. 'Oh, I've been feeling so horny ever since I changed. I just need some relief.' She blushes a bit at her words, but fingers herself while eyeing you lustfully[else]. 'I've been feeling so horny again lately. I just need some relief again.' She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if]. 'Mmm... come claim your prize bitch, my sexy hero.'";
	say "     Needing no more invitation, you hop onto the [if HP of Blanche < 7]mat[else if HP of Blanche < 11]mattress[else]bed[end if] and move atop the wanton wolf, running your hands over her body and breasts as she wrap her arms around your waist and hugs you close. You kiss one another as your bodies rub together, hands and paws drifting between thighs to caress the wet folds found there[if Blanche is gravid]. You caress her pregnant belly before reaching around it to get at the precious prize you desire[end if]. You slide a couple of fingers into [if HP of Blanche > 7]the MILFy wolf's[else]her[end if] juicy cunt as she does the same for you. You lick, kiss and finger one another with increasingly loud moans of lustful pleasure[if Player is male]. She plays with your cock[smn] briefly as well, but her focus is on satisfying your dripping snatch[end if]. The air in the room grows thick with the scent of your combined arousal. When you reach your peak and cum, Blanche is not far behind and you are both left panting and soaked at the crotch with your release.";
	say "     After your orgasms, you lie back on the [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] side by side, panting softly in the afterglow of your release. Taking your hand in hers, she smiles. 'Mmm... thank you for that. I really needed to let off some relief[if HP of Blanche < 11]. My body just wants a proper fucking so bad[end if].' She rubs her other paw over her sticky folds.";
	NPCSexAftermath Blanche receives "DildoPussyFuck" from Player;
	NPCSexAftermath Player receives "DildoPussyFuck" from Blanche;


to say sexwithBlanche07:	[cowgirl position]
	say "     In the mood for a change of pace, you suggest the [if Blanche is pregnant]pregnant [end if]wolf ride you cowgirl style, which she's quite down with. You stretch out on her [if HP of Blanche is 11]bed[else]bed's silken sheets[end if] and take her by the paw as she moves atop you[if Blanche is gravid]. You assist her with your other hand on her rounded belly, giving it a gentle caress as you help support it into position[end if]. Reaching from behind, she guides your cock up and into her juicy cunt as she lowers herself down with a happy sigh. Her paws then move to your chest, rubbing over it.";
	say "     Once she's had a [if Cock Length of Player >= 24]minute to adjust to your oversized meat[else if Cock Length of Player >= 12]chance to adjust to your large size[else]moment to settle into position[end if], she raises herself up slowly[if blanche is gravid]. Mostly rocking forward to keep her pregnant tummy partly resting on you, she[else]. She[end if] slides gradually back up your pole until only the tip remains in before going down again. The first few are like this as she savors the feel of you moving in and out under her control all with a happy expression on her lupine face.";
	say "     After these initial bounces, she picks up speed and is soon riding you at a good pace. Her juicy cunt slides up and down your slick pole, her inner walls quivering and squeezing tight each time she slams down fully onto you. Your hands move up to her breasts, cupping the MILF's mammaries and playing with her nipples. She moans softly at this, growing louder as you tease her nipples and some of her motherly milk leaks out to wet her snowy fur[if Nipple Count of Player > 0 and Breast Size of Player > 0]. Her paws find their way to your tits and, with a grin, she gives your hard nips the same treatment[end if].";
	say "     As her excitement builds, you can see her getting close to climax. She releases a hungry, needy growl and starts riding you faster, grinding that round butt of hers down onto your lap. Your cock throbs and pulses inside her, your balls feeling heavy with seed for the [if Blanche is pregnant]pregnant[else]fecund[end if] wolfess. Her growling gets louder until she finally throws her head back in a howl of climactic release. Feeling the grip of her fluttering vagina and the hot rush of flesh juices, you move your hands to grab her ass as push your hips up. Your [Ball Size Adjective of Player] balls release their [Cum Load Size of Player] load and your hot seed shoot into her[if blanche is not pregnant] waiting womb[end if]. Once you're both done riding out this powerful orgasm, she slides herself slowly off your softening member and you let her have the bed to rest after giving her a tender kiss.";
	if Blanche is not pregnant and a random chance of 2 in 3 succeeds:
		say "     Blanche remains resting on her bed for a while, smiling happily as she caresses her belly. You think nothing of it at first, but after a while you realize that [if Ball Size of Player >= 5]the bulge from your semen's not fully disappeared[else]her tummy's showing a small bulge now[end if]. You've knocked up the white wolf again!";
		if HP of Blanche is 14:
			now HP of Blanche is 12;
		now Libido of Blanche is turns;
		now lust of Blanche is turns;
	NPCSexAftermath Blanche receives "PussyFuck" from Player;

to say blancheupdate: [I have no idea what this is for. Possibly pregnancy countdown? - Prometheus]
	if debugactive is 1:
		say "DEBUG| Current turn number: [turns]  - Pre-update values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [Libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";
		say "DEBUG| Updating Blanche now.";
	if Libido of Blanche is not 255:
		now tempnum is 0;
		if HP of Blanche is 5 and Libido of Blanche - turns >= 12:
			increase HP of Blanche by 1;
		if HP of Blanche is 6 and Libido of Blanche - turns >= 24:
			increase HP of Blanche by 1;
			now thirst of Blanche is 4; [+four pups in first litter]
			now Libido of Blanche is 254;
[			move Sturm to Office Den;]
		if HP of Blanche is 9 and Libido of Blanche - turns >= 12:
			increase HP of Blanche by 1;
		if HP of Blanche is 10 and Libido of Blanche - turns >= 24:
			increase HP of Blanche by 1;
			now thirst of Blanche is 6; [+2 pups in second litter]
			now Libido of Blanche is 254;
		while HP of Blanche >= 11 and lust of Blanche - turns >= 40 and tempnum is 0:		[extra cycles if the player's been away a long time]
			now tempnum is 1;
			if ( HP of Blanche is 11 or HP of Blanche is 14 ) and lust of Blanche - turns >= 48:
				now HP of Blanche is 12;
				now Libido of Blanche is lust of Blanche - 40;
				now lust of Blanche is lust of Blanche - 40;
				now tempnum is 0;
			if HP of Blanche is 12 and Libido of Blanche - turns >= 12:
				increase HP of Blanche by 1;
				now tempnum is 0;
			if HP of Blanche is 13 and Libido of Blanche - turns >= 24:
				increase HP of Blanche by 1;
				if thirst of Blanche < 10:
					now thirst of Blanche is 10; [+4 pups in third litter]
				else:
					increase thirst of Blanche by a random number between 2 and 4;
				now Libido of Blanche is 254;
				now tempnum is 0;
		if HP of Blanche is 12 and Libido of Blanche - turns >= 12:
			increase HP of Blanche by 1;
		if HP of Blanche is 13 and Libido of Blanche - turns >= 24:
			increase HP of Blanche by 1;
			if thirst of Blanche < 10:
				now thirst of Blanche is 10;
			else:
				increase thirst of Blanche by a random number between 2 and 4;
			now Libido of Blanche is 254;
	if debugactive is 1:
		say "DEBUG| Post-update values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [Libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche]   /   Charisma: [Charisma of blanche][line break]";


Definition: Blanche is pregnant:
	if HP of Blanche is 5 or HP of Blanche is 6 or HP of Blanche is 9 or HP of Blanche is 10 or HP of Blanche is 12 or HP of Blanche is 13, yes;
	no;

Definition: Blanche is gravid:
	if HP of Blanche is 6 or HP of Blanche is 10 or HP of Blanche is 13, yes;
	no;

Section 3 - Events

Section 3.1 - Office Den Events

instead of navigating Office Den while (Charisma of Blanche is 0 and HP of Blanche > 7 and "Blanche - OfficeEvent" is not listed in traits of Blanche) and ((thirst of Blanche < 3 and "Claude - OfficeEvent" is not listed in traits of Claude) or (thirst of Blanche < 5 and "Wendis - OfficeEvent" is not listed in traits of Wendis) or (thirst of Blanche < 9 and "Casper - OfficeEvent" is not listed in traits of Casper)):
	say "[NavCheck Office Den]";
	if NavCheckReturn is false, stop the action;
	move player to Office Den;
	say "[OfficeBlancheFamilyEvents]";

to say OfficeBlancheFamilyEvents:
	if "Sturm - OfficeEvent" is not listed in traits of Sturm:
		say "     Encountering Sturm guarding the door again, you are surprised when instead of letting you pass, he grabs you and pushes you against the wall, the shock momentarily robbing you of the ability to resist. 'Each time you return here, you put us all in danger,' the wolf growls, releasing your shoulder and pacing back and forth angrily. 'Anyone could be watching you and some of them might follow you and discover us. Mom and the others might be more forgiving of the risk that you pose, but make up your mind whether you want to stay and help care for us, or stop coming back. After letting Mom know of course. She'd probably want to go out looking for you if you suddenly stopped coming to see her.' He pauses berating you to scan the surrounding area again, ears pricked and nose quivering as his eyes slowly travel across the the hellscape. Content that there is no immediate danger, he turns back to you, but is promptly interrupted by the door to the building opening and two other wolves exit. It takes you a moment to recognize them as Bianca and Ernest, during which time they walk over to you and Sturm.";
		say "     'I'm told that you're harrassing Mom's mate,' Ernest says tiredly, pinching the bridge of his nose as he does so. '[SubjectProCap of Player] endangers us no more than any of us returning from scavenging.' 'Really Bianca? You told on me to Brainy?' the large white wolf grumbles. 'Sorry. But I think, [italic type]we all think[roman type], that you're wrong about [ObjectPro of Player]. I didn't want to tell Mommy, so Ernest seemed the next best thing. And don't call him names. It's mean,' Bianca retorts. Sighing, Sturm turns to his brother. 'Sorry Ernest. Bianca's right. What can I do to make it up to you?' The smaller male wolf thinks for a moment before replying, 'I shall take being called Brainy as a compliment, but when you have the time, could you help me work out? It is an area that I am lacking in.' With a nod, Sturm agrees to this before turning back to you. 'Go in before Mommy comes out here too. And don't mention any of this to her. Please?' the large wolf almost pleads, looking a lot less intimidating after his scolding from his brother and sister. Not wanting to cause problems, you consent before going through the door.";
		TraitGain "Sturm - OfficeEvent" for Sturm;
	else if "Bianca - OfficeEvent" is not listed in traits of Bianca:
		say "     A shout of greeting catches your attention as you approach Blanche's office den and you turn around to find Bianca, her eldest daughter, running toward you, her chest jiggling with each step. As she comes to a stop in front of you, she clutches her breasts and puffs, 'Thank goodness the nanites provide support. From what Mommy says, having large breasts was frequently uncomfortable when she was a human.' 'And you're telling [ObjectPro of Player] this, why?' Sturm grumbles, walking up behind her carrying what you assume to be both of the bags that their bags filled with scavenged food, water, and what looks like an old portable military radio, albeit damaged. 'Just making conversation dear brother, and I doubt that Mommy will mind. She wasn't ashamed to tell me so I don't see why she would be concerned about me mentioning it to [if player is female]our other mommy [else]Daddy [end if]too,' Bianca replies. The male wolf merely rolls his eyes before patting her head and muttering that he will continue to carry her spoils so that she is free to talk to you.";
		say "     The three of you are greeted back at the den by Blanche's third son, Claude. While not nearly as physically imposing as his eldest brother, he does appear to be taking sentry duty seriously, waving to you but continuing to scan the city around you as you approach, just in case. When you reach him, Sturm glances around quickly before giving a nod, allowing him to relax. 'Good job Claude,' Sturm says, those few words causing his brother's tail to wag excitedly. 'As good as you?' he replies. 'Well, assuming that no-one slipped past you and carried Mom off, yes I would say so, but don't tell anyone else that I said that or you might become Mommy's new favorite and then I'll have to feed you to the xeno drones,' the muscular wolf teasingly shoots back with a grin. It would seem that Sturm is quite a different person with you than he is with the rest of his family, making you a little disappointed. Maybe one day he will treat you the same way. Deciding to leave them to their conversation, you enter the office as Bianca complains about having to lug back the radio that they found for Ernest, her elder brother playing along good-naturedly despite the visible evidence otherwise.";
		TraitGain "Bianca - OfficeEvent" for Bianca;
	else if "Ernest - OfficeEvent" is not listed in traits of Ernest:
		say "     You are surprised to find Ernest sitting on the ground outside the office den dismantling the radio that you saw Sturm and Bianca bring back last time[if daytimer is night] using a head-lamp for light[end if], Claude's attention split between curiously observing his brother's activity and watching for threats in the surrounding area. When you greet them, Claude runs over to give you a hug while his brother barely musters a wave of a hand, his attention solely on completing a diagram on a clipboard. 'Don't worry about him, he doesn't split his attention very well. He can't fix it, but he wants to understand how it works so he assembles and disassembles it over and over again. Let him finish his scribbling and talk to me instead,' the younger wolf says, enjoying his contact with you. Accepting his request, you ask him how he has been before telling him a little about your time in the city while his eyes widen with excitement and his tail wags behind him. Eventually, Ernest finishes his notes and joins the conversation too.";
		say "     'Mommy is asleep and I didn't want to disturb her,' he replies when you ask why he is outside rather than using a table within the den. 'She's joined me in taking the radio to pieces a few times, but I don't know how much of that is because it is something that I am interested in and she is using it as a chance to spend time with me, but none of the others seem to hold a conversation with me about it as well as her. Probably due to the wisdom of age or something, but I don't know what I would do without her. She suggested that when our home is more secure that I might go to the college, but I doubt that that will ever happen. Here isn't exactly a safe place to raise a family,' Ernest informs you somberly. Claude pats his brother on the shoulder reassuringly, but the conversation seems to halt. Eventually, you decide to go inside, hoping that Blanche will have finished her nap.";
		TraitGain "Ernest - OfficeEvent" for Ernest;
	else if "Claude - OfficeEvent" is not listed in traits of Claude:
		say "     A nearby commotion attracts your attention as you traverse the hellscape of the Capitol District, the sound of loud voices and jeering piquing your curiosity. Nonetheless, you remain cautious as you peer around the corner of a crumbling wall to see who or what is in such high spirits. The sight before you makes your heart drop. Your son with Blanche, Claude, has been backed into a corner by a group of three orc slavers who seem to have roughed him up a bit, judging from the flecks of blood on his face and dirt matting his fur, and are now planning on having their way with him. Despite being outnumbered and, frankly, outmatched, he stubbornly remains prepared to defend himself. Concerned as to what has become of Ernest, you realize that you can't be far from the Office Den and consider whether or not you should go and get help. Any thought of leaving are dispelled when the largest of the orcs ignores Claude's exhausted punches and backhands him, slamming his back into a wall and causing him to slump to the ground, stunned. You're going to make them regret this personally.";
		say "     Stepping out of cover, you shout a challenge to them just as Sturm and Bianca charge around the corner a few meters away, growling with their fur on end. Though startled, the orcs recover quickly to this shift in circumstance, the leader of the group directing his subordinates to intercept your rescue party while he moves towards Claude, likely to carry him off. You hadn't realized just how large Sturm was, but when he and an orc square of against each other, you notice that they are much of a size, the two circling around and snarling before lunging for each other. Bianca by comparison looks a little more out of her depth, a look of relief crossing her face as you aid her in staring down her adversary, Sturm giving you a nod of gratitude when he manages to knock the orc back a few steps. You can hear Claude struggling against the final orc, hindering his attempts to abduct him and motivating you to end this fight as quickly as possible.";
		WaitLineBreak;
		say "     What follows is a brutal display of the bonds between family, you, Sturm, and Bianca managing to overwhelm your foes within seconds in order to save Claude from a terrible fate, a feat that you are not sure that you would manage to repeat in any other circumstance. As you prepare to advance on the leader of the slavers, you spot movement behind him. Perhaps fueled by adrenaline, Ernest swings his scavenging-bag with all his might into the jaw of the unprepared orc with a metallic crunch. Managing to stay upright for a moment, the brute eventually topples over in the dirt at the wolf's feet. With the battle over, Sturm and Blanche rush forwards and hug their siblings, the threat of what might have happened had they failed weighing on them as they embrace, beckoning you to join them too. When he is released, Claude tentatively takes the bag of Ernest and peers inside, gasping at what he sees. 'You hit him with your radio,' he mumbles, tipping the bent fragments onto the ground.";
		say "     'You did this... for me? But you said-' Claude continues, before Ernest cuts him off. 'I know what I said, but it would seem that I really did care more about you than it.' Ernest sighs and hugs his brother again. 'I'm sorry that I said such a horrible thing especially when it made you run off and have this happen to you. I have no excuses, I'm sorry,' he says, fighting back tears. 'I shouldn't have argued with you either,' Claude replies before the two of them release each other and look venemously at the fallen orcs. As they take a step towards them, Sturm and Bianca exchange a look and put out an arm to stop their brothers. 'We don't have time to get revenge,' Sturm says gently, earning a scowl from Ernest. 'They could wake up again soon, and if they follow us, they may find Mommy,' Bianca joins in, understanding dawning on Claude's face. Wasting no further time, but grumbling nonetheless, the five of you disappear down the side of a building and take a convoluted route back to the Office Den, agreeing to let Sturm decide how best to tell Blanche about what had happened.";
		TraitGain "Claude - OfficeEvent" for Claude;
	else if "Penelope - OfficeEvent" is not listed in traits of Penelope:
		say "     As you approach the Office Den, you find an unfamiliar wolf standing on guard outside. She is undoubtedly Blanche's daughter, covered in the signature white floof, but you don't recall having acquanted yourself with her, especially when she looks as tall as Sturm and twice as wide. You see her say something over her shoulder before another head pops up beside her own, a wide grin on its face. '[if player is Female]Other-Mommy[else]Daddy[end if]!' it shouts before the wolf that the head belongs to scrabbles over her sister's shoulder, leaps to the ground, and runs over to you to leap in for a hug, nearly knocking you over. 'Careful with [ObjectPro of Player], Wendis. You know that Sturm wants to be the one to crush [PosAdj of Player] ribs,' the goliath lupine laughs as she more calmly approaches. 'Uh uh, Penelope. Mommy said that he wasn't allowed to and he does whatever she tells him to do,' the smaller wolf shoots back glibly. While at first you thought that she was just small compared to her sister, now that she is still, you realize that she is only four foot at most.";
		say "     Before you get the chance to put your foot in your mouth and accidentally say something tactless, your vision is obscured by the white fluff of the big sister as she warmly embraces you with her sibling sandwiched between you. 'Hello, [if player is Female]Mom[else]Dad[end if]. I'm Penelope and this is my little sister, Wendis,' she says, her lips mere inches from your ear. Releasing you, the titanic wolf steps back again, carefully guiding her sibling away from you too to give you some space. You take a moment to properly look at them. Penelope looks to be between seven and eight foot tall and is extraordinarily fluffy, exagerating her width, but when she hugged you you could feel the muscle beneath the fur. She is built like a tank. Wendis by comparison looks more like a cuddly toy, small and exhuberant. 'I can see that you want to ask why I'm so short. Don't worry, I don't mind,' Wendis says. 'When Mommy was pregnant, Penelope took most of the nutrients, enough for three and a half, meaning that I'm tiny and why there were only two of us in our litter.'";
		WaitLineBreak;
		say "     Penelope sighs and looks despairingly at her younger, smaller, and cuter sister. 'You've been talking to Claude too much. Perhaps ask Ernest about it instead and you might get a more logical answer,' she chides her. 'I don't want logic, I want you to give me my height back! You took it didn't you, and don't want to share,' Wendis says in mock indignation, jumping up and down. 'As you can see, my sister is prone to an overactive imagination. That said, she is my scavenging-mate and the most precious thing in the world to me,' Penelope informs you, affectionately stroking her siblings head. Wendis snuggles up against her before she is lifted onto her big sister's shoulders. 'We shan't hold you up any longer. Mommy's just inside. Meanwhile we'll return to guard duty. Perhaps next time we can talk more,' Penelope apologizes before returning to her post and resumes scanning the city, Wendis waving to you as you walk past them and enter the den.";
		TraitGain "Penelope - OfficeEvent" for Penelope;
	else if "Wendis - OfficeEvent" is not listed in traits of Wendis:
		say "     You encounter Wendis rummaging through a backpack, Penelope looming protectively over her. The large wolf's wave of greeting catches her little sister's attention, causing her to look up from her task and see you too. '[if player is Female]Mommy[else]Daddy[end if]!' she squeals gleefully before running over to you and bouncing around you. 'Even with Ernest constantly monitoring your sugar, you still are hyperactive,' Penelope sighs. 'Yes, but he doesn't know that you give me treats when he isn't looking,' Wendis retorts cheekily. 'I make no apologies. There is no need to change,' comes the reply. Patting them both, you enquire whether they are in the middle of scavenging. 'Yes. Each of us have our different methods, playing to our strengths. Sturm is the most ambitious, willing to fight to claim protected stashes. Bianca seduces people into sharing, though she seems to get away with only giving them a squeeze and a cuddle. Claude has a network of friends that share with him, though there have been a few people that have tried to take advantage of him. Ernest seems to work with Mom to reliably predict places which are likely to be untouched or unguarded,' the fluffy goliath explains.";
		say "     Curious, you ask what their techniques are. 'I appeal to people's better natures and Penelope bonks the ones who don't have one,' Wendis informs you, as cheerily as ever. 'Not everyone has her best interests in mind,' her big sister adds darkly, wiggling her clawed digits for added effect. 'She hit an orc with a door yesterday, and today she beat up a robot with a garbage can lid. I helped by throwing rocks,' the small wolf says, her tail wagging when her scavenging partner pats ruffles the fur on her head. 'In this particular instance, we just found this bag here. No bludgeoning necessary,' Penelope reassures you when she notices your concerned expression. 'We are careful to only approach people who we are sure will be friendly, it's just that sometimes other people try to ambush us. I'm sure that you're familiar with that.' Conceding that they probably know what they are doing and that nothing bad has happened to them so far, you decide that they should be allowed to continue to scavenging without your interference, especially when Blanche hasn't asked you to intervene. Bidding them goodbye, you continue on to the makeshift den.";
		TraitGain "Wendis - OfficeEvent" for Wendis;
	[else if "Bernard - OfficeEvent" is not listed in traits of Bernard:
		say "     ";
		say "     ";
		TraitGain "Bernard - OfficeEvent" for Bernard;
	else if "Maeve - OfficeEvent" is not listed in traits of Maeve:
		say "     ";
		say "     ";
		TraitGain "Maeve - OfficeEvent" for Maeve;
	else if "Lumi - OfficeEvent" is not listed in traits of Lumi:
		say "     ";
		say "     ";
		TraitGain "Lumi - OfficeEvent" for Lumi;
	else if "Casper - OfficeEvent" is not listed in traits of Casper:
		say "     ";
		say "     ";
		TraitGain "Casper - OfficeEvent" for Casper;
	else if "Blanche - OfficeEvent" is not listed in traits of Blanche:
		say "     ";
		say "     ";
		TraitGain "Blanche - OfficeEvent" for Blanche;]

Section 3.2 - Library Events

instead of going to Computer Lab while (HP of Blanche is 1 and Fang is Booked):
	say "     Entering the computer room, you immediately notice Blanche sitting on the floor against the wall with Fang lying across her lap, the white wolf leaning over top of the darker-furred lupine and hugging [ObjectPro of Fang] tightly as tears trickle down her face. 'I'm so glad to have found you again. After what my parents did to you...' Blanche sobs, squeezing Fang against her even tighter. 'Don't dwell on past. Together again,' your [if hp of Fang is 2]Omega [else if hp of Fang is 3 or hp of Fang is 4 or HP of Fang is 6]Alpha [else if hp of Fang is 5]Beta [else]guard [end if]replies, pressing [ObjectPro of Fang]self firmly into the MILF's embrace. 'It's been years. I haven't done much with my life since then, but what did you do? I'm assuming that you haven't been a wolf all this time,' Blanche asks, a wet snort suggesting that she had tried to laugh but that a sob had occurred simultaneously. 'I have not,' Fang replies, remaining silent for a moment as [SubjectPro of Fang] eases [ObjectPro of Fang]self from the anthro wolf's grasp and licks her face to dry the tears.";
	if Fang is Male: [Fang is Male]
		say "     'Hospital first to save eye. Left scar but could have been worse,' Fang begins, pausing as Blanche runs a hand over his face, tracing the old wound with her fingers. 'Then court case. You know result. Wanted to see you, but you were gone. Not your fault.' The white wolf nods her head in commiseration, snuggling even closer to him. 'Finished school, went to college. Had a girlfriend.' He once again pauses, waiting for Blanche's reaction. 'I'm pleased for you. You had no way of knowing that we would see each other again. You were no longer mine...' she reassures him sadly. 'Joined army like my father. Found out girlfriend pregnant. Daughter born while away. Missed much of her life,' Fang laments, the pain of being absent from a child's life something that Blanche can only imagine, the white wolf sympathetically kissing him on the nose but otherwise remains quiet so as to allow him to continue.";
		WaitLineBreak;
		say "     'Reached captain. Then a mission went wrong. Many friends wounded. Mission was illegal. Honorable discharge to avoid big incident. Family would be ashamed,' Fang says, before descending into a coughing fit, unused to talking for this long. Nonetheless, he continues, 'Came home but had trouble coping. Isolated self. Even from family. Girlfriend left with daughter. Not long before city changed. Hurt me deeply. Don't blame her. Was not good father. Not around enough. She deserved better. Don't know where they are. Hopefully not here. Am hopefully better person now.' Unable to keep quiet any longer, Blanche squeezes Fang tightly and soothingly murmurs, 'Don't blame yourself too much either. I can only begin to imagine how you've suffered since that night, and that sort of trauma isn't going to go away just through sheer willpower. Just know that I'm here for you now should I be able to help you come to terms with it.' The two of them sit in silence for a few minutes, embracing and weeping both out of the pain that they've experienced and the joy of being together again.";
		WaitLineBreak;
		say "     'What about Lupa? I know that you said that you isolated yourself, but the two of you were so close. What has she done with her life?' Blanche eventually asks, regretting it instantly when Fang looks as though she has struck him. 'Too much guilt. Barely talked. What happened was my fault. Got us all hurt,' Fang begins before the white wolf shushes him. 'I'm more to blame than you are. I asked you to finish inside me. I involved my parents. It was my parents that hurt you both. I'll give you the same advice that my therapist gave me, though I seem to have mostly ignored it myself. Accept what has happened and move forward with how to make up for it. Both towards yourself and others. I'm not sure that I will ever forgive my parents, but I've never blamed either you or Lupa for any of it. Neither should you. My time with you two was one of the best periods in my life. You're likely still as obstinate now as you used to be, but trust me on this. What happened wasn't your fault. Did Lupa actually blame you, or do you just assume that she does?' Blanche gently scolds him.";
		say "     'Not obstinate. Strong-willed,' Fang replies, the beginning of a smile returning. The lupine MILF sighs and taps him on the nose. 'Answer the question.' 'No. Did not ask her. She went to college. Studied business. Worked overseas. Only know from Mom. May have changed since,' the male wolf responds. 'Well, better than nothing I suppose. Promise me this though. When all this is over, the two of us, plus however many children I have by then, will find her and the three of us can connect again. Whether we are wolves still or not,' Blanche vehemently states. [if HP of Fang is 3 or HP of Fang is 4]It's strange seeing your Alpha be bossed around like this, but he nonetheless agrees, some measure of his past connection to Blanche overwhelming any concern of displaying dominance[else]Fang agrees without much hesitation, Blanche's determination seemingly the necessary push that he needs to properly address his feelings of guilt[end if]. 'I doubt that anyone blames you as much as you think that they do, or are ashamed of you, and you won't know unless you ask them yourself,' the wolfess reminds him as she plays with his ears.";
	else: [Fang is Female]
		say "     'Hospital first for stitches. Your mother barely missed eye. Scarred but could have been worse,' Fang begins, pausing as Blanche runs a hand over her face, tracing the old wound with her fingers. 'Then court case. You know result. Wanted to see you, but you were gone. Not your fault.' The white wolf nods her head in commiseration, snuggling even closer to her. 'Finished school, went to college. Then grad-school. Had a boyfriend.' She once again pauses, waiting for Blanche's reaction. 'I'm pleased for you. You had no way of knowing that we would see each other again. You were no longer mine...' she reassures her sadly. 'Became corporate drone. Worked hard. Worked my way up. Natural talent. Given management of office overseas. Prioritized wrong. Boyfriend neglected. Work poor substitute,' Fang laments, Blanche sympathetically kissing her on the nose, perhaps aware that her own life bore similarities, but otherwise remains quiet so as to allow her to continue.";
		say "     'Didn't connect well with colleagues. They were lazy. I needed to adapt, but didn't. Increased own burden. No friends. Fell out of touch with family,' Fang says, before descending into a coughing fit, unused to talking for this long. Nonetheless, she continues, 'Eventually recalled to head office. Promoted. Coordinated foreign offices. More money, but more stress. Couldn't cope. Boyfriend found someone new. She gave him attention he deserved. Not long before city changed. Hurt me deeply. Don't blame him. Was not good partner. Too busy with work. Alone. Stressed. Had breakdown. Let go with severance. Learned lesson, but still felt like failure.' Unable to keep quiet any longer, Blanche squeezes Fang tightly and soothingly murmurs, 'Don't blame yourself too much either. I can only begin to imagine how you've suffered since that night, and that sort of trauma isn't going to go away just through sheer willpower. Just know that I'm here for you now should I be able to help you come to terms with it.' The two of them sit in silence for a few minutes, embracing and weeping both out of the pain that they've experienced and the joy of being together again.";
		WaitLineBreak;
		say "     'What about Wolf? I know that you said that you fell out of touch with your family, but surely that didn't include him. The two of you were so close. What did he end up doing?' Blanche eventually asks, regretting it instantly when Fang looks as though she has struck her. 'Blamed himself for what happened. Not his fault. Blamed self too. Barely talked since then,' Fang begins before the white wolf shushes her. 'I'm more to blame than either of you. I asked him to finish inside me. I involved my parents. It was my parents that hurt you both. I'll give you the same advice that my therapist gave me, though I seem to have mostly ignored it myself. Accept what has happened and move forward with how to make up for it. Both towards yourself and others. I'm not sure that I will ever forgive my parents, but I've never blamed either you or Wolf for any of it. Neither should you. My time with you two was one of the best periods in my life. You're likely still as obstinate now as you used to be, but trust me on this. Neither of you were at fault. Did you ever actually tell Wolf that you didn't blame him, or did you just assume that he would know?' Blanche gently scolds her.";
		say "     'Not obstinate. Strong-willed,' Fang replies, the beginning of a smile returning. The lupine MILF sighs and taps her on the nose. 'Answer the question.' 'No. Never told him. He went to college. Joined the army. Like Dad. Don't even know if he survived,' the dark-furred wolf responds, a tear forming in the corner of her eye at the thought. 'Of course he'll have survived, even without you to protect him. Promise me this though. When all this is over, the two of us, plus however many children I have by then, will find him and the three of us can connect again. Whether we are wolves still or not,' Blanche vehemently states. [if HP of Fang is 3 or HP of Fang is 4]It's strange seeing your Alpha be bossed around like this, but she nonetheless agrees, some measure of her past connection to Blanche overwhelming any concern of displaying dominance[else]Fang agrees without much hesitation, Blanche's determination seemingly the necessary push that she needs to properly address her feelings of guilt[end if]. 'He probably needs to hear that you don't blame him as much as you need for him to know. Don't let this ruin the bond that you once had,' the wolfess reminds her as she plays with her ears.";
	WaitLineBreak;
	say "     'Tell me about you. After you left,' Fang asks, adamant that [PosAdj of Fang] old love will tell [ObjectPro of Fang] despite her protestations that she hadn't done much. Tears renewed, Blanche begins. 'I had a miscarriage. The doctor said that it wasn't a surprise after what I had gone through.' Your [if hp of Fang is 2]Omega [else if hp of Fang is 3 or hp of Fang is 4 or HP of Fang is 6]Alpha [else if hp of Fang is 5]Beta [else]guard-wolf [end if]interrupts to lick her cheek, his own eyes moist with pain at hearing this. 'After that, I went to live with an aunt in New York and finish high school. She and my uncle blamed me for it all and made sure that I knew it, but my cousins were a lot more supportive. I don't know whether I would have been able to manage without them. After that I went off to college and grad-school. Thinking about it, I probably studied the similar things to [if Fang is Male]Lupa[else]you[end if], specializing in entrepreneurship and project management, though I put in more than a little extra effort to do some non-related papers too to give myself a wider understanding of the world. I had a few people that I was friends with, but no boyfriend or girlfriend, and none of them kept in contact when we graduated. Too much time trying to learn, not enough time having fun with them, I guess.'";
	say "     'There were a few companies that expressed an interest in employing me, the sort of people that use lecturers as talent scouts. Pharmaceuticals, cosmetics, even a tech developer. I had difficulty deciding whose offer to accept until the owner of a chain of retail stores took me out to lunch to offer me a job. I thought that anyone who took the time to meet prospective employees personally would be decent to work for, especially when the salary offered was so high for a first job. I'd only been there about a month, learning the finer points of the business from a senior employee, when the CEO's son began making advances on me and I found myself transferred to being his personal assistant. Long story short, it didn't take long before he tried to grope me. I made an official complaint. Perhaps I was naive, but I was shocked when instead of disciplining him, I was instead accused of insubordination and fired. I should have hired a lawyer, but I was sure that I wouldn't win anyway and that I'd be employed again soon enough. In hindsight, I don't think that insubordination is valid grounds for being fired, but at the time I was too upset to think it through.'";
	WaitLineBreak;
	say "     Blanche pauses for a moment, catching her breath and snuggling with the wolf on her lap, before continuing her story. 'It turned out that it wasn't as easy as that. All the companies that had previously seemed eager to have me join them suddenly didn't want anything to do with me. I didn't have much money of my own and I didn't want to have to ask any of my cousins for help. I would have donated my organs to science before talking to my parents again, so in the end I decided that I needed a change of scenery. I came here and eventually was able to get a job at a company that was developing something to do with water filtration. I was merely an office drone, and so was vastly over-qualified, but I needed the money. Ultimately, it ended up being an alright decision. It wasn't the most thrilling of work and the boss didn't like me much, but I was never threatened with being fired and no one made any sexual advances on me. The best thing was that I my work colleagues were friendly and they would invite me out to coffee or to join them at the park.'";
	say "     Taking solace in a happy memory among so many painful ones, Blanche kisses Fang's head and ruffles the fur on [PosAdj of Fang] back. 'I worked there until the city changed, but just before that, the business and all the research was bought by some foreign tech company. Archetech, I think it was called. Surprisingly, at least to me, they wanted to keep everyone employed, office staff included, though my boss decided that he was going to retire. I even met the founder and his wife while they were finalizing the deal, though I can't remember their names. They were friendly enough and one of my colleagues mentioned that with my qualifications, that I would be an excellent replacement as the new manager. I would finally have been able to see what I was capable of, but then while we were working late, the emergency broadcast that was the first sign of the crisis happened. The ground split open in the Capitol District, everyone else desperately tried to get home, and I was left alone taking shelter in the office while the ground shook and the district burned.'";
	WaitLineBreak;
	say "     'Part of me thought that I was being punished for being happy, just as I had been with you and [if Fang is Male]Wolf[else]Lupa[end if], so all that I could think about was when we were young and the three of us were together, then the supply cabinet fell on me. I'm not sure how I survived, but when I woke up I was like this. It is slightly amusing that you ended up a dark-furred wolf while I ended up a white one, but I can't say that I'm disappointed. Eventually, I ran out of food from the breakroom and had to go out scavenging. I remembered what your father had taught us when we were little, but that didn't factor in dragons climbing out of lava vents and trying to rape you. If it hadn't been for [if player is not defaultnamed][Name of Player][else]our anonymous benefactor[end if], I wouldn't have ever met you again. Since then, I've been fortunate enough to start a family, all of whom I love dearly. I'm sure that they would love to meet you, though I will first have to tell them about my past. That is unless they have overheard me at some point. I wouldn't put it past them.'";
	say "     'Sorry if that was long-winded, especially compared to your concise explanation, but it is such a relief to be with you again. I think that I just wanted to remember what it was like to talk to you,' Blanche apologizes to Fang, who promptly shakes [PosAdj of Fang] head. 'I enjoyed it. Can't talk well anyway,' [SubjectPro of Fang] replies. 'Together again.' 'You'll have to tell me about what has happened to you since you became a wolf, though perhaps another time[if HP of Lux > 0]. I would also love to hear about your delightful children[end if],' Blanche murmurs before settling down to nap on top of her childhood sweetheart, the tension melting from her body as she drifts off. Once [SubjectPro of Fang] is sure that she is asleep, Fang looks over at you and gives you a meaningful look. You get the impression that [SubjectPro of Fang] is content for you to know, but that you are to keep what you heard to yourself. Nodding your understanding, you slip back out into the main hall.";
	now HP of Blanche is 2;
	move Player to Grey Abbey Library;


Section 4 - Endings
[to come later]

Blanche ends here.
