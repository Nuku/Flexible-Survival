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
	[
	choose a blank row in table of fucking options;
	now title entry is "The Nanite Infection";
	now sortorder entry is 1;
	now description entry is "Ask him what he knows about the outbreak";
	]
	choose a blank row in table of fucking options;
	now title entry is "How he ended up here";
	now sortorder entry is 2;
	now description entry is "Find out how he got here";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Communicating with the outside world";
	now sortorder entry is 3;
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
	say "...";

to say DrMattTalk2:
	say "     Dr. Matt takes a deep breath, then turns the visor of his helmet your way and waves at the lab around you both. 'I was here when it started actually. With critical deadlines to meet for one of my projects, I was doing an all-nighter. Then morning came and... I heard an alarmingly loud crash from downstairs, followed by other noises. Of course I couldn't simply go and check it out since I was in the class 4 isolation lab. It became obvious that a fight was going on when I heard the gunshots during my airlock procedure, but by the time the outer door finally opened, all was quiet again. I feared the worst and ran towards the lobby while still in my suit, only to find a wholly different scene than I had imagined. Oh, the room was thrashed thoroughly to be sure, but the huge draconic creature that was pinning our night security guard to the floor wasn't interested in actually harming him at all.'";
	say "     'Imagine my surprise at seeing what appeared to be a car-sized quadrupedal reptile on top of Mr. Janakos, engaged in sexual intercourse. A fascinating sight for sure, seeing that the creature didn't seem to belong to any natural genus, having six limbs in all, four legs and two wings. Also, it was sodomizing its human partner with a significantly over-sized penis without apparent harm to his well-being. In fact, he was moaning in arousal from the treatment.' Dr. Matt shrugs a little as he recounts this, his tone of voice relaxed and neutral, showing that he's more interested in factual matters than judging. 'Unable to affect the creature by myself in any way, the only thing I could do was observe, dictating some whispered notes into this suit's audio pickups. After the creature eventually deposited its seed, it wandered off, leaving me free to come to its groaning victim's help.'";
	WaitLineBreak;
	say "     Dr. Matt recounts rushing downstairs with a large medkit he grabbed from a wall holder at the lab entrance, only to find the security guard in almost perfect health, the last signs of bruises and cuts vanishing before his very eyes. Yet then a kind of rash started spreading over his skin, with it becoming black and scaly. Hastily rushing his patient upstairs to the lab, Dr. Matt examined him, which the organized researcher captured on video too. A moment later, you're watching a computer screen, showing the image of a naked and Greek-American man lying on a stretcher. He's quite well built, broad shouldered and strong, and you can see the text 'Test Subject A: Orthus Janakos' in the corner of the screen. Over the next several minutes, you see him transform into the anthro dragoness you know as Orthas, all of which is narrated by Dr. Matt - even though you could have done well without being told just which bone breaking is responsible for what crunch.";
	say "     'I knew something had to be done to find the cause of this contagion, and a cure, so I went right back to work afterwards. As it turned out, nanites are the culprits here and they have wide-ranging transformative, as well as libido increasing, effects. I was quite lucky that I had no time to take off my suit in that first rush towards the lobby, otherwise I might very well be just another of the unfortunate victims of the nanite plague.' The suited man points to a large security window with embedded wire in the back of his lab, and the airlock beside it. 'To remain unaffected and be able to work on researching the nanites, I had to re-purpose the isolation lab as living quarters. It is somewhat amusing that a room that originally held samples of virulent diseases now has become my refuge and the one place I can take off this suit. Also, I really have to recommend Orthas for her sense of duty. Without her to keep guard even after her transformation, I would never have been able to remain here.'";

to say DrMattTalk3:
	say "     The suited man looks up at you as you bring up connecting with the world outside of the city, glancing at you through his glasses and nodding. 'Yes, I do still have contact with a colleague in the CDC, Dr. Sutton. As luck will have it, the Trevor Labs facility is part of the shielded communications network that connects a number of selected sites of bio-safety level 4 in case of emergencies. If only Greg and I could have convinced the authorities that they have to delay the planned surge of troops into the city!' He distractedly moves to stroke through his grey hair, only to have his gloved fingers bump against the Plexiglas screen of the helmet. Lowering his hand with an annoyed grunt, Dr. Matt makes a frustrated throwing-away gesture.";
	say "     'They just won't listen! Sending more troops will only expand the ranks of the infected unless they're properly prepared. And for that, we need more research!' The man focuses on yourself with an intense expression that speaks of his desperate need for progress, and the frustration of a scientist at being rushed. He adds in a grumbling tone, 'The infighting out there is almost as bad as the beasts out on the streets here. Politicians screaming for something to be done yesterday, generals drawing in what local forces they can and preparing for a Hail-Mary push to 'overwhelm the beasts', with those who understand anything about the situation in the middle and ignored by both. Please, help me get some results so we can make them listen.'";

to say DrMattQuestTalk:
	if HP of Doctor Matt is 1:
		say "'Alright, we have a limited amount of time. I have been doing my best to delay the military, but without something concrete to report, they will be here soon, and they will pave this thing as hard as they can, leaving all mysteries unsolved. Now that you are here, we can get to work and keep them off our backs,' explains the hazmat suited man as he pushes his chair towards another terminal and starts typing.";
		WaitLineBreak;
		say "'The first problem is a lack of test subjects. I can't send Orthas out to collect samples, that would leave me unprotected. You, on the other hand, are not so limited. Go to the mall and get some samples from the amorphous transformatives there, and some nutritive secretions from one of those raptor slash panthera leo transformatives. I would prefer two of each, enough to be able to experiment without risking the whole of the subject matter,' he explains, turning to face you.";
		WaitLineBreak;
		say "'Once you have them, just come back here and we will be that much closer to solving this.'";
		say "You get the idea you've been dismissed, as he goes quiet, and eventually turns back to his work. Not much of a socialite.";
		now HP of Doctor Matt is 2;
		now level of Doctor Matt is 0;
		now hobo-grmilkhelp is turns;
	if HP of Doctor Matt is 2:
		let milkfound be the carried of gryphon milk;
		let goofound be the carried of glob of goo;
		if girl is banned:
			now goofound is 2;
		if hermaphrodite is banned or furry is banned:
			now milkfound is 2;
		if milkfound < 2:
			say "'You do not have enough nutritive secretions,' he chastises.";
			stop the action;
		if goofound < 2:
			say "'You do not have enough amorphous samples,' he chastises.";
			stop the action;
		extend game by 5;
		let num be 0;
		delete glob of goo;
		delete glob of goo;
		delete gryphon milk;
		delete gryphon milk;
		say "'Ah, exemplary work,' he murmurs, already taking your goo and milk and quickly getting them into a deep freeze box that glows ominous blue. Chill white mist escapes for the moment he pops it open to place the precious objects inside, 'Now then, we shall see what can be seen. Come back tomorrow.'";
		now level of Doctor Matt is turns;
		increase score by 20;
		now HP of Doctor Matt is 3;
	if HP of Doctor Matt is 3:
		if level of Doctor Matt minus turns < 8:
			say "'Still working on those samples you brought, come back later.'";
			stop the action;
		extend game by 24;
		increase score by 5;
		say "'Simply amazing. There is no other word for it,' says Doctor Matt, looking excited through his hazmat faceplate, 'The adaptability of the nanites is simply... I would have said it was impossible if I hadn't laid my own eyes on it. I sent out my results and the military have grudgingly agreed to a three day extension on their plans.'";
		WaitLineBreak;
		say "'The nanites seem to come in a few varieties that cooperate. The most important ones, the ones that allow the miracle work, are the... brain... nanites, for lack of better word. They link with neighboring brain nanites like nerve endings and seem capable of forming neural patterns of astonishing complexity! The nanites stopped receiving directives a long time ago, but they can adjust and make up their own choices independently. It is little wonder this is causing so much trouble,' he gushes with bubbling enthusiasm, like a young boy having caught a creepy looking insect.";
		WaitLineBreak;
		now HP of Doctor Matt is 4;
	if HP of Doctor Matt is 4:
		say "'Oh, one thing of more immediate use. I discovered how to neutralize the nanites. A limited area of them at least. They do not like being microwaved. I have one in the corner there, feel free to [bold type]microwave[roman type] anything you want to bake the infection out.'";
		now HP of Doctor Matt is 5;
	if HP of Doctor Matt is 5:
		say "'Up for another task? Good. Orthas spotted something interesting while hunting. A singular creature. You must understand, one of the standard impulses the infection seems to give on its infectees is the desire to spread the infection. To see just one is unusual. A trait I have only seen in Orthas so far. Go to the park and find this creature, bring it to me for study.'";
		now unusual creature is active;
		now HP of Doctor Matt is 6;
	else if HP of Doctor Matt is 6 and unusual creature is unresolved:
		say "'Did you forget already?' asks Matt, 'Go to the park, find the unusual creature. Bring it here. Orthas said it was intersexed, if that helps.'";
	else if HP of Doctor Matt is 6:
		say "'Ah ha, yes, she is an interesting creature, is she not?' he says, looking at the deer through his face plate. 'She says her name is Susan, just so you know.";
		if deerconsent is 1:
			say "'And she's taken a fancy to you. This is good.";
		say "'I was hoping you could test her for infectiousness, in a controlled situation. You don't have to if you don't want to, just talk to her and decide for yourself. Don't look at me that way. I can't very well do it from inside this suit, now can I?' he adds indignantly.";
		now HP of Doctor Matt is 7;
		increase score by 20;
		extend game by 24;
	if HP of Doctor Matt is 7 and deerconsent is not 2:
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
	if HP of Doctor Matt is 9 and hospquest < 8:
		say "'Please continue to assist Dr Mouse. And let me know what you find out.' Dr Matt then turns back to his work, intent on continuing his research.";
	if HP of Doctor Matt is 8 and hospquest is 8:
		say "     You decide to tell Dr Matt about what you've been doing for Dr Mouse. You leave out what really happened to the scientific device he gave you and he doesn't seem to notice, instead focusing on the fact that he has a competitor. And one that you've been helping.";
		say "     'I had been wondering what you'd been up to for the last few days in the city while I had nothing for you to do. Idle hands, as they say. This is quite unexpected. You have found another person in the city searching into the mysteries of the nanite infection, but through a different avenue of research. And using the infected as test subjected is...' he coughs as he notices the stern look you [if susan is visible]and Susan [end if]give him. 'That is, possibly using them as unwilling test subjects in such surgical experiments. Most disturbing and unethical, even in such a crisis.'";
		say "     'I suggest you continue to assist this Dr Mouse individual. It will further ingratiate you to him and allow you to find out more about what's going on with his research. Hopefully, I am wrong about my concerns and this doctor may be of help to us. As well, we do need to know if his concerns about the nanites are valid.";
		now HP of Doctor Matt is 9;
	if HP of Doctor Matt is 9 and hospquest > 7 and mattcollection is 0:
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
	if mattcollection > 0 and HP of Doctor Matt < 10:
		say "     'I suggest you continue to assist Dr Mouse. It will further ingratiate you to him and allow you to monitor his activities. I want you to keep me informed on what he's receiving and please bring a sample for me as well. Nor do I wish to fall behind in my research to this little upstart.";
	if HP of Doctor Matt is 10:
		say "     'A mind like Dr Mouse's cannot be allowed to continue to exploit the nanite infection unhindered. I will need you to take care of him. And be sure to bring back what research materials you can.'";
	if HP of Doctor Matt is 8 and hospquest is 13:		[Doc completely unawares, hospital finished]
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
	if HP of Doctor Matt is 11:
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
	if hospquest is 13 and "Mental Booster" is not listed in feats of player:
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
	if HP of Doctor Matt is 12 and level of Doctor Matt minus turns < 16:
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
	if HP of Doctor Matt is 14:
		say "     'While you were off taking care of that, I have heard back from the military command center. Things are still rather chaotic, but they're managing to hold on. They insist that this situation can and will be contained. I'm uncertain of their ability to do so, but the longer they work to contain the nanite infection here, the better chance we have of understanding the mysteries of the nanites before it becomes completely unmanageable,' the doctor says.";
		say "     But they are having difficulties of their own and they want more information on key locations throughout the city. It seems many of their recon teams have not fared well against the infected hazards of the city. They feel that someone already infected would have an easier time gathering this intel. They are looking for safe paths of travel through the city for their forces to start from, allowing them to expand their rescue operations from these key points. You should begin exploring the city, finding as many points that you can navigate between as you can. Being aware of these and knowing routes to travel between them will help keep the soldiers safer while trying to help those who can still be rescued. They are requesting a report on at least 50% of the city.'";
		WaitLineBreak;
[		NanofabRewardScanner; [places piece for nanofab in room. move this line if/when a better place is found]	]
		now HP of Doctor Matt is 15;
	if HP of Doctor Matt is 15:
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
	say "He looks kind of busy right now.";

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
