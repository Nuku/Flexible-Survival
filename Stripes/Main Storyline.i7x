Version 3 of Main Storyline by Stripes begins here.
[ Version 2.3 - Dr. Medea]
[ Version 3 - Rewritten by Wahn]

"Contains the content for Dr. Matt and the Main Quest Storyline."

Section 0 - Dr Matt

Table of GameCharacterIDs (continued)
object	name
Doctor Matt	"Doctor Matt"

Doctor Matt is a person.
The description of Doctor Matt is "[DrMattDesc]".
Doctor Matt is in Primary Lab.
understand "Matt" as Doctor Matt.
understand "Left Behind Recording of Doctor Matt " as Doctor Matt.
the icon of Doctor Matt is figure of DrMatt_face_icon.

to say DrMattDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Doctor Matt] <- DEBUG[line break]";
	if HP of Doctor Matt is 100:
		say "     There is a small tape recorder with a sticky note on it, labeled as [']Doctor Matt['] on one of the lab tables.";
	else:
		say "     A figure in a full hazmat suit is busily working at the various terminals in the lab, wandering from one to the other when he isn't sitting in one of the chairs. His name badge declares him to be [']Doctor Matt[']. From the overall shape of the man, he is still fully human, and you can see his unchanged features through the Plexiglas visor of his suit. You can't help but feel some respect for the fact that he managed to retain his original form and seems to be busy at work here while most people in the city just hump away at each other.";

the Conversation of Doctor Matt is { "empty" };

MattCollection is a number that varies.

Section 1 - Talking w/Dr Matt (this drives the Main Storyline quests)

Instead of conversing the Doctor Matt:
	if HP of Doctor Matt is 100:
		say "     'If you are listening to this, you are probably still in the city. My condolences. I have left behind some facilities for you. You will find they can enhance your abilities due to the nanite infection.";
		say "     [bold type]((Every 3 levels, starting at level 3, you may gain one feat by coming here and typing volunteer))[roman type]";
		say "     'God Speed and Good Luck,' says the recording before clicking off.";
		stop the action;
	if HP of Doctor Matt is 0:
		project the Figure of DrMatt_face_icon;
		say "     As you step up to him, the man in the hazmat suit takes you in with a curious look, his amber-colored eyes studying you with interest. 'Welcome to Trevor Labs,' he says and extends a gloved hand to shake yours. 'I am Doctor Matthew Burnell, but most just call me Doctor Matt. Since I didn't hear any sounds of a scuffle from below, I presume Orthas let you in? She wouldn't do that with a crazed infectee, so it's nice to meet you.' ";
		if scenario is "Researcher":
			say "He focuses his gaze on you for a moment, then comments, 'You don't look nearly as lost and confused as most. Are you another researcher? Excellent. I'm looking into a cure for this plague, but my research is just in the beginning stages to be honest. There is something else of interest however...";
		else:
			say "He laughs a little, nervous and forced. 'Anyway, before you ask, no, we did not have anything to do with the nanite infestation. You didn't know it was nanites? Now you do. I have been studying them for some time since the grid went dark. I'm not much closer to a cure... but I did find something else of interest however,' he says, pausing for effect.";
		say "     'I can manipulate existing strains, just a little, for those already infected, like you. Don't look at me like that. Anyone not in a fully sealed environment is infected by now. [if humanity of player < 80]In fact, I'd say you've already been pretty badly infected. Interesting... [end if]But now for the good news. As you develop resistances to the nanite infection and your system becomes stronger, I can redirect that growth to amazing, and planned, almost superhuman abilities,' he declares, sounding quite proud of himself. 'There's only one catch... I haven't had any test subjects to actually try it on so far. The creatures roaming around outside are too far gone to even talk to, and Orthas has to stay on post to guard the entrance.' The man gives you a calculating gaze, then adds in a persuasive tone, 'So how about you? You could [bold type]volunteer[roman type] for some tests, and we'll make you better than when you started. That'll help your chances to outlast this situation and what you might encounter outside and allow me to progress in my research. A fair deal, right?'";
		WaitLineBreak;
		say "     He doesn't really wait for you to reply, instead immediately turning to one of the monitors and starting a new file about 'Test Subject B'. Under his breath, the man murmurs to himself, 'Maybe the authorities will finally listen to me about delaying if I can show some first results. They simply must learn to understand that throwing more people at this will be worse than useless unless they know what they're getting into.'";
		extend game by 16;
		now HP of Doctor Matt is 1;
		say "[bold type]((Every 3 levels, starting at level 3, you may gain one feat by coming here and typing volunteer))[roman type]";
	else:
		say "[DrMattTalkMenu]";

to say DrMattNaniteInfoMenu:
	LineBreak;
	project the figure of DrMatt_face_icon;
	say "     What detail of the nanites do you want to talk about with Dr. Matt?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Nanite Basics";
	now sortorder entry is 0;
	now description entry is "Get an explanation of what the nanites are on the basic level";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Nanite Basics"):
					say "[DrMattNaniteTalk1]";
				wait for any key;
				say "[DrMattNaniteInfoMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You say goodbye to the suited man for now and he turns back to his research instruments with a nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DrMattNaniteTalk1:
	say "     As you ask Dr. Matt to explain the basics of nanite functionality to you, he gives an eager nod, waving you to follow him to a nearby terminal. Sitting down in front of the screen, he types a few quick commands, then pulls up a folder containing what seems to be a lecture or presentation. 'As you might know, nanites are one of the most promising future technologies that scientists are trying to develop. Imagine being able to inject a payload of them and just eliminating any and all bacteria or viruses of the targeted type.' After a click, you can see an animation of cells on the screen, intermixed with red objects that are then attacked by microscopic machines and destroyed. 'From what I and everyone else knew, nanite systems like this are still years away from perfection, with exhaustive medical studies to do first. No one even imagined doing things like we're experiencing now.'";
	say "     'The central issue is control, you know. One can do only so much on the minuscule scale, and shoehorning any kind of memory and transmission capability leaves no room at all for anything else,' Dr. Matt explains, then pulls up recorded images from what must be one of the insanely expensive apparatuses in his lab here. On them, you see tiny metallic specs, some showing a basic hexagonal shape that are clustered together, others in a myriad of shapes slowly moving around, armed with grippers and feelers. The latter kind are spreading out to start working on an introduced sample of cells. 'Whoever thought up this nanite infection was a genius, if a criminally short-sighted one. You see, we're not dealing with one type of nanites, much rather dozens of them. Manipulators mainly, and shepherding them, the control units. This way each nanite doesn't need everything in it, but specialization and swarming allows astonishingly complex behavior!'";
	WaitLineBreak;
	say "     Dr. Matt goes through numerous short vids of the hexagonal nanites, linking together in a linear pattern initially, then splitting apart again and clumping in more random ways. Pointing at the first structure, he adds, 'From what I can tell, this is a receiver. They're the first thing that newly formed control nanites assemble to, but either there is no signal coming, or the first and only command these nanites are getting sets them to independent control. They recycle the structure soon after, and anything beyond this point is quite chaotic in its structure as the nanites grow and learn on their own. I need more data before I can give details on that.'";
	say "     Waving his hand in a casual way and indicating yourself, he adds, 'By the way, understanding these structures is how I can do my little adjustments to help you if you [bold type]volunteer[roman type]. I make use of what receivers there are at that moment, inserting a few of my own commands. Sadly, the remaining nanites seem to recognize the intrusion and quickly hunt down any clusters that hold foreign code, disassembling them. So the amount of change possible is quite limited. No easy cure for the nanite plague that way, I'm afraid.'";

to say DrMattTalkMenu:
	LineBreak;
	project the figure of DrMatt_face_icon;
	say "     What do you want to talk about with Dr. Matt?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Helping him";
	now sortorder entry is 0;
	now description entry is "Offer your assistance to his efforts";
	[]
	if HP of Doctor Matt is 2:
		choose a blank row in table of fucking options;
		now title entry is "Delivering the samples he needs";
		now sortorder entry is 2;
		now description entry is "Tell him you got some samples for him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Nanite Infection";
	now sortorder entry is 3;
	now description entry is "Ask him what he knows about the outbreak";
	[]
	choose a blank row in table of fucking options;
	now title entry is "How he ended up here";
	now sortorder entry is 4;
	now description entry is "Find out how he got here";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Communicating with the outside world";
	now sortorder entry is 4;
	now description entry is "Ask about his connection to the military";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Helping him"):
					say "[DrMattQuestTalk]";
				if (nam is "Delivering the samples he needs"):
					DrMattSampleDelivery;
				if (nam is "The Nanite Infection"):
					say "[DrMattTalk1]";
				if (nam is "How he ended up here"):
					say "[DrMattTalk2]";
				if (nam is "Communicating with the outside world"):
					say "[DrMattTalk3]";
				wait for any key;
				say "[DrMattTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You say goodbye to the suited man for now and he turns back to his research instruments with a nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DrMattTalk1:
	say "[DrMattNaniteInfoMenu]";

to say DrMattTalk2:
	say "     Dr. Matt takes a deep breath, then turns the visor of his helmet your way and waves at the lab around you both. 'I was here when it started actually. With critical deadlines to meet for one of my projects, I was doing an all-nighter. Then morning came and... I heard an alarmingly loud crash from downstairs, followed by other noises. Of course I couldn't simply go and check it out since I was in the class 4 isolation lab. It became obvious that a fight was going on when I heard the gunshots during my airlock procedure, but by the time the outer door finally opened, all was quiet again. I feared the worst and ran towards the lobby while still in my suit, only to find a wholly different scene than I had imagined. Oh, the room was thrashed thoroughly to be sure, but the huge draconic creature that was pinning our night security guard to the floor wasn't interested in actually harming him at all.'";
	say "     'Imagine my surprise at seeing what appeared to be a car-sized quadrupedal reptile on top of Mr. Janakos, engaged in sexual intercourse. A fascinating sight for sure, seeing that the creature didn't seem to belong to any natural genus, having six limbs in all, four legs and two wings. Also, it was sodomizing its human partner with a significantly over-sized penis without apparent harm to his well-being. In fact, he was moaning in arousal from the treatment.' Dr. Matt shrugs a little as he recounts this, his tone of voice relaxed and neutral, showing that he's more interested in factual matters than judging. 'Unable to affect the creature by myself in any way, the only thing I could do was observe, dictating some whispered notes into this suit's audio pickups. After the creature eventually deposited its seed, it wandered off, leaving me free to come to its groaning victim's help.'";
	WaitLineBreak;
	say "     Dr. Matt recounts rushing downstairs with a large medkit he grabbed from a wall holder at the lab entrance, only to find the security guard in almost perfect health, the last signs of bruises and cuts vanishing before his very eyes. Yet then a kind of rash started spreading over his skin, with it becoming black and scaly. Hastily rushing his patient upstairs to the lab, Dr. Matt examined him, which the organized researcher captured on video too. A moment later, you're watching a computer screen, showing the image of a naked and Greek-American man lying on a stretcher. He's quite well built, broad shouldered and strong, and you can see the text 'Test Subject A: Orthus Janakos' in the corner of the screen. Over the next several minutes, you see him transform into the anthro dragoness you know as Orthas, all of which is narrated by Dr. Matt - even though you could have done well without being told just which bone breaking is responsible for what crunch.";
	say "     'I knew something had to be done to find the cause of this contagion, and a cure, so I went right back to work afterwards. As it turned out, nanites are the culprits here and they have wide-ranging transformative, as well as libido increasing, effects. I was quite lucky that I had no time to take off my suit in that first rush towards the lobby, otherwise I might very well be just another of the unfortunate victims of the nanite plague.' The suited man points to a large security window with embedded wire in the back of his lab, and the airlock beside it. 'To remain unaffected and be able to work on researching the nanites, I had to re-purpose the isolation lab as living quarters. It is somewhat amusing that a room that originally held samples of virulent diseases now has become my refuge and the one place I can take off this suit. Also, I really have to recommend Orthas for her sense of duty. Without her to keep guard even after her transformation, I would never have been able to remain here.'";

to say DrMattTalk3:
	say "     The suited man looks up at you as you bring up connecting with the world outside of the city, glancing at you through his glasses and nodding. 'Yes, I do still have contact with a colleague in the CDC, Dr. Sutton. As luck will have it, the Trevor Labs facility is part of the shielded communications network that connects a number of selected sites of bio-safety level 4 in case of emergencies. If only Greg and I could have convinced the authorities that they have to delay the planned surge of troops into the city!' He distractedly moves to stroke through his gray hair, only to have his gloved fingers bump against the Plexiglas screen of the helmet. Lowering his hand with an annoyed grunt, Dr. Matt makes a frustrated throwing-away gesture.";
	say "     'They just won't listen! Sending more troops will only expand the ranks of the infected unless they're properly prepared. And for that, we need more research!' The man focuses on yourself with an intense expression that speaks of his desperate need for progress, and the frustration of a scientist at being rushed. He adds in a grumbling tone, 'The infighting out there is almost as bad as the beasts out on the streets here. Politicians screaming for something to be done yesterday, generals drawing in what local forces they can and preparing for a Hail-Mary push to 'overwhelm the beasts', with those who understand anything about the situation in the middle and ignored by both. Please, help me get some results so we can make them listen.'";

Section 2 - Quests

to DrMattSampleQuestStart:
	say "     As you offer your help, Dr. Matt looks at you through the clear screen of his suit helmet and smiles eagerly. 'Splendid! I had hoped you might be willing to assist. To get a handle on this hole situation here, I need more data - and fast, otherwise the military might just move in unprepared in their usual impatience. Can you imagine the scale of what a disaster that would be? Chaos and casualties in the thousands, that's for sure.' The doctor's expression darkens as he says those words, telling you that he's genuinely concerned about the outcome. From what you've learned of the nanite infection so far, you can't help but agree about his worries, as even trained soldiers would surely succumb quickly if they went up against the infected without any protection from transformation. Close quarters fighting against infected who just shrug off most wounds after a few seconds isn't to be taken lightly.";
	say "     Raising one hand as if to nervously brush over his graying hair, Matt stops himself before he hits the helmet, letting his gloved fingers drop with a frown. 'Anyways, since we only have this limited amount of time, I would suggest you move quickly. I have been trying to delay convince the military to delay its [']surge['], but without data to support my warnings, they're easily ignored. Please come over here for a moment with me,' he says, then walks to a nearby terminal and sits down in front of it. He opens up a folder named 'observed specimens', which contains a whole row of still images from surveillance cams. 'Thankfully the exterior security system's cameras do have battery backup, so they've captured footage of some interesting creatures since the outbreak. Here, this is something that I earmarked being of special interest.'";
	WaitLineBreak;
	if hermaphrodite is not banned and furry is not banned:
		if bodyname of player is "Hermaphrodite Blue Gryphon":
			say "     After a double-click, you see the image of a flying creature with blue wings and blue fur appear on the screen. You know the shape well, as it is what your body currently looks like. Clearing his throat and falling back into an almost lecture-like tone, Dr. Matt points out details of the gryphon depicted. 'As you can see, this being has characteristics of members in the Accipitridae family, namely this beak, wings and the typical curved claws. Yet at the same time, it also is quite similar to a feline of the Panthera genus.' This time the suited man taps the overall leonine body, paws and tail with tail tuft. 'Most creatures that roam the streets are anthropomorphized versions of specific animals, but this appears to be some sort of hybrid. I must have samples to find out how this is possible.' Turning his attention to you, he adds, 'It is... fortunate, to have you here as a live subject, so please, have a seat on the examination table. This will only take a little while.'";
			say "     Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then draws some blood and swabs the inside of your cheek, all in the expert manner of an experienced doctor.";
			DrMattGryphonExam;
			now Strength of Doctor Matt is 1; [Gryphon Samples Delivered]
		else: [non-grpyhons must get the milk]
			say "     After a double-click, you see the image of a flying creature with blue wings and blue fur appear on the screen. Clearing his throat and falling back into an almost lecture-like tone, Dr. Matt points out details of the gryphon depicted. 'As you can see, this being has characteristics of members in the Accipitridae family, namely this beak, wings and the typical curved claws. Yet at the same time, it also is quite similar to a feline of the Panthera genus.' This time the suited man taps the overall leonine body, paws and tail with tail tuft. 'Most creatures that roam the streets are anthropomorphized versions of specific animals, but this appears to be some sort of hybrid. I must have samples to find out how this is possible. Bodily fluids like milk or cum should serve well in that regard, please see if you can acquire a suitably large sample.' That said, he turns back to his workstation.";
	else:
		say "     After a double-click, you see the image of a flying creature with blue wings and blue fur appear on the screen. Clearing his throat and falling back into an almost lecture-like tone, Dr. Matt points out details of the gryphon depicted. 'As you can see, this type of creature seems to be a hybrid of two distinct species, as well as being blue, and dual gendered. Sadly, it appears that they're quite rare, as no specimens have appeared on any of the tapes since those early examples. A pity, as it would have been fascinating to study them.'";
		say "     (Note: This quest stage was skipped due to your ban settings)[line break]";
		now Strength of Doctor Matt is 1; [Gryphon stage skipped]
	WaitLineBreak;
	if bodyname of player is "Goo Girl" or bodyname of player is "Blue Gel" or bodyname of player is "Pink Gel" or bodyname of player is "Purple Gel":
		say "     The next image that he pulls up shows a humanoid figure walking, or maybe gliding, along the sidewalk down the road from the Trevor Labs building, only seen for a moment. It is a bit grainy from being zoomed in to. 'This here is another specimen that had me guessing since it was captured on tape. Vaguely humanoid and semitransparent, yet with no recognizable internal organs. I must admit that I do not know how it can exist and be capable of any greater intelligence than an amoeba, but as you can see, it moves with focused intent and mimics the external shape of a human quite well.' Turning his attention to you, he adds, 'It is... fortunate, to have you here as a live subject, so please, have a seat on the examination table. This will only take a little while.'";
		DrMattGooExam;
		if Strength of Doctor Matt is 0: [nothing delivered yet]
			now Strength of Doctor Matt is 2; [goo delivered]
		else if Strength of Doctor Matt is 1: [gryphon stage already finished (ban or shape)]
			now Strength of Doctor Matt is 3; [milk + goo delivered]
	else: [normal people have to gather samples]
		say "     The next image that he pulls up shows a humanoid figure walking, or maybe gliding, along the sidewalk down the road from the Trevor Labs building, only seen for a moment. It is a bit grainy from being zoomed in to. 'This here is another specimen that had me guessing since it was captured on tape. Vaguely humanoid and semitransparent, yet with no recognizable internal organs. I must admit that I do not know how it can exist and be capable of any greater intelligence than an amoeba, but as you can see, it moves with focused intent and mimics the external shape of a human quite well.' Turning his attention to you, he adds, 'The type of creature doesn't seem to be too prevalent close by to the Trevor Labs, as we don't have any encounters besides this on the tapes. You might need to expand your search radius to other parts of the city to find them, but I'm sure you'll manage. Once you find one, please scoop up a small amount of its mass into these sampling cups.'";
		say "     You're handed small screw-top plastic containers by the suited scientist and he explains how to properly label them once filled. 'Thank you for your willingness to advance the effort in understanding the infection. Good luck,' Dr. Matt adds with a smile, then turns back to the workstation he's doing most of his research on. Seems you've been dismissed.";
	if Strength of Doctor Matt is 3: [already everything delivered]
		WaitLineBreak;
		say "     Clearing his throat, the doctor adds, 'Well, it seems I got everything I need for right now then. Thank you for the assistance. I will start analyzing the samples and hopefully get a lot of useful data from them.'";
		now HP of Doctor Matt is 3; [post-gather quest]
		now level of Doctor Matt is turns;
		increase score by 20;
	else: [still need to gather stuff]
		now HP of Doctor Matt is 2; [gather quest given]
		now level of Doctor Matt is 0;
		now hobo-grmilkhelp is turns;

to DrMattGooDelivery:
	if carried of glob of goo > 1:
		LineBreak;
		say "     [bold type]You lose 2 globs of goo![roman type][line break]";
		decrease carried of glob of goo by 2;
	else if carried of blue gel > 1:
		LineBreak;
		say "     [bold type]You lose 2 blue gel![roman type][line break]";
		decrease carried of blue gel by 2;
	else if carried of pink gel > 1:
		LineBreak;
		say "     [bold type]You lose 2 pink gel![roman type][line break]";
		decrease carried of pink gel by 2;
	else if carried of purple gel > 1:
		LineBreak;
		say "     [bold type]You lose 2 purple gel![roman type][line break]";
		decrease carried of purple gel by 2;

to DrMattGooExam:
	say "     Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then pokes and prods your partially liquid body experimentally and makes some notes with observations, one of which is that you do not really feel pain when part of your mass is displaced from its previous location. Finally, he pulls out a sampling cup and labels it, then directs you to scoop a little bit of material from your torso into it and screw on the lid. Raising the plastic cup and looking with interest at the sample that sloshes back and forth on its own inside, the doctor then places it in a laboratory fridge for later examination. 'Thank you for your willingness to advance the effort in understanding the infection,' Dr. Matt adds with a smile, then turns back to the workstation he's doing most of his research on.";

to DrMattGryphonExam:
	if player is male: [male + herm]
		say "He clears his throat and requests a sample of your sexual fluids too, but is less hands-on in gathering that, simply providing you a sample cup to jerk off into instead. Watching unashamedly as you stroke your dick and fill it with throbs of cum, the suited scientist accepts the screw-top cup eagerly and labels it, then stashes a small box with all of your samples in a laboratory fridge. ";
	else if player is female:
		say "He clears his throat and requests a sample of your sexual fluids too, but is less hands-on in gathering that, simply providing you a swab-stick with cotton end. Watching unashamedly as you rub yourself, then brush the swab along the inside of your wet nether lips, he accepts the sample eagerly and puts it in a labeled screw-top cup, then stashes a small box with all of your samples in a laboratory fridge. ";
	else:
		say "He clears his throat and asks a few questions about your genderlessness, then takes a cotton swab and moistens it with a few drips of distilled water, brushing it over your flat crotch a few times before putting that in a screw-top sample cup and labeling it. Afterwards, he stashes a small box with all of your samples in the laboratory fridge. ";
	say "'Thank you for your willingness to advance the effort in understanding the infection,' Dr. Matt adds with a smile, then turns back to his workstation.";

to DrMattSampleDelivery:
	say "     As you approach Dr. Matt and tell him that you have got what he wanted, the suited scientist bids you to unpack what you have brought him. Looking over your items, he ";
	if Strength of Doctor Matt is 0: [nothing delivered yet]
		if carried of gryphon milk > 1 and (carried of glob of goo > 1 or carried of blue gel > 1 or carried of pink gel > 1 or carried of purple gel > 1): [got everything]
			say "gives a satisfied nod, then starts to sort your samples into a little box and stashes it in a laboratory fridge. 'Splendid. Thank you for the assistance. I will start analyzing the samples and hopefully get a lot of useful data from them.'";
			LineBreak;
			say "     [bold type]You lose 2 gryphon milk![roman type][line break]";
			decrease carried of gryphon milk by 2;
			DrMattGooDelivery;
			now Strength of Doctor Matt is 3; [everything delivered]
		else if carried of gryphon milk is 1 and (carried of glob of goo > 1 or carried of blue gel > 1 or carried of pink gel > 1 or carried of purple gel > 1): [not enough milk, but enough goo]
			if bodyname of player is "Hermaphrodite Blue Gryphon":
				say "gives a thoughtful nod, then puts some of the samples into a little box. 'Sadly, you do not have enough of the gryphon milk for a full analysis. But since you appear to be one yourself, that is no problem either. Please, have a seat on the examination table. This will only take a little while.' Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then draws some blood and swabs the inside of your cheek, all in the expert manner of an experienced doctor. ";
				DrMattGryphonExam;
				now Strength of Doctor Matt is 3; [everything delivered]
			else:
				say "gives a thoughtful nod, then puts some of the samples into a little box and stashes it in a laboratory fridge. 'Sadly, you do not have enough of the gryphon milk for a full analysis. Please gather some more and bring it to me.'";
				now Strength of Doctor Matt is 2; [goo delivered]
			DrMattGooDelivery;
		else if carried of gryphon milk is 0 and (carried of glob of goo > 1 or carried of blue gel > 1 or carried of pink gel > 1 or carried of purple gel > 1): [no milk, but enough goo]
			if bodyname of player is "Hermaphrodite Blue Gryphon":
				say "gives a thoughtful nod, then puts some of the samples into a little box. 'Sadly, you do not have any gryphon samples for analysis. But then, since you appear to be one yourself, that is no problem either. Please, have a seat on the examination table. This will only take a little while.' Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then draws some blood and swabs the inside of your cheek, all in the expert manner of an experienced doctor. ";
				DrMattGryphonExam;
				now Strength of Doctor Matt is 3; [everything delivered]
			else:
				say "gives a thoughtful nod, then puts your samples into a little box and stashes it in a laboratory fridge. 'That is the fluidic creature's samples taken care of, but I still require some fluids from a gryphon. Please see if you can acquire some and bring it to me.'";
				now Strength of Doctor Matt is 2; [goo delivered]
			DrMattGooDelivery;
		else if carried of gryphon milk > 1 and (carried of glob of goo < 2 and carried of blue gel < 2 and carried of pink gel < 2 and carried of purple gel < 2): [got milk, not enough goo]
			if bodyname of player is "Goo Girl" or bodyname of player is "Blue Gel" or bodyname of player is "Pink Gel" or bodyname of player is "Purple Gel":
				say "gives a thoughtful nod, then puts some of the samples into a little box and stashes it in a laboratory fridge. 'Sadly, you do not have enough samples of fluidic creatures for a full analysis. But since you appear to be one yourself, that is no problem either. Please, have a seat on the examination table. This will only take a little while.'";
				LineBreak;
				say "     [bold type]You lose 2 gryphon milk![roman type][line break]";
				decrease carried of gryphon milk by 2;
				DrMattGooExam;
				now Strength of Doctor Matt is 3; [all delivered]
			else:
				say "gives a thoughtful nod, then puts some of the samples into a little box and stashes it in a laboratory fridge. 'Sadly, you do not have enough samples of fluidic creatures for a full analysis. Please gather some more and bring them to me.'";
				LineBreak;
				say "     [bold type]You lose 2 gryphon milk![roman type][line break]";
				decrease carried of gryphon milk by 2;
				now Strength of Doctor Matt is 1; [milk delivered]
		else if carried of gryphon milk is 0 and (carried of glob of goo is 0 and carried of blue gel is 0 and carried of pink gel is 0 and carried of purple gel is 0): [neither enough milk nor goo]
			if bodyname of player is "Hermaphrodite Blue Gryphon":
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have either the gryphon or the fluidic samples that I requested. But since you appear to be a carrier of the hybrid gryphon infection right now, at least one of those issues is no problem. Please, have a seat on the examination table. This will only take a little while.'";
				say "     Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then draws some blood and swabs the inside of your cheek, all in the expert manner of an experienced doctor. ";
				DrMattGryphonExam;
				now Strength of Doctor Matt is 1; [Gryphon Samples Delivered]
			else if bodyname of player is "Goo Girl" or bodyname of player is "Blue Gel" or bodyname of player is "Pink Gel" or bodyname of player is "Purple Gel":
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have either the gryphon or the fluidic samples that I requested. But since you appear to be a carrier of a fluidic infection right now, at least one of those issues is no problem. Please, have a seat on the examination table. This will only take a little while.'";
				DrMattGooExam;
				now Strength of Doctor Matt is 2; [goo delivered]
			else:
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have either the gryphon or the fluidic samples that I requested. Please, gather them with the suitable haste.'";
	else if Strength of Doctor Matt is 1: [milk delivered]
		if (carried of glob of goo > 1 or carried of blue gel > 1 or carried of pink gel > 1 or carried of purple gel > 1): [got goo]
			say "gives a satisfied nod, then adds your samples to the little box holding the previous batch and puts it back in a laboratory fridge. 'Splendid. Thank you for the assistance. I will start analyzing the samples and hopefully get a lot of useful data from them.'";
			DrMattGooDelivery;
			now Strength of Doctor Matt is 3; [everything delivered]
		else: [not enough goo]
			if bodyname of player is "Goo Girl" or bodyname of player is "Blue Gel" or bodyname of player is "Pink Gel" or bodyname of player is "Purple Gel":
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have enough samples of fluidic creatures for a full analysis. But since you appear to be one yourself, that is no problem either. Please, have a seat on the examination table. This will only take a little while.'";
				DrMattGooExam;
				now Strength of Doctor Matt is 3; [everything delivered]
			else:
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have the fluidic samples that I requested. Please, gather them with the suitable haste.'";
	else if Strength of Doctor Matt is 2: [goo delivered]
		if carried of gryphon milk > 1:
			say "gives a satisfied nod, then adds your samples to the little box holding the previous batch and puts it back in a laboratory fridge. 'Splendid. Thank you for the assistance. I will start analyzing the samples and hopefully get a lot of useful data from them.'";
			LineBreak;
			say "     [bold type]You lose 2 gryphon milk![roman type][line break]";
			decrease carried of gryphon milk by 2;
			now Strength of Doctor Matt is 3; [everything delivered]
		else if carried of gryphon milk is 1: [not enough milk]
			if bodyname of player is "Hermaphrodite Blue Gryphon":
				say "gives a thoughtful nod, then says, 'Sadly, you do not have enough of the gryphon milk for a full analysis. But since you appear to be one yourself, that is no problem either. Please, have a seat on the examination table. This will only take a little while.' Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then draws some blood and swabs the inside of your cheek, all in the expert manner of an experienced doctor. ";
				DrMattGryphonExam;
				now Strength of Doctor Matt is 3; [everything delivered]
			else:
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have enough of the gryphon milk for a full analysis. Please, gather them with the suitable haste.'";
		else if carried of gryphon milk is 0:
			if bodyname of player is "Hermaphrodite Blue Gryphon":
				say "gives a slight frown, then says, 'Sadly, you do not have any gryphon samples. But since you appear to be one yourself, that is no problem either. Please, have a seat on the examination table. This will only take a little while.' Matt leads you over to a surprisingly comfortable table and waits for you to disrobe and lie down, then draws some blood and swabs the inside of your cheek, all in the expert manner of an experienced doctor. ";
				DrMattGryphonExam;
				now Strength of Doctor Matt is 3; [everything delivered]
			else:
				say "gives a slight frown, then shakes his head. 'Sadly, you do not have the gryphon samples that I requested. Please, gather them with the suitable haste.'";
	if Strength of Doctor Matt is 3: [all delivered]
		WaitLineBreak;
		say "     Clearing his throat, the doctor adds, 'Well, it seems I got everything I need for right now then. Thank you for the assistance. I will start analyzing the samples and hopefully get a lot of useful data from them.'";
		now HP of Doctor Matt is 3;
		now level of Doctor Matt is turns;
		increase score by 20;

to DrMattFirstResults:
	if level of Doctor Matt - turns < 8:
		say "     As you approach the suited man and offer him more help, he smiles but shakes his head. 'My thanks, but I'm still working on those samples you brought. Before I have results from them, I wouldn't be able to tell you what to focus on next. I would recommend that you concentrate on gathering supplies for now.' With that said, Dr. Matt turns back to his lab gear and proceeds to study the data scrolling across his screen with interested eyes.";
		stop the action;
	extend game by 32;
	increase score by 5;
	say "     Dr. Matt turns his head to you and blinks as if to clear his mind as you ask about how his research is going. 'Oh, I - I didn't tell you, did I? My apologies. It is simply amazing! There is no other word for it,' he cheerfully says, looking excited through his hazmat faceplate. 'The adaptability of the nanites is simply... I would have said it was impossible if I hadn't laid my own eyes on it. I sent out my results and the military have grudgingly agreed to a 96 hour delay of their plans while the ramifications are checked over and tactics adjusted.' Pointing towards an information terminal on a nearby desk, he adds, 'If you want, I can show you the results of my analysis in detail.' The man in the hazmat suit starts to turn towards his computer, fingers itching to lay out his findings to you, but then stops himself and looks at you past the rim of his glasses.";
	say "     'Oh wait, you might be more interested in a fact of immediate use beneficial to your survival: I discovered how to neutralize the nanites. Well, a limited area of them at least. No matter how miraculous the devices are, there is only a limited amount of energy they can absorb before burning out. Applying such energy, for example in the form of microwave radiation, will destroy them with a high degree of certainty. There is a microwave in the corner over there, so you can feel free to [bold type]microwave[roman type] anything you want to bake the infection out of. We can dispense with the need for saving power in this case.' Looking over to the microwave, then back at you, the doctor raises an eyebrow and clears his throat. 'In order to avoid any unfortunate incidents, I would like to remind you that inserting a living being or metallic objects into any microwave is strongly discouraged. Please only use it for food items.'";
	now HP of Doctor Matt is 5;

to say SusanLabArrival:
	WaitLineBreak;
	say "     As you lead the deer hermaphrodite through the streets toward the Trevor Labs buildings, you explain to Susan about the dragoness security guard of the lab complex and also Dr. Matt's research. Soon reaching the building, you escort your companion inside and introduce her to Orthas. 'Urr, nice to meet you,' the black dragon tells the deer in a doubting tone, and a certain level of wariness never leaves her gaze. 'Please just let the doctor just do his thing and don't try start any funny business, alright? He's our only hope, you know, and absolutely must stay in his suit.' Susan frowns at those words and squeals, 'Hey! I'm not an animal! Looked in the mirror lately, lady?!' You quickly step in and smooth things over between them, ensuring Orthas that Susan will be on her best behavior and putting an arm on the doe's arm to lead her to the stairs. 'She'd better be,' the dragoness mutters behind you as you continue on your way towards Dr. Matt's lab.";
	say "     It takes only another minute or two before you're at the entrance to Dr. Matt's lab, where you give a knock on the door to warn him of your arrival. Then you shepherd Susan inside, where the hazmat-suited scientist is waiting. He nods to you, then addresses your companion with a professional smile on his face. 'Welcome to the Trevor Labs, young lady. I am Doctor Matthew Burnell, but most just call me Doctor Matt. Hopefully your trip here wasn't too stressful?' Susan gapes at him, with something about being presented with a fully human, older male making her shyness about her form bubble up again. She moves her hands to cover herself and haltingly replies, 'I - um - it was okay. So - you're a real doctor?' 'Certainly, my dear. You don't need to be shy. Now, as I'm sure my assistant here has already told you, I aim to understand the nanite infection and find ways to treat it. This is where you could be of great assistance...'";
	WaitLineBreak;
	say "     The friendly, if sometimes a bit clinical, way in which Dr. Matt talks serves well to calm Susan's nerves down again, and she soon lets herself be led off towards the examination table deeper in the lab. Over the next hour or so, the doctor interviews her about her memories from before the infection (which are spotty at the best of times), then gives her a physical, complete with some samples being taken. Finally, he gives her some fresh food and water, then comes back to you as Susan is busy eating. 'She is a quite remarkable specimen that could help me understand many details about the nanites that are still a mystery. You have my thanks for bringing Susan in. Now, the number of tests that will need to be performed with her are quite extensive, so I have offered her a place to stay here for the intermediate duration. Could you please go and tell Orthas that we need a bed for the young woman?'";
	say "     Agreeing to his request, you set out towards the building's lobby, where you meet Orthas and tell her that Susan is moving in for the foreseeable future. 'Really? I'm still a bit worried about her instincts flaring up you know. That girl is hung like a donkey and a cock like that sometimes has a mind of its own,' the dragoness says, then shrugs. 'Fine, I guess the doc knows what he's doing. Please hold my post for a little while, I'll go grab one of the emergency cots. The company bought a bunch of those when we had that audit last year and everyone was working overtime around the clock.' With that said, she unlocks the stairwell and vanishes upstairs, then returns some minutes later with a portable cot that she carries to the lab. Finally coming back to you a little while later, Orthas gives you a thumbs up. 'There, that's taken care of. And thanks for keeping lookout.'";
	wait for any key;
	move Susan to Primary Lab;
	move player to Trevor Labs Lobby;

to say DrMattQuestTalk:
	if HP of Doctor Matt is 1:
		DrMattSampleQuestStart;
	else if HP of Doctor Matt is 2:
		DrMattSampleDelivery;
	else if HP of Doctor Matt is 3:
		DrMattFirstResults;
	else if HP of Doctor Matt is 4: [no longer used state]
		now HP of Doctor Matt is 5;
	else if HP of Doctor Matt is 5:
		say "     As you step forward and offer your help again, Dr. Matt smiles at you through the faceplate of his hazmat suit. 'You're up for another task? Good, this will be quite useful in my further research. You see, during the infrequent lulls in creature activity out on the streets, Orthas sometimes goes out hunting to gather supplies we need. During one such excursion, she spotted something interesting: A singular creature, an anthro cervine by her description, which showed a divergence of the usual behavior pattern seen in most infected. You must understand, one of the standard impulses of any carrier is the drive to spread the infection, but this 'deer woman' neither had any further members of her species around, nor did she approach Orthas or try to turn her. I can't help but wonder why that may have been. An incomplete or recent transformation possibly, or this person is at least somewhat resisting the infection's mental impact.'";
		say "     Dr. Matt's eyes are filled with a far-away expression as his mind goes through more possibilities of what might be going on. He shakes himself out of that a moment later, then focuses on you again, 'No matter which, I would like to interview and study her. Could you please try to find this creature and bring her here? If safely achievable, of course.' With that said, the man pulls a printout of a city map from his stacks of research papers and lays it out on the table in front of you. Glancing at the piece of paper, you find yourself reminded of just how much the nanite outbreak has changed in the city, as you know that many of the streets, buildings and landmarks do not exist anymore in their old states. 'Orthas said she was about here, two blocks east, when she saw the deer, followed by the woman fleeing to the north.' Waving a red marker over the map, Dr. Matt marks down the location and adds a little arrow to indicate where the creature went.";
		WaitLineBreak;
		say "     'Given that she appeared to be a woodland creature, I would hazard the guess that our mystery woman might be found here, in this large [bold type]city park[roman type]. You might want to check this high probability area first before hunting for the [bold type]unusual creature[roman type] anywhere else.' Circling a green area that extends for several blocks in either direction, the doctor then caps his pen and hands you the map. 'I also wanted to commend you for your willingness to assist. Science and understanding will be the way out of this dire situation, that you can be certain of. We need good people like you to make progress.'";
		now Unusual Creature is active;
		now HP of Doctor Matt is 6;
	else if HP of Doctor Matt is 6 and unusual creature is unresolved:
		say "     As you step forward and offer to help him again, Dr. Matt raises an eyebrow and gives you a curious look. 'Did you forget already? There is an [bold type]unusual creature[roman type] out on the streets that I would like you to bring in for an examination. With a high probability, she'll be living somewhere in or around the [bold type]city park[roman type], not too far off from the Trevor Labs building.' With that said, he turns his computer screen a little bit your way, pointing at a map of the city and tracing a street towards a well-sized urban park only a little distance away. 'With the wide-reaching effects the nanite outbreak had on everything in this city, I know these old maps aren't too much help anymore, but this should at least tell you the right direction in which to go. Oh, and there is one more thing - Orthas said the creature was intersexed, if that helps. Now please go and find her. Time is of the essence, as you know.'";
	else if HP of Doctor Matt is 6:
		say "'Ah ha, yes, she is an interesting creature, is she not?' he says, looking at the deer through his face plate. 'She says her name is Susan, just so you know.";
		if deerconsent is 1:
			say "'And she's taken a fancy to you. This is good.";
		say "'I was hoping you could test her for infectiousness, in a controlled situation. You don't have to if you don't want to, just talk to her and decide for yourself. Don't look at me that way. I can't very well do it from inside this suit, now can I?' he adds indignantly.";
		now HP of Doctor Matt is 7;
		increase score by 20;
		extend game by 24;
	else if HP of Doctor Matt is 7 and deerconsent is not 2:
		say "'Go on, talk to her.'";
	else if HP of Doctor Matt is 7:
		if susan is visible:
			say "'Excellent work. I will observe. You can proceed at whatever rate is comfortable. You are doing a great service for science,' says Matt as he raises a finger towards the sky.";
			now HP of Susan is 2;
		else:
			say "'Poor news. The specimen escaped, went running off back towards the park. She probably went feral. Nothing to do about it now, just look out for her. Probably dangerous.'";
			now HP of Susan is 1;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if name entry is "Deer":
					now monster is y;
					break;
			now area entry is "Park";
		now HP of Doctor Matt is 8;
	else if HP of Doctor Matt is 9 and hospquest < 8:
		say "'Please continue to assist Dr Mouse. And let me know what you find out.' Dr Matt then turns back to his work, intent on continuing his research.";
	else if HP of Doctor Matt is 8 and hospquest is 8:
		say "     You decide to tell Dr Matt about what you've been doing for Dr Mouse. You leave out what really happened to the scientific device he gave you and he doesn't seem to notice, instead focusing on the fact that he has a competitor. And one that you've been helping.";
		say "     'I had been wondering what you'd been up to for the last few days in the city while I had nothing for you to do. Idle hands, as they say. This is quite unexpected. You have found another person in the city searching into the mysteries of the nanite infection, but through a different avenue of research. And using the infected as test subjected is...' he coughs as he notices the stern look you [if susan is visible]and Susan [end if]give him. 'That is, possibly using them as unwilling test subjects in such surgical experiments. Most disturbing and unethical, even in such a crisis.'";
		say "     'I suggest you continue to assist this Dr Mouse individual. It will further ingratiate you to him and allow you to find out more about what's going on with his research. Hopefully, I am wrong about my concerns and this doctor may be of help to us. As well, we do need to know if his concerns about the nanites are valid.";
		now HP of Doctor Matt is 9;
	else if HP of Doctor Matt is 9 and hospquest > 7 and mattcollection is 0:
		say "     'Now, you say that Dr Mouse has been having you collect samples from the city? And from more and more powerful creatures? This is worrisome. I wonder what secrets he may be uncovering. May I see what he's asked you to collect?' he asks.";
		if triclamped is 0 and triclampedmatt is 0:
			let tricllfound be 0;
			if lava lamp is owned, now tricllfound is 1;
			if tricllfound is 0:
				say "     Once you find a usable sample from this possible dinosaur, please bring it to me first, so that I may obtain a sample as well.";
			if tricllfound is 1:
				say "     Doctor Matt eyes the lava lamp suspiciously, noting the sticky film coating it. Using several sterile swabs, he wipes a samples of the fluids from the improvised toy and sets them in a sample dish. 'It was fortunate that you brought this here so I could gain a sample before you turned it over to him.'";
				increase score by 10;
				now triclampedmatt is 1;
		else if triclamped is 1 and triclamped is 0:
			say "     'It is unfortunate that you have turned the sample over to Dr Mouse already,' Dr Matt says. Unfortunately, I don't think it would be wise to try to obtain another.'";
			now triclampedmatt is 2;
		if sabtoothed is 0 and sabtoothedmatt is 0:
			let sabertoothfound be 0;
			now sabertoothfound is carried of chipped tooth;
			if sabertoothfound is 0:
				say "     'I would like to ask you to obtain a sample from one of these creatures for me as well. I know this means you may need to fight a second one, but I want to look into this matter as well.'";
			if sabertoothfound > 0:
				say "     'I should like to keep this sample of the sabretooth tiger. I know this means you must obtain another for Dr Mouse, but I would like to take this one for my research. If you were able to obtain this one, surely you can get another for your other employer.'";
				say "     [bold type]Do you give it to him?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if player consents:
					delete Chipped tooth;
					increase score by 10;
					say "     'It is good to see that you appreciate the importance of my work.' He picks up the large fang in his gloves and places it in a sample dish.";
					now sabtoothedmatt is 1;
				else:
					say "     'I am disappointed that you don't appreciate the importance of my work. I hope you will at least continue to keep me appraised of Dr Mouse's activities.";
					now sabtoothedmatt is 2;
		else if sabtoothed is 1 and sabtoothedmatt is 0:
			let sabertoothfound be 0;
			now sabertoothfound is carried of chipped tooth;
			if sabertoothfound is 0:
				say "     'I would like to ask you to obtain a sample from one of these creatures for me as well before Dr Mouse gets too far ahead. I know this means you may need to fight a second one, but my research cannot fall behind.'";
			if sabertoothfound > 0:
				say "     'As you have already given Dr Mouse his sample, I should like to keep this sample for myself,' he says as he places the one you have into a sample dish.";
				delete Chipped tooth;
				increase score by 10;
				now sabtoothedmatt is 1;
		if nerminepackage < 5 and nerminepackagematt is 0:
			let nermpack be 0;
			now nermpack is carried of package;
			if nermpack is 0:
				say "     'I should like a chance to examine whatever object you are retrieving from this mysterious shop. I want you to bring it here before delivering it to Dr Mouse.'";
			if nermpack is 1:
				say "     You pull out the dusty package and set it on one of tables. Dr Matt opens it carefully, using tongs to pull the strings to untie them. When they drop away, he lifts the flaps with his tongs. Peeking inside, you both see a large piece of golden fur. The doctor, relaxing a little, pulls it out and holds it up.";
				say "     'It seems to be a very old animal hide. Lion, I should guess. I'm not sure why he is interested in this ratty, old thing. But I should take a sample just in case. Dr Matt takes a scalpel to cut a small corner from the old lionskin. But after several tries, he's only made a small notch in it. He grunts and pulls out a larger knife and tries again, eventually managing to slice a small corner from it.";
				say "     He looks down at the small cutting he's placed in the sample tray. 'That was most perplexing. From all appearances, the hide is very old and should be quite fragile.' He turns the box around, finding the Greek writing on it. 'Nemea? What does that... the Nemean Lion!' Dr Matt stiffly folds up the pelt and puts it back in the box, very slowly tying it back up. 'It... makes no sense. But what else could it be?' The poor doctor seems quite out of sorts and it appears that no further explanation will be forthcoming.";
				increase score by 10;
				now nerminepackagematt is 1;
		if nerminepackage is 5 and nerminepackagematt is 0:
			say "     It is regrettable that you turned over the package to Dr Mouse before I had a chance to examine its contents. I want you to keep me better informed of his activities going forward.";
			now nerminepackagematt is 2;
		if nerminepackagematt > 0 and sabtoothedmatt > 0 and triclampedmatt > 0:
			if nerminepackagematt is 1 and sabtoothedmatt is 1 and triclampedmatt is 1:
				say "     Having given the scientist a sample from each of the three items Dr Mouse had you collect, he at least seems a little pleased. 'These do only represent the samples he's asked you specifically to gather. It is apparent that his at least partial control of the hospital denizens has allowed him to collect specimens from many of the creatures in the city. It is unclear to me what directions his research is taking and so I want to you continue to assist and monitor him. Hopefully he can discover something to help us deal with this outbreak.'";
				say "     'For your assistance in this matter and for ensuring I received a sample from them as well, I should give you something in payment. I had been working on this device. It is only a prototype, but it may be of assistance to you. I am working on an improved model to eventually be used when the military comes in to rescue the infected survivors.'";
				say "     From one of the worktables, Dr Matt gathers up a cobbled-together device that looks like it was made from an array of wires and lights on a Velcro wristband connected to a handheld game console. 'I had to make its case from the items I had available, but it is quite functional, if a little slow. It acts as a personalized infection status monitor, or PISM. Should you make contact with an unknown infection source, you can see to what degree and which strain has infected your body. While many strains are obvious, others are harder to diagnose until further secondary features or behaviors arise.'";
				say "     The strap can be placed around your wrist, ankle or other limb. It could even be used with the contacts pressed to your body, if you were ever changed to such a radical degree. To check yourself, simply connect it to the analysis unit and press these buttons,' he says as he indicates them, 'to show you how the infection has spread through your body. It has a catalog drawn from this terminal, but unfortunately must remain keyed to you to work and so it presently can't be used to check others. I hope my larger model for the military will overcome this issue so they can do a quick scan at the base of the people they rescue to be aware of the strains infecting each individual.'";
				say "     'As I stated, you may have this prototype, as I am working on an improved model for the military. Perhaps it may be of some use to you. If you can continue to help me, I may be able to upgrade its programming later,' he adds, clearly paying you to act as his double-agent.";
				say "     Infection monitor obtained. (Quick command: [bold type]pism[roman type])[line break]";
				increase carried of infection monitor by 1;
				now mattcollection is 1;
				increase score by 10;
			else:
				now mattcollection is 2;
	else if mattcollection > 0 and HP of Doctor Matt < 10 and hospquest < 11:
		say "     'I suggest you continue to assist Dr Mouse. It will further ingratiate you to him and allow you to monitor his activities. I want you to keep me informed on what he's receiving and please bring a sample for me as well. Nor do I wish to fall behind in my research to this little upstart.";
	else if HP of Doctor Matt is 10:
		say "     'A mind like Dr Mouse's cannot be allowed to continue to exploit the nanite infection unhindered. I will need you to take care of him. And be sure to bring back what research materials you can.'";
	else if HP of Doctor Matt is 8 and hospquest is 13:		[Doc completely unawares, hospital finished]
		say "     Having much to tell Dr Matt, you begin with your discovery of the unusual activity at the hospital and then the lab within. You go on to talk about the strange doctor you found there, working away at solving the nanite mystery. This gets his attention and he becomes much more interested in your tale. As you continue, you summarize what the mouse related to you about his findings and hypotheses about the infection. You tell him these were what prompted you to assist him with the tasks he asked you to perform.";
		say "     You describe the apparent control he had over the creatures of the hospital. You relate to him how the research coming from the samples you were collecting began to manifest as changes and increased power in the hospital denizens. Dr Matt is perturbed to hear about this news, both that such experiments were happening and that he was not made aware of another potential source of information on the nanites.";
		say "     But you do not dwell on that, instead moving on to the most recent incident and the doctor's offer. Dr Matt is quite stunned by it and stammers some thanks for your decision to side with him over the mouse doctor.";
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly. She doesn't say anything, only listening and being there for her chosen mate.";
		if HP of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath. Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly. You dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over. 'This is quite a substantial find, my brave assistant. I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		else:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath. Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him. I shall inform the military of these events, as well as the increased threat level at the hospital. They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion. He seems too intelligent to not have an exit strategy already formulated.'";
		now HP of Doctor Matt is 12;
		now level of Doctor Matt is turns;
	else if HP of Doctor Matt is 9 and hospquest is 13:		[Doc partially unawares, hospital finished]
		say "     As you start to tell Dr Matt about the recent events at the hospital, at first he believes you to simply be reporting again on another request for samples. But as you tell him about Dr Mouse's plan to have you infected and steal his research, he is quite stunned. He stammers some thanks for your decision to side with him over the mouse doctor.";
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly. She doesn't say anything, only listening and being there for her chosen mate.";
		if HP of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath. Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly. You pull out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over. 'This is quite a substantial find, my brave assistant. I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		else:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath. Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him. I shall inform the military of these events, as well as the increased threat level at the hospital. They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion. He seems too intelligent to not have an exit strategy already formulated.'";
		now HP of Doctor Matt is 12;
		now level of Doctor Matt is turns;
	else if HP of Doctor Matt is 11:
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly. She doesn't say anything, only listening and being there for her chosen mate.";
		if HP of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath. Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly. You dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over. 'This is quite a substantial find, my brave assistant. I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		else:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath. Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him. I shall inform the military of these events, as well as the increased threat level at the hospital. They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion. He seems too intelligent to not have an exit strategy already formulated.'";
		now HP of Doctor Matt is 12;
		now level of Doctor Matt is turns;
	else if hospquest is 13 and "Mental Booster" is not listed in feats of player:
		say "     As thanks for your willingness to side with me over this impudent upstart mouse, I shall provide you with something I have been working on. Trying to deal with the infected city can be mentally harrowing as well as physically harrowing. It is easy to neglect the need to be intellectually able to deal with this crisis over the more obvious need for physical prowess. As such, I have found a way to stimulate the mind, increasing one's reasoning abilities to make them better able to notice significant events, interpret that information and then relate it to others. This treatment will also strive to keep these mental faculties strong after mentally debilitating infections.'";
		say "     The doctor injects you with the nanite adjustment. At first you feel little, but as you start to consider what may be happening, you notice that you're interpreting stimuli faster and drawing conclusions about them more readily. You don't suddenly know more information, but you can better process all that you have learned to make more out of it. You also feel a little more confident in dealing with the world because of it.";
		add "Mental Booster" to the feats of player;
		increase intelligence of player by 2;
		increase perception of player by 2;
		increase charisma of player by 2;
		increase morale of player by 4;
		say "[bold type]Your Intelligence, Perception and Charisma are all increased by 2.[roman type][line break]";
[	if HP of Doctor Matt is 12 and "Automatic Survival" is listed in feats of player:
		now HP of Doctor Matt is 14; [Supply Run skipped entirely]
		WaitLineBreak;]
	else if HP of Doctor Matt is 12 and level of Doctor Matt minus turns < 16:
		say "     'I don't currently have any tasks for you,' the doctor states. 'Please check back later after I've had a chance to take stock of our situation.'";
	else if HP of Doctor Matt is 12:
		say "     'Given the situation in the city escalating from the recent interference, the military's final move has been delayed much more than anticipated. While this gives me more time to hopefully give them the tools they'll need, this does mean our supplies will run dangerously low before the end if more cannot be obtained.'";
		say "     'Now, while Orthas assures me she will be able negotiate some exchange with the occasional sane survivor that passes by, this is unreliable. I would prefer to give us a wider margin of error. I do not wish to inform the military of our needs, as they may foolishly try advancing the timetable or sending a team in to extract us beforehand. As such, I want you to collect some food and water supplies for us. Perhaps a half-dozen of each. As you can freely roam the city, you may be able to scavenge additional supplies or find others who are willing to pay you in supplies for services. Just take care to choose your allies more carefully this time,' he adds with a meaningful gaze.";
		say "     'As you already have to deal with feeding yourself, this task will not go unrewarded. I will prepare an enhancement injection of your choice once the supplies are obtained and given to me. Oh, and don't tell Orthas I'm having you do this,' he adds as he turns back to his workbench.";
		now waterneed is 6;
		now foodneed is 6;
		now HP of Doctor Matt is 13;
	else if HP of Doctor Matt is 13:
		now foodcount is carried of food;
		now watercount is carried of water bottle;
		now tempnum is foodneed;
		now tempnum2 is waterneed;
		repeat with zz running from 1 to 6:
			say "[thefoodening]";
			say "[thewatering]";
		if tempnum > foodneed:
			if foodneed is 0:
				say "     'Good job! This is sufficient food to build up our supplies. Nothing like a good meal to keep the brain running at its best,' the doctor says, looking over the fare hungrily as he takes the supplies from you. You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			else:
				say "     'I'll add that food to our supplies to raise our stocks,' the doctor says, taking the food from you. 'We still need [foodneed] more meals though.' You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if tempnum2 > waterneed:
			if waterneed is 0:
				say "     'Good job! This is sufficient water to increase our supplies. Nothing like a good drink to grease the wheels of science,' the doctor says, looking over the collected water thirstily as he takes the supplies from you. You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			else:
				say "     'I'll add that water to our supplies to raise our stocks,' the doctor says, taking the water from you. 'We still need [waterneed] more liters though.' You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if foodneed is 0 and waterneed is 0:
			say "     Having safely stored away the supplies, Dr Matt turns back to you as if wondering why you're still here when there's work to be done[if susan is present]. Susan politely coughs and nods towards the nanite enhancement device while tapping her hoofed foot on the floor[else]. You glare at the doctor for a few seconds before finally pointing to the nanite enhancement device[end if], at which point Dr Matt brushes his gloved hands together and nods, heading over to it as if that was his intention all along.";
			wait for any key;
			now foodwaterbonus is 1;
			featget;
			WaitLineBreak;
			now HP of Doctor Matt is 14;
			now level of Doctor Matt is turns;
		else if tempnum2 is waterneed and tempnum is foodneed:		[no change]
			say "     'Please don't forget about those supplies I mentioned,' the doctor says.";
			say "     [bracket][foodneed] food and [waterneed] water bottle(s) still needed.[close bracket][line break]";
	else if HP of Doctor Matt is 14:
		say "     'While you were off taking care of that, I have heard back from the military command center. Things are still rather chaotic, but they're managing to hold on. They insist that this situation can and will be contained. I'm uncertain of their ability to do so, but the longer they work to contain the nanite infection here, the better chance we have of understanding the mysteries of the nanites before it becomes completely unmanageable,' the doctor says.";
		say "     But they are having difficulties of their own and they want more information on key locations throughout the city. It seems many of their recon teams have not fared well against the infected hazards of the city. They feel that someone already infected would have an easier time gathering this intel. They are looking for safe paths of travel through the city for their forces to start from, allowing them to expand their rescue operations from these key points. You should begin exploring the city, finding as many points that you can navigate between as you can. Being aware of these and knowing routes to travel between them will help keep the soldiers safer while trying to help those who can still be rescued. They are requesting a report on at least 50% of the city.'";
		WaitLineBreak;
[		NanofabRewardScanner; [places piece for nanofab in room. move this line if/when a better place is found]	]
		now HP of Doctor Matt is 15;
	else if HP of Doctor Matt is 15:
		if number of fasttravel rooms > ( number of known fasttravel rooms * 2 ):
			say "     You fill Dr Matt in on what you've been able to learn about the city and the safer paths to travel through it. 'Based on the information you've been able to provide me, you only have about [ ( number of known fasttravel rooms * 100 ) / ( number of fasttravel rooms )]% of the city covered. The military is requesting information on at least 50% of these locations.'";
		else:
			say "     You fill Dr Matt in on what you've been able to learn about the city and the safer paths to travel through it. 'Based on the information you've been able to provide me, you have roughly [ ( number of known fasttravel rooms * 100 ) / ( number of fasttravel rooms )]% of the city covered. That should greatly assist the military with their scouting and rescue efforts.'";
			now tempnum is 100 + ( 4 * number of known fasttravel rooms);
			increase freecred by tempnum;
			now HP of Doctor Matt is 16;
			increase score by (number of known fasttravel rooms) * 2;
			say "     You have gained [special-style-1][tempnum][roman type] freecred and now have [freecred] freecred.";
			WaitLineBreak;
			say "     You'll notice that I was able to provide you with a sum of 'free credits'. These are a form of currency alternative that the Zephyr conglomerate has implemented. While my contacts with the military assure me that at least portions of the nation are still functioning, it is clear that the federal government is in disarray at the moment. And while Zephyr seems intent on exploiting this to position themselves as the new driving force in the nation, if not the world, there is no question that they are prepared and in possession of considerable knowledge about the infection and the nanites. So much so that I have to wonder about their role in all of this.'";
			say "     'I want you to make contact with their representatives in the city and give them this package,' Dr Matt says as he passes you a manila envelope. 'It contains a request for certain items and data they have in their possession which would be very useful to my research into the nanites. I'm quite certain they know a lot more than they're letting on, but they should be willing to share this information at least. Now, as they are the representatives of a company, they will most certainly not just hand over this data.'";
			WaitLineBreak;
			say "     The doctor shuffles a few items around on his desk. 'The military command should have contacted the corporate office as well to negotiate this exchange of information. As payment, I've included selected portions of my research on a storage device you may give them if they agree to the terms. The reason I am sending you as a courier on this is that they may make some demands of you, claiming the offer may be insufficient. Given your experience in dealing with the city, you should be able to handle such a request from them.' It seems that doing Dr. Matt's dirty work isn't enough; now he's renting you out to others to do their dirty work too. Oh well.";
			if mattcollection is not 1:
				WaitLineBreak;
				say "     'I have a prototype here of something I've been working on. While I no longer need it, I do realize that it may prove useful to you even as such. I am working on an improved model to eventually be used when the military comes in to rescue the infected survivors.'";
				say "     From one of the worktables, Dr Matt gathers up a cobbled-together device that looks like it was made from an array of wires and lights on a Velcro wristband connected to a handheld game console. 'I had to make its case from the items I had available, but it is quite functional, if a little slow. It acts as a personalized infection status monitor, or PISM. Should you make contact with an unknown infection source, you can see to what degree and which strain has infected your body. While many strains are obvious, others are harder to diagnose until further secondary features or behaviors arise.";
				WaitLineBreak;
				say "     'The strap can be placed around your wrist, ankle or other limb. It could even be used with the contacts pressed to your body, if you were ever changed to such a radical degree. To check yourself, simply connect it to the analysis unit and press these buttons,' he says as he indicates them, 'to show you how the infection has spread through your body. It has a catalog drawn from this terminal, but unfortunately must remain keyed to you to work and so it presently can't be used to check others. I hope my larger model for the military will overcome this issue so they can do a quick scan at the base of the people they rescue to be aware of the strains infecting each individual.";
				say "     'As I stated, you may have this prototype, as I am working on an improved model for the military. This will be a fine opportunity to field test the technology. After you've had a chance to test it out for a while, I'd like you to report your findings on its functionality,' he adds, clearly his [']gift['] is more a case of you being his beta-tester.";
				say "     Infection monitor obtained. (Quick command: [bold type]pism[roman type])[line break]";
				increase carried of infection monitor by 1;
				increase score by 10;
	else if HP of Doctor Matt is 16:
		say "     'Please proceed to the Zephyr location and make the exchange for the data.'";
	else if HP of Doctor Matt is 17:
		say "     'Please continue to work on that task for Zephyr.'";
	else if HP of Doctor Matt is 18:
		say "     Dr. Matt takes the data disk from you, putting it into a computer. He starts clacking away at the keyboard, rapidly getting engrossed in the data on the screen. You clear your throat a couple of times before he notices you standing there. 'You're still here? I don't really have further need of you at the moment. I have much to work on now.' He seems about ready to turn back to his work when he stops himself.";
		say "     'Ahhh. You're curious what new advances I have made in your absence... and if any of them are for you. Well, I've had little direct progress, but I did receive a little something from the military while you were gallivanting around that you might be interested in. It seems the military have some inoculations they're providing to some of their men. They're purchasing them from Zephyr and RSX at rather steep prices, so they have only been able to provide me with one sample of this.' He holds up a small spray can[if ColleenTalk > 0] like the one Colleen'd shown you[end if]. 'It is a restorative spray, able to revert the recipient back to human form and help clear their mind.'";
		WaitLineBreak;
		say "     You reach for the can, but he pulls it away. 'Not so fast. Like I've explained, I have only one sample of this and most likely will not be able to obtain another. Now, I am willing to use it on you, but I need to be observe the results throughout the process. [if Susan is visible]Both Orthas and Susan have refused to accept the treatment, so you're the candidate for whom I have the next-most amount of data. They also seem rather firmly locked in their forms... I'm unsure how effective it'd be on them at this point[else]Orthas has refused to accept the treatment, so you're the candidate for whom I have the next-most amount of data. She also seems rather firmly locked in her form... I'm unsure how effective it'd be on her at this point[end if]. As your form is still in flux, monitoring its effects on you should be quite informative... if you're willing to change back, that is.'";
		say "     [bold type]Shall you accept the doctor's offer and receive the restoration treatment?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "     You tell the doctor that you are of course willing to get your humanity back. The doctor smiles and nods, opening up a drawer and pulling out a rat's nest of wires and bio-sensors. 'Okay. Strip down so I can get you hooked up. This sort of thing isn't my usual area of expertise, but thankfully another of my former associates was doing bio-research, so I can use their equipment. She won't be needing it now that she's a feral mutant.'";
			say "     While he speaks casually about what has happened to his colleagues, he does remain silent for a while, quietly attaching the sensors all over your body with tape. A lot of them get placed across your chest and upon your face, though others end up elsewhere[if breasts of player > 0]. Some are even placed directly over your nipples[end if][if player is male]. One is placed upon your [cock of player] cock[smn], tape snugly wrapped clear around your shaft[smn][end if][if player is male and player is not internal]. A linked pair are attached upon your balls[end if][if player is female]. A small ovoid ones are pushed unceremoniously (and without even dinner and a movie) into your cunt[sfn] and asshole, leaving the wires dangling out of you[else]. A small ovoid one is pushed unceremoniously (and without even dinner and a movie) into your asshole, leaving the wire dangling out of you[end if].";
			WaitLineBreak;
			say "     With a final smack, the doctor adheres a large suction cup to your forehead. The thin wires from all of these separate sensors are wound together into one larger cable which is then plugged into a monitoring device. It starts up, showing blips and waveforms on its screens while outputting a constant stream of ticker tape.";
			say "     'Alright, we're ready to go,' the doctor says with enthusiasm. The prospect of science has brightened his mood and he quickly snatches up the spray can[if susan is visible]. Susan, while clearly concerned about you, takes several large steps back to avoid getting hit[end if]. The doctor starts spraying you all over, spreading the mist of strange antiseptic-smelling liquid all over you. You can feel the strange liquid burn and tingle as it sinks into your body, surprisingly you find yourself feeling a little better and more human almost immediately.";
			WaitLineBreak;
			say "     Once the process is done, you look yourself over. Thankfully there is a mirror over the nearby eye-wash station, so you use that to check your face. Looking at your reflection, you find you've turning back into something more resembling your old self. Your physique is somewhat improved (possibly from all the hiking around you've been doing), but your appearance overall is a little nicer too. Perhaps it is some effect of the nanites making you [if player is female]prettier[else]more handsome[end if]. Looking down, you can see that the spray has not changed your sexual state, though your genitals look pleasantly human once more.";
			say "     Your self-examination is abruptly cut short as the doctor starts removing the sensors from you with the sharp stings of quickly ripped away tape. Thankfully you've got nicely human skin now. It'd probably hurt so much worse if you had fur[if player is male]... though it is particularly uncomfortable when he unwraps the stuff wound around your cock[smn][end if]. The doctor's bedside manner could definitely use work, though you can't argue with the results, you remind yourself while looking in the mirror again, pleased to see a human face looking back.";
			setmonster "Human";
			choose row monster from the Table of Random Critters;
			now tailname of player is "Human";
			now facename of player is "Human";
			now skinname of player is "Human";
			now bodyname of player is "Human";
			now cockname of player is "Human";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			increase humanity of player by 20;
		else:
			say "     'That is your choice to make,' he says. He seems a little disappointed - not so much in you, but instead that he's not going to get the chance to do science. 'There are a few others who other survivors who have been coming by from time to time. I expect one of them will be eager for the opportunity.' He stores the can away.";
			say "     'Well, there is something else that was left when the restorative spray was delivered for testing. As I have Orthas here to protect me, I have little need for it. It's not much, but you can take it as thanks for your continued assistance. It should help keep you safe out in the city.' He tosses you a can of pepperspray.";
			increase carried of pepperspray by 1;
		WaitLineBreak;
		say "     'Orthas has also received some news from travelers about the state of the city hospital after the incidents there. Some new chimeric creatures have been observed. It seems these are different from the other ones you've earlier observed. They are likely [if HP of Doctor Mouse is 1]released[else]escaped[end if] test subjects that have been left to roam the halls. They have either subsumed or displaced the earlier chimeras. The accounts state that they are more powerful, so I thought it best to advise you of the occurrence. Exercise caution should you go there.'";
		say "     And with all that done, Dr. Matt turns back to his computer and dives into the new data he's received. 'I have little else for you to do at the moment. Please check back in a day or so. Until then, go keep yourself occupied elsewhere for now,' he says dismissively.";
		setmonster "Enhanced Chimera";
		choose row monster from the Table of Random Critters;
		now area entry is "Hospital";
		now non-infectious entry is true;
		setmonster "Mismatched Chimera";
		choose row monster from the Table of Random Critters;
		now area entry is "Nowhere";
		now HP of Doctor Matt is 19;
		now level of Doctor Matt is turns;
	else if HP of Doctor Matt is 19 and level of Doctor Matt - turns >= 8:
		say "     'I'm still working through the data from Zephyr. Though it does have some obvious gaps, the data from Zephyr is quite promising. It is clear that they know much more about this event than they're disclosing - at least publicly. That being said, my research is advancing quickly. I still need more time to unravel this puzzle, but certain avenues of research are no longer roadblocked.";
		say "     'That being said, I do have a quick errand for you to run. Nothing difficult.' He grabs a paper pad and flips through it, trying to find something. 'Ah, yes. Here it is. Something Orthas had mentioned hearing about[if HP of Orthas >= 4] while making enquiries following the egg incident[end if]. There's a [bold type]pediatrics[roman type] office in the area that apparently still has an active doctor working there.'";
		if HP of doctor medea < 2 and medeaget is 0:	[have not been there]
			say "     Your expression must have changed, since the scientist crosses his arms and glares at you through the mask of his containment suit. 'Oh now, don't make that face. She is not like that mouse of yours. She's apparently been giving what prenatal care she can to those who visit her. As reproduction has been enhanced and accelerated in the infected, I expect she's learnt much more than I have on that particular aspect of the nanites['] activities. Now while this has minimal impact on my main research, the data will be of some use. Please render her whatever assistance she may need to coax her into providing her data files, charts or whatever you can obtain.";
		else:
			say "     You cut him off there, letting him know you've already met Doctor Medea. 'You've already been there? Well, that is some good fortune. Do you have good relations with this individual? As reproduction has been enhanced and accelerated in the infected, I expect she's learnt much more than I have on that particular aspect of the nanites['] activities. Now while this has minimal impact on my main research, the data will be of some use. Please render her whatever assistance she may need to coax her into providing her data files, charts or whatever you can obtain.";
		now HP of Doctor Matt is 20;
	else if HP of Doctor Matt is 19:
		say "     'I'm still working through the data from Zephyr. I want you to check back in with me soon though.'";
	else if HP of Doctor Matt is 20 or HP of Doctor Matt is 21:
		say "     'Please visit the doctor working at the nearby [bold type]Pediatrics Office[roman type]. Assist her if need be in return for their findings.'";
	else if HP of Doctor Matt is 22:
		say "     You turn over Dr. Medea's collected data to Dr. Matt. And while he seems quite caught up in reviewing the material from Zephyr, a quick review soon has him going through the notes in detail. 'These case files and medical charts are excellent. The notes are a little heavy on the medical jargon and the handwriting is suitably atrocious as befits a physician, but they are very rich in detail. Even explicit detail in many cases. I shall have to review it more thoroughly in private later.'";
		say "     He makes a show of straightening the papers and looking professional. 'Ahem. I've been preparing an update to your PISM. If you'll hook it up over there,' he says, pointing to the infection monitor, 'I should be able to determine the necessary values and statuses from these notes while the terminal downloads the logs.' While he alternates between the stack of files, a calculator and his computer, he asks you to report on the functionality of the device and your experiences with using it. You answer his questions as best you can, trying to relay any bugs and quirks you can remember.";
		say "     Eventually he falls silent and you're left waiting again as he clacks away. Thankfully, it's not nearly as long nor are you interrupted before he's finished. As the upgrade is being sent to the device, he looks over the cobbled-together piece of tech. 'This is about as much as this version of the device will be able to handle. Unfortunately, it is the best I could do with what I have available. If all goes well with my research, we will have to send you elsewhere to get a better version built. For the moment though, this upgrade should provide some information on any pregnancy and estrus cycles you may be experiencing[if player is not female]. And while that likely won't be the case given your current gender, you know as well as I that might end up changing unexpectedly[end if]. As before, please continue to test this device. The better we can make it, the better the final product I need to create for the military will be.'";
		say "     With that, Dr. Matt gets back to reviewing the material from Zephyr. Soon he's caught up in this, waving you off for now. It seems like he's got nothing more for you to do at the moment.";
		say "[bracket]PISM upgraded to display pregnancy/heat status and approximate duration.[close bracket][line break]";
		say "((Main storyline ends here for now.))[line break]";
		now HP of Doctor Matt is 23;
		increase score by 50;
	else:
		say "He looks kind of busy right now.";
		if debugactive is 1:
			say "DEBUG -> Doctor Matt HP: [HP of Doctor Matt] <- DEBUG[line break]";
[
		say "     Returning to check in with Doctor Matt, you find him talking on a phone you'd not seen in here before. It's an old, rotary-style phone, but it is attached atop a metal box with blinking LEDs, a UHF antenna and standing on mechanical spider legs.";
]

Section 2 - PISM

Table of Game Objects (continued)
name	desc	weight	object
"infection monitor"	"     Cobbled together from various items, Dr Matt's infection analyzer can be used to check your body's infection status. Type [bold type]pism[roman type] to use."	1	infection monitor

infection monitor is a grab object.
it is part of the player.
It is not temporary.

monitoring is an action applying to nothing.
understand "pism" as monitoring.

instead of using infection monitor:
	monitor;

check monitoring:
	if infection monitor is owned:
		monitor;
	else:
		say "You don't have anything capable of that.";
	stop the action;

to monitor:
	say "You hook up the infection analyzer and run the program, checking on your body's status for any changes while looking yourself over.";
	say "Head status: [facename of player]     Body status: [bodyname of player][line break]";
	say "Skin status: [skinname of player]     Tail status: [tailname of player][line break]";
	if player is male:
		if player is female:
			say "Cock status: [cockname of player]     Gender: Herm[line break]";
		else:
			say "Cock status: [cockname of player]     Gender: Male[line break]";
	else if player is female:
		say "Groin status: [cockname of player]     Gender: Female[line break]";
	else:
		say "Analyzing gender... [special-style-2]ERROR![roman type][line break]";
	if ( HP of Doctor Matt >= 23 and HP of Doctor Matt < 100 ) or hospquest >= 23:
		let defaultheat be true;
		let heatname be "Default";
		choose row 1 in table of infection heat;
		if cockname of player is a infect name listed in Table of infection heat:	[check name of heat]
			choose a row with a infect name of (cockname of player) in Table of infection heat;
			if player is female and fheat entry is false:	[no female heat for that form]
				choose row 1 in table of infection heat;
			else if player is not female and mpregheat entry is false:		[no mpreg-heat for that form]
				choose row 1 in table of infection heat;
			else:
				now defaultheat is false;
		else:
			choose row 1 in table of infection heat;
		now heatname is infect name entry;
		if "Sterile" is listed in feats of player:
			say "Pregnancy Status: Sterile[line break]";
		else if player is not female and player is not mpreg_ok:
			now score is score;
		else if player is impreg_now:
			say "Pregnancy Status: Pregnant     ";
			now tempnum is gestation of child;
			if "Maternal" is listed in feats of player and a random chance of 1 in 3 succeeds:
				now tempnum is tempnum / 2;
			else if "Fertile" is listed in feats of player:
				now tempnum is ( 2 * tempnum ) / 3;
				say "Expecting: ~[tempnum] hours[line break]";
				say "Current fetal form: Body: [bodyname of child]   Face: [facename of child]   Skin: [skinname of child][line break]";
		else if heat enabled is false:
			say "Estrus Status: Inactive[line break]";
		else if animal heat is false:
			say "Estrus Status: Normal[line break]";
		else if inheat is true:
			if heat cycle entry is heat duration entry:
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Duration: Continuous[line break]";
			else if turns in heat >= heat cycle entry or turns in heat < (heat cycle entry - heat duration entry) * 8:
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Duration: Ending[line break]";
			else if turns in heat >= ( heat cycle entry - heat duration entry ) * 8:
				let num be heat cycle entry * 8;
				now num is num - turns in heat;
				if heatlevel is 3:
					now num is num + ( num / 4 );
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Duration: ~[num * 3] hours[line break]";
		else:
			if heat cycle entry is heat duration entry:
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Onset: Immediate & Continuous[line break]";
			else if turns in heat >= heat cycle entry:
				let num be ( heat cycle entry - heat duration entry ) * 8;
				if heatlevel is 3:
					now num is num - ( num / 5 );
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Onset: ~[num * 3] hours[line break]";
			else if turns in heat >= ( heat cycle entry - heat duration entry ) * 8:
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Onset: Immediate[line break]";
			else:
				let num be ( heat cycle entry - heat duration entry ) * 8;
				now num is num - turns in heat;
				if heatlevel is 3:
					now num is num - ( num / 5 );
				say "Estrus Status: In Heat     Heat: [heatname]     Est. Onset: ~[num * 3] hours[line break]";
	follow the self examine rule;


Section 3 - Food and Water Hunt Subroutines

to say thefoodening:
	if foodcount > 0 and foodneed > 0:
		delete food;
		decrease foodcount by 1;
		decrease foodneed by 1;

to say thewatering:
	if watercount > 0 and waterneed > 0:
		delete water bottle;
		decrease watercount by 1;
		decrease waterneed by 1;


waterneed is a number that varies.
foodneed is a number that varies.
foodcount is a number that varies.
watercount is a number that varies.
foodwaterbonus is a number that varies. foodwaterbonus is usually 0.

Section 4 - Nanite Density Monitors Sub-Quest

[moved to Zephyr file]


Main Storyline ends here.
